package controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.ProductDTO;
import model.ProductInventoryDTO;
import daos.DAOFactory;
import daos.ProductDAO;
import daos.ProductInventoryDAO;

/**
 * Servlet implementation class ProductDetailServlet
 */
@WebServlet("/Admin/productdetail")
public class ProductDetailServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ProductDetailServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		boolean flag = true;
		
		int pno =Integer.parseInt(request.getParameter("partno"));
		String pname = request.getParameter("partName");
		double price = Double.parseDouble(request.getParameter("price"));
		String des = request.getParameter("desc");
		String color = request.getParameter("color");
		String di = request.getParameter("dimension");
		String cat = request.getParameter("category");		
		String mName = request.getParameter("manufactureName");
		int reorderlvl =Integer.parseInt(request.getParameter("reorderLvl"));
		int minOrderQty =Integer.parseInt(request.getParameter("minReorderQty"));
		String loc = request.getParameter("shelfLoc");
		
		ProductDAO dao=DAOFactory.getProductDAO();
		
		
		String path="";
	    
	    if(flag==true){
	    	path+="/pages/product_details.jsp";
	    	request.setAttribute("origin", "true");
	    }
	    else
	    {
	    	path+="/pages/product_details.jsp";
	    	request.setAttribute("origin", "false");
	    }

		ProductDTO p = new ProductDTO(pno, pname, price, des, color, di, cat, mName, reorderlvl, minOrderQty, loc);
		dao.updateProduct(p);
		
		RequestDispatcher rd = request.getRequestDispatcher("/pages/admin/product_details.jsp");
		rd.forward(request, response);	
		
	}

}
