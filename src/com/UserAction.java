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
    private String userrealname;
    private String usersex;
    private String userinterest;
    private String usermoneymin;
    private String usermoneymax;
    private String userrecommend;
    private String userrecommendphone;
    private String password;
    private String firmname;
    private String firmtime;
    private String firmaddress;
    private String firmcode;
    private String firmmodel;
    private String useremail;
    private String userid;
    private String useraddress;
    private String city;
    private String prov;
    private String dist;
    private String userskill;
    private String userphone;
    private String userposition;
    private String usercompany;
    private int    userworkexperience;
    private double userprice;
    private String userdescribe;

    public String getUsername()
    {
        return username;
    }

    public void setUsername(String username)
    {
        this.username = username;
    }

    public String getUserrecommendphone()
    {
        return userrecommendphone;
    }

    public void setUserrecommendphone(String userrecommendphone)
    {
        this.userrecommendphone = userrecommendphone;
    }

    public String getUserrecommend()
    {
        return userrecommend;
    }

    public void setUserrecommend(String userrecommend)
    {
        this.userrecommend = userrecommend;
    }

    public String getCity()
    {
        return city;
    }

    public void setCity(String city)
    {
        this.city = city;
    }

    public void setProv(String prov)
    {
        this.prov = prov;
    }

    public String getProv()
    {
        return prov;
    }

    public void setDist(String dist)
    {
        this.dist = dist;
    }

    public String getDist()
    {
        return dist;
    }

    public String getUsermoneymin()
    {
        return usermoneymin;
    }

    public void setUsermoneymin(String usermoneymin)
    {
        this.usermoneymin = usermoneymin;
    }

    public String getUsermoneymax()
    {
        return usermoneymax;
    }

    public void setUsermoneymax(String usermoneymax)
    {
        this.usermoneymax = usermoneymax;
    }

    public String getUserinterest()
    {
        return userinterest;
    }

    public void setUserinterest(String interest)
    {
        this.userinterest = userinterest;
    }

    public String getUsersex()
    {
        return usersex;
    }

    public void setUsersex(String usersex)
    {
        this.usersex = usersex;
    }

    public String getUserrealname()
    {
        return userrealname;
    }

    public void setUserrealname(String userrealname)
    {
        this.userrealname = userrealname;
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

    public double getUserprice()
    {
        return userprice;
    }

    public void setUserprice(double userprice)
    {
        this.userprice = userprice;
    }

    public String getUserposition()
    {
        return userposition;
    }

    public void setUserposition(String userposition)
    {
        this.userposition = userposition;
    }

    public int getUserworkexperience()
    {
        return userworkexperience;
    }

    public void setUserworkexperience(int userworkexperience)
    {
        this.userworkexperience = userworkexperience;
    }

    public String getUsercompany()
    {
        return usercompany;
    }

    public void setUsercompany(String usercompany)
    {
        this.usercompany = usercompany;
    }

    public String getUserdescribe()
    {
        return userdescribe;
    }

    public void setUserdescribe(String userdescribe)
    {
        this.userdescribe = userdescribe;
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
                + "' where username = '" + username + "'";
        System.out.println("bug is here");
        int i = dao.executeUpdate(sql);
        dao.close();
        if (i > -1)
        {
            return "success";
        }
        return "error";
    }

    public String completeperson()
    {
        HttpSession session = ServletActionContext.getRequest().getSession();
        String username = session.getAttribute("username").toString();
        String sql = "update user set usercompany = '" + getUsercompany() + "',userworkexperience = '"
                + getUserworkexperience() + "',useremail = '" + getUseremail() + "',userposition = '"
                + getUserposition() + "',useraddress = '" + getUseraddress() + "',userprice = '" + getUserprice()
                + "',userskill = '" + getUserskill() + "',userdescribe = '" + getUserdescribe() + "' where username = '"
                + username + "'";
        System.out.println(sql);
        int i = dao.executeUpdate(sql);
        dao.close();
        if (i > -1)
        {
            return "success";
        }
        return "error";
    }

    public String updatemydata()
    {
        HttpSession session = ServletActionContext.getRequest().getSession();
        String username = session.getAttribute("username").toString();
        String sql = "update user set useremail = '" + getUseremail() + "',userphone = '" + getUserphone()
                + "',useraddress = '" + getUseraddress() + "',userinterest = '" + getUserinterest() + "',userid = '"
                + getUserid() + "',usersex = '" + getUsersex() + "',prov = '" + getProv() + "',dist = '" + getDist()
                + "',city = '" + getCity() + "',usermoneymax = '" + getUsermoneymax() + "',usermoneymin = '"
                + getUsermoneymin() + "',userrecommendphone = '" + getUserrecommendphone() + "',userrecommend = '"
                + getUserrecommend() + "',userrealname = '" + getUserrealname() + "' where username = '" + username
                + "'";
        session.setAttribute("userid", getUserid());
        session.setAttribute("usersex", getUsersex());
        session.setAttribute("userphone", getUserphone());
        session.setAttribute("userrealname", getUserrealname());
        session.setAttribute("userrecommend", getUserrecommend());
        session.setAttribute("userrecommendphone", getUserrecommendphone());
        session.setAttribute("useremail", getUseremail());
        session.setAttribute("city", getCity());
        session.setAttribute("dist", getDist());
        session.setAttribute("prov", getProv());
        session.setAttribute("useraddress", getUseraddress());
        session.setAttribute("usermoneymax", getUsermoneymax());
        session.setAttribute("usermoneymin", getUsermoneymin());
        session.setAttribute("userinterest", getUserinterest());
        System.out.println(sql);
        int i = dao.executeUpdate(sql);
        dao.close();
        if (i > -1)
        {
            return "success";
        }
        return "error";
    }

    public String checkfirmdata()
    {
        HttpSession session = ServletActionContext.getRequest().getSession();
        if (session.getAttribute("username") == null)
        {
            return "pleaselogin";
        }
        String username = session.getAttribute("username").toString();
        String sql = "select user.firmname as firmname,user.firmaddress as firmaddress,user.firmcode as firmcode,user.firmmodel as firmmodel,user.firmtime as firmtime from user where user.username = "
                + "'" + username + "'";
        ResultSet rS = dao.executeQuery(sql);
        try
        {
            while (rS.next())
            {
                // System.out.println(rS.getString("firmname"));
                session.setAttribute("firmname", rS.getString("firmname"));
                if (session.getAttribute("firmname") == null)
                {
                    System.out.println("ming ming shi null le");
                }
                // System.out.println(session.getAttribute("firmname"));
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
            dao.close();
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
        HttpSession session = ServletActionContext.getRequest().getSession();
        if (session.getAttribute("username") == null)
        {
            return "pleaselogin";
        }
        String username = session.getAttribute("username").toString();
        System.out.println(username);
        if (username == null)
        {
            return "pleaselogin";
        }
        String sql = "select user.useremail as useremail,user.userskill as userskill,usercompany as usercompany from user where user.username = '"
                + username + "'";
        ResultSet rS = dao.executeQuery(sql);
        try
        {
            while (rS.next())
            {
                System.out.println(rS.getString("useremail"));
                session.setAttribute("useremail", rS.getString("useremail"));
                if (session.getAttribute("useremail") == null)
                {
                    System.out.println("ming ming shi null le");
                }
                session.setAttribute("useremail", rS.getString("useremail"));
                session.setAttribute("userskill", rS.getString("userskill"));
                session.setAttribute("usercompany", rS.getString("usercompany"));
                if ((session.getAttribute("useremail").toString() == null)
                        || (session.getAttribute("userskill").toString() == null)
                        || (session.getAttribute("usercompany").toString() == null))
                {
                    dao.close();
                    return "pleaseaddif";
                }
                else
                {
                    System.out.println("ming ming shi null le2");
                    dao.close();
                    return "selectproject";
                }
            }
            dao.close();
        }
        catch (SQLException e)
        {
            // TODO Auto-generated catch block
            e.printStackTrace();
            return "error";
        }
        return "selectproject";

    }

    public String userdata()
    {
        HttpSession session = ServletActionContext.getRequest().getSession();
        String username = session.getAttribute("username").toString();
        String sql = "select * from user where username='" + username + "'";
        ResultSet rS = dao.executeQuery(sql);
        System.out.println(rS);
        try
        {
            if (rS.next())
            {
                session.setAttribute("username", getUsername());
                session.setAttribute("password", getPassword());
                session.setAttribute("userid", rS.getString("userid"));
                session.setAttribute("usersex", rS.getString("usersex"));
                session.setAttribute("userrealname", rS.getString("userrealname"));
                session.setAttribute("userrecommend", rS.getString("userrecommend"));
                session.setAttribute("userrecommendphone", rS.getString("userrecommendphone"));
                session.setAttribute("useremail", rS.getString("useremail"));
                session.setAttribute("city", rS.getString("city"));
                session.setAttribute("dist", rS.getString("dist"));
                session.setAttribute("useraddress", rS.getString("useraddress"));
                session.setAttribute("usermoneymax", rS.getString("usermoneymax"));
                session.setAttribute("usermoneymin", rS.getString("usermoneymin"));
                session.setAttribute("userinterest", rS.getString("userinterest"));
                return "success";
            }
            dao.close();
            return "error";
        }
        catch (SQLException e)
        {
            // TODO Auto-generated catch block
            e.printStackTrace();
            return "loginout";
        }
    }

}
