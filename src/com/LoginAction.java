/**
 * @Project: software-engineering
 * @Title: LoginAction.java
 * @Package com
 * @Description: TODO
 * @date 2016年11月5日 上午10:48:59
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
 * @date 2016年11月5日
 */
public class LoginAction extends ActionSupport
{
    private Dao    dao = new Dao();
    private String username;
    private String password;

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
        System.out.println(getUsername());
        System.out.println(getPassword());
        int i = dao.executeUpdate(sql);
        if (i > -1)
        {
            HttpSession session = ServletActionContext.getRequest().getSession();
            session.setAttribute("username", getUsername());
            session.setAttribute("password", getPassword());
            return "success";
        }
        dao.close();
        return "error";
    }

}