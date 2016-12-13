package entity;

import java.util.Date;

public class Project
{
    private String projectname;
    private String projectstyle;
    private String projectplat;
    private int    projectprice;
    private Date   publishdate;
    private String publisher;
    private String projecttime;
    private String projectdescribe;

    public Project()
    {
    }

    public Project(String projectname, String projectstyle, String projectplat, int projectprice, Date publishdate,
            String publisher, String projectdescribe)
    {

        this.projectname = projectname;
        this.projectstyle = projectstyle;
        this.projectplat = projectplat;
        this.projectprice = projectprice;
        this.publishdate = publishdate;
        this.publisher = publisher;
        this.projectdescribe = projectdescribe;

    }

    public String getProjectname()
    {
        return projectname;
    }

    public void setProjectname(String projectname)
    {
        this.projectname = projectname;
    }

    public String getProjecttime()
    {
        return projecttime;
    }

    public void setProjecttime(String projecttime)
    {
        this.projecttime = projecttime;
    }

    public String getProjectstyle()
    {
        return projectstyle;
    }

    public void setProjectstyle(String projectstyle)
    {
        this.projectstyle = projectstyle;
    }

    public String getProjectplat()
    {
        return projectplat;
    }

    public void setProjectplat(String projectplat)
    {
        this.projectplat = projectplat;
    }

    public int getProjectprice()
    {
        return projectprice;
    }

    public void setProjectprice(int projectprice)
    {
        this.projectprice = projectprice;
    }

    public Date getPublishdate()
    {
        return publishdate;
    }

    public void setPublishdate(Date publishdate)
    {
        this.publishdate = publishdate;
    }

    public String getPublisher()
    {
        return publisher;
    }

    public void setPublisher(String publisher)
    {
        this.publisher = publisher;
    }

    public String getProjectdescribe()
    {
        return projectdescribe;
    }

    public void setProjectdescribe(String projectdescribe)
    {
        this.projectdescribe = projectdescribe;
    }

}
