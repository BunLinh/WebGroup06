package dao;

import java.util.ArrayList;

import model.Account;


public interface AccountDAO {
	public boolean addAcount(Account acount);
	public boolean deleteAcount(int acountID);
	public boolean checkLogin(Account acount);
	public ArrayList<Account> getAllAcount();
	Account getOneAccount(String username);

}
