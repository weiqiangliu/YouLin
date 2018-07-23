package com.youlin.action;

import java.util.List;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import com.youlin.domain.Product;
import com.youlin.domain.ProductIntroduceImage;
import com.youlin.service.ProductIntroduceImageService;
import com.youlin.service.ProductService;
import com.youlin.util.PageBean;


public class ProductAction extends ActionSupport implements ModelDriven<Product>{
/**
	 * 
	 */
private static final long serialVersionUID = 1L;
private Product product = new Product();
private int currPage = 1;
private String searchkey;



public String getSearchkey() {
	return searchkey;
}

public void setSearchkey(String searchkey) {
	this.searchkey = searchkey;
}

private ProductIntroduceImageService productIntroduceImageService;

public ProductIntroduceImageService getProductIntroduceImageService() {
	return productIntroduceImageService;
}

public void setProductIntroduceImageService(
		ProductIntroduceImageService productIntroduceImageService) {
	this.productIntroduceImageService = productIntroduceImageService;
}

public void setProduct(Product product) {
	this.product = product;
}

public int getCurrPage() {
	return currPage;
}

public void setCurrPage(int currPage) {
	this.currPage = currPage;
}

public Product getModel(){
	return product;
}

private ProductService productService;

public void setProductService(ProductService productService) {
	this.productService = productService;
}

public String addProduct(){
	String addmessage = productService.addProduct(product);
	if("adderror".equals(addmessage)){
		this.addActionError("发布失败");
		return "adderror";
	}else{
	    PageBean<Product> pageBean = productService.findByPage(currPage);
		ActionContext.getContext().getSession().put("pageBean",pageBean);
		return "addsuccess";
	}
}
public String goToHomePage(){
	PageBean<Product> pageBean = productService.findByPage(currPage);
	ActionContext.getContext().getSession().put("pageBean",pageBean);
	return "gotohomepage";
}

public String getProduct(){
	Product pro = productService.getProduct(product.getPno());
	List<ProductIntroduceImage> imagelist = productIntroduceImageService.getProductImages(product.getPno());
	ActionContext.getContext().getSession().put("Product",pro);
	ActionContext.getContext().getSession().put("imagelist",imagelist);
	return "getProductSuccess";
}

public String getMyProduct(){
	Product pro = productService.getProduct(product.getPno());
	List<ProductIntroduceImage> imagelist = productIntroduceImageService.getProductImages(product.getPno());
	ActionContext.getContext().getSession().put("Product",pro);
	ActionContext.getContext().getSession().put("imagelist",imagelist);
	return "getMyProductSuccess";
}

public String searchKey(){
	ActionContext.getContext().getSession().put("searchkey",searchkey);
	PageBean<Product> pageBean = productService.searchKey(currPage,searchkey,"ptitle");
	ActionContext.getContext().getSession().put("pageBean",pageBean);
	return "searchsuccess";
}
public String searchKeyForkeywords(){
	ActionContext.getContext().getSession().put("searchkey",searchkey);
	PageBean<Product> pageBean = productService.searchKey(currPage,searchkey,"keywords");
	ActionContext.getContext().getSession().put("pageBean",pageBean);
	return "searchsuccessforkeywords";
	
}
public String searchForUserId(){
	PageBean<Product> pageBean = productService.searchForUserId(currPage,product.getUserid());
	ActionContext.getContext().getSession().put("pageBean",pageBean);
	return "searchproductbyuserid";
}

public String deletemyproduct(){
	product = productService.getProduct(product.getPno());
	if(null!=product){
		productService.deletemyproduct(product);
        List<ProductIntroduceImage> imagelists = productIntroduceImageService.getProductImages(product.getPno());
        productIntroduceImageService.deleteproductimages(imagelists);
	}
	PageBean<Product> pageBean = productService.searchForUserId(currPage,product.getUserid());
	ActionContext.getContext().getSession().put("pageBean",pageBean);
	return "searchproductbyuserid";
}

public String updateProduct(){
	Product primaryp = productService.getProduct(product.getPno());;
	primaryp.setContactway(product.getContactway());
	primaryp.setKeywords(product.getKeywords());
	primaryp.setPrice(product.getPrice());
	primaryp.setPtitle(product.getPtitle());
	primaryp.setPublishdate(product.getPublishdate());
	primaryp.setPublishplace(product.getPublishplace());
	primaryp.setShortintroduce(product.getShortintroduce());
	primaryp.setXplace(product.getXplace());
	primaryp.setYplace(product.getYplace());
	
	productService.updateProduct(primaryp);
	PageBean<Product> pageBean = productService.searchForUserId(currPage,product.getUserid());
	ActionContext.getContext().getSession().put("pageBean",pageBean);
	return "searchproductbyuserid";
}


}
