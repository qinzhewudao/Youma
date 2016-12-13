/**
 * @Project: software-engineering
 * @Title: Bid.java
 * @Package entity
 * @Description: TODO
 * @date 2016��11��13�� ����3:39:01
 * @version V1.0
 */
package entity;

/**
 * @ClassName Bid
 * @Description TODO
 * @date 2016��11��13��
 */
public class Bid
{
    private String bidder;
    private String projectname;
    private String publisher;
    private String publishdate;

    public String getBidder()
    {
        return bidder;
    }

    public void setBidder(String bidder)
    {
        this.bidder = bidder;
    }

    public String getProjectname()
    {
        return projectname;
    }

    public void setProjectname(String projectname)
    {
        this.projectname = projectname;
    }

    public String getPublisher()
    {
        return publisher;
    }

    public void setPublisher(String publisher)
    {
        this.publisher = publisher;
    }

    public String getPublishdate()
    {
        return publishdate;
    }

    public void setPublishdate(String publishdate)
    {
        this.publishdate = publishdate;
    }
}