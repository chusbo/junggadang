<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.ArrayList" import="jung.Sell" %>
<jsp:useBean id="SellRepository" class="jung.SellRepository" scope="session" />
    
<!DOCTYPE html>
<html>
<head>
	<style>
	.img-
	{width:100%; height:100%;}
	</style>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div class="container py-4">
		<%@ include file="header.jsp" %>
		
	<div class="p-5 mb-4 bg-body-tertiary rounded-3">
		<div class="container-fluid py-5">
			<h1 class="dispaly-5 fw-bold">제품정보</h1>
			<p class="col-md-8 fs-4"></p>
		</div>
	</div>
		<%
			String name=request.getParameter("name");
			SellRepository create=SellRepository.getInstance();
			Sell sell= SellRepository.getSellByName(name);			
		%>
		<div class="row align-items-md-stretch">
				<div class="imgbox col-md-6">
						<img src="../resources/images/<%=sell.getImg()%> " style="width:70%">
					</div>
				<div class="infobox col-md-6">
					<h3><b><%=sell.getName()%></b></h3>
					<p><%=sell.getDescription()%></p>
					<p><%=sell.getPrice() %>원</p>
				</div>
			
		</div>
	<br>
	<%@ include file="footer.jsp"%>
	</div>
</body>
</html>