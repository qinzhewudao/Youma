/**
 * @Project: software-engineering
 * @Title: Dao.java
 * @Package dao
 * @Description: TODO <<<<<<< HEAD
 * @date 2016年10月18日 上午10:43:51
 * @version V1.0
 */
package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

public class Dao
{
    Connection     con      = null;
    Statement      stat     = null;
    ResultSet      rs       = null;
    private String url      = "jdbc:mysql://localhost:3306/software?useUnicode=true&characterEncoding=utf-8&useSSL=false";
    private String username = "root";
    private String password = "19960814";

    public Connection GetConn() throws Exception
    {
        Class.forName("com.mysql.jdbc.Driver");
        Connection conn = null;
        conn = DriverManager.getConnection(url, username, password);
        return conn;
    }

    public Dao()
    {
        try
        {
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection(url, username, password);
            stat = con.createStatement();
        }
        catch (Exception e)
        {
            // TODO: handle exception
            con = null;
        }
    }

    public ResultSet executeQuery(String sql)
    {
        try
        {
            rs = stat.executeQuery(sql);
        }
        catch (Exception e)
        {
            // TODO: handle exception
            rs = null;
        }
        return rs;
    }

    public int executeUpdate(String sql)
    {
        try
        {
            stat.executeUpdate(sql);
            return 0;
        }
        catch (Exception e)
        {
            // TODO: handle exception
        }
        return -1;
    }

    public int close()
    {
        try
        {
            stat.close();
            return 0;
        }
        catch (Exception e)
        {
            // TODO: handle exception
        }
        return -1;
    }

}