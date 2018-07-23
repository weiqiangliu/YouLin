package com.youlin.dao;

import java.io.File;
import java.util.List;

import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.youlin.domain.ProductIntroduceImage;

public class ProductIntroduceImageDao extends HibernateDaoSupport{


public void saveImage(ProductIntroduceImage image){
		this.getHibernateTemplate().save(image);
}
public 	List<ProductIntroduceImage> getProductImages(String pno){
	String hql="from ProductIntroduceImage where pno =?";
	List<ProductIntroduceImage> imagelist = null;
	imagelist = this.getHibernateTemplate().find(hql,pno);
	return imagelist;
}
public void deleteproductimages(List<ProductIntroduceImage> imagelists) {
	// TODO Auto-generated method stub
	
	if(imagelists.size()>0){
	String path = imagelists.get(0).getImagepath();
	for(int i=0;i<imagelists.size();i++){
	this.getHibernateTemplate().delete(imagelists.get(i));	
	(new File(path+"/"+imagelists.get(i).getImagename())).delete();
	}
	(new File(path)).delete();
	}
}


}
