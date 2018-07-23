package com.youlin.service;

import java.util.List;

import org.springframework.transaction.annotation.Transactional;

import com.youlin.dao.ProductIntroduceImageDao;
import com.youlin.domain.ProductIntroduceImage;

@Transactional
public class ProductIntroduceImageService {
private ProductIntroduceImageDao productintroduceimageDao;



public ProductIntroduceImageDao getProductintroduceimageDao() {
	return productintroduceimageDao;
}



public void setProductintroduceimageDao(
		ProductIntroduceImageDao productintroduceimageDao) {
	this.productintroduceimageDao = productintroduceimageDao;
}



public List<ProductIntroduceImage> getProductImages(String pno){
	
	return productintroduceimageDao.getProductImages(pno);
}



public void deleteproductimages(List<ProductIntroduceImage> imagelists) {
	// TODO Auto-generated method stub
	productintroduceimageDao.deleteproductimages(imagelists);
}

}
