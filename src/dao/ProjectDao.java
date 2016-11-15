/**
 * @Project: software-engineering
 * @Title: ProjectDao.java
 * @Package dao
 * @Description: TODO
 * @date 2016骞�11鏈�12鏃� 涓嬪崍2:23:26
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
 * @date 2016骞�11鏈�12鏃�
 */
public class ProjectDao
{   
    public ArrayList<ProjectAction> getAllProjectAction()
    {   
        Connection con = null;
        Statement stat = null;
        ResultSet rs = null;
        ArrayList<ProjectAction> list = new ArrayList<ProjectAction>(); // 鍟嗗搧闆嗗悎
        try
        {
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection(
                    "jdbc:mysql://localhost:3306/software?useUnicode=true&characterEncoding=utf-8&useSSL=false", "root",
                    "root");
            stat = con.createStatement();
            String sql = "select * from project;"; // SQL璇彞
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
                item.setProjectdescribe(rs.getString("projectdescribe"));
                list.add(item);// 鎶婁竴涓晢鍝佸姞鍏ラ泦鍚�
            }
            return list; // 杩斿洖闆嗗悎銆�
        }
        catch (Exception ex)
        {
            ex.printStackTrace();
            return null;
        }
        finally
        {
            // 閲婃斁鏁版嵁闆嗗璞�
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
            // 閲婃斁璇彞瀵硅薄
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

    // 鏍规嵁椤圭洰鍚嶇О鍙疯幏寰楀晢鍝佽祫鏂�
    public ProjectAction getProjectActionByname(String projectname)
    {   System.out.println(projectname);
        Connection con = null;
        Statement stat = null;
        ResultSet rs = null;
        try
        {
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection(
                    "jdbc:mysql://localhost:3306/software?useUnicode=true&characterEncoding=utf-8&useSSL=false", "root",
                    "root");
            stat = con.createStatement();
            String sql = "select * from project where projectname='" + projectname + "';"; // SQL璇彞
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
            // 閲婃斁鏁版嵁闆嗗璞�
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
            // 閲婃斁璇彞瀵硅薄
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
