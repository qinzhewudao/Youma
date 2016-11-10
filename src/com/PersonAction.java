package com;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

import dao.Dao;
import entity.User;



public class PersonAction extends ActionSupport {
	    private static final long serialVersionUID = 1L;
	    private String UserName;
	    private ArrayList srst,lrst,irst; 
	 
		
	    public static   ArrayList<User> findsql(String sql)
	    {
	        ArrayList<User> list=new ArrayList<User>();
	         try
	         {
	             Dao connection=new Dao();
	          
	           
	             ResultSet set=connection.executeQuery(sql);  
		            while(set.next())
		            {    User user=new User();
		            	 user.setusername(set.getString("ISBN"));
		                 user.setfield(set.getString("Title"));
		                 user.setprice(set.getDouble("Price"));
		                 user.setposition(set.getString("Publisher"));
		                 user.setworkexperience(set.getInt("AuthorID"));
		              
		                 
		                 user.setskill(set.getString("Name"));
		                 user.setcompany(set.getString("Country"));
		                 list.add(user);
		                 
		                 System.out.println(set.getString("username")); 
		                
		            }
		            
		        } catch (SQLException e) {
		            e.printStackTrace();
		        }
		        return list;
		    }

	    public String showlist() throws SQLException
		    {
		    	  
		           String sql ="select * from Book natural join Author where username = '"+UserName+"'" ;
		           lrst = findsql(sql);
		           ActionContext.getContext().put("lrst", lrst);
		           return SUCCESS;
		    }
}
