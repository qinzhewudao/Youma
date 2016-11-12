/**
 * @Project: software-engineering
 * @Title: BidAction.java
 * @Package com
 * @Description: TODO
 * @date 2016年11月12日 下午6:49:03
 * @version V1.0
 */
package com;

import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import dao.Dao;

/**
 * @ClassName BidAction
 * @Description TODO
 * @date 2016年11月12日
 */
public class BidAction
{
    private Dao    dao = new Dao();
    private String bidder;
    private String projectname;
    private String publisher;

    public String getBidder()
    {
        return bidder;
    }

    public void setBidder(String bidder)
    {
        this.bidder = bidder;
    }

    public String getProjectname()
    {
        return projectname;
    }

    public void setProjectname(String projectname)
    {
        this.projectname = projectname;
    }

    public String getPublisher()
    {
        return publisher;
    }

    public void setPublisher(String publisher)
    {
        this.publisher = publisher;
    }

    public String bid()
    {
        HttpSession session = ServletActionContext.getRequest().getSession();
        System.out.println(getProjectname());
        System.out.println(getPublisher());
        String bidder = session.getAttribute("username").toString();
        System.out.println(bidder);
        if (getProjectname() == null)
        {
            return "error";
        }
        else if (getPublisher() == null)
        {
            return "error";
        }

        String sql = "insert into bid (projectname,bidder,publisher) values ('" + getProjectname() + "','" + bidder
                + "','" + getPublisher() + "')";
        int i = dao.executeUpdate(sql);
        System.out.println("bug is here");
        if (i > -1)
        {
            return "success";
        }
        return "error";
    }
}
