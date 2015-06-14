<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Order</title>
</head>
<body>
<div class="container main">
		<div class="row">		
			<center><h2>Product Order Form</h2></center>	
			<!-- <form action="/order" method=post>	 -->	
				<table id="order" class="table table-responsive table-hover ">
				<thead>
					<tr>						
						<th>No</th>
						<th>Part No</th>
						<th>Name</th>
						<th>Unit Price</th>
						<th>Manufacturer Name</th>
						<th>Color</th>
						<th>Dimension</th>
					</tr>
					</thead>
					<tbody>
					<c:forEach var="product" items="${products}" varStatus="status">
					<tr>
						<td>${status.index + 1}</td>
						<td>${product.partNo}</td>						
						<td>${product.partName}</td>
						<td>${product.unitPrice}</td>
						<td>${product.manuName}</td>
						<td>${product.color}</td>
						<td>${product.dimension}</td>	
						<td>
                        <c:url var="updurl" scope="page" value="/Admin/order">
                            <c:param name="partNo" value="${product.partNo}"/>
                        </c:url>
                        <a href="${updurl}">Order</a></td>			
					</tr>
					</c:forEach>
					</tbody>
				</table>
					<script type="text/javascript">
		$(document).ready(function() {
			$('#order').DataTable();
		} );
	</script>
			
		</div>
		
</div>

</body>
</html>