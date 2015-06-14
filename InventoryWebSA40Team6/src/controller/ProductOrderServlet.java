package controller;

import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.ProductDTO;
import daos.DAOFactory;
import daos.ProductDAO;

/**
 * Servlet implementation class ProductOrderServlet
 */
@WebServlet("/Admin/order")
public class ProductOrderServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ProductOrderServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub	
		int partNo = Integer.parseInt(request.getParameter("partNo"));
		ProductDAO pdao = DAOFactory.getProductDAO();
		ProductDTO product = pdao.getOneProduct(partNo);
		request.setAttribute("product", product);
		
		RequestDispatcher rd = request.getRequestDispatcher("/pages/admin/PreOrderDetail.jsp");
		rd.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub

	}

}
