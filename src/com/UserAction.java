package com;

import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionSupport;

import dao.Dao;;

@SuppressWarnings("serial")
public class UserAction extends ActionSupport
{
    private Dao    dao = new Dao();
    private String username;
    private String password;
    private String firmname;
    private String firmtime;
    private String firmaddress;
    private String firmcode;
    private String firmmodel;
    private String useremail;
    private String userid;
    private String useraddress;
    private String userskill;
    private String userphone;

    public String getUsername()
    {
        return username;
    }

    public void setUsername(String username)
    {
        this.username = username;
    }

    public String getPassword()
    {
        return password;
    }

    public void setPassword(String password)
    {
        this.password = password;
    }

    public String getFirmtime()
    {
        return firmtime;
    }

    public void setFirmtime(String firmtime)
    {
        this.firmtime = firmtime;
    }

    public String getFirmname()
    {
        return firmname;
    }

    public void setFirmname(String firmname)
    {
        this.firmname = firmname;
    }

    public String getFirmaddress()
    {
        return firmaddress;
    }

    public void setFirmaddress(String firmaddress)
    {
        this.firmaddress = firmaddress;
    }

    public String getFirmcode()
    {
        return firmcode;
    }

    public void setFirmcode(String firmcode)
    {
        this.firmcode = firmcode;
    }

    public String getFirmmodel()
    {
        return firmmodel;
    }

    public void setFirmmodel(String firmmodel)
    {
        this.firmmodel = firmmodel;
    }

    public String getUseremail()
    {
        return useremail;
    }

    public void setUseremail(String useremail)
    {
        this.useremail = useremail;
    }

    public String getUserskill()
    {
        return userskill;
    }

    public void setUserskill(String userskill)
    {
        this.userskill = userskill;
    }

    public String getUseraddress()
    {
        return useraddress;
    }

    public void setUseraddress(String useraddress)
    {
        this.useraddress = useraddress;
    }

    public String getUserphone()
    {
        return userphone;
    }

    public void setUserphone(String userphone)
    {
        this.userphone = userphone;
    }

    public String getUserid()
    {
        return userid;
    }

    public void setUserid(String userid)
    {
        this.userid = userid;
    }

    public String completefirm()
    {
        HttpSession session = ServletActionContext.getRequest().getSession();
        String username = session.getAttribute("username").toString();
        System.out.println(getFirmname());
        System.out.println(getFirmaddress());
        System.out.println(getFirmcode());
        System.out.println(getFirmmodel());
        System.out.println(getFirmtime());
        String sql = "update user set firmname = '" + getFirmname() + "',firmaddress = '" + getFirmaddress()
                + "',firmcode = '" + getFirmcode() + "',firmmodel='" + getFirmmodel() + "',firmtime='" + getFirmtime()
                + "' where username = " + "'" + username + "'";
        System.out.println("bug is here");
        int i = dao.executeUpdate(sql);
        if (i > -1)
        {
            return "success";
        }
        return "error";
    }

    public String completeperson()
    {
        System.out.println(getUseremail());
        System.out.println(getUserskill());
        System.out.println(getUseraddress());
        System.out.println(getUserphone());
        System.out.println(getUserid());
        String sql = "update user set useremail = '" + getUseremail() + "',userskill = '" + getUserskill()
                + "',useraddress = '" + getUseraddress() + "',userphone='" + getUserphone() + "',userid='" + getUserid()
                + "' where username = 'sy'";
        System.out.println("bug is here");
        int i = dao.executeUpdate(sql);
        if (i > -1)
        {
            return "success";
        }
        return "error";
    }

    public String checkfirmdata()
    {
        HttpSession session = ServletActionContext.getRequest().getSession();
        String username = session.getAttribute("username").toString();
        String sql = "select user.firmname as firmname,user.firmaddress as firmaddress,user.firmcode as firmcode,user.firmmodel as firmmodel,user.firmtime as firmtime from user where user.username = "
                + "'" + username + "'";
        System.out.println("bug is here");
        System.out.println(username);
        ResultSet rS = dao.executeQuery(sql);
        try
        {
            while (rS.next())
            {
                System.out.println(rS.getString("firmname"));
                session.setAttribute("firmname", rS.getString("firmname"));
                if (session.getAttribute("firmname") == null)
                {
                    System.out.println("ming ming shi null le");
                }
                System.out.println(session.getAttribute("firmname"));
                session.setAttribute("firmcode", rS.getString("firmcode"));
                session.setAttribute("firmmodel", rS.getString("firmmodel"));
                session.setAttribute("firmtime", rS.getString("firmtime"));
                session.setAttribute("firmaddress", rS.getString("firmaddress"));
                if ((session.getAttribute("firmname") == null) || (session.getAttribute("firmcode") == null)
                        || (session.getAttribute("firmtime") == null) || (session.getAttribute("firmaddress") == null)
                        || (session.getAttribute("firmmodel") == null))
                {
                    return "pleaseaddif";
                }
                else
                {
                    return "publish";
                }
            }
        }
        catch (SQLException e)
        {
            // TODO Auto-generated catch block
            e.printStackTrace();
            return "error";
        }
        return "publish";

    }

    public String checkpersondata()
    {
        String sql = "select user.useremail as useremail,user.userskill as userskill,user.userphone as userphone,user.userid as userid,useraddress as useraddress where user.username = '"
                + getUsername() + "'";
        ResultSet rS = dao.executeQuery(sql);
        try
        {
            if (rS.next())
            {
                HttpSession session = ServletActionContext.getRequest().getSession();
                session.setAttribute("useremail", rS.getString("useremail"));
                session.setAttribute("userskill", rS.getString("userskill"));
                session.setAttribute("userphone", rS.getString("userphone"));
                session.setAttribute("userid", rS.getString("userid"));
                session.setAttribute("useraddress", rS.getString("useraddress"));
                if ((session.getAttribute("useremail").toString() == null)
                        || (session.getAttribute("userskil").toString() == null)
                        || (session.getAttribute("userphone").toString() == null)
                        || (session.getAttribute("userid").toString() == null)
                        || (session.getAttribute("useraddress").toString() == null))
                {
                    return "pleaseaddif";
                }
                else
                {
                    return "selectproject";
                }
            }
        }
        catch (SQLException e)
        {
            // TODO Auto-generated catch block
            e.printStackTrace();
            return "error";
        }
        return "selectproject";

    }

}
