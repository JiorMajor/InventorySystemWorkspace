package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.OrderTransactionDTO;
import daos.DAOFactory;
import daos.OrderTransactionDAO;

/**
 * Servlet implementation class OrderProcessServlet
 */
@WebServlet("/Admin/orderProcess")
public class OrderProcessServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public OrderProcessServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		int orTransId = Integer.parseInt(request.getParameter("orTransId"));
		
		OrderTransactionDAO dao = DAOFactory.getOrderTransactionDAO();
		OrderTransactionDTO order = dao.getOneTransaction(orTransId);
		
		request.setAttribute("order", order);
		
		RequestDispatcher rd = request.getRequestDispatcher("/pages/admin/ConfirmOrderDetail.jsp");
		rd.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
	}

}
