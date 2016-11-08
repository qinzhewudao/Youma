/**
 * @Project: software-engineering
 * @Title: ProjectAction.java
 * @Package com
 * @Description: TODO
 * @date 2016年11月6日 下午6:39:02
 * @version V1.0
 */
package com;

import java.util.ArrayList;
import java.util.Date;

import com.opensymphony.xwork2.ActionSupport;

public class ProjectAction extends ActionSupport
{
    private static final long serialVersionUID = 1L;
    private String            projectype;
    private String            pid;
    private String            pname;
    private double            pprice;
    private Date              PublishDate;
    private String            Publisher;
    private int               AuthorID;
    private String            AbanISBN;

    private String            BookTitle;
    private ArrayList         srst, lrst, irst;

}
