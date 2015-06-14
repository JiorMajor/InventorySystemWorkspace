<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>Products Details</title>
</head>
<body>
	<div class="container main">
		<div class="row">
			<center><h2>Product Details</h2></center>
			<div class="col-md-4"></div>
			<div class="col-md-8">
				<form action="/InventoryWebSA40Team6/Admin/productdetail" method="post">
					
					<c:if test="${origin==\"true\"}">
					<h4 class="success"><span class="glyphicon glyphicon-ok" style="margin-right:10px;"></span>Product data is successfully saved!</h3>
					</c:if>
					<c:if test="${origin==\"false\"}">
					<h3 style="color:red">Data cannot be saved!</h3>
				</c:if>
				
				<div class="row">
					<div class="alert alert-danger" role="alert" id="error" style="display: none;width:57%;">
						<span class="glyphicon glyphicon-exclamation-sign" aria-hidden="true"></span>
						<span class="sr-only">Error:</span>
						Please Enter Number!
					</div>
				</div>
				
				<div class="form-group row">
					<div class="col-md-3">
						<label>PartNo:</label>
					</div>	
					
					<div class="col-md-4">
						<input type="text" class="form-control" value ="${parNo}" name ="partno" readonly="true"/>					
					</div>				
				</div>
				
				<div class="form-group row">
					<div class="col-md-3">
						<label>Part Name:</label>
					</div>	
					
					<div class="col-md-4">
						<input type="text" class="form-control" value ="${parName}" name ="partName"/>
					</div>				
				</div>
				
				<div class="form-group row">
					<div class="col-md-3">
						<label>Unit Price:</label>
					</div>	
					
					<div class="col-md-4">
						<input type="text" class="form-control" value ="${price}" name ="price" onkeypress="return IsNumeric(event);" ondrop="return false;" onpaste="return false;"/>
					</div>				
				</div>
				
				<div class="form-group row">
					<div class="col-md-3">
						<label>Description:</label>
					</div>	
					
					<div class="col-md-4">
						<input type="text" class="form-control" value ="${des}" name = "desc"/>
					</div>				
				</div>
				
				<div class="form-group row">
					<div class="col-md-3">
						<label>Color:</label>
					</div>	
					
					<div class="col-md-4">
						<input type="text" class="form-control" value ="${color}" name = "color"/>
					</div>				
				</div>
				
				<div class="form-group row">
					<div class="col-md-3">
						<label>Dimension:</label>
					</div>	
					
					<div class="col-md-4">
						<input type="text" class="form-control" value ="${dimension}" name = "dimension"/>
					</div>
					
				</div>
				
				<div class="form-group row">
					<div class="col-md-3">
						<label>Category:</label>
					</div>	
					
					<div class="col-md-4">
						<select class="selectpicker form-control" required style="clear:both;" name="cat">
							<c:forEach var="category" items="${catlist}">
							<option value="${category}">${category}</option>							
						</c:forEach>						    	
					</select>	
				</div>
				
			</div>
			
			<div class="form-group row">
				<div class="col-md-3">
					<label>Manufacture Name:</label>
				</div>	
				
				<div class="col-md-4">
					<input type="text" class="form-control" value ="${manuName}" name="manufactureName"/>
				</div>
				
			</div>
			
			<div class="form-group row">
				<div class="col-md-3">
					<label>Reorder Level:</label>
				</div>	
				
				<div class="col-md-4">
					<input type="text" class="form-control" value ="${reorderLvl}" name= "reorderLvl" onkeypress="return IsNumeric(event);" ondrop="return false;" onpaste="return false;"/>
				</div>
				
			</div>
			
			<div class="form-group row">
				<div class="col-md-3">
					<label>Min Reorder Qty:</label>
				</div>	
				
				<div class="col-md-4">
					<input type="text" class="form-control" value ="${minReorderQty}" name = "minReorderQty" onkeypress="return IsNumeric(event);" ondrop="return false;" onpaste="return false;"/>
				</div>
				
			</div>
			
			<div class="form-group row">
				<div class="col-md-3">
					<label>Shelf Location:</label>
				</div>	
				
				<div class="col-md-4">
					<input type="text" class="form-control" value ="${shelfLocation}" name = "shelfLoc"/>
				</div>
				
			</div>
			<button type="submit" class="btn btn-primary" >Update</button>
			
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
				</form>
			</div>
		</div>
	</div>

</body>
</html>