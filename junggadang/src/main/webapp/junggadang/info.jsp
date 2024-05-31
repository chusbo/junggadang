<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.ArrayList" import="jung.Sell" isELIgnored="false" %>
<jsp:useBean id="SellRepository" class="jung.SellRepository" scope="session" />
<%@ page errorPage="exceptionNoName.jsp" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:set var="contextPath" value="${pageContext.request.contextPath}" />

<%
	request.setCharacterEncoding("utf-8");
%>    
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="../resources/css/bootstrap.min.css" />
	<style>
	img
	{width:100%; height:100%; border-radius:10px;}
	.all
	{margin:10px; padding:20px; box-shadow: 5px 5px 10px #ccc, inset -5px -5px 20px #fff; border-radius:10px;}
	</style>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
		<%@ include file="header.jsp" %>
		
	<div class="p-5 mb-4 bg-body-tertiary rounded-3">
		<div class="container-fluid py-5">
			<h1 class="dispaly-5 fw-bold">제품정보</h1>
		</div>
	</div>
		<%
			String name=request.getParameter("name");
			SellRepository create=SellRepository.getInstance();
			Sell sell= create.getSellByName(name);			
		%>
		<div class="all">
		<div class="row align-items-md-stretch">
				<div class="imgbox col-md-6">
						<img src="../resources/images/<%=sell.getFilename()%> " style="width:70%">
					</div>
				<div class="infobox col-md-6">
					<h3><b><%=sell.getName()%></b></h3>
					<p><%=sell.getDescription()%></p>
					<p><b>제품번호</b> :<%=sell.getNumber() %>
					<p><b>분류</b> :<%=sell.getCategory() %>
					<p><b>재고</b> :<%=sell.getStock() %>
					<p><b>알레르기</b> :<%=sell.getAllergy() %>
					<p><b>원산지</b> :<%=sell.getOrigin() %>				
					<p><b>가격</b> :<%=sell.getPrice() %>원</p>
				</div>			
		</div>
		</div>
		<br>
	<%@ include file="footer.jsp"%>
</body>
</html>