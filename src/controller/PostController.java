package controller;

import java.io.IOException;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.bean.Post;
import model.bo.PostBO;
import util.FileProcess;

@MultipartConfig
public class PostController extends HttpServlet{
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.getRequestDispatcher("/addpost.jsp").forward(req, resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("utf-8");
		resp.setCharacterEncoding("utf-8");
		
		String tenyeucau = req.getParameter("tenyeucau");
		String yeucau = req.getParameter("yeucau");
		String hancuoi = req.getParameter("hancuoi");
		int sotien = Integer.parseInt(req.getParameter("sotien"));
		int idngonngunguon = Integer.parseInt(req.getParameter("idngonngunguon"));
		int idngonngudich = Integer.parseInt(req.getParameter("idngonngudich"));
		
		
		FileProcess fileProcess = new FileProcess();
		String filedocument = fileProcess.HomeUploadSingleFile(req, resp);
		System.out.println(tenyeucau+","+yeucau+","+hancuoi+","+idngonngunguon+","+tenyeucau+","+idngonngudich+","+filedocument);

		DateFormat dateFormat = new SimpleDateFormat("yyyy/MM/dd");
		Date date = new Date();
		String datepost = dateFormat.format(date);
		
		int idnguoitao = 1;
		int trangthai = 0;
		
		Post post = new Post(idnguoitao, idngonngudich, idngonngudich, filedocument, trangthai, datepost, tenyeucau, yeucau, hancuoi, sotien);
		
		PostBO postBO = new PostBO();
		
		postBO.addPost(post);
		
		resp.sendRedirect(req.getContextPath()+"/postok.jsp");
	}
}
