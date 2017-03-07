<%-- 
    Document   : cuahang
    Created on : Oct 18, 2016, 8:41:16 PM
    Author     : holong
--%>

<%@page import="POJOs.SanPham"%>
<%@page import="DAO.SanPhamDAO"%>
<%@page import="POJOs.LoaiSanPham"%>
<%@page import="java.util.ArrayList"%>
<%@page import="DAO.LoaiSanPhamDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="css/style.css">
        <link href="https://fonts.googleapis.com/css?family=Raleway" rel="stylesheet" type="text/css">
        <title>JSP Page</title>
    </head>
    <body>
        <jsp:include page="header.jsp" />
        <div id="article-sp">
            <jsp:include page="loaisanpham.jsp" />
            
            <jsp:include page="sanpham.jsp" />
        </div>
        <jsp:include page="footer.jsp" />
    </body>
</html>
