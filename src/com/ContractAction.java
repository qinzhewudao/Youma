
/**
 * @Project: software-engineering
 * @Title: ContractAction.java
 * @Package com
 * @Description: TODO
 * @date 2016年11月12日 下午5:30:10
 * @version V1.0
 */
package com;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import dao.Dao;
import entity.Contract;

/**
 * @ClassName ContractAction
 * @Description TODO
 * @date 2016年11月12日
 */
public class ContractAction
{

    private Dao        dao   = new Dao();
    private Connection conn  = null;
    private String     bidder;
    private String     projectname;
    private String     publisher;
    private Date       contractdate;
    List<Contract>     lista = new ArrayList<Contract>();

    public List<Contract> getLista()
    {
        return lista;
    }

    public void setLista(List<Contract> lista)
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

    public Date getContractdate()
    {
        return contractdate;
    }

    public void setContractdate(Date contractdate)
    {
        this.contractdate = contractdate;
    }

    public String contract()
    {
        Date utildate = new Date();
        java.sql.Date contractdate = new java.sql.Date(utildate.getTime());
        HttpSession session = ServletActionContext.getRequest().getSession();
        String publisher = session.getAttribute("username").toString();
        System.out.println(publisher);
        System.out.println(getProjectname());
        if (getProjectname() == null)
        {
            System.out.println("projectname is null");
            return "error";
        }
        String sql = "insert into contract (projectname,bidder,publisher,contractdate) values ('" + getProjectname()
                + "','" + getBidder() + "','" + publisher + "','" + contractdate + "')";
        int i = dao.executeUpdate(sql);
        dao.close();
        System.out.println(sql);
        if (i > -1)
        {
            return "success";
        }
        return "error";
    }

    public String mycontract() throws Exception
    {
        lista = new ArrayList<Contract>();
        HttpSession session = ServletActionContext.getRequest().getSession();
        String bidder = session.getAttribute("username").toString();

        conn = dao.GetConn();
        Statement stat = conn.createStatement();
        String sqlStatement = "SELECT * FROM contract where bidder = '" + bidder + "' or publisher = '" + bidder + "'";
        ResultSet set = stat.executeQuery(sqlStatement);
        System.out.println(sqlStatement);
        while (set.next())
        {
            Contract Contract = new Contract();
            Contract.setProjectname(set.getString("projectname"));
            Contract.setPublisher(set.getString("publisher"));
            Contract.setBidder(set.getString("bidder"));
            Contract.setContractdate(set.getDate("contractdate"));
            lista.add(Contract);
        }
        this.setLista(lista);
        if (lista.isEmpty())
        {
            return "emptycontract";
        }
        conn.close(); // close the connection

        return "success";
    }
}
