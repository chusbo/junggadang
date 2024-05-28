<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.Date" %>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="./resources/css/bootstrap.min.css" />
<style>
	.div1
	{text-align:center;}
	.div1
	{background-color:white; margin-top:50px;}
	.div1 a
	{text-decoration:none; color:gray;}	
	.div1 a:hover
	{color:black; transition: .3s ease-in-out}
	.div2
	{text-align:center;}	
	.images
	{width:600px;
	-webkit-filter: blur(3px);
	filter: blur(3px);}
	.images:hover
	
	{-webkit-filter: blur(0);
	filter: blur(0);
	-webkit-transition: .3s ease-in-out;
	transition: .3s ease-in-out;}
	
</style>
<title>Insert title here</title>
</head>
<body>
	<%@ include file="header.jsp" %>
	
	<hr>
	<div class="div1">
		<h1><b>정가당</b></h1>
		<br>
		
		<a href="http://localhost:8085/junggadang/junggadang/sell.jsp"><img src="../images/join.jpg" class="images"><h1>입장하기</h1></a>
	</div>
	<hr>
	<div class="div2">
	<h5 class="c">구움과자전문점 정가당</h5>
	<%
		Date day = new java.util.Date();
		String am_pm;
		int hour = day.getHours();
		int minute = day.getMinutes();
		int second = day.getSeconds();
		if(hour / 12 == 0){
			am_pm = "AM";
		} else {
			am_pm = "PM";
			hour = hour - 12;
		}
		String CT = hour + ":" + minute + ":" + second + "" + am_pm;
		out.println("현재 접속 시간: " + CT + "\n");
		%>
	</div>	
	
	
	<%@ include file="footer.jsp" %>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous"></script>
</body>
</html>