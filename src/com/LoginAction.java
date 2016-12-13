/**
 * @Project: software-engineering
 * @Title: LoginAction.java
 * @Package com
 * @Description: TODO
 * @date 2016��11��5�� ����10:48:59
 * @version V1.0
 */
package com;

import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionSupport;

import dao.Dao;

/**
 * @ClassName LoginAction
 * @Description TODO
 * @date 2016��11��5��
 */
public class LoginAction extends ActionSupport
{
    /**
     * @Fields serialVersionUID : TODO
     */
    private static final long serialVersionUID = 1L;
    private Dao               dao              = new Dao();
    private String            username;
    private String            password;
    private String            newpassword;

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

    public String getNewpassword()
    {
        return newpassword;
    }

    public void setNewpassword(String newpassword)
    {
        this.newpassword = newpassword;
    }

    public String login()
    {
        String sql = "select * from user where username='" + getUsername() + "' and password ='" + getPassword() + "'";
        ResultSet rS = dao.executeQuery(sql);
        System.out.println(getUsername());
        System.out.println(getPassword());
        try
        {
            if (rS.next())
            {
                HttpSession session = ServletActionContext.getRequest().getSession();
                session.setAttribute("username", getUsername());
                session.setAttribute("password", getPassword());
                session.setAttribute("userid", rS.getString("userid"));
                session.setAttribute("usersex", rS.getString("usersex"));
                session.setAttribute("userrealname", rS.getString("userrealname"));
                session.setAttribute("userrecommend", rS.getString("userrecommend"));
                session.setAttribute("userrecommendphone", rS.getString("userrecommendphone"));
                session.setAttribute("useremail", rS.getString("useremail"));
                session.setAttribute("prov", rS.getString("prov"));
                session.setAttribute("city", rS.getString("city"));
                session.setAttribute("dist", rS.getString("dist"));
                session.setAttribute("useraddress", rS.getString("useraddress"));
                session.setAttribute("usermoneymax", rS.getString("usermoneymax"));
                session.setAttribute("userphone", rS.getString("userphone"));
                session.setAttribute("usermoneymin", rS.getString("usermoneymin"));
                session.setAttribute("userinterest", rS.getString("userinterest"));
                return "loginin";
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

    public String logout() throws Exception
    {

        HttpSession session = ServletActionContext.getRequest().getSession();
        session.removeAttribute("username");
        session.removeAttribute("password");
        return SUCCESS;
    }

    public String regist()
    {
        String sql = "insert into user (username,password,isCheck) values ('" + getUsername() + "','" + getPassword()
                + "','0')";
        System.out.println(sql);
        int i = dao.executeUpdate(sql);
        dao.close();
        if (i > -1)
        {
            HttpSession session = ServletActionContext.getRequest().getSession();
            session.setAttribute("username", getUsername());
            session.setAttribute("password", getPassword());
            return "success";
        }
        return "error";
    }

    public String updatepassword()
    {
        HttpSession session = ServletActionContext.getRequest().getSession();
        String username = session.getAttribute("username").toString();
        String sql = "update user set password = '" + getNewpassword() + "' where username = '" + username + "'";
        System.out.println(sql);
        if (getPassword().equals(session.getAttribute("password").toString()))
        {
            int i = dao.executeUpdate(sql);
            if (i > -1)
            {
                session.setAttribute("password", getNewpassword());
                return "success";
            }
            dao.close();
        }
        else
        {
            return "unequalpassword";
        }
        return "success";
    }

}