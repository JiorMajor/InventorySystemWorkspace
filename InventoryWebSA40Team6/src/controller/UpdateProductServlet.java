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
import daos.DAOFactory;
import daos.ProductDAO;
import daos.ProductInventoryDAO;

/**
 * Servlet implementation class UpdateProductServlet
 */
@WebServlet("/Admin/updateProduct")
public class UpdateProductServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpdateProductServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		int pno = Integer.parseInt(request.getParameter("partNo"));
		ProductDAO pinv = DAOFactory.getProductDAO();
		ProductDTO p =  pinv.getOneProduct(pno);
		
		request.setAttribute("parNo", p.getPartNo());
		request.setAttribute("parName", p.getPartName());
		request.setAttribute("price", p.getUnitPrice());
		request.setAttribute("des", p.getDescription());
		request.setAttribute("color", p.getColor());
		request.setAttribute("dimension", p.getDimension());
		request.setAttribute("category", p.getCategory());
		request.setAttribute("manuName", p.getManuName());
		request.setAttribute("reorderLvl", p.getReorderlvl());
		request.setAttribute("minReorderQty", p.getMinOrderQty());
		request.setAttribute("shelfLocation", p.getShelfLocation());
		
		ProductDAO dao=DAOFactory.getProductDAO();
		ArrayList<String> catlist=dao.getCategoryList();
		request.setAttribute("catlist", catlist);

		
		RequestDispatcher rd1 = request.getRequestDispatcher("/pages/admin/product_details.jsp");
		rd1.forward(request, response);

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}
	
	
		
		
		
	

}
