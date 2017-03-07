<%-- 
    Document   : loaisanpham
    Created on : Oct 18, 2016, 10:23:33 PM
    Author     : holong
--%>

<%@page import="POJOs.LoaiSanPham"%>
<%@page import="java.util.ArrayList"%>
<%@page import="DAO.LoaiSanPhamDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <% LoaiSanPhamDAO lspdao = new LoaiSanPhamDAO(); %>
        <% ArrayList<LoaiSanPham> viewLSP = lspdao.viewDB(); %>
        <div id="left-sp">
            <ul>
                <%
                    for (int i = 0; i < viewLSP.size(); i++) {
                    LoaiSanPham lsp = viewLSP.get(i);
                %>
                <li><a href="?maLSP=<%=lsp.getMaLsp()%>"><%= lsp.getTenLsp()%></a></li>
                    <% } %>
            </ul>
        </div>
    </body>
</html>
