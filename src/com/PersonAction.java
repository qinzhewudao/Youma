package com;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

import dao.Dao;
import entity.User;



public class PersonAction extends ActionSupport {
	    private static final long serialVersionUID = 1L;
	    private String UserName;
	    private String username;

	    private String userposition;
	    private String usercompany;
	    private int    userworkexperience;
	    private String userskill;
	    private int userprice;
	    private String userdescribe;
	    private ArrayList srst,personlrst,irst; 
	    public ArrayList getpersonlrst(ArrayList personlrst)
	    {
	    	return personlrst;
	    }
	    public void setpersonlrst()
	    {
	    	this.personlrst =personlrst;
	    }
	    public ArrayList getirst(ArrayList irst)
	    {
	    	return irst;
	    }
	    public void setirst()
	    {
	    	this.irst =irst;
	    }
	    
	    public String getUserName() {
			return UserName;
			}
		public void setUserName(String UserName) {
			this.UserName = UserName;
			}
		  public String getusername()
		    {
		        return username;
		    }

		    public void setusername(String username)
		    {
		        this.username = username;
		    }

		    public int getprice()
		    {
		        return userprice;
		    }

		    public void setprice(int userprice)
		    {
		        this.userprice = userprice;
		    }

		  

		    public String getposition()
		    {
		        return userposition;
		    }

		    public void setposition(String userposition)
		    {
		        this.userposition = userposition;
		    }

		    public int getworkexperience()
		    {
		        return userworkexperience;
		    }

		    public void setworkexperience(int userworkexperience)
		    {
		        this.userworkexperience = userworkexperience;
		    }

		    public String getskill()
		    {
		        return userskill;
		    }

		    public void setskill(String userskill)
		    {
		        this.userskill = userskill;
		    }

		    public String getcompany()
		    {
		        return usercompany;
		    }

		    public void setcompany(String usercompany)
		    {
		        this.usercompany = usercompany;
		    }
		    public String getdescribe()
		    {
		        return userdescribe;
		    }

		    public void setdescribe(String userdescribe)
		    {
		        this.userdescribe = userdescribe;
		    }
	    public static   ArrayList<User> findsql(String sql)
	    {
	        ArrayList<User> list=new ArrayList<User>();
	         try
	         {
	             Dao connection=new Dao();
	          
	           
	             ResultSet set=connection.executeQuery(sql);  
		            while(set.next())
		            {    User user=new User();
		            	 user.setusername(set.getString("username"));
		               
		                 user.setprice(set.getInt("userprice"));
		                 user.setposition(set.getString("userposition"));
		                 user.setworkexperience(set.getInt("userworkexperience"));
		              
		                 
		                 user.setskill(set.getString("userskill"));
		                 user.setcompany(set.getString("usercompany"));
		                 user.setdescribe(set.getString("userdescribe"));
		                 list.add(user);
		                 
		                 System.out.println(set.getString("username")); 
		                 System.out.println(set.getString("password")); 
		                 System.out.println(set.getString("userskill")); 
		                
		            }
		            
		        } catch (SQLException e) {
		            e.printStackTrace();
		        }
		        return list;
		    }

	    public String showinformation() throws SQLException
		    {
		    	  
		           String sql ="select * from user where username = '"+UserName+"'" ;
		           irst = findsql(sql);
		           ActionContext.getContext().put("irst", irst);
		           return SUCCESS;
		    }
	    public String showlist() throws SQLException
	    {
	    	  
	           String sql ="select * from user " ;
	           personlrst = findsql(sql);
	           ActionContext.getContext().put("personlrst", personlrst);
	           return SUCCESS;
	    }
}
