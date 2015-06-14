package dao.mysql;

import java.sql.PreparedStatement;
import java.sql.Timestamp;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import model.OrderTransactionDTO;
import daos.OrderTransactionDAO;

import java.util.Date;

public class OrderTransactionDAOImpl implements OrderTransactionDAO {

	private static Connection connection;
	private static Statement statement;
	private static PreparedStatement pstatement;
	private static ResultSet rs;
	
	public static void OpenConnection()
	{
		try {
			Class.forName("com.mysql.jdbc.Driver");
			connection = DriverManager.getConnection(
					"jdbc:mysql://localhost:3306/sa40team06", "root", "");
			statement = connection.createStatement();
			
		} catch (ClassNotFoundException e) {
			// TODO: handle exception
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	public static void CloseConnection()
	{
		try {
			statement.close();
			connection.close();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	/* (non-Javadoc)
	 * @see dao.mysql.OrderTransactionDAO#getAllTransactions()
	 */
	@Override
	public ArrayList<OrderTransactionDTO> getAllTransactions()
	{
		OpenConnection();
		ArrayList<OrderTransactionDTO> result = new ArrayList<OrderTransactionDTO>();
		try {	
			rs = statement.executeQuery("SELECT * FROM sa40team06.ordertransaction");
			while(rs.next())
			{
				Timestamp t = rs.getTimestamp("OrderDate");
				Date d = null;
				if(t != null)
				{
					d = new Date(t.getTime());
				}
				OrderTransactionDTO c = new OrderTransactionDTO(rs.getInt("OrTransactionId"), rs.getInt("PartNo"), rs.getInt("OrderQty"),
						rs.getString("ManufacturerName"), d, rs.getInt("UserId"), rs.getDouble("OrderPrice"), rs.getString("Status"));
				result.add(c);
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		finally
		{
			CloseConnection();
		}
		return result;
	}
	
	@Override
	public ArrayList<OrderTransactionDTO> getAllPendingTransactions()
	{
		OpenConnection();
		ArrayList<OrderTransactionDTO> result = new ArrayList<OrderTransactionDTO>();
		try {	
			rs = statement.executeQuery("SELECT * FROM sa40team06.ordertransaction WHERE Status = 'Pending'");
			while(rs.next())
			{
				Timestamp t = rs.getTimestamp("OrderDate");
				Date d = null;
				if(t != null)
				{
					d = new Date(t.getTime());
				}
				OrderTransactionDTO c = new OrderTransactionDTO(rs.getInt("OrTransactionId"), rs.getInt("PartNo"), rs.getInt("OrderQty"),
						rs.getString("ManufacturerName"), d, rs.getInt("UserId"), rs.getDouble("OrderPrice"), rs.getString("Status"));
				result.add(c);
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		finally
		{
			CloseConnection();
		}
		return result;
	}
	
	@Override
	public OrderTransactionDTO getOneTransaction(int id)
	{
		OpenConnection();
		OrderTransactionDTO result = null;
		try {	
			rs = statement.executeQuery("SELECT * FROM sa40team06.ordertransaction WHERE OrTransactionID = " + id +";");
			while(rs.next())
			{
				Timestamp t = rs.getTimestamp("OrderDate");
				Date d = null;
				if(t != null)
				{
					d = new Date(t.getTime());
				}
				result = new OrderTransactionDTO(rs.getInt("OrTransactionId"), rs.getInt("PartNo"), rs.getInt("OrderQty"),
						rs.getString("ManufacturerName"), d, rs.getInt("UserId"), rs.getDouble("OrderPrice"), rs.getString("Status"));
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		finally
		{
			CloseConnection();
		}
		return result;
	}
	
	@Override
	public ArrayList<OrderTransactionDTO> getTransactionsByPartNo(int id)
	{
		OpenConnection();
		ArrayList<OrderTransactionDTO> r = new ArrayList<OrderTransactionDTO>();
		try {	
			rs = statement.executeQuery("SELECT * FROM sa40team06.ordertransaction WHERE PartNo =" + id + ";");
			
			while(rs.next())
			{
				Timestamp t = rs.getTimestamp("OrderDate");
				Date d = null;
				if(t != null)
				{
					d = new Date(t.getTime());
				}
				OrderTransactionDTO result = new OrderTransactionDTO(rs.getInt("OrTransactionId"), rs.getInt("PartNo"), rs.getInt("OrderQty"),
						rs.getString("ManufacturerName"), d, rs.getInt("UserId"), rs.getDouble("OrderPrice"), rs.getString("Status"));
				r.add(result);
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		finally
		{
			CloseConnection();
		}
		return r;
	}
	
	@Override
	public ArrayList<OrderTransactionDTO> getTransactionsByManufacturerName(String id)
	{
		OpenConnection();
		ArrayList<OrderTransactionDTO> r = new ArrayList<OrderTransactionDTO>();
		try {	
			rs = statement.executeQuery("SELECT * FROM sa40team06.ordertransaction WHERE ManufacturerName ='" + id + "';");
			
			while(rs.next())
			{
				Timestamp t = rs.getTimestamp("OrderDate");
				Date d = null;
				if(t != null)
				{
					d = new Date(t.getTime());
				}
				OrderTransactionDTO result = new OrderTransactionDTO(rs.getInt("OrTransactionId"), rs.getInt("PartNo"), rs.getInt("OrderQty"),
						rs.getString("ManufacturerName"), d, rs.getInt("UserId"), rs.getDouble("OrderPrice"), rs.getString("Status"));
				r.add(result);
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		finally
		{
			CloseConnection();
		}
		return r;
	}
	
	@Override
	public ArrayList<OrderTransactionDTO> getTransactionsByUserId(int id)
	{
		OpenConnection();
		ArrayList<OrderTransactionDTO> r = new ArrayList<OrderTransactionDTO>();
		try {	
			rs = statement.executeQuery("SELECT * FROM sa40team06.ordertransaction WHERE UserId =" + id + ";");
			
			while(rs.next())
			{
				Timestamp t = rs.getTimestamp("OrderDate");
				Date d = null;
				if(t != null)
				{
					d = new Date(t.getTime());
				}
				OrderTransactionDTO result = new OrderTransactionDTO(rs.getInt("OrTransactionId"), rs.getInt("PartNo"), rs.getInt("OrderQty"),
						rs.getString("ManufacturerName"), d, rs.getInt("UserId"), rs.getDouble("OrderPrice"), rs.getString("Status"));
				r.add(result);
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		finally
		{
			CloseConnection();
		}
		return r;
	}
	
	@Override
	public ArrayList<OrderTransactionDTO> getTransactionsByStatus(String id)
	{
		OpenConnection();
		ArrayList<OrderTransactionDTO> r = new ArrayList<OrderTransactionDTO>();
		try {	
			rs = statement.executeQuery("SELECT * FROM sa40team06.ordertransaction WHERE Status ='" + id + "';");
			
			while(rs.next())
			{
				Timestamp t = rs.getTimestamp("OrderDate");
				Date d = null;
				if(t != null)
				{
					d = new Date(t.getTime());
				}
				OrderTransactionDTO result = new OrderTransactionDTO(rs.getInt("OrTransactionId"), rs.getInt("PartNo"), rs.getInt("OrderQty"),
						rs.getString("ManufacturerName"), d, rs.getInt("UserId"), rs.getDouble("OrderPrice"), rs.getString("Status"));
				r.add(result);
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		finally
		{
			CloseConnection();
		}
		return r;
	}
	
	@Override
	public ArrayList<OrderTransactionDTO> getTransactionssByOrderDate(String id)
	{
		OpenConnection();
		ArrayList<OrderTransactionDTO> result=new ArrayList<OrderTransactionDTO>();
		try {	
			rs = statement.executeQuery("SELECT * FROM sa40team06.ordertransaction WHERE OrderDate LIKE '%" + id + "%';");
			
			while(rs.next())
			{
				Timestamp t = rs.getTimestamp("OrderDate");
				Date d = null;
				if(t != null)
				{
					d = new Date(t.getTime());
					
				}
				OrderTransactionDTO r = new OrderTransactionDTO(rs.getInt("OrTransactionId"), rs.getInt("PartNo"), rs.getInt("OrderQty"),
						rs.getString("ManufacturerName"), d, rs.getInt("UserId"), rs.getDouble("OrderPrice"), rs.getString("Status"));
				result.add(r);
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		finally
		{
			CloseConnection();
		}
		return result;
	}
	
	/* (non-Javadoc)
	 * @see dao.mysql.OrderTransactionDAO#searchTxnHistoryPartial(int, int, int, java.lang.String, java.util.Date, int)
	 */
	@Override
	public ArrayList<OrderTransactionDTO> searchTxnHistoryPartial(OrderTransactionDTO order)
	{
		OpenConnection();
		ArrayList<OrderTransactionDTO> result = new ArrayList<OrderTransactionDTO>();
		try {
			
			String sql="select * from sa40team06.ordertransaction "
					+ "where OrTransactionId=? or PartNo=? or ManufacturerName = '?' or  "
					+ " OrderDate = ? or UserId = ? or Status=?";
			
			
			
			pstatement=connection.prepareStatement(sql);
			pstatement.setInt(1, order.getOrTransId());
			pstatement.setInt(2, order.getPartNo());
			pstatement.setString(3, order.getManuName());	
			pstatement.setDate(4, (java.sql.Date) order.getOrderDate());
			pstatement.setInt(5, order.getUserId());
			pstatement.setString(6, order.getOrderStatus());
			
			pstatement.execute();
			
			while (rs.next())
			{
				Timestamp t = rs.getTimestamp("OrderDate");
				Date date = null;
				if(t != null)
				{
					date = new Date(t.getTime());
				}
				OrderTransactionDTO c = new OrderTransactionDTO(rs.getInt("OrTransactionId"), rs.getInt("PartNo"), rs.getInt("Status"),
						rs.getString("ManufacturerName"), t, rs.getInt("UserId"), rs.getDouble("OrderPrice"), rs.getString("Status"));
				result.add(c);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			CloseConnection();
		}
		
		
		return result;
		
	}
	/* (non-Javadoc)
	 * @see dao.mysql.OrderTransactionDAO#createNewOrder(model.OrderTransactionDTO)
	 */
	@Override
	public Boolean createNewOrder(OrderTransactionDTO b)
	{
		OpenConnection();
		
		try {
			java.sql.Date date = new java.sql.Date(b.getOrderDate().getTime());
			
			statement.executeUpdate("INSERT INTO sa40team06.ordertransaction VALUES(" +
					b.getOrTransId() + 
					", " + b.getPartNo() +
					", " + b.getOrderQty() +
					", '" + b.getManuName() +
					"', '" + date +
					"', " + b.getUserId() + 
					", " + b.getOrderPrice() +
					", '" + b.getOrderStatus() + "');");
			
			return true;
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return false;
		}
		finally{
			
			CloseConnection();
		}
	}
	
	@Override
	public Boolean updateOrder(OrderTransactionDTO b)
	{
		OpenConnection();
		
		try {
			
			statement.executeUpdate("UPDATE sa40team06.ordertransaction SET Status = 'Confirm' WHERE OrTransactionId = "+ b.getOrTransId() +";");
			
			return true;
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return false;
		}
		finally{
			
			CloseConnection();
		}
	}
	
	@Override
	public int getAutoOrTransID()
	{
		int id = 1;
		ArrayList<OrderTransactionDTO> trans = this.getAllTransactions();
		int i = trans.size();
		if(i > 1)
		{
			id = i + 1;
		}
		return id;
	}
	
}
