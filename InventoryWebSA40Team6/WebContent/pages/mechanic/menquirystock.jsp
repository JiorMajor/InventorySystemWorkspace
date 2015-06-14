<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>Enquiry Stock Summary</title>
</head>
<body>
	<div class="container-fluid">
		<div class="row">
		<center><h2>Enquire Stock Summary</h2></center>
			<div class="col-md-11 col-sm-8 col-xs-8">
				

			</div>
			<div class="col-md-1"></div>
		</div>
	</div>
	<div class="row"><br><br></div>
	<div class="row">
		<div class="col-md-1"></div>
		<div class="col-md-10">
			<div class="table-responsive">
				<table class="table table-hover" id ="stocklist">
					<thead>
						<tr>
							
							<th>PartNo.</th>
							<th>PartName</th>
							<th>Dimension</th>
							<th>Color</th>
							<th>Shelf Location</th>
							<th>Available Quanity</th>
							<th>Total Quantity</th>
						</tr>
					</thead>
					<tbody>
					<c:forEach var="stock"  items="${productlist}" varStatus="status">
						<tr>
							
							<td>${stock.partNo}</td>
							<td>${stock.partName}</td>
							<td>${stock.dimension}</td>
							<td>${stock.color}</td>
							<td>${stock.shelfLocation}</td>
							<td>${stock.availableQty}</td>
							<td>${stock.totalQty}</td>
						</tr>
						</c:forEach>
					</tbody>
				</table>
				
				<script type="text/javascript">
		$(document).ready(function() {
			$('#stocklist').DataTable();
		} );
	</script>
				
			</div>
		</div>
		<div class="col-md-1"></div>
	</div>
	
</div>
</body>
</html>