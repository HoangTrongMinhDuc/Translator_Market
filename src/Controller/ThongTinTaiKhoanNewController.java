package Controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import util.FileProcess;
import Model.bean.*;
import Model.BO.*;

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
		int gioitinh = Integer.parseInt(request.getParameter("Gender"));
		String ngaysinh = request.getParameter("birthday");
		FileProcess fileProcess = new FileProcess();
		String pathPhoto = fileProcess.HomeUploadSingleFile(request, response);
		
		ThongTinTaiKhoan thongTinTaiKhoan = new ThongTinTaiKhoan();
		thongTinTaiKhoan.setHo_Ten(hoten);
		thongTinTaiKhoan.setEmail(email);
		thongTinTaiKhoan.setGioi_Tinh(gioitinh);
		thongTinTaiKhoan.setNgay_Sinh(ngaysinh);
		thongTinTaiKhoan.setAnh_Dai_Dien(pathPhoto);
		thongTinTaiKhoanBO.addItem(thongTinTaiKhoan);
		request.getRequestDispatcher("/profile.jsp").forward(request, response);
	}

}
