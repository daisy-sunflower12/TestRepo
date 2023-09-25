<%@page import="com.dao.ProductDao"%>
<%@page import="com.model.Product"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Buyer</title>
</head>
<body>
	<%
	/* String user = (String)session.getAttribute("user"); */

	List<Product> products = ProductDao.getAllProducts();
	request.setAttribute("list", products);
	%>

	<div class="container mt-5">
		<div class="row">
			<div class="col-md-7 offset-md-2">
				<div class="card ml-4">
					<div class="card-body">
						<h2 class="text-center">Buy Product</h2>

						<table class="table" border="1" width="90%"
							style="margin-left: 4%;">
							<thead>
								<tr>
									<th scope="col">Id</th>
									<th scope="col">Product Name</th>
									<th scope="col">Product Description</th>
									<th scope="col">Product Sell Price</th>
									<th scope="col">Product Cost Price</th>
									<th scope="col">Product Stock</th>
									<th scope="col">Seller Id</th>
									<th scope="col">Balance</th>
									<th scope="col">Add To Cart</th>
									<th scope="col">Buy</th>

								</tr>
							</thead>
							<tbody>
								<tr>
									<%-- <td>${list}</td> --%>
								</tr>
								<c:forEach items="${list}" var="p">
									<tr>
										<th scope="row">${p.id }</th>
										<td>${p.prodName}</td>
										<td>${p.prodDesc}</td>
										<td>${p.prodSellPrice}</td>
										<td>${p.prodCostPrice}</td>
										<td>${p.stockUnit}</td>
										<td>${p.userCreated}</td>
										<td>${p.userBalance}</td>
										<td><a href="AddToCart?id=${p.id}&sellerId=${p.userCreated}">Add To Cart</a></td>
										<td><a href="orderNow?sellerId=${p.userCreated}&qty=1&id=${p.id }">Buy Now</a></td>
									</tr>
								</c:forEach>
								<%-- <tr>
									<td colspan="6" align="right">Total</td>
									<td>${total }</td>
								</tr> --%>
							</tbody>
						</table>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>