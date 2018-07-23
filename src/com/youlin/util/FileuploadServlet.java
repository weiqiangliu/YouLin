package com.youlin.util;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.youlin.dao.ProductIntroduceImageDao;
import com.youlin.domain.ProductIntroduceImage;

public class FileuploadServlet extends HttpServlet {

	private static final long serialVersionUID = 1L;
	public void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		
		PrintWriter out = resp.getWriter();
		
		req.setCharacterEncoding("utf-8");
		DiskFileItemFactory factory = new DiskFileItemFactory();
		// 获取WebRoot下upload文件夹在磁盘上的绝对路径
		String path = "E:/YouLinImg/"+req.getParameter("userid")+"/"+req.getParameter("pno");
        
		File file = new File(path);
		if(!file.exists()){
			file.mkdirs();
		}
		
		System.out.println("上传路径是 :" + path);
		// 设置当上传文件大小超过默认直接写到硬盘大小(该大小由DiskFileItemFactory对象的setSizeThrehold()指定大小)时的缓存的路径
		factory.setRepository(file);
		factory.setSizeThreshold(1024 * 1024*6);
	

		ServletFileUpload upload = new ServletFileUpload(factory);
		upload.setHeaderEncoding("utf-8");
		
		try {

			List<FileItem> list = upload.parseRequest(req);

			for (FileItem fileItem : list) {
				// 获取表单域的名字<input type = "XXX" name = "XXX">中的第二个XXX值
				String name = fileItem.getFieldName();
				
				if (fileItem.isFormField()) {// 是一个表单文本域，不是上传的文件

					String value = fileItem.getString("utf-8");
					req.setAttribute(name, value);
				} else {// 上传的文件
					//获取上传文件的名字，不包括路径;只是文件名
					String value = fileItem.getName();
					
					int start = value.lastIndexOf("\\");
					//在用户上传的实际文件名前加上当前系统时间毫秒数
					String fileName = value.substring(start + 1);
					
					// 将文件写入磁盘
					String checkfile = path+"/"+fileName;
					File filecheck = new File(checkfile);
					if(!filecheck.exists()){
						ProductIntroduceImage pimg = new ProductIntroduceImage();
						pimg.setImagename(fileName);
						pimg.setImagepath(path);
						pimg.setPno(req.getParameter("pno"));
						SimpleDateFormat daFormat = new SimpleDateFormat("yyyy-MM-dd");
						Date now=new Date();
						pimg.setUploaddate(daFormat.format(now));
						ClassPathXmlApplicationContext resource = new ClassPathXmlApplicationContext("applicationContext.xml");; 
						ProductIntroduceImageDao pimgdao = (ProductIntroduceImageDao) resource.getBean("productintroduceimageDao");
						pimgdao.saveImage(pimg);
						fileItem.write(new File(path, fileName));
						System.out.println(fileName + "文件上传成功");
						out.write("uploadsuccess");
						out.flush(); 
						out.close();
					}
					else{
						out.write("havingexist");
						out.flush(); 
						out.close();
					}
					
				}
			}
		} catch (Exception e) {
			out.write("fail");
			e.printStackTrace();
		}
		
	}

}
