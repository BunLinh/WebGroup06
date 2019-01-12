package dao;

import java.util.ArrayList;

import model.ThanhVienGroup;

public class ThanhVienGroup_DAO {
	private static ArrayList<ThanhVienGroup> listWeek1= new ArrayList<ThanhVienGroup>();
	private static ArrayList<ThanhVienGroup> listWeek2= new ArrayList<ThanhVienGroup>();
	private static ArrayList<ThanhVienGroup> listWeek3= new ArrayList<ThanhVienGroup>();
	private static ArrayList<ThanhVienGroup> listWeek4= new ArrayList<ThanhVienGroup>();
	
	
	

	public ThanhVienGroup_DAO() {
		}

	public static final ArrayList<ThanhVienGroup> getListWeek1() {
		//danh sach cong viec tung nguoi lam trong tuan 1
		listWeek1.removeAll(listWeek1);
		 listWeek1.add(new ThanhVienGroup(16130439, "Ngô Thị Mỹ Linh", "Thiết kế trang login, Đăng ký tài khoản,Quên mật khẩu", "Hoàn thành", "100%"));
		 listWeek1.add(new ThanhVienGroup(16130332, "Nguyễn Văn Dũ", "Thiết kế trang About", "Hoàn thành", "100%"));
		 listWeek1.add(new ThanhVienGroup(16130318, "Đặng Trần Đạt", "Tìm kiếm giao diện project, Chỉnh sửa project", "Hoàn thành", "100%"));
		 listWeek1.add(new ThanhVienGroup(16130309, "Phạm Hùng Cường","Tìm kiếm giao diện project, Chỉnh sửa project","Hoàn thành", "100%"));
			
		
		return listWeek1;
	}

	public  final void setListWeek1(ArrayList<ThanhVienGroup> listWeek1) {
		this.listWeek1 = listWeek1;
	}

	public final ArrayList<ThanhVienGroup> getListWeek2() {
		return listWeek2;
	}

	public final void setListWeek2(ArrayList<ThanhVienGroup> listWeek2) {
		this.listWeek2 = listWeek2;
	}

	public final ArrayList<ThanhVienGroup> getListWeek3() {
		return listWeek3;
	}

	public final void setListWeek3(ArrayList<ThanhVienGroup> listWeek3) {
		this.listWeek3 = listWeek3;
	}

	public final ArrayList<ThanhVienGroup> getListWeek4() {
		return listWeek4;
	}

	public final void setListWeek4(ArrayList<ThanhVienGroup> listWeek4) {
		this.listWeek4 = listWeek4;
	}

	

}
