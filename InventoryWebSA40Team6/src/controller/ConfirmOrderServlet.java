package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.OrderTransactionDTO;
import model.ProductDTO;
import model.ProductInventoryDTO;
import daos.DAOFactory;
import daos.OrderTransactionDAO;
import daos.ProductDAO;
import daos.ProductInventoryDAO;

/**
 * Servlet implementation class ConfirmOrderServlet
 */
@WebServlet("/Admin/ConfirmOrder")
public class ConfirmOrderServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ConfirmOrderServlet() {
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
		String temp = request.getParameter("orTransId");
		
		if(!temp.equals(null) && !temp.equals(""))
		{
		
			int orTransId = Integer.parseInt(request.getParameter("orTransId"));
			OrderTransactionDAO dao = DAOFactory.getOrderTransactionDAO();
			OrderTransactionDTO order = dao.getOneTransaction(orTransId);
			Boolean flag = dao.updateOrder(order);

			ProductInventoryDAO pdao = DAOFactory.getProductInventoryDAO();
			ProductInventoryDTO product = pdao.getOneStatement(order.getPartNo());
		
			product.setTotalQty(product.getTotalQty() + order.getOrderQty());
			product.setAvailableQty(product.getAvailableQty() + order.getOrderQty());	
		
			if(flag==true)
			{
				pdao.updateProduct(product);
				request.setAttribute("flag", "true");
				request.setAttribute("ord", order);		
			}
			else
			{
				request.setAttribute("flag", "false");
			}
		
		}
		else
		{
			request.setAttribute("flag", "false");
		}
		
		RequestDispatcher rd = request.getRequestDispatcher("/pages/admin/ConfirmOrderDetail.jsp");
		rd.forward(request, response);
	}

}
