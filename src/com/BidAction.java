/**
 * @Project: software-engineering
 * @Title: BidAction.java
 * @Package com
 * @Description: TODO
 * @date 2016年11月12日 下午6:49:03
 * @version V1.0
 */
package com;

import java.io.IOException;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import dao.Dao;
import entity.Bid;

/**
 * @ClassName BidAction
 * @Description TODO
 * @date 2016年11月12日
 */
public class BidAction
{
    private Dao        dao   = new Dao();
    private Connection conn  = null;
    private String     bidder;
    private String     projectname;
    private String     publisher;
    private String     publishdate;
    List<Bid>          lista = new ArrayList<Bid>();

    public List<Bid> getLista()
    {
        return lista;
    }

    public void setLista(List<Bid> lista)
    {
        this.lista = lista;
    }

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

    public String getPublishdate()
    {
        return publishdate;
    }

    public void setPublishdate(String publishdate)
    {
        this.publishdate = publishdate;
    }

    public String bid()
    {
        HttpSession session = ServletActionContext.getRequest().getSession();
        String bidder = session.getAttribute("username").toString();
        if (getProjectname() == null)
        {
            System.out.println("projectname is null");
            return "error";
        }
        else if (getPublisher() == null)
        {
            System.out.println("publisher is null");
            return "error";
        }
        else if (getPublisher().equals(bidder))
        {
            System.out.println("bid mine project");
            return "error";
        }
        String sql = "insert into bid (projectname,bidder,publisher) values ('" + getProjectname() + "','" + bidder
                + "','" + getPublisher() + "')";
        int i = dao.executeUpdate(sql);
        dao.close();
        System.out.println(sql);
        if (i > -1)
        {
            return "success";
        }
        return "error";
    }

    public String mypublish() throws Exception
    {
        lista = new ArrayList<Bid>();
        HttpSession session = ServletActionContext.getRequest().getSession();
        String publisher = session.getAttribute("username").toString();

        conn = dao.GetConn();
        Statement stat = conn.createStatement();
        String sqlStatement = "SELECT * FROM project where publisher = '" + publisher + "'";
        System.out.println(sqlStatement);
        ResultSet set = stat.executeQuery(sqlStatement);
        while (set.next())
        {
            Bid Bid = new Bid();
            Bid.setProjectname(set.getString("projectname"));
            Bid.setPublishdate(set.getString("publishdate"));
            lista.add(Bid);
        }
        conn.close(); // close the connection
        this.setLista(lista);
        if (lista.isEmpty())
        {
            return "emptypublish";
        }
        return "success";
    }

    public String mybid() throws Exception
    {
        lista = new ArrayList<Bid>();
        HttpSession session = ServletActionContext.getRequest().getSession();
        String bidder = session.getAttribute("username").toString();

        conn = dao.GetConn();
        Statement stat = conn.createStatement();
        String sqlStatement = "SELECT * FROM bid where bidder = '" + bidder + "'";
        ResultSet set = stat.executeQuery(sqlStatement);
        while (set.next())
        {
            Bid Bid = new Bid();
            Bid.setProjectname(set.getString("projectname"));
            Bid.setPublisher(set.getString("publisher"));
            lista.add(Bid);
        }
        this.setLista(lista);
        if (lista.isEmpty())
        {
            return "emptybid";
        }
        conn.close(); // close the connection

        return "success";
    }

    public String mypublishbid() throws IOException
    {
        lista = new ArrayList<Bid>();
        HttpSession session = ServletActionContext.getRequest().getSession();
        String publisher = session.getAttribute("username").toString();
        String newprojectname = new String(projectname.getBytes("ISO-8859-1"), "UTF-8");
        String sqlStatement = "SELECT bidder FROM bid where publisher = '" + publisher + "' and projectname = '"
                + newprojectname + "'";
        System.out.println(sqlStatement);
        ResultSet rS = dao.executeQuery(sqlStatement);
        try
        {
            while (rS.next())
            {
                Bid Bid = new Bid();
                Bid.setBidder(rS.getString("bidder"));
                Bid.setProjectname(newprojectname);
                lista.add(Bid);
            }
            dao.close();
        }
        catch (SQLException e)
        {
            // TODO Auto-generated catch block
            e.printStackTrace();
            dao.close();
            return "error";
        }
        this.setLista(lista);
        if (lista.isEmpty())
        {
            return "emptybided";
        }
        return "success";
    }

}