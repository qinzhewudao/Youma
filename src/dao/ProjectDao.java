/**
 * @Project: software-engineering
 * @Title: ProjectDao.java
 * @Package dao
 * @Description: TODO
 * @date 2016年11月12日 下午2:23:26
 * @version V1.0
 */
package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

import com.ProjectAction;

/**
 * @ClassName ProjectDao
 * @Description TODO
 * @date 2016年11月12日
 */
public class ProjectDao
{
    public ArrayList<ProjectAction> getAllProjectAction()
    {
        Connection con = null;
        Statement stat = null;
        ResultSet rs = null;
        ArrayList<ProjectAction> list = new ArrayList<ProjectAction>(); // 商品集合
        try
        {
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection(
                    "jdbc:mysql://localhost:3306/software?useUnicode=true&characterEncoding=utf-8&useSSL=false", "root",
                    "19960814");
            stat = con.createStatement();
            String sql = "select * from project;"; // SQL语句
            rs = stat.executeQuery(sql);
            while (rs.next())
            {
                ProjectAction item = new ProjectAction();
                item.setProjectname(rs.getString("projectname"));
                item.setProjectstyle(rs.getString("projectstyle"));
                item.setProjectplat(rs.getString("projectplat"));
                item.setProjectprice(rs.getInt("projectprice"));
                item.setPublishdate(rs.getDate("publishdate"));
                item.setPublisher(rs.getString("publisher"));
                item.setProjecttime(rs.getString("projecttime"));
                item.setProjectdescribe(rs.getString("projectdescribe"));
                list.add(item);// 把一个商品加入集合
            }
            return list; // 返回集合。
        }
        catch (Exception ex)
        {
            ex.printStackTrace();
            return null;
        }
        finally
        {
            // 释放数据集对象
            if (rs != null)
            {
                try
                {
                    rs.close();
                    rs = null;
                }
                catch (Exception ex)
                {
                    ex.printStackTrace();
                }
            }
            // 释放语句对象
            if (stat != null)
            {
                try
                {
                    stat.close();
                    stat = null;
                }
                catch (Exception ex)
                {
                    ex.printStackTrace();
                }
            }
        }
    }

    // 根据项目名称号获得商品资料
    public ProjectAction getProjectActionByname(String projectname)
    {
        Connection con = null;
        Statement stat = null;
        ResultSet rs = null;
        try
        {
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection(
                    "jdbc:mysql://localhost:3306/software?useUnicode=true&characterEncoding=utf-8&useSSL=false", "root",
                    "19960814");
            stat = con.createStatement();
            String sql = "select * from project where projectname='" + projectname + "';"; // SQL语句
            System.out.println(sql);
            rs = stat.executeQuery(sql);
            if (rs.next())
            {
                ProjectAction item = new ProjectAction();
                item.setProjectname(rs.getString("projectname"));
                item.setProjectstyle(rs.getString("projectstyle"));
                item.setProjectplat(rs.getString("projectplat"));
                item.setProjectprice(rs.getInt("projectprice"));
                item.setPublishdate(rs.getDate("publishdate"));
                item.setPublisher(rs.getString("publisher"));
                item.setProjecttime(rs.getString("projecttime"));
                item.setProjectdescribe(rs.getString("projectdescribe"));
                return item;
            }
            else
            {
                return null;
            }
        }
        catch (Exception ex)
        {
            ex.printStackTrace();
            return null;
        }
        finally
        {
            // 释放数据集对象
            if (rs != null)
            {
                try
                {
                    rs.close();
                    rs = null;
                }
                catch (Exception ex)
                {
                    ex.printStackTrace();
                }
            }
            // 释放语句对象
            if (stat != null)
            {
                try
                {
                    stat.close();
                    stat = null;
                }
                catch (Exception ex)
                {
                    ex.printStackTrace();
                }
            }
        }
    }

}
