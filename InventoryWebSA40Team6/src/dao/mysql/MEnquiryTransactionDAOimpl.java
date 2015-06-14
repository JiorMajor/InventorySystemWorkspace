package dao.mysql;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import daos.MEnquiryTransactionDAO;
import model.mEnquiryTransactionDTO;

public class MEnquiryTransactionDAOimpl implements MEnquiryTransactionDAO {
	private static Connection connection;
	private static Statement statement;
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
	 * @see dao.mysql.MEnquiryTransactionDAO#getAlltransaction()
	 */
	@Override
	public ArrayList<mEnquiryTransactionDTO> getAlltransaction()
	{
		OpenConnection();
		ArrayList<mEnquiryTransactionDTO> result = new ArrayList<mEnquiryTransactionDTO>();
		try {
			rs = statement.executeQuery("select tr.CustomerID, c.CustomerName, tr.VehicleId, "
					+ "v.VehicleType, tr.QtyUsed, tr.UsageDate "
					+ "from sa40team06.customer c, "
					+ "sa40team06.vehicle v, sa40team06.usagetransaction tr "
					+ "where c.CustomerID = tr.CustomerId and v.VehicleID = tr.VehicleId");
			
			while(rs.next())
			{
				mEnquiryTransactionDTO tr = new mEnquiryTransactionDTO (rs.getInt("CustomerId"), rs.getString("CustomerName"), 
																		rs.getString("VehicleId"), rs.getString("VehicleType"),
																		rs.getInt("QtyUsed"),rs.getDate("UsageDate"));
						
				result.add(tr);
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

}
