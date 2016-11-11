/**
 * @Project: software-engineering
 * @Title: ProjectAction.java
 * @Package com
 * @Description: TODO
 * @date 2016骞�11鏈�6鏃� 涓嬪崍6:39:02
 * @version V1.0
 */
package com;
import com.opensymphony.xwork2.ActionSupport;
import java.util.ArrayList;
import java.util.Date;

import dao.Dao;

public class ProjectAction extends ActionSupport
{
    private Dao               dao              = new Dao();
    private static final long serialVersionUID = 1L;
    private String            projectname;
    private String            projectstyle;
    private String            projectplat;
    private double            projectprice;
    private Date              PublishDate;
    private String            Publisher;
    private ArrayList srst,lrst,irst; 

public String getprojectname() {
	return projectname;
	}
public void setprojectname(String projectname) {
	this.projectname = projectname;
	}
public String getprojectstyle() {
	return projectstyle;
	}
public void setprojectstyle(String projectstyle) {
	this.projectstyle = projectstyle;
	}
public String getprojectplay() {
	return projectplat;
	}
}
  
