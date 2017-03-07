<%-- 
    Document   : chitiet
    Created on : Oct 19, 2016, 5:54:51 PM
    Author     : holong
--%>

<%@page import="POJOs.Cart"%>
<%@page import="java.util.ArrayList"%>
<%@page import="POJOs.SanPham"%>
<%@page import="DAO.SanPhamDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="css/style.css">
        <link href="https://fonts.googleapis.com/css?family=Raleway" rel="stylesheet" type="text/css">
        <title></title>
    </head>
    <body>
        <jsp:include page="header.jsp" />
        <% String maSP = request.getParameter("maSP"); %>
        <% String maLSP = request.getParameter("maSLP"); %>
        <% Cart cart = (Cart) session.getAttribute("cart"); %>
        <% if(cart == null){
            cart = new Cart();
            session.setAttribute("cart", cart);
            
        }
           
        %>
        <% if (maSP != null) { %>
        <% SanPhamDAO spd = new SanPhamDAO(); %>
        <%ArrayList<SanPham> viewsp = spd.viewDBB(maSP); %>
        <% SanPham s = viewsp.get(0);%>
        <div id="article-sp">
            <jsp:include page="loaisanpham.jsp" />
            <div id="right-sp">
                <div id="img-sp">
                    <%= s.getAnhSp()%>
                </div>
                <div id="content-sp">
                    <h3><%= s.getTenSp()%></h3>
                    <h6>$<%= s.getDongia()%></h6>
                    <form action="OderServlet?command=addSP&maSP=<%=s.getMaSp()%>&cartID=<%=System.currentTimeMillis()%>"   method="POST">
                        <p><input type="number" value="1" min="1" max="20" name="soluong"></p>
                        <p><input type="submit" value="Thêm vào giỏ"></p>
                    </form>
                    <span><%= s.getMota()%></span>
                </div>
            </div>
        </div>
        <% } else{%>
        <div id="article-sp">
        <jsp:include page="loaisanpham.jsp" />
        <jsp:include page="sanpham.jsp" />
        </div>
        <%}%>
        <jsp:include page="footer.jsp" />
    </body>
</html>
