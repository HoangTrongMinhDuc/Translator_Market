package Model.BO;

import Model.DAO.TaiKhoanDAO;

public class TaiKhoanBO {
	
	TaiKhoanDAO taiKhoanDAO = new TaiKhoanDAO();
	
	public boolean checkLogin(String userName, String password) {
		// TODO Auto-generated method stub
		return taiKhoanDAO.checkLogin(userName, password);
	}
	
}
