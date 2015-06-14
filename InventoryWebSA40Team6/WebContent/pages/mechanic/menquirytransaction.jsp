<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>Enquiry Transaction History</title>
</head>
<body>
	<div class="container">
		<div class="row">
			<button type="button" value="Print" onclick="window.print()" class="NonPrintable btn btn-default" style="margin-top:10px; margin-left:-30px;float:right;">
			<span class="glyphicon glyphicon-print"></span>
			</button>
			<div class="col-md-11 col-sm-8 col-xs-8">
			<center><h2>Enquiry Transaction History</h2></center>
			</div>
			<div class="col-md-1"></div>
		</div>
	</div>
	<div class="row"><br><br></div>
	<div class="row">
		<div class="col-md-1">
		</div>
		<div class="col-md-10">
			<div class="table-responsive">
				<table id = "menquirytr" class="table table-hover" >
					<thead>
						<tr>
							
							<th>Customer ID</th>
							<th>Customer Name</th>
							<th>Vehicle ID</th>
							<th>Vehicle Type</th>
							<th>Used Parts Qty</th>
							<th>Issued Date</th>
						</tr>
					</thead>
					<tbody>
					
					<c:forEach var="tran"  items="${mtran}" varStatus="status">
						<tr>
							<td>${tran.custID}</td>
							<td>${tran.custName}</td>
							<td>${tran.vehID}</td>
							<td>${tran.vehType}</td>
							<td>${tran.useQty}</td>
							<td>${tran.issueDate}</td>
						</tr>
						</c:forEach> 
						
					</tbody>
				</table>
				<script type="text/javascript">
		$(document).ready(function() {
			$('#menquirytr').DataTable();
		} );
	</script>
			</div>
		</div>
		<div class="col-md-1"></div>
	</div>
	
</div>
</body>
</html>