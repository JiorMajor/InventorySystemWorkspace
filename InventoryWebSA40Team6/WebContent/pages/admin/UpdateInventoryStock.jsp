<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Inventory Stock</title>
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
		<c:if test="${success==\"true\"}">
			<h5 class="alert alert-success" style="text-align:center;">
				<span class="glyphicon glyphicon-ok" style="margin-right: 10px;"></span>Product data is successfully updated!
				</h5>
		</c:if>
		<c:if test="${success==\"false\"}">
			<h5 class="alert alert-danger" style="text-align:center;">Product cannot be updated!</h5>
		</c:if>
		</div>
		<div class="col-md-4"></div>
	</div>
	<div class="row">
		<div class="col-md-1"></div>
		<div class="col-md-10">
			<div class="table-responsive">
				<table id="inventory" class="table table-hover display">
					<thead>
						<tr>
							<th>No.</th>
							<th>PartNo.</th>
							<th>PartName</th>
							<th>Reorder Level</th>
							<th>Min Reorder Quantity</th>
							<th>Total Quantity</th>
							<th>Available Quantity</th>
							<th>Damaged Quantity</th>
							<th>Save</th>
						</tr>
					</thead>
					<tbody>
					
						<c:forEach var="pslist" items="${productlist}" varStatus="count">
							<tr>
							<form action="/InventoryWebSA40Team6/Admin/udinventory" method="post" name="form-${count.index}">
								<td style="text-align: center;">${count.index+1}</td>
								<td style="text-align: center;">${pslist.partNo}</td>
								<td style="text-align: center;">${pslist.partName}</td>
								<td style="text-align: center;">${pslist.reorderlvl}</td>
								<td style="text-align: center;">${pslist.minOrderQty}</td>
								<td style="text-align: center;">
								<input type="number" id="total" class="form-control" name="total" value="${pslist.totalQty}" />
								</td>
								<td style="text-align: center;">${pslist.totalQty-pslist.damagedQty}</td>
								<td style="text-align: center;">
								<input type="number" class="form-control" id="damaged" value="${pslist.damagedQty}" min=0 max="${pslist.totalQty}" name="damaged"/>
								</td>
								<input type="hidden" name="available" value="${pslist.availableQty}"/>
								<input type="hidden" name="partNo"  value="${pslist.partNo}"/>
								<td style="text-align: center;">
									<input type="submit" class="btn btn-primary" value="Update" />

								</td>
								</form>
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
</body>
</html>