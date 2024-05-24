<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="java.util.ArrayList" import="jung.Sell" %>
<jsp:useBean id="SellRepository" class="jung.SellRepository" scope="session" />
<!DOCTYPE html>
<html>
<head>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"	integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH"	crossorigin="anonymous">
<script	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
<meta charset="UTF-8">
	<style>	
	.img {width: auto; height: auto;}

	.box {border: 1px solid #ccc; width: auto; display: flex; flex-direction: column;}

	.box h5 p {width: 100%;}
	
	.best {color: red;}

	.list {display: flex;}

	.point {margin-top: 10px;}

</style>
<title>Insert title here</title>
</head>
<body>
<!--------------------------헤더------------------------------------>
	<%@ include file="header.jsp"%>
<!--------------------------헤더------------------------------------>

	<div class="p-5 mb-4 bg-body-tertiary rounded-3">
		<h1 class="display-5 fw-bold">디저트목록</h1>
		<p class="col-md-8 fs-4">DessertList</p>
	</div>
	<div class="list">
		<h4>판매</h4>
		<h4 class="best">
			<b>베스트</b>
		</h4>
		<p class="point">...................................</p>
	</div>

	<article id="best">				
		<div id="carouselExampleInterval" class="carousel slide" data-bs-ride="carousel">
			<div class="carousel-inner">			
				<div class="carousel-item active" data-bs-interval="5000">
					<%
					ArrayList<Sell> listOfSell = SellRepository.getAllSell();
					%>

					<div class="row align-items-md-stretch text-center">
						<%
						for (int i = 0; i < listOfSell.size(); i++) {
							Sell sell = listOfSell.get(i);
						%>
						<div class="col-md-3">
							<div class="h-100 p-2 box">
								<img src="<%=sell.getImg()%> " class="img">
								<h5>
									<b><%=sell.getName()%></b>
								</h5>
								<p><%=sell.getDescription()%></p>
								<p><%=sell.getPrice()%>원</p>		
<!--------------------------상세 정보------------------------------------>
								<p><a href="./info.jsp?name=<%=sell.getName() %>"
								class="btn btn-secondary" role="button"> 주문 하기 &raquo;</a>
<!--------------------------상세 정보------------------------------------>
							</div>
						</div>
						<%
						}
						%>
					</div>
				</div>			
				<div class="carousel-item" data-bs-interval="5000">
					<%
					ArrayList<Sell> listOfSell1 = SellRepository.getAllSell1();
					%>

					<div class="row align-items-md-stretch text-center">
						<%
						for (int i = 0; i < listOfSell.size(); i++) {
							Sell sell = listOfSell.get(i);
						%>
						<div class="col-md-3">
							<div class="h-100 p-2 box">
								<img src="<%=sell.getImg()%> " class="img">
								<h5>
									<b><%=sell.getName()%></b>
								</h5>
								<p><%=sell.getDescription()%></p>
								<p class="price"><%=sell.getPrice()%>원</p>
<!--------------------------상세 정보------------------------------------>
								<p><a href="./info.jsp?name=<%=sell.getName() %>"
								class="btn btn-secondary" role="button"> 주문 하기 &raquo;</a>
<!--------------------------상세 정보------------------------------------>
							</div>							
						</div>
						<%
						}
						%>
					</div>
				</div>
				<button class="carousel-control-prev" type="button"
					data-bs-target="carousel-inner" data-bs-slide="prev">
					<span class="carousel-control-prev-icon" aria-hidden="true"></span>
					<span class="visually-hidden">Previous</span>
				</button>
				<button class="carousel-control-next" type="button"
					data-bs-target="carousel-inner" data-bs-slide="next">
					<span class="carousel-control-next-icon" aria-hidden="true"></span>
					<span class="visually-hidden">Next</span>
				</button>
			</div>
		</div>
	</article>
	<br>
	<br>
<!--------------------------판매목록------------------------------------>	
<article>	
	<div class="list">
		<h4>판매 목록</h4>
		<p class="point">...................................</p>
	</div>

	<%
	ArrayList<Sell> listOfSell2 = SellRepository.getAllSell2();
	%>

	<div class="row align-items-md-stretch text-center">
		<%
		for (int i = 0; i < listOfSell2.size(); i++) {
			Sell sell2 = listOfSell2.get(i);
		%>
		<div class="col-md-3">
			<div class="h-100 p-2 box">
				<img src="<%=sell2.getImg()%> " class="img">
				<h5>
					<b><%=sell2.getName()%></b>
				</h5>
				<p><%=sell2.getDescription()%></p>
				<p><%=sell2.getPrice()%>원</p>
<!--------------------------상세 정보------------------------------------>
								<p><a href="./info.jsp?name=<%=sell2.getName() %>"
								class="btn btn-secondary" role="button"> 주문 하기 &raquo;</a>
<!--------------------------상세 정보------------------------------------>
			</div>
		</div>
		<%
		}
		%>		
	</div>
	<br>
			<div>	
				<div class="row align-items-md-stretch text-center">
						<%
						for (int i = 0; i < listOfSell.size(); i++) {
							Sell sell = listOfSell.get(i);
						%>
						<div class="col-md-3">
							<div class="h-100 p-2 box">
								<img src="<%=sell.getImg()%> " class="img">
								<h5>
									<b><%=sell.getName()%></b>
								</h5>
								<p><%=sell.getDescription()%></p>
								<p><%=sell.getPrice()%>원</p>		
<!--------------------------상세 정보------------------------------------>
								<p><a href="./info.jsp?name=<%=sell.getName() %>"
								class="btn btn-secondary" role="button"> 주문 하기 &raquo;</a>
<!--------------------------상세 정보------------------------------------>
							</div>
						</div>
						<%
						}
						%>
					</div>
</article>
<!--------------------------판매목록------------------------------------>
	
	<br>
	<%@ include file="footer.jsp"%>
</body>
</html>