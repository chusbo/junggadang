<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.ArrayList" import="jung.Sell" import="jung.SellRepository" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%@ include file = "header.jsp" %>
	
	<div class = "p-5 mb-4 bg-body-teritary rounded-3">
		<div class="container-fluid py-5">
			<h1 class="display-5 fw-bold">제과 등록</h1>
			<p class="col-md-8 fs-4">Dessert Addition</p>			
		</div>
	</div>
	<div class="row align-items-md-stretch">
		<form name="newDessert" action="./processAddDessert.jsp" class="form-horizontal" method="post" enctype="multipart/form-data">
			<div class="mb-3 row">
				<label class="col-sm-2">제과명</label>
				<div class="col-sm-3">
					<input type="text" name="name" class="form-control">
				</div>
			</div>
			<div class="mb-3 row">
				<label class="col-sm-2">가격</label>
				<div class="col-sm-3">
					<input type="text" name="price" class="form-control">
				</div>
			</div>
			<div class ="mb-3 row">
				<label class="col-sm-2">상세정보</label>
				<div class="col-sm-5">
					<textarea name="description" cols="50" rows="2"
					class="form-control" placeholder="100자 이상 적어주세요"></textarea>
				</div>
			</div>
			<div class="mb-3 row">
				<div class="col-sm-offset-2 col-sm-10">
					<input type="submit" class="btn btn-primary" value="등록">
				</div>
			</div>
		</form>
	</div>	
</body>
</html>