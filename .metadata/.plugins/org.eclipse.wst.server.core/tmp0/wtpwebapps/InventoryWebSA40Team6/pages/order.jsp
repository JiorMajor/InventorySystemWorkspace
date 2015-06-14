<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<div class="container main">
		<div class="row">		
			<center><h1>Product Order Form</h1></center>	
			<form action="/order" method=post>		
				<table id="inventory" class="table table-responsive table-hover display">
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
                        <c:url var="updurl" scope="page" value="/order">
                            <c:param name="partNo" value="${product.partNo}"/>
                        </c:url>
                        <a href="${updurl}">Order</a></td>			
					</tr>
					</c:forEach>
					</tbody>
				</table>
									<script type="text/javascript">
						$(document).ready(function() {
   						 	$('#inventory').DataTable();
						} );
					</script>	
			</form>
		</div>
</div>

</body>
</html>