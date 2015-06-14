<?xml version="1.0" encoding="UTF-8" ?>
<%@ taglib uri="http://www.opensymphony.com/sitemesh/decorator" prefix="decorator"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>AutoMobile Inventory System</title>
	<link href="/InventoryWebSA40Team6/bootstrap/css/bootstrap.min.css"	type="text/css" rel="stylesheet" />
	<link href="/InventoryWebSA40Team6/bootstrap/css/bootstrap2.min.css" type="text/css" rel="stylesheet" />
	<link href="/InventoryWebSA40Team6/bootstrap/css/bootstrap-data-table.css" type="text/css" rel="stylesheet"/>
	<link href="/InventoryWebSA40Team6/bootstrap/css/bootstrap-theme.min.css" type="text/css" rel="stylesheet" />
	<link href="/InventoryWebSA40Team6/bootstrap/css/style.css" type="text/css" rel="stylesheet" />
	<link href="/InventoryWebSA40Team6/bootstrap/css/Printstyle.css" type="text/css" rel="stylesheet" media="print"/>
	<script type="text/javascript" src="/InventoryWebSA40Team6/bootstrap/js/jquery-1.11.3.min.js"></script>
	<script type="text/javascript" src="/InventoryWebSA40Team6/bootstrap/js/jquery-1.11.1.min.js"></script>
	<script type="text/javascript" src="/InventoryWebSA40Team6/bootstrap/js/jquery.dataTables.min.js"></script>
	<script type="text/javascript" src="/InventoryWebSA40Team6/bootstrap/js/dataTables.bootstrap.js"></script>
	<script type="text/javascript" src="/InventoryWebSA40Team6/bootstrap/js/bootstrap.min.js"></script>
	<script type="text/javascript" src="/InventoryWebSA40Team6/bootstrap/js/modal.js"></script>
</head>

<!-- Start of Page Body -->
<!-- Start of header -->
<body>
	<div class="header">
		<div class="container">
			<div class="row ">
				<div class="col-md-7"><img src='/InventoryWebSA40Team6/images/3.png' class="col-xs-12"></div>
			</div>
		</div>
	</div>
	<!-- End of header -->

	<!-- Menu -->	
	<div class="menu">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<nav class="navbar navbar-default">
						<div class="container-fluid">
							<!-- Brand and toggle get grouped for better mobile display -->
							<div class="navbar-header">
								<button type="button" class="navbar-toggle collapsed"
								data-toggle="collapse"
								data-target="#bs-example-navbar-collapse-1">
								<span class="sr-only">Toggle navigation</span> <span
								class="icon-bar"></span> <span class="icon-bar"></span> <span
								class="icon-bar"></span>
							</button>
							<a class="navbar-brand" href="#">Mechanic</a>
						</div>

						<!-- Collect the nav links, forms, and other content for toggling -->
						<div class="collapse navbar-collapse"
						id="bs-example-navbar-collapse-1">
						<ul class="nav navbar-nav">
							<li class="dropdown"><a href="#" class="dropdown-toggle"
							data-toggle="dropdown" role="button" aria-expanded="false">Usage
								<span class="caret"></span>
							</a>
							<ul class="dropdown-menu" role="menu">
								<li><a href="/InventoryWebSA40Team6/Mechanic/LoadUsageServlet">Enter Usage Details</a></li>
								<li class="divider"></li>
								<li><a href="/InventoryWebSA40Team6/Mechanic/mtransaction">Usage Transanction History</a></li>

							</ul></li>

							<li class="dropdown"><a href="order.jsp"
								class="dropdown-toggle" data-toggle="dropdown" role="button"
								aria-expanded="false">Product<span class="caret"></span></a>
								<ul class="dropdown-menu" role="menu">
									<li><a href="/InventoryWebSA40Team6/Mechanic/enquirystock">Product Inventory Stock</a></li>
								</ul></li>
								</ul>

							</div>
							<!-- /.navbar-collapse -->
						</div>
						<!-- /.container-fluid --> </nav>
					</div>
				</div>
			</div>

		</div>
		
	<div class="container">
		<div class="row">
			<div class="col-md-10"></div>
			<div class="col-md-2 last" style="float:right;padding-right: 0px;margin-top: 32px;">
				<!-- Split button -->
				<div class="btn-group" style="float:right;">
				  <button type="button" class="btn btn-info">Welcome ${un}</button>
				  <button type="button" class="btn btn-info dropdown-toggle" data-toggle="dropdown" aria-expanded="false">
				    <span class="caret"></span>
				    <span class="sr-only">Toggle Dropdown</span>
				  </button>
				  <ul class="dropdown-menu " role="menu">
				  	<c:url var="logout" scope="page" value="/logout"></c:url>
				    <li><a href="${logout}">Log Out</a></li>
				  </ul>
				</div>
			</div>
			
		</div>
	</div>



		<decorator:body />


		<div class="footer">
			<div class="container">
				<div class="row">
					<div class="col-lg-12">
						<center>
							<p>Copyright @ 2015-2016.All Right Reserved by SA 40 Team 6</p>
						</center>
					</div>
				</div>
			</div>

		</div>


	</body>


	</html>