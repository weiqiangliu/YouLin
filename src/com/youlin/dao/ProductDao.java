package com.youlin.dao;

import java.util.List;

import org.hibernate.criterion.DetachedCriteria;
import org.hibernate.criterion.Restrictions;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;
import com.youlin.domain.Product;

public class ProductDao extends HibernateDaoSupport {

	public String addProduct(Product product) {
		// TODO Auto-generated method stub
		this.getHibernateTemplate().save(product);
		String hql = "from Product where pno =?";
		List<Product> list = this.getHibernateTemplate().find(hql,product.getPno());
		if(null!=list&&list.size()>0){
			return "addsuccess";
		}else{
		    return "adderror";}
	
	}
	public int findcCount(){
		String hql = "select count(*) from Product";
		List<Long> list = this.getHibernateTemplate().find(hql);
		if (null != list && list.size() > 0) {
			return list.get(0).intValue();
		}
		return 0;
	}
	public List<Product> findByPage(int begin, int pageSize){
		DetachedCriteria criteria = DetachedCriteria.forClass(Product.class);
		List<Product> list = this.getHibernateTemplate().findByCriteria(
				criteria, begin, pageSize);
		return list;
	}
	public Product getProduct(String pno) {
		// TODO Auto-generated method stub
		Product pro = null;
		String hql = "from Product where pno =?";
		List<Product> list = this.getHibernateTemplate().find(hql,pno);
		if(null!=list&&list.size()>0){
			pro = list.get(0);
		}
		return pro;
	}
    public List<Product> searchKey(int begin, int pageSize,String searchkey,String searchtype){
		DetachedCriteria criteria = DetachedCriteria.forClass(Product.class);
		List<Product> list = this.getHibernateTemplate().findByCriteria(
				criteria.add(Restrictions.like(searchtype,"%"+searchkey+"%")), begin, pageSize);
        return list;
    }
	public int findcCountForsearchKey(String searchkey,String searchtype){
		DetachedCriteria criteria = DetachedCriteria.forClass(Product.class);
		List<Product> list = this.getHibernateTemplate().findByCriteria(
				criteria.add(Restrictions.like(searchtype,"%"+searchkey+"%")));
    return list.size();
	}
	public int findCountByUserid(Integer userid) {
		// TODO Auto-generated method stub
		String hql = "from Product where userid =?";
		List<Product> list = this.getHibernateTemplate().find(hql,userid);
		return list.size();
	}
	public List<Product> searchByUserid(int begin, int pageSize, Integer userid) {
		// TODO Auto-generated method stub
		DetachedCriteria criteria = DetachedCriteria.forClass(Product.class);
		List<Product> list = this.getHibernateTemplate().findByCriteria(
				criteria.add(Restrictions.eq("userid", userid)), begin, pageSize);
		return list;
	}
	public void deletemyproduct(Product product) {
		// TODO Auto-generated method stub
		this.getHibernateTemplate().delete(product);
	}
	public void updateProduct(Product primaryp) {
		// TODO Auto-generated method stub
		this.getHibernateTemplate().update(primaryp);
	}
}
