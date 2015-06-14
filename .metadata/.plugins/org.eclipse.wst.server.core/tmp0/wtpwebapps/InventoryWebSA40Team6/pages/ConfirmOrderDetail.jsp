<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<div class="container main">
		<div class="row">	
		<center><h1>Confirm Order Detail</h1></center>
	<form action="/InventoryWebSA40Team6/ConfirmOrder" method=post>
	<c:if test="${flag==\"true\"}">
		<h4 class="success"><span class="glyphicon glyphicon-ok" style="margin-right:10px;"></span>Order is successfully confirmed!<br><br>
		<br>
		<span style="font-size:14px;">You have confirmed an order for <b>Part: ${ord.partNo}</b> with <b>price ${ord.orderPrice}</b> for <b>quantity: ${ord.orderQty}</b></span></h4>
	</c:if>
	<c:if test="${flag==\"false\"}">
		<h4 style="color:red">Order cannot be confirmed!</h4>
	</c:if>			
				<table class="table table-responsive table-hover">
						<tr class="title">						
						<td>Order Id</td>
						<td>Part No</td>
						<td>Order Qty</td>
						<td>Manufacturer Name</td>
						<td>Order Date</td>
						<td>Order Price</td>
					</tr>
					<tr>
						<td>${order.orTransId}</td></label><input type="hidden" name="orTransId" value="${order.orTransId}"/></td>							
						<td>${order.partNo}</td>
						<td>${order.orderQty}</td>
						<td>${order.manuName}</td>
						<td>${order.orderDate}</td>
						<td>${order.orderPrice}</td>	 		
					</tr>
				</table>	
				<input type="submit" class="btn btn-primary" value="Submit">
				<c:url var="updurl" scope="page" value="/pending">
                </c:url>
                        <a href="${updurl}" class="btn-primary" style="padding:9px; border-radius:5px;">Back</a>
				</form>
		</div>
</div>
				
</body>
</html>