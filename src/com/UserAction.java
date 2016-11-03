package com;

import java.sql.ResultSet;
import java.sql.SQLException;

import com.opensymphony.xwork2.ActionSupport;

import dao.Dao;;

@SuppressWarnings("serial")
public class UserAction extends ActionSupport
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
        try
        {
            if (rS.next())
            {
                return "loginin";
            }
            return "loginout";
        }
        catch (SQLException e)
        {
            // TODO Auto-generated catch block
            e.printStackTrace();
            return "loginout";
        }
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
    // 通用的执行方法
    // public String execute() throws Exception {
    // if (getUsername().equals("scott") && getPassword().equals("tiger")) {
    // System.out.println("我是success");
    // return "success";
    // }
    //
    // else {
    // System.out.println("我是error");
    // return "error";
    // }
    // }
}
