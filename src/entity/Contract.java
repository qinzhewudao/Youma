/**
 * @Project: software-engineering
 * @Title: Contract.java
 * @Package entity
 * @Description: TODO
 * @date 2016年12月5日 下午2:51:45
 * @version V1.0
 */
package entity;

import java.util.Date;

/**
 * @ClassName Contract
 * @Description TODO
 * @date 2016年12月5日
 */
public class Contract
{
    private String bidder;
    private String projectname;
    private String publisher;
    private Date   contractdate;

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

    public Date getContractdate()
    {
        return contractdate;
    }

    public void setContractdate(Date contractdate)
    {
        this.contractdate = contractdate;
    }
}
