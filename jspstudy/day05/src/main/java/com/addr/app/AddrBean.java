package com.addr.app;

public class AddrBean {
	//멤버변수 선언
    private String userid;
    private String userpwd;
	private String username;
	private String tel;
	private String email;
	private String gender;
	
    public String getUserid() {
        return userid;
    }
    public void setUserid(String userid) {
        this.userid = userid;
    }
    public String getUserpwd() {
        return userpwd;
    }
    public void setUserpwd(String userpwd) {
        this.userpwd = userpwd;
    }
    public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getTel() {
		return tel;
	}
	public void setTel(String tel) {
		this.tel = tel;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String checkAdmin(String userid,String userpwd) {
		this.userid =userid;
		this.userpwd = userpwd;
		String aid = "smart1234";
		String apwd = "1q2w3e4r";
		if(userid.equals(aid)&&userpwd.equals(apwd)) {
			return "1";
		}else {
			return "0";
		}
	}
}
