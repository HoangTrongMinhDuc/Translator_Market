package Controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/login")
public class LoginController extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		HttpSession session = req.getSession();
		if(session.getAttribute("username") == null) {
			RequestDispatcher des = req.getRequestDispatcher("login.html");
			des.forward(req, resp);
		}else {
			RequestDispatcher des = req.getRequestDispatcher("index.jsp");
			des.forward(req, resp);
		}
	}
  
}
