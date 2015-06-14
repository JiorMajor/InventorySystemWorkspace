<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>Inventory Stock</title>
		<%
	if (session == null)
		{
	%><c:redirect url="index.jsp" /><%
}
%>
</head>
<body>

<div class="container-fluid">
	<div class="row">

		<div class="col-md-11 col-sm-8 col-xs-8">
			<center>
				<h2>Maintain Inventory Stock</h2>
			</center>
			
	</div>
	<div class="col-md-1"></div>
</div>
</div>
<div class="row">
	<br> <br>
	<div class="col-md-4"></div>
	<div class="col-md-4">
<div class="col-md-4"></div>
</div>
</div>
<div class="row">
	<div class="container-fluid">
		<div class="col-md-1"></div>
		<div class="col-md-10">
			<div class="table-responsive">
				<table id="inventory" class="table table-hover">
					<thead>
						<tr>
							<th>No.</th>
							<th>PartNo.</th>
							<th>PartName</th>
							<th>Unit Price</th>
							<th>Reorder Level</th>
							<th>Min Reorder Quantity</th>
							<th>Total Quantity</th>
							<th>Update</th>
							<th>Delete</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach var="pslist" items="${productlist}" varStatus="count">
						<tr>
							<td style="text-align: center;">${count.index+1}</td>
							<td style="text-align: center;">${pslist.partNo}</td>
							<td style="text-align: center;">${pslist.partName}</td>
							<td style="text-align: center;">${pslist.unitPrice}</td>
							<td style="text-align: center;">${pslist.reorderlvl}</td>
							<td style="text-align: center;">${pslist.minOrderQty}</td>
							<td style="text-align: center;">${pslist.totalQty}</td>
							<td style="text-align: center;">
								<c:url var="udurl" scope="page" value="/Admin/updateProduct">
								<c:param name="partNo" value="${pslist.partNo}" />
							</c:url>
							<a href="${udurl}">
								<span class="glyphicon glyphicon-edit" aria-hidden="true"></span>
							</a>



						</td>
						<td style="text-align: center;">
							<c:url var="delurl" scope="page" value="/Admin/sdelproduct">
							<c:param name="partNo" value="${pslist.partNo}" />
						</c:url>
						<a href="${delurl}"><span class="glyphicon glyphicon-trash" aria-hidden="true"></span>
						</a>			

					</td>
				</tr>
			</c:forEach>
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
</div>
<div class="row">
	<div class="container">
		<hr/>
	</div>
</div>
<div class="row">
	<div class="container-fluid">
		<form action="/InventoryWebSA40Team6/Admin/udinventory" method="get">
			<div class="col-md-1"></div>
			<div class="col-md-10">
				<button type="submit" class="btn btn-success pull-right">Update Inventory</button>
			</div>
			<div class="col-md-1"></div>
		</form>
	</div>
</div>
<div class="row">
	<div class="container">
		<br><br>
	</div>
</div>
</body>
</html>