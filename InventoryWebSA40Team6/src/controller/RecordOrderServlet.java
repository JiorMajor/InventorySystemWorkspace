package controller;

import java.io.IOException;
import java.util.Date;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.OrderTransactionDTO;
import model.ProductDTO;
import model.UserDTO;
import daos.DAOFactory;
import daos.OrderTransactionDAO;
import daos.ProductDAO;

/**
 * Servlet implementation class RecordOrderServlet
 */
@WebServlet("/Admin/recordOrder")
public class RecordOrderServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RecordOrderServlet() {
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
		String temp = request.getParameter("partNo");
		
		if(!temp.equals(null) && !temp.equals(""))
		{
			int partNo = Integer.parseInt(request.getParameter("partNo"));
			int orderQty = Integer.parseInt(request.getParameter("qty"));
			
			OrderTransactionDAO dao = DAOFactory.getOrderTransactionDAO();
			ProductDAO pdao = DAOFactory.getProductDAO();
			ProductDTO product = pdao.getOneProduct(partNo);
			
			UserDTO user = (UserDTO)request.getSession(false).getAttribute("user");
			
			String manuName = product.getManuName();
			Date orderDate = new Date();
			int userId = user.getUserId();
			double ttt = product.getUnitPrice() * orderQty;
			double orderPrice = Math.round(ttt * 100.0)/100.0;
			String orderStatus = "Pending";
			
			OrderTransactionDTO order = new OrderTransactionDTO(dao.getAutoOrTransID(), partNo, orderQty, manuName, orderDate, userId, orderPrice, orderStatus);	
			
			Boolean check = dao.createNewOrder(order);
			if(check==true)
			{
				request.setAttribute("flag", "true");
				request.setAttribute("order", order);
				
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
			
		RequestDispatcher rd = request.getRequestDispatcher("/pages/admin/PreOrderDetail.jsp");
		rd.forward(request, response);
	}

}
