package controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.ProductStockDTO;
import daos.DAOFactory;
import daos.ProductDAO;
import daos.ProductStockDAO;

/**
 * Servlet implementation class EnquiryStockServlet
 */
@WebServlet("/Mechanic/enquirystock")
public class EnquiryStockServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public EnquiryStockServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		ProductStockDAO ps = DAOFactory.getProductStockDAO();
		ArrayList<ProductStockDTO> pslist = ps.getAllProductList();
		System.out.println(pslist.toString());
		request.setAttribute("productlist", pslist);
		ProductDAO p = DAOFactory.getProductDAO();
		ArrayList<String> category = p.getCategoryList();
		request.setAttribute("catlist", category);
		RequestDispatcher rd = request.getRequestDispatcher("/pages/mechanic/menquirystock.jsp");
		rd.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

}
