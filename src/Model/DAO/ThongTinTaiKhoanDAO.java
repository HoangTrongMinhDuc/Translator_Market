package Model.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import Model.bean.*;
import util.MySQLConnUtils;

public class ThongTinTaiKhoanDAO {
	private Connection conn;
	private Statement st;
	private PreparedStatement pst;
	private ResultSet rs;
	
	public ThongTinTaiKhoanDAO() {
		// TODO Auto-generated constructor stub
	}

	public int addItem(ThongTinTaiKhoan item) {
		try {
			conn = MySQLConnUtils.getMySQLConnection();
		} catch (ClassNotFoundException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		} catch (SQLException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
		String sql = "INSERT INTO thongtintaikhoan(Hoten, Email, AnhDaiDien, GioiTinh, NgaySinh, NgayTao) VALUE(?,?,?,?,?,?)";
		int kq = 0;
		try {
			pst = conn.prepareStatement(sql);
			pst.setString(1, item.getHo_Ten());
			pst.setString(2, item.getEmail());
			pst.setString(3, item.getAnh_Dai_Dien());
			pst.setInt(4, item.getGioi_Tinh());
			pst.setString(5, item.getNgay_Sinh());
			pst.setString(5, item.getNgay_Tao());
			kq = pst.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			try {
				pst.close();
				conn.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		return kq;
	}

}
