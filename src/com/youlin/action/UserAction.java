package com.youlin.action;



import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import com.youlin.domain.Product;
import com.youlin.domain.User;
import com.youlin.service.ProductService;
import com.youlin.service.UserService;
import com.youlin.util.PageBean;

public class UserAction extends ActionSupport implements ModelDriven<User> {
/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
private User user = new User();
private ProductService productService;
private int currPage = 1;


public int getCurrPage() {
	return currPage;
}


public void setCurrPage(int currPage) {
	this.currPage = currPage;
}


public ProductService getProductService() {
	return productService;
}


public void setProductService(ProductService productService) {
	this.productService = productService;
}


public User getModel() {
	// TODO Auto-generated method stub
	return user;
}
private UserService userService;

public void setUserService(UserService userService) {
	this.userService = userService;
}


public String login(){
	User userlogin = userService.login(user);
	if(null==userlogin){
		this.addActionError("用户名或密码错误！");
		return INPUT;	
	}else{
 		ActionContext.getContext().getSession().put("existuser",userlogin);
 		PageBean<Product> pageBean = productService.findByPage(currPage);
 		ActionContext.getContext().getSession().put("pageBean",pageBean);
		return SUCCESS;		   
}
}

public String register(){
	String registermessage = userService.register(user);
	if("registererror".equals(registermessage)){
		this.addActionError("注册失败，请正确填写注册信息！");
		return "registererror";
	}else{
		return "registersuccess";
	}
}

public String relogin(){
	ActionContext.getContext().getSession().remove("existuser");
	return "relogin";
}
}
