package com.youlin.domain;

import java.util.Date;


public class User {
private Integer userid;
private String username;
private String password;
private String icopath;
private String sex;
private String nickname;
private Date birthday;
private Date registerday;

private String phonenubmer;
private String qqnumber;
private String weichat;
private String permanentaddress;


public Integer getUserid() {
	return userid;
}
public void setUserid(Integer userid) {
	this.userid = userid;
}
public String getPhonenubmer() {
	return phonenubmer;
}
public void setPhonenubmer(String phonenubmer) {
	this.phonenubmer = phonenubmer;
}
public String getQqnumber() {
	return qqnumber;
}
public void setQqnumber(String qqnumber) {
	this.qqnumber = qqnumber;
}
public String getWeichat() {
	return weichat;
}
public void setWeichat(String weichat) {
	this.weichat = weichat;
}
public String getPermanentaddress() {
	return permanentaddress;
}
public void setPermanentaddress(String permanentaddress) {
	this.permanentaddress = permanentaddress;
}
public String getUsername() {
	return username;
}
public void setUsername(String username) {
	this.username = username;
}
public String getPassword() {
	return password;
}
public void setPassword(String password) {
	this.password = password;
}
public String getIcopath() {
	return icopath;
}
public void setIcopath(String icopath) {
	this.icopath = icopath;
}
public String getSex() {
	return sex;
}
public void setSex(String sex) {
	this.sex = sex;
}
public String getNickname() {
	return nickname;
}
public void setNickname(String nickname) {
	this.nickname = nickname;
}
public Date getBirthday() {
	return birthday;
}
public void setBirthday(Date birthday) {
	this.birthday = birthday;
}
public Date getRegisterday() {
	return registerday;
}
public void setRegisterday(Date registerday) {
	this.registerday = registerday;
}



}
