package controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.CustomerDTO;
import model.OrderTransactionDTO;
import model.VehicleDTO;
import model.mEnquiryTransactionDTO;
import daos.CustomerDAO;
import daos.DAOFactory;
import daos.MEnquiryTransactionDAO;
import daos.OrderTransactionDAO;
import daos.VehicleDAO;

/**
 * Servlet implementation class menquirytransactionServlet
 */
@WebServlet("/Mechanic/mtransaction")
public class menquirytransactionServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public menquirytransactionServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub

		MEnquiryTransactionDAO mEnqTran = DAOFactory.getMEnquiryTransactionDAO();
		ArrayList<mEnquiryTransactionDTO> tran = mEnqTran.getAlltransaction();
		request.setAttribute("mtran", tran);
		RequestDispatcher rd = request.getRequestDispatcher("/pages/mechanic/menquirytransaction.jsp");
		rd.forward(request, response);
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

}
