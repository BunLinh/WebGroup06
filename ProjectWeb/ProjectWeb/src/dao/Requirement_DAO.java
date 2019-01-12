package dao;

import java.util.ArrayList;

import model.Requirement;

public class Requirement_DAO {
	private static ArrayList<Requirement> list= new ArrayList<Requirement>();
	
	public Requirement_DAO() {
		
	}

	public static final ArrayList<Requirement> getList() {
		list.removeAll(list);
		list.add(new Requirement("Login", "Đặng Trần Đạt", "Phạm Hùng Cường", "Ngô Thị Mỹ Linh","15/11-25/11-2018", "Thực hiện"));
		list.add(new Requirement("Register", "Đặng Trần Đạt", "Phạm Hùng Cường", "Ngô Thị Mỹ Linh","15/11-25/11-2018", "Thực hiện"));
		list.add(new Requirement("Forgot Password", "Đặng Trần Đạt", "Phạm Hùng Cường", "Ngô Thị Mỹ Linh","25/11-20/11-2018", "Thực hiện"));
		list.add(new Requirement("Mua hàng, thêm hàng vào giỏ", "Đặng Trần Đạt", "Nguyễn Văn Dũ", "Phạm Hùng Cường","15/11-20/11-2018", "Thực hiện"));
		list.add(new Requirement("Xóa mặt hàng, tính hóa đơn giỏ hàng", "Ngô Thị Mỹ Linh", "Phạm Hùng Cường", "Đặng Trần Đạt","15/11-20/11-2018", "Thực hiện"));
		return list;
	}

	public static final void setList(ArrayList<Requirement> list) {
		Requirement_DAO.list = list;
	}
	

}
