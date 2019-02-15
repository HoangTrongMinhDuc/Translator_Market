package controller;

import java.io.IOException;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import common.FileProcess;
import model.bean.ThongTinTaiKhoan;
import model.bo.ThongTinTaiKhoanBO;

/**
 * Servlet implementation class ThongTinTaiKhoanNewController
 */

@WebServlet("/ThongTinTaiKhoanNewController")
@MultipartConfig
public class ThongTinTaiKhoanNewController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	ThongTinTaiKhoanBO thongTinTaiKhoanBO = new ThongTinTaiKhoanBO();
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ThongTinTaiKhoanNewController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//		if(request.getSession().getAttribute("user") == null) {
//			response.sendRedirect("Login.jsp");
//			return;
//		}
		doPost(request,response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("utf-8");
		response.setContentType("html");
		HttpSession session = request.getSession();
		//int id_role = Integer.parseInt(request.getParameter("id_role"));
		//if() check id_role switch tung customer or
		String hoten = request.getParameter("fullname");
		String email = request.getParameter("email");
		String gioitinh = request.getParameter("Gender");
		System.out.println(gioitinh);
		String ngaysinh = request.getParameter("birthday");
		DateFormat df = new SimpleDateFormat("yyyy-MM-dd");
		String ngaytao = df.format(new Date());
		FileProcess fileProcess = new FileProcess();
		String pathPhoto = fileProcess.HomeUploadSingleFile(request, response);
		
		ThongTinTaiKhoan thongTinTaiKhoan = new ThongTinTaiKhoan();
		thongTinTaiKhoan.setHo_Ten(hoten);
		thongTinTaiKhoan.setEmail(email);
		int gt = 0;
		if(gioitinh.equals("male")) {
			gt= 1;
		}
		thongTinTaiKhoan.setGioi_Tinh(gt);
		thongTinTaiKhoan.setNgay_Sinh(ngaysinh);
		thongTinTaiKhoan.setAnh_Dai_Dien(pathPhoto);
		thongTinTaiKhoan.setNgay_Tao(ngaytao);
		thongTinTaiKhoanBO.addItem(thongTinTaiKhoan);
		request.getRequestDispatcher("/profile.jsp").forward(request, response);
	}

}
