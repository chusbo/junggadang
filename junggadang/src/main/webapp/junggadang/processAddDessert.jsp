<%-- <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<%@ page import="jung.Sell" %>
<%@ page import="jung.SellRepository" %>

<% 
	request.setCharacterEncoding("utf-8");
	
	String name=request.getParameter("name");
	String Price=request.getParameter("price");
	String description=request.getParameter("description");
	
	Integer price;
	

    if (Price == null || Price.isEmpty()) {
        price = 0;
    } else {
        price = Integer.valueOf(Price);
    }
    
	SellRepository create =SellRepository.getInstance();
	
	Sell newSell = new Sell();
	newSell.setName(name);
	newSell.setPrice(price);
	
	create.addSell(newSell);
	
	response.sendRedirect("sell.jsp");
	%>
 --%>