package controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Date;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.CustomerDTO;
import model.ProductDTO;
import model.ProductInventoryDTO;
import model.UsageTransactionDTO;
import model.UserDTO;
import model.VehicleDTO;
import daos.CustomerDAO;
import daos.DAOFactory;
import daos.ProductDAO;
import daos.ProductInventoryDAO;
import daos.UsageTransactionDAO;
import daos.VehicleDAO;

/**
 * Servlet implementation class RecordUsageServlet
 */
@WebServlet("/Mechanic/RecordUsageServlet")
public class RecordUsageServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RecordUsageServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String temp = request.getParameter("partNo");
		
			CustomerDAO cddao=DAOFactory.getCustomerDAO();
			ArrayList<CustomerDTO> customers=cddao.getAllCustomers();
			ArrayList<String> clist=new ArrayList<String>();
			for (CustomerDTO customerDTO : customers) {
					clist.add(customerDTO.getCustomerName());	
			}
			
			VehicleDAO vdao=DAOFactory.getVehicleDAO();
			ArrayList<VehicleDTO> vehicles=vdao.getAllVehicles();
			ArrayList<String> vlist=new ArrayList<String>();
			for (VehicleDTO vehicleDTO : vehicles) {
				vlist.add(vehicleDTO.getVehicleId());
				
			}
		
		if(!temp.equals("") && !temp.equals(null))
		{
			String cname=request.getParameter("cus");
			String vID=request.getParameter("vehicle");
			int partNo = Integer.parseInt(request.getParameter("partNo"));
			int usageQty = Integer.parseInt(request.getParameter("qty"));
			
			
			UsageTransactionDAO dao = DAOFactory.getUsageTransactionDAO();
			ProductDAO pdao = DAOFactory.getProductDAO();
			ProductDTO product = pdao.getOneProduct(partNo);				
			
			
			CustomerDAO cdao=DAOFactory.getCustomerDAO();
		    CustomerDTO cdto=cdao.getOneCustomerbyname(cname);
		    
		    int cID=cdto.getCustomerId();	
		    
		    ProductInventoryDAO pidao=DAOFactory.getProductInventoryDAO();
		    ProductInventoryDTO pidto=pidao.getOneStatement(partNo);
		    int total=pidto.getTotalQty();
		    int avaQty = pidto.getAvailableQty();
		   			
		   
			Date usageDate = new Date();
			UserDTO user = (UserDTO)request.getSession(false).getAttribute("user");
			int userId = user.getUserId();

			System.out.println(usageDate);
			System.out.println(dao.getAutoTranId());
			UsageTransactionDTO usage=new UsageTransactionDTO(dao.getAutoTranId(), userId, cID, vID, partNo, usageQty, usageDate);
			System.out.println(usage);
			if(avaQty - usageQty > -1)
			{
				Boolean check = dao.insertTransaction(usage);
				if(check==true)
				{				
					request.setAttribute("customer", clist);	
					request.setAttribute("vehicles", vlist);
					request.setAttribute("flag", "true");
					request.setAttribute("usage", usage);
					request.setAttribute("cname", cname);
					request.setAttribute("vID", vID);
					int totalPrd=total-usageQty;
					int avaqty=avaQty-usageQty;
					pidto.setTotalQty(totalPrd);
					pidto.setAvailableQty(avaqty);
					pidao.updateProduct(pidto);			
					
				}
				else
				{
					request.setAttribute("customer", clist);	
					request.setAttribute("vehicles", vlist);
					request.setAttribute("flag", "false");
				}
			}
			else
			{
				request.setAttribute("customer", clist);	
				request.setAttribute("vehicles", vlist);
				request.setAttribute("flag", "false");
			}
			
		}
		else
		{
			request.setAttribute("customer", clist);	
			request.setAttribute("vehicles", vlist);
			request.setAttribute("flag", "false");
		}
			
		RequestDispatcher rd = request.getRequestDispatcher("/pages/mechanic/PreUsageDetail.jsp");
		rd.forward(request, response);
	}

}
