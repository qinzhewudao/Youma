package entity;

public class User
{
    private String username;
    private String userfield;
    private String userposition;
    private String usercompany;
    private int    userworkexperience;
    private String userskill;
    private int    userprice;
    private String userdescribe;

    public User()
    {
    }

    public User(String username, String userfield, String userposition, String usercompany, int userprice,
            int userworkexperience, String userskill, String userdescribe)
    {
        this.username = username;
        this.userfield = userfield;
        this.userprice = userprice;
        this.userposition = userposition;
        this.usercompany = usercompany;
        this.userworkexperience = userworkexperience;
        this.userskill = userskill;
        this.userdescribe = userdescribe;

    }

    public String getUsername()
    {
        return username;
    }

    public void setUsername(String username)
    {
        this.username = username;
    }

    public double getUserprice()
    {
        return userprice;
    }

    public void setUserprice(int userprice)
    {
        this.userprice = userprice;
    }

    public String getUserposition()
    {
        return userposition;
    }

    public void setUserposition(String userposition)
    {
        this.userposition = userposition;
    }

    public int getUserworkexperience()
    {
        return userworkexperience;
    }

    public void setUserworkexperience(int userworkexperience)
    {
        this.userworkexperience = userworkexperience;
    }

    public String getUserskill()
    {
        return userskill;
    }

    public void setUserskill(String userskill)
    {
        this.userskill = userskill;
    }

    public String getUsercompany()
    {
        return usercompany;
    }

    public void setUsercompany(String usercompany)
    {
        this.usercompany = usercompany;
    }

    public String getUserdescribe()
    {
        return userdescribe;
    }

    public void setUserdescribe(String userdescribe)
    {
        this.userdescribe = userdescribe;
    }

}