<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="f" uri="http://java.sun.com/jsp/jstl/fmt" %>
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
			<center><h2>Enquiry Transaction History</h2></center>
			
			<div class="col-md-11 col-sm-8 col-xs-8">
				


			</div>
			<div class="col-md-1 col-sm-4 col-xs-4"></div>
		</div>
	</div>
	<div class="row"><br><br></div>
	<div class="row">
		<div class="col-md-1">
		</div>
		<div class="col-md-10">
			<div class="table-responsive">
				<table id ="inventory" class="table table-hover">
					<thead>
						<tr>
							<th>No</th>
							<th>Order Transaction ID</th>
							<th>Part No</th>
							<th>Order Quantity</th>
							 <th>ManufacturerName</th>
							<th>Order Date</th>
							<th>User ID</th>
							<th>Order Price</th>
							<th>Order Status</th>
						</tr>
					</thead>
					<tbody>
						
							<c:forEach var="tran" items="${trList}" varStatus="status">
							
							<tr>
							<td>${status.index+1}</td>
							<td>${tran.orTransId}</td>
							<td>${tran.partNo}</td>
							<td>${tran.orderQty}</td>
							<td>${tran.manuName}</td>
							<td><f:formatDate value="${tran.orderDate}" pattern="yyyy/MM/dd"/></td>
							<td>${tran.userId}</td>	
							<td>${tran.orderPrice}</td>
							<td>${tran.orderStatus}</td>
							</tr>
							</c:forEach>
							<%-- <input type="hidden" value="${tran.orTransId}"} /> --%>
					</tbody>
				</table>
				
				<script type="text/javascript">
	$(document).ready(function() {
    $('#inventory').DataTable();
	} );
</script>
				
			</div>
		</div>
		<div class="col-md-1"></div>
	</div>
	
	<script src="//code.jquery.com/ui/1.11.4/jquery-ui.js"></script>
	<script type="text/javascript">
	$(function() {
		console.log($("#datepicker").val());
	    $( "#datepicker" ).datepicker();
	 });
	</script>
</div>
</body>
</html>