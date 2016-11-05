package com;

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

    public String regist()
    {
        String sql = "insert into user (username,password,isCheck) values ('" + getUsername() + "','" + getPassword()
                + "','0')";
        System.out.println(getUsername());
        System.out.println(getPassword());
        int i = dao.executeUpdate(sql);
        if (i > -1)
        {
            return "success";
        }
        return "error";
    }

    public String completefirm()
    {
        System.out.println(getFirmname());
        System.out.println(getFirmaddress());
        System.out.println(getFirmcode());
        System.out.println(getFirmmodel());
        System.out.println(getFirmtime());
        String sql = "update user set firmname = '" + getFirmname() + "',firmaddress = '" + getFirmaddress()
                + "',firmcode = '" + getFirmcode() + "',firmmodel='" + getFirmmodel() + "',firmtime='" + getFirmtime()
                + "' where username = 'sy'";
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

    /*
     * public String checkfirmdata() { String sql =
     * "update user set useremail = '" + getUseremail() + "',userskill = '" +
     * getUserskill() + "',useraddress = '" + getUseraddress() + "',userphone='"
     * + getUserphone() + "',userid='" + getUserid() +
     * "' where username = 'sy'"; System.out.println("bug is here"); int i =
     * dao.executeUpdate(sql); if (i > -1) { return "success"; } return "error";
     * }
     */
}
