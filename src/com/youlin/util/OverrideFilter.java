package com.youlin.util;

import java.io.IOException;

import javax.servlet.FilterChain;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.dispatcher.FilterDispatcher;

public class OverrideFilter extends FilterDispatcher{

	
	 public void doFilter(ServletRequest req, ServletResponse res,
	   FilterChain chain) throws IOException, ServletException {
	  HttpServletRequest request = (HttpServletRequest)req;//不是servlet就继续按照struts2的拦截方法走  否则让servlet重新拦截
	  if(!request.getServletPath().contains("/servlet/")){ 
	   super.doFilter(req, res, chain);
	  }else{
	   chain.doFilter(req, res);
	  }
	 }
	}
