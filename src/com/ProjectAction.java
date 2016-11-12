/**
 * @Project: software-engineering
 * @Title: ProjectAction.java
 * @Package com
 * @Description: TODO
 * @date 2016骞�11鏈�6鏃� 涓嬪崍6:39:02
 * @version V1.0
 */
package com;

import java.util.Date;

import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionSupport;

import dao.Dao;

public class ProjectAction extends ActionSupport
{

    private Dao               dao              = new Dao();
    private static final long serialVersionUID = 1L;
    private String            projectname;
    private String            projectstyle;
    private String            projectplat;
    private int               projectprice;
    private Date              publishdate;
    private String            publisher;
    private String            username;
    private String            projectdescribe;

    public String getProjectname()
    {
        return projectname;
    }

    public void setProjectname(String projectname)
    {
        this.projectname = projectname;
    }

    public String getProjectstyle()
    {
        return projectstyle;
    }

    public void setProjectstyle(String projectstyle)
    {
        this.projectstyle = projectstyle;
    }

    public String getProjectplat()
    {
        return projectplat;
    }

    public void setProjectplat(String projectplat)
    {
        this.projectplat = projectplat;
    }

    public int getProjectprice()
    {
        return projectprice;
    }

    public void setProjectprice(int projectprice)
    {
        this.projectprice = projectprice;
    }

    public Date getPublishdate()
    {
        return publishdate;
    }

    public void setPublishdate(Date publishdate)
    {
        this.publishdate = publishdate;
    }

    public String getPublisher()
    {
        return publisher;
    }

    public void setPublisher(String publisher)
    {
        this.publisher = publisher;
    }

    public String getProjectdescribe()
    {
        return projectdescribe;
    }

    public void setProjectdescribe(String projectdescribe)
    {
        this.projectdescribe = projectdescribe;
    }

    public String getUsername()
    {
        return username;
    }

    public void setUsername(String username)
    {
        this.username = username;
    }

    public String publish()
    {
        Date utildate = new Date();
        java.sql.Date publishdate = new java.sql.Date(utildate.getTime());
        HttpSession session = ServletActionContext.getRequest().getSession();
        String publisher = session.getAttribute("username").toString();
        System.out.println(getProjectname());
        System.out.println(getProjectstyle());
        System.out.println(getProjectplat());
        System.out.println(getProjectprice());
        System.out.println(getProjectdescribe());
        System.out.println(publishdate);
        System.out.println(publisher);

        String sql = "insert into project (projectname,projectstyle,projectplat,projectprice,publishdate,publisher,projectdescribe) values ('"
                + getProjectname() + "','" + getProjectstyle() + "','" + getProjectplat() + "','" + getProjectprice()
                + "','" + publishdate + "','" + publisher + "','" + getProjectdescribe() + "')";
        int i = dao.executeUpdate(sql);
        System.out.println("bug is here");
        if (i > -1)
        {
            return "success";
        }
        return "error";
    }
}
