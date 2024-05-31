<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="java.util.ArrayList" import="jung.Sell" import="jung.Fileupload_process" isELIgnored="false" %>
<jsp:useBean id="SellRepository" class="jung.SellRepository" scope="session" />
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:set var="contextPath" value="${pageContext.request.contextPath}" />

<%
	request.setCharacterEncoding("utf-8");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="../resources/css/bootstrap.min.css" />
	<style>	
	.article
		{padding:20px;}
		
	.img 
		{width: 80%; height: 80%; margin:auto; border-radius:10px;}

	.box 
		{width: 100%; height:100%; display: flex; flex-direction: column; border-radius:10px; box-shadow: 5px 5px 10px #ccc, inset -5px -5px 20px #fff;}

	.box h5 p 
		{width: 100%;}
	
	.best 
		{color: red;}

	.list 
		{display: flex;}

	.point 
		{margin-top: 10px;}
	
    .box .content
     	{flex-grow: 1;}

    .box .btn-container
    	{display: flex; justify-content: center; margin-top: auto;}
    
    .sub-title
    	{text-align:center;}
    
    .category
        {display: flex; justify-content: center; margin-bottom: 20px; }
	
	.category .icon1, .category .icon2, .category .icon3
		{margin-right:20px;}
    		
</style>
<title>제과 목록</title>
</head>
<body>
<!--------------------------헤더------------------------------------>
	<%@ include file="header.jsp"%>
<!--------------------------헤더------------------------------------>

	<div class="p-5 mb-4 bg-body-tertiary rounded-3">
		<div class="container-fluid py-5">
			<h1 class="display-5 fw-bold">Menu</h1>
		</div>
	</div>
<article class="article">
	<div class="category align-items-md-stretch text-center">
		<div class="icon1">
			<p><a href="#dessertsection" class="btn btn-outline-secondary" role="button" style="font-size: 12px; padding: 5px 10px;">디저트</a>
		</div>
		<div class="icon2">
			<p><a href="#coffeesection" class="btn btn-outline-secondary" role="button" style="font-size: 12px; padding: 5px 10px;">커피</a>
		</div>
		<div class="icon3">
			<p><a href="#cakesection" class="btn btn-outline-secondary" role="button" style="font-size: 12px; padding: 5px 10px;">케이크</a>
		</div>
	</div>
	
	<div class="align-itmes-md-stretch text-center" id="dessertsection">
		<h2>디저트</h2>
	</div>
		<%
			SellRepository create = SellRepository.getInstance();
			ArrayList<Sell> listOfSell = create.getAllSell();
		%>
	<div class="row align-items-md-stretch text-center">
		<%
			for (int i = 0; i < listOfSell.size(); i++) {
			Sell sell = listOfSell.get(i);
		%>
	<div class="col-md-2" style="margin:10px;">
		<div class="h-100 p-2 box">
			<img src="../resources/images/<%=sell.getFilename()%> " class="img">
				<div class="content">
					<h5><b><%=sell.getName()%></b></h5>					
					<p><%=sell.getPrice()%>원</p>	
				</div>
<!--------------------------상세 정보------------------------------------>
		<div class="btn-container">
			<p><a href="./info.jsp?name=<%=sell.getName() %>"
			class="btn btn-outline-secondary" role="button" style="font-size: 12px; padding: 5px 10px;">자세히보기</a>
		</div>
<!--------------------------상세 정보------------------------------------>
 		</div>
	</div>
		<%
			}
		%>
	</div>
</article>
	<div class="align-itmes-md-stretch text-center" id="coffeesection">
		<h2>커피</h2>
		
	<div class="align-itmes-md-stretch text-center" id="cakesection">
		<h2>케이크</h2>
	
	<%@ include file="footer.jsp"%>
</body>
</html>