package model.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import model.bean.Post;
import util.MySQLConnUtils;

public class PostDAO {
	Connection conn = null;
	public boolean InsertPost(Post addPostBean){
		String sql = "insert into yeucaudich(id_NguoiTao, NgayTao, TenYeuCau, id_NgonNguNguon, id_NgonNguDich, YeuCau, NoiDungDich, FileDinhKem, HanChot, SoTien, id_TrangThai) value(?,?,?,?,?,?,?,?,?,?,?)";
		try {
			conn = MySQLConnUtils.getMySQLConnection();
		} catch (ClassNotFoundException e1) {
			e1.printStackTrace();
		} catch (SQLException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
		try {
			PreparedStatement ptmt = (PreparedStatement) conn.prepareStatement(sql);
			ptmt.setInt(1, addPostBean.getId_NguoiTao());
			ptmt.setString(2, addPostBean.getNgayTao());
			ptmt.setString(3, addPostBean.getTenYeuCau());
			ptmt.setInt(4, addPostBean.getId_NgonNguNguon());
			ptmt.setInt(5, addPostBean.getId_NgonNguDich());
			ptmt.setString(6, addPostBean.getYeuCau());
			ptmt.setString(7, addPostBean.getNoiDungDich());
			ptmt.setString(8, addPostBean.getFileDinhKem());
			ptmt.setString(9, addPostBean.getHanCuoi());
			ptmt.setInt(10, addPostBean.getSoTien());
			ptmt.setInt(11, addPostBean.getId_TrangThai());
			
			int kt = ptmt.executeUpdate();
			if(kt !=0 ) {
				return true;
			}
			ptmt.close();
			conn.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return false;
	}

}
