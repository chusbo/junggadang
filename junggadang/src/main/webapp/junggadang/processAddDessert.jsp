<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<%@ page import="jung.Sell" %>
<%@ page import="jung.SellRepository" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>제과 등록 처리</title>
</head>
<body>
<%
    // 폼에서 전송된 데이터 수집
    String name = request.getParameter("name");
    String priceStr = request.getParameter("price");
    String description = request.getParameter("description");
    int price = Integer.parseInt(priceStr);

    // 새로운 Sell 객체 생성
    Sell newSell = new Sell("#", name, price);
    newSell.setDescription(description);

    // SellRepository에 추가
    SellRepository repository = SellRepository.getInstance();
    repository.addSell(newSell);

    // 등록 완료 메시지와 함께 sell.jsp 페이지로 리다이렉트
    response.sendRedirect("sell.jsp");
%>
</body>
</html>