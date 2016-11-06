package com;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Date;

public class ProjectAction extends ActionSupport {
	private static final long serialVersionUID = 1L;
	private String projectype;
	private String pid;
	private String pname;
	private double pprice;
	private Date PublishDate;
	private String Publisher;
	private int AuthorID;
	private String AbanISBN;
	
	private String BookTitle;
	private ArrayList srst,lrst,irst; 

}
