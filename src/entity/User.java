package entity;


public class User {
	private String username;
	private String userfield;
	private String userposition;
	private String usercompany;
	private int userworkexperience;
	private String userskill;
	private double userprice;
	public User() { 
	}
	public User(String username, String userfield, String userposition,String usercompany,
			 double userprice,int userworkexperience,String userskill) {
	this.username = username;
	this.userfield = userfield;
	this.userprice = userprice;
	this.userposition = userposition;
	this.usercompany = usercompany;
	this.userworkexperience = userworkexperience;
	this.userskill = userskill;
	
	}
	public String getusername() {
	return username;
	}
	public void setusername(String username) {
	this.username = username;
	}
	public double getprice() {
	return userprice;
	}
	public void setprice(double userprice) {
	this.userprice = userprice;
	}
	public String getfield() {
	return userfield;
	}
	public void setfield(String userfield) {
	this.userfield = userfield;
	} 
	public String getposition() {
	return userposition;
	}
	public void setposition(String userposition) {
	this.userposition = userposition;
	} 
	public int  getworkexperience() {
		return userworkexperience;
	}
	public void setworkexperience(int userworkexperience) {
	this.userworkexperience = userworkexperience;
	}
	public String getskill() {
		return userskill;
		}
	public void setskill(String userskill) {
		this.userskill = userskill;
		}
	public String getcompany() {
		return usercompany;
			}
	public void setcompany(String usercompany) {
			this.usercompany = usercompany;
			}

	
}


