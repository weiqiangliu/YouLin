package com.youlin.domain;

import java.util.Date;

public class ProductIntroduceImage {
private Integer imageid;	
private String pno;
private String imagename;	
private String imagepath;
private String uploaddate;


public Integer getImageid() {
	return imageid;
}
public void setImageid(Integer imageid) {
	this.imageid = imageid;
}

public String getPno() {
	return pno;
}
public void setPno(String pno) {
	this.pno = pno;
}
public String getImagepath() {
	return imagepath;
}
public void setImagepath(String imagepath) {
	this.imagepath = imagepath;
}
public String getImagename() {
	return imagename;
}
public void setImagename(String imagename) {
	this.imagename = imagename;
}
public String getUploaddate() {
	return uploaddate;
}
public void setUploaddate(String uploaddate) {
	this.uploaddate = uploaddate;
}



}
