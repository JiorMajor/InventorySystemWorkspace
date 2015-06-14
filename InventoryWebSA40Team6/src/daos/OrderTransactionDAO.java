package daos;

import java.util.ArrayList;

import model.OrderTransactionDTO;

public interface OrderTransactionDAO {

	public abstract ArrayList<OrderTransactionDTO> getAllTransactions();

	public abstract Boolean createNewOrder(OrderTransactionDTO b);
	
	public abstract int getAutoOrTransID();
	
	public abstract ArrayList<OrderTransactionDTO> getTransactionsByManufacturerName(String id);

	public abstract ArrayList<OrderTransactionDTO> searchTxnHistoryPartial(
			OrderTransactionDTO order);
	
	public abstract ArrayList<OrderTransactionDTO> getTransactionsByUserId(int id);
	
	public abstract ArrayList<OrderTransactionDTO> getTransactionsByPartNo(int id);
	
	public abstract ArrayList<OrderTransactionDTO> getTransactionsByStatus(String id);

	public abstract ArrayList<OrderTransactionDTO> getTransactionssByOrderDate(String id);
	
	public abstract ArrayList<OrderTransactionDTO> getAllPendingTransactions();
	
	public abstract OrderTransactionDTO getOneTransaction(int id);
	
	public abstract Boolean updateOrder(OrderTransactionDTO b);

}