<%-- 
    Document   : giohang
    Created on : Oct 23, 2016, 4:03:46 PM
    Author     : holong
--%>

<%@page import="POJOs.SanPham"%>
<%@page import="java.util.TreeMap"%>
<%@page import="POJOs.KhachHang"%>
<%@page import="POJOs.Cart"%>
<%@page import="java.util.Map"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            Cart cart =(Cart) session.getAttribute("cart");
            if(cart == null){
                cart = new Cart();
                session.setAttribute("cart", cart);
                
            }
            TreeMap<SanPham, Integer> list = cart.getListsanpham();
        %>
        <h1>Hello World!</h1>
        <table>
            <tr>
                <td>Hình ảnh</td>
                <td>Tên sp</td>
                <td>Số lượng</td>
                <td>Đơn giá</td>
            </tr>
            <%
                for(Map.Entry<SanPham,Integer> entry: list.entrySet()){
            %>
            <tr>
                
                <td><%=entry.getKey().getAnhSp()%></td>
                <td><%=entry.getKey().getTenSp()%></td>
                <td>1</td>
                <td><%=entry.getKey().getDongia()%></td>
            </tr>
            <% } %>
        </table>
            
    </body>
</html>
