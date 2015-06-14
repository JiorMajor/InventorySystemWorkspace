<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Enter Usage Detail</title>
</head>
<body>
	<div class="container main">
		<div class="row">		
			<center><h1>Usage Detail</h1></center>	
				
				<table id="usagetable" class="table table-responsive table-hover" >
				<thead>
					<tr class="title">						
						<th>No</th>
						<th>Part No</th>
						<th>Name</th>
						<th>Unit Price</th>
						<th>Manufacturer Name</th>
						<th>Color</th>
						<th>Dimension</th>
						<th>&nbsp;</th>
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
                        <c:url var="updurl" scope="page" value="/UsageServlet">
                            <c:param name="partNo" value="${product.partNo}"/>
                        </c:url>
                        <a href="${updurl}">Usage</a></td>			
					</tr>
					</c:forEach>
					</tbody>
				</table>
				<script type="text/javascript">
				$(document).ready(function() {
    			$('#usagetable').DataTable();
				} );
				</script>	
			
		</div>
</div>

</body>
</html>