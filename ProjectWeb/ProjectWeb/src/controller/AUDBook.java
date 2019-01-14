package controller;

import java.io.IOException;
import java.sql.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.BookDAO;
import model.Book;


@WebServlet("/AUDBook")
public class AUDBook extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private static final BookDAO dao= new BookDAO();  
    public AUDBook() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		
		
		String name= request.getParameter("name");
		String description= request.getParameter("description");
		String coupon= request.getParameter("coupon");
		String starday= request.getParameter("starday");
		String quantity =request.getParameter("quantity");
		String book_product= request.getParameter("book_product");
		String book_quantity_product= request.getParameter("book_quantity_product");
		
		
		
		
		
		Book book= new Book(name, description, coupon, starday, quantity, book_product, book_quantity_product);
		if(new BookDAO().addBook(book)) {
			
			response.sendRedirect("Fontend/order/XacnhanOrder.jsp");
		}
		
		
	}

}
