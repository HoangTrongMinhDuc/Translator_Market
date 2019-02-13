package Model.DAO;

import java.sql.Statement;
import java.math.BigInteger;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;

import java.sql.PreparedStatement;

import util.*;

public class TaiKhoanDAO {

	public boolean checkLogin(String userName, String password) {
		// TODO Auto-generated method stub
		String sql = String.format("SELECT * FROM taikhoan WHERE username = '%s'", userName);
		
		String salt_matkhau = "";
		
		ResultSet rs = null;
		
		Connection connection = null;
		
		Statement st;
		
		try {
			connection = MySQLConnUtils.getMySQLConnection();
			st = (Statement) connection.createStatement();
			rs = ((java.sql.Statement) st).executeQuery(sql);
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		try {
			if(rs.next())
			{
				System.out.println("Account exist!");
				salt_matkhau = rs.getString("salt_matkhau");
				System.out.println(salt_matkhau);
			}
			else
			{
				return false;
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		password += salt_matkhau;
		
		String encodePassword = encodeMD5(password);
		
		System.out.println("MD5 is : " + encodePassword);
		
		String sql1 = "SELECT * FROM taikhoan WHERE username = ? AND hash_matkhau = ?";
		
		try {
			PreparedStatement pst = connection.prepareStatement(sql1);
			pst.setString(1, userName);
			pst.setString(2, encodePassword);
			
			rs = pst.executeQuery();
			
			if (rs.next())
			{
				System.out.println("Login successfully!");
				return true;
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		System.out.println("Login fail!!");
		return false;
	}
	
	public static String encodeMD5(String code) {
		
		String result = "";
		
		MessageDigest digest;
		
		try {
			digest = MessageDigest.getInstance("MD5");
			digest.update(code.getBytes());
			BigInteger bigInteger = new BigInteger(1, digest.digest());
			result = bigInteger.toString(16);
		} catch (NoSuchAlgorithmException e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		
		return result;
	}

}
