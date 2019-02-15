package model.bo;

import model.bean.ThongTinTaiKhoan;
import model.dao.ThongTinTaiKhoanDAO;

public class ThongTinTaiKhoanBO {

	ThongTinTaiKhoanDAO thongTinTaiKhoanDAO = new ThongTinTaiKhoanDAO();
	public ThongTinTaiKhoanBO() {
		// TODO Auto-generated constructor stub
	}

	public int addItem(ThongTinTaiKhoan thongTinTaiKhoan) {
		return thongTinTaiKhoanDAO.addItem(thongTinTaiKhoan);
		
	}

}
