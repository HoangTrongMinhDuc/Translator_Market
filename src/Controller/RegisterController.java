package Controller;

import java.io.IOException;
import java.math.BigInteger;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Random;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Model.BO.TaiKhoanBO;
import Model.DAO.TaiKhoanDAO;
import util.MySQLConnUtils;

@WebServlet("/register")
public class RegisterController extends HttpServlet {


	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		HttpSession session = req.getSession();
		if(session.getAttribute("username") == null) {
			RequestDispatcher des = req.getRequestDispatcher("register.jsp");
			des.forward(req, resp);
		}else {
			RequestDispatcher des = req.getRequestDispatcher("/");
			des.forward(req, resp);
		}
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String username = req.getParameter("username").toString();
		TaiKhoanBO taiKhoanBO = new TaiKhoanBO();
		if(taiKhoanBO.isExist(username)) {
			req.setAttribute("responseId", 2);
			RequestDispatcher des = req.getRequestDispatcher("register.jsp");
			des.forward(req, resp);
			return;
		}
		String password = req.getParameter("password").toString();
		String repassword = req.getParameter("repassword").toString();
		if(!password.equals(repassword)) {
			req.setAttribute("responseId", 1);
			RequestDispatcher des = req.getRequestDispatcher("register.jsp");
			des.forward(req, resp);
			return;
		}
		String name = req.getParameter("name").toString();
		String birth = req.getParameter("birthday").toString();
		String gender = req.getParameter("gender").toString();
		int roleId = Integer.parseInt(req.getParameter("role").toString());
		Random rand = new Random();
		int salt = rand.nextInt(2018);
		String hashPass = md5(password+salt);
//		String timeStamp = new SimpleDateFormat("YYYY-MM-DD").format(Calendar.getInstance().getTime());
//		System.out.println(timeStamp);
		String queryAccount = "INSERT INTO "
				+ "taikhoan(id_TaiKhoan, username, hash_matkhau, salt_matkhau) "
				+ "VALUES (NULL, '" + username +"', '"+hashPass+"','"+salt+"')";
		String queryInfo = "INSERT INTO "
				+ "thongtintaikhoan(id_TaiKhoan, HoTen, GioiTinh, NgaySinh, NgayTao, id_Role)"
				+ "VALUES (NULL, '"+name+"', "+gender+",'1997-01-01','2019-02-14',"+roleId+")";
		try {
			MySQLConnUtils.getMySQLConnection().createStatement().executeUpdate(queryAccount);
			MySQLConnUtils.getMySQLConnection().createStatement().executeUpdate(queryInfo);
		}catch (Exception e) {
			System.out.println(e.getMessage());
		}
		RequestDispatcher des = req.getRequestDispatcher("/");
		des.forward(req, resp);
	}
	
	private String md5(String s) {
	    try {
	        MessageDigest m = MessageDigest.getInstance("MD5");
	        m.update(s.getBytes(), 0, s.length());
	        BigInteger i = new BigInteger(1,m.digest());
	        return String.format("%1$032x", i);         
	    } catch (NoSuchAlgorithmException e) {
	        e.printStackTrace();
	    }
	    return "";
	}
	
	private String changeDateFormat(String date) {
		String[] nDate = date.split("//");
		return nDate[2]+"-"+nDate[1]+"-"+nDate[0];
	}
	
}
