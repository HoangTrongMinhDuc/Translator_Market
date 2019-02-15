package Model.BO;

import Model.bean.*;
import Model.DAO.*;

public class ThongTinTaiKhoanBO {

	ThongTinTaiKhoanDAO thongTinTaiKhoanDAO = new ThongTinTaiKhoanDAO();
	public ThongTinTaiKhoanBO() {
		// TODO Auto-generated constructor stub
	}

	public int addItem(ThongTinTaiKhoan thongTinTaiKhoan) {
		return thongTinTaiKhoanDAO.addItem(thongTinTaiKhoan);
		
	}

}
