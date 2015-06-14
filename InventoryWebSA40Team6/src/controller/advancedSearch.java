package controller;

import java.io.IOException;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import daos.DAOFactory;
import daos.OrderTransactionDAO;
import model.OrderTransactionDTO;

/**
 * Servlet implementation class advancedSearch
 */
@WebServlet("/transactionSearching")
public class advancedSearch extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public advancedSearch() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		try {
			doProcess(request, response);
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
//
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		try {
			doProcess(request, response);
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
	
	private void doProcess(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException, ParseException {
		System.out.println("Reach here 1");
		
		String transid = request.getParameter("orTransId");
		String partNo = request.getParameter("partNo");
		String manuName = request.getParameter("manuName");
		String date = request.getParameter("orderDate");
		String ndate = date.replace('/', '-');
		String userId = request.getParameter("userId");
		String status = request.getParameter("orderStatus");
		
		OrderTransactionDAO transaction = DAOFactory.getOrderTransactionDAO();
		ArrayList<OrderTransactionDTO> trancs = new ArrayList<OrderTransactionDTO>();
		OrderTransactionDTO tr = null;
		
		if(status != "" && status != null)
		{
			trancs = transaction.getTransactionsByStatus(status);
		}
		 if(userId != "" && userId != null)
		{
			int uId = Integer.parseInt(userId);
			trancs = transaction.getTransactionsByUserId(uId);
			System.out.println("UserId");
		}
		 if(ndate != "" && ndate != null)
		{
			//Date d = new Date();
			String sdate = date.substring(3,5);
			String smonth = date.substring(0, 2);
			String syear = date.substring(6, 10);
			String fdate = syear + "-" + smonth + "-" + sdate;
			trancs = transaction.getTransactionssByOrderDate(fdate);
		}
		 if(manuName != "" && manuName != null)
		{
			trancs = transaction.getTransactionsByManufacturerName(manuName);
		}
		 if(partNo != "" && partNo != null)
		{
			int p = Integer.parseInt(partNo);
			trancs = transaction.getTransactionsByPartNo(p);
		}
		if( transid!= "" && transid != null)
		{
			int transId = Integer.parseInt(transid);
			tr = transaction.getOneTransaction(transId);
			trancs.add(tr);
		}

		request.setAttribute("trList", trancs);
		RequestDispatcher rd = request.getRequestDispatcher("/pages/admin/enquirytransaction.jsp");
		rd.forward(request, response);	
	}

}
