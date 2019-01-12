package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.ProductDAO;
import dao.ProductDAOTri;
import model.Product;
import model.ProductTri;

@WebServlet("/ManagerProduct")
public class ManagerProduct extends HttpServlet {
	private static final long serialVersionUID = 1L;
	ProductDAOTri productDAO = new ProductDAOTri();

	public ManagerProduct() {
		super();

	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/html;charset=UTF-8");
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		String loai = request.getParameter("loai");
		System.out.println(loai);
		if (loai.equals("add") || loai.equals("edit") || loai.equals("delete")) {
			String productID = request.getParameter("productID");
			String productName = request.getParameter("productName");
			String productImages = request.getParameter("productImages");
			String productPrice = request.getParameter("productPrice");
			String subCategoryID = request.getParameter("subCategoryID");
			if (loai.equals("delete")) {
				productDAO.delete(productID);
				response.sendRedirect("Backend/quanlysanpham.jsp");
			}
			if (loai.equals("add")) {
				productDAO.add(new ProductTri(productID, productName, productImages, Float.parseFloat(productPrice),
						subCategoryID));
				response.sendRedirect("Backend/quanlysanpham.jsp");
			}
			if (loai.equals("edit")) {

				productDAO.edit(new ProductTri(productID, productName, productImages, Float.parseFloat(productPrice),
						subCategoryID));
				response.sendRedirect("Backend/quanlysanpham.jsp");
			}

		}
	}
}
