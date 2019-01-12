package dao;

import java.util.ArrayList;

import model.Bill;
import model.DetailBill;

public interface BillDAO {
public void insertBill(Bill bill);
public void insertDetailsBill(DetailBill detail_bill);

public ArrayList<Bill> getListBill();
public ArrayList<DetailBill> getListDetailBill(String bill_id);

public void deleteToBill(String bill_id);
public void deleteToDetailBill(String detail_bill_id);
}
