package com.youlin.service;

import java.util.List;

import org.springframework.transaction.annotation.Transactional;

import com.youlin.dao.ProductDao;
import com.youlin.domain.Product;
import com.youlin.util.PageBean;

@Transactional
public class ProductService {
private ProductDao productDao;

public void setProductDao(ProductDao productDao) {
	this.productDao = productDao;
}

public String addProduct(Product product) {
	// TODO Auto-generated method stub
	return productDao.addProduct(product);
}
public PageBean<Product> findByPage(int currPage){
	PageBean<Product> pageBean = new PageBean<Product>();
	pageBean.setCurrPage(currPage);
	int pageSize = 10;
	pageBean.setPageSize(pageSize);
	int totalCount = productDao.findcCount();
	pageBean.setTotalCount(totalCount);
	double tc = totalCount;
	Double num = Math.ceil(tc / pageSize);
	pageBean.setTotalPage(num.intValue());
	int begin = (currPage - 1) * pageSize;
	List<Product> list = productDao.findByPage(begin, pageSize);
	pageBean.setList(list);
	return pageBean;
}

public Product getProduct(String pno) {
	// TODO Auto-generated method stub
	return productDao.getProduct(pno);
}

public PageBean<Product> searchKey(int currPage, String searchkey,String searchtype) {
	// TODO Auto-generated method stub
	PageBean<Product> pageBean = new PageBean<Product>();
	pageBean.setCurrPage(currPage);
	int pageSize = 10;
	pageBean.setPageSize(pageSize);
	int totalCount = productDao.findcCountForsearchKey(searchkey,searchtype);
	pageBean.setTotalCount(totalCount);
	double tc = totalCount;
	Double num = Math.ceil(tc / pageSize);
	pageBean.setTotalPage(num.intValue());
	int begin = (currPage - 1) * pageSize;
	List<Product> list = productDao.searchKey(begin, pageSize, searchkey,searchtype);
	pageBean.setList(list);
	return pageBean;
}

public PageBean<Product> searchForUserId(int currPage, Integer userid) {
	// TODO Auto-generated method stub
	PageBean<Product> pageBean = new PageBean<Product>();
	pageBean.setCurrPage(currPage);
	int pageSize = 10;
	pageBean.setPageSize(pageSize);
	int totalCount = productDao.findCountByUserid(userid);
	pageBean.setTotalCount(totalCount);
	double tc = totalCount;
	Double num = Math.ceil(tc / pageSize);
	pageBean.setTotalPage(num.intValue());
	int begin = (currPage - 1) * pageSize;
	List<Product> list = productDao.searchByUserid(begin, pageSize,userid);
	pageBean.setList(list);
	return pageBean;
}

public void deletemyproduct(Product product) {
	// TODO Auto-generated method stub
	productDao.deletemyproduct(product);
}

public void updateProduct(Product primaryp) {
	// TODO Auto-generated method stub
	productDao.updateProduct(primaryp);
}

}
