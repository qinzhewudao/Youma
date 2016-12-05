/**
 * @Project: software-engineering
 * @Title: BidAction.java
 * @Package com
 * @Description: TODO
 * @date 2016年11月12日 下午6:49:03
 * @version V1.0
 */
package com;

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
        dao.close();
        System.out.println("bug is here");
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
        ResultSet set = stat.executeQuery(sqlStatement);
        while (set.next())
        {
            Bid Bid = new Bid();
            Bid.setProjectname(set.getString("projectname"));
            lista.add(Bid);
        }
        this.setLista(lista);
        if (lista.isEmpty())
        {
            return "emptypublish";
        }
        conn.close(); // close the connection

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

    public String mypublishbid()
    {
        lista = new ArrayList<Bid>();
        HttpSession session = ServletActionContext.getRequest().getSession();
        String publisher = session.getAttribute("username").toString();

        String sqlStatement = "SELECT bidder FROM bid where publisher = '" + publisher + "' and projectname = '"
                + getProjectname() + "'";
        System.out.println(sqlStatement);
        ResultSet rS = dao.executeQuery(sqlStatement);
        try
        {
            while (rS.next())
            {
                Bid Bid = new Bid();
                Bid.setBidder(rS.getString("bidder"));
                Bid.setProjectname(getProjectname());
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
