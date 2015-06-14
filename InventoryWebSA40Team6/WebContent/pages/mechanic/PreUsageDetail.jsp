<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Pre Useage Detail</title>
</head>
<body>

	<div class="container main">
		<div class="row">
			<center>
				<h2>Usage Detail</h2>
			</center>
			<div class="row">
				<div class="alert alert-danger" role="alert" id="error"
					style="display: none; width: 100%;">
					<span class="glyphicon glyphicon-exclamation-sign"
						aria-hidden="true"></span> <span class="sr-only">Error:</span>
					Please Enter Number
				</div>
			</div>
			<form action="/InventoryWebSA40Team6/Mechanic/RecordUsageServlet" method=post>
				<c:if test="${flag==\"true\"}">
					<h4 class="success">
						<span class="glyphicon glyphicon-ok" style="margin-right: 10px;"></span>Usage
						is successfully made!<br>
						<br> <span style="font-size: 14px;">You have used <b>Part:
								${usage.partNo}</b> for <b>quantity: ${usage.qtyused}</b> to <b>customer
								${cname}</b>, <b>vehicle ${vID}</b></span>
					</h4>


				</c:if>
				<c:if test="${flag==\"false\"}">

					<h4 style="color: red;">Usage cannot be made!</h4>
				</c:if>

				<div class="row cus">
					<div class="col-lg-2" style="margin: 0; padding: 0;">
						<label>Customer:</label> <select class="selectpicker form-control"
							required style="clear: both;" name="cus">
							<c:forEach var="customer" items="${customer}">
								<option value="${customer}">${customer}</option>
							</c:forEach>
						</select>

					</div>

					<div class="col-lg-3">
						<label>Vehicle No:</label> <select
							class="selectpicker form-control" required style="clear: both;"
							name="vehicle">
							<c:forEach var="vehicle" items="${vehicles}">
								<option value="${vehicle}">${vehicle}</option>
							</c:forEach>
						</select>
					</div>
				</div>


				<table id ="inventory" class="table table-responsive table-hover display">
					<thead>
						<tr>
							<th>Part No</th>
							<th>Name</th>
							<th>Unit Price</th>
							<th>Manufacturer Name</th>
							<th>Color</th>
							<th>Dimension</th>
							<th>Usage Quantity</th>
						</tr>
					</thead>
					<tbody>
						<tr>

							<td><label>${product.partNo}</label><input type="hidden"
								name="partNo" value="${product.partNo}" /></td>
							<td>${product.partName}</td>
							<td>${product.unitPrice}</td>
							<td>${product.manuName}</td>
							<td>${product.color}</td>
							<td>${product.dimension}</td>
							<td><input type="number" name="qty" min="1" required
								onkeypress="return IsNumeric(event);" ondrop="return false;"
								onpaste="return false;"></td>
						</tr>
					</tbody>
				</table>
					<script type="text/javascript">
		$(document).ready(function() {
			$('#inventory').DataTable();
		} );
	</script>
				<input type="submit" class="btn btn-primary" value="Submit"
					style="margin-right: 20px;">
				<c:url var="updurl" scope="page" value="/Mechanic/LoadUsageServlet">
				</c:url>
				<a href="${updurl}" class="btn-primary"
					style="padding: 9px; border-radius: 5px;">Back</a>
			</form>
		</div>
	</div>
	<script type="text/javascript">
		var specialKeys = new Array();
		specialKeys.push(8); //Backspace
		function IsNumeric(e) {
			var keyCode = e.which ? e.which : e.keyCode
			var ret = ((keyCode >= 46 && keyCode <= 57) || specialKeys
					.indexOf(keyCode) != -1);
			document.getElementById("error").style.display = ret ? "none"
					: "inline";
			return ret;
		}
	</script>


</body>
</html>