<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>Confirm Order</title>
</head>
<body>
<div class="container main">
		<div class="row">	
		<center><h2>Confirm Order Form</h2></center>
				<form action="/Admin/orderProcess" method=post>		
				<table id="inventory" class="table table-responsive table-hover display">
				<thead>
					<tr>						
						<th>No</th>
						<th>Order Id</th>
						<th>Part No</th>
						<th>Order Qty</th>
						<th>Manufacturer Name</th>
						<th>Order Date</th>
						<th>Order Price</th>
					</tr>
				</thead>
					<tbody>
					<c:forEach var="order" items="${orders}" varStatus="status">
					<tr>
						<td>${status.index + 1}</td>
						<td>${order.orTransId}</td>						
						<td>${order.partNo}</td>
						<td>${order.orderQty}</td>
						<td>${order.manuName}</td>
						<td>${order.orderDate}</td>
						<td>${order.orderPrice}</td>	
						<td>
                        <c:url var="updurl" scope="page" value="/Admin/orderProcess">
                            <c:param name="orTransId" value="${order.orTransId}"/>
                        </c:url>
                        <a href="${updurl}">Confirm</a>
                        </td>			
					</tr>
					</c:forEach>
					</tbody>
				</table>	
					<script type="text/javascript">
						$(document).ready(function() {
   						 	$('#order').DataTable();
						} );
					</script>
			</form>
			</div>
		</div>
		<div class="col-md-1"></div>

	

</body>
</html>