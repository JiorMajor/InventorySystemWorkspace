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
		<center><h2>Product Order Detail</h2></center>
		<div class="row">
					<div class="alert alert-danger" role="alert" id="error" style="display: none; width:100%;">
					  <span class="glyphicon glyphicon-exclamation-sign" aria-hidden="true"></span>
					  <span class="sr-only">Error:</span>
					  Please Enter Number
					</div>
				</div>
	<form action="/InventoryWebSA40Team6/Admin/recordOrder" method=post>
	<c:if test="${flag==\"true\"}">
		<h4 class="success"><span class="glyphicon glyphicon-ok" style="margin-right:10px;"></span>Order is successfully made!<br><br>	
		<span style="font-size:14px;">You have ordered <b>Part: ${order.partNo}</b> with <b>price ${order.orderPrice}</b> for <b>quantity: ${order.orderQty}</b></span></h4>
	</c:if>
	<c:if test="${flag==\"false\"}">
		<h4 style="color:red">Order cannot be made!</h4>
	</c:if>			
				<table id ="preorderdetail" class="table table-responsive table-hover">
				<thead>
					<tr class="title">						
						<th>Part No</th>
						<th>Name</th>
						<th>Unit Price</th>
						<th>Manufacturer Name</th>
						<th>Color</th>
						<th>Dimension</th>
						<th>Order Quantity</th>
					</tr>
					</thead>
					<tbody>
					<tr>
						<td><label>${product.partNo}</label><input type="hidden" name="partNo" value="${product.partNo}"/></td>				
						<td>${product.partName}</td>
						<td>${product.unitPrice}</td>
						<td>${product.manuName}</td>
						<td>${product.color}</td>
						<td>${product.dimension}</td>
						<td><input type="number" name="qty" min="1" required onkeypress="return IsNumeric(event);" ondrop="return false;" onpaste="return false;"></td>				
					</tr>
					</tbody>
				</table>	
				
					<script type="text/javascript">
		$(document).ready(function() {
			$('#preorderdetail').DataTable();
		} );
	</script>
				<input type="submit" class="btn btn-primary" value="Submit" style="margin-right:20px;" >
				<c:url var="updurl" scope="page" value="/Admin/test">
                </c:url>
                        <a href="${updurl}" class="btn-primary" style="padding:9px; border-radius:5px;">Back</a>
				</form>
		</div>
</div>
				<script type="text/javascript">
				        var specialKeys = new Array();
				        specialKeys.push(8); //Backspace
				        function IsNumeric(e) {
				            var keyCode = e.which ? e.which : e.keyCode
				            var ret = ((keyCode >= 46 && keyCode <= 57) || specialKeys.indexOf(keyCode) != -1);
				            document.getElementById("error").style.display = ret ? "none" : "inline";
				            return ret;
				        }
				</script>			
</body>
</html>