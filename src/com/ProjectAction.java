/**
 * @Project: software-engineering
 * @Title: ProjectAction.java
 * @Package com
 * @Description: TODO
 * @date 2016年11月6日 下午6:39:02
 * @version V1.0
 */
package com;

import java.util.Date;

import com.opensymphony.xwork2.ActionSupport;

public class ProjectAction extends ActionSupport
{
    private static final long serialVersionUID = 1L;
    private String            projectname;
    private String            projectstyle;
    private String            projectplat;
    private double            projectprice;
    private Date              PublishDate;
    private String            Publisher;
    private String            username;
}
