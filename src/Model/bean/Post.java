package Model.bean;

public class Post {
	private int id_YeuCau, id_NguoiTao, id_NgonNguNguon, id_NgonNguDich, id_TrangThai, SoTien;
	private String NgayTao, TenYeuCau, YeuCau, NoiDungDich, HanCuoi, FileDinhKem;
	
	public int getId_YeuCau() {
		return id_YeuCau;
	}
	public void setId_YeuCau(int id_YeuCau) {
		this.id_YeuCau = id_YeuCau;
	}
	public int getId_NguoiTao() {
		return id_NguoiTao;
	}
	public void setId_NguoiTao(int id_NguoiTao) {
		this.id_NguoiTao = id_NguoiTao;
	}
	public int getId_NgonNguNguon() {
		return id_NgonNguNguon;
	}
	public void setId_NgonNguNguon(int id_NgonNguNguon) {
		this.id_NgonNguNguon = id_NgonNguNguon;
	}
	public int getId_NgonNguDich() {
		return id_NgonNguDich;
	}
	public void setId_NgonNguDich(int id_NgonNguDich) {
		this.id_NgonNguDich = id_NgonNguDich;
	}
	public String getFileDinhKem() {
		return FileDinhKem;
	}

	public void setFileDinhKem(String fileDinhKem) {
		FileDinhKem = fileDinhKem;
	}

	public int getId_TrangThai() {
		return id_TrangThai;
	}
	public void setId_TrangThai(int id_TrangThai) {
		this.id_TrangThai = id_TrangThai;
	}
	public String getNgayTao() {
		return NgayTao;
	}
	public void setNgayTao(String ngayTao) {
		NgayTao = ngayTao;
	}
	public String getTenYeuCau() {
		return TenYeuCau;
	}
	public void setTenYeuCau(String tenYeuCau) {
		TenYeuCau = tenYeuCau;
	}
	public String getYeuCau() {
		return YeuCau;
	}
	public void setYeuCau(String yeuCau) {
		YeuCau = yeuCau;
	}
	public String getNoiDungDich() {
		return NoiDungDich;
	}
	public void setNoiDungDich(String noiDungDich) {
		NoiDungDich = noiDungDich;
	}
	public String getHanCuoi() {
		return HanCuoi;
	}
	public void setHanCuoi(String hanCuoi) {
		HanCuoi = hanCuoi;
	}
	public int getSoTien() {
		return SoTien;
	}
	public void setSoTien(int soTien) {
		SoTien = soTien;
	}

	public Post(int id_NguoiTao, int id_NgonNguNguon, int id_NgonNguDich, String id_FileDinhKem, int id_TrangThai,
			String ngayTao, String tenYeuCau, String yeuCau, String hanCuoi, int soTien) {
		this.id_NguoiTao = id_NguoiTao;
		this.id_NgonNguNguon = id_NgonNguNguon;
		this.id_NgonNguDich = id_NgonNguDich;
		this.FileDinhKem = id_FileDinhKem;
		this.id_TrangThai = id_TrangThai;
		NgayTao = ngayTao;
		TenYeuCau = tenYeuCau;
		YeuCau = yeuCau;
		HanCuoi = hanCuoi;
		SoTien = soTien;
	}
	
}
