package model;

import java.util.Date;

public class mEnquiryTransactionDTO {
	
	
	int custID;
	String custName;
	String vehID;
	String vehType;
	int useQty;
	Date issueDate;
	public mEnquiryTransactionDTO() {
		super();
		// TODO Auto-generated constructor stub
	}
	public mEnquiryTransactionDTO(int custID, String custName, String vehID,
			String vehType, int useQty, Date issueDate) {
		super();
		this.custID = custID;
		this.custName = custName;
		this.vehID = vehID;
		this.vehType = vehType;
		this.useQty = useQty;
		this.issueDate = issueDate;
	}
	public int getCustID() {
		return custID;
	}
	public void setCustID(int custID) {
		this.custID = custID;
	}
	public String getCustName() {
		return custName;
	}
	public void setCustName(String custName) {
		this.custName = custName;
	}
	public String getVehID() {
		return vehID;
	}
	public void setVehID(String vehID) {
		this.vehID = vehID;
	}
	public String getVehType() {
		return vehType;
	}
	public void setVehType(String vehType) {
		this.vehType = vehType;
	}
	public int getUseQty() {
		return useQty;
	}
	public void setUseQty(int useQty) {
		this.useQty = useQty;
	}
	public Date getIssueDate() {
		return issueDate;
	}
	public void setIssueDate(Date issueDate) {
		this.issueDate = issueDate;
	}
	@Override
	public String toString() {
		return "mEnquiryTransactionDTO [custID=" + custID + ", custName="
				+ custName + ", vehID=" + vehID + ", vehType=" + vehType
				+ ", useQty=" + useQty + ", issueDate=" + issueDate + "]";
	}
	
	
	
}
