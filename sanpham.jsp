<%-- 
    Document   : sanpham
    Created on : Oct 18, 2016, 10:25:32 PM
    Author     : holong
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="POJOs.SanPham"%>
<%@page import="DAO.SanPhamDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <div id="right-sp">

            <%
                SanPhamDAO spdao = new SanPhamDAO();
                String maLSP = request.getParameter("maLSP");
                String tenSP = request.getParameter("tenSP");
                ArrayList<SanPham> viewSP;
            %>
            <%
                if(maLSP != null) {
                %>
            <% viewSP = spdao.viewDB(maLSP); %>
            <% }else if(tenSP != null){ %>
            <% viewSP = spdao.viewsearch(tenSP); %>
            <% }else{%>
            <% viewSP = spdao.viewDB(); %>
            <% } %>
            <% for (int i = 0; i < viewSP.size(); i++) { %>
            <%
                SanPham sp = viewSP.get(i);
            %>
            <a href="chitiet.jsp?maSP=<%=sp.getMaSp()%>">
            <div id="sp-1" style="margin-bottom:10px;">
                <div id="sp1-1">
                    <%= sp.getAnhSp()%>
                </div>
                <div id="sp1-2">
                    <span><%= sp.getTenSp()%></span></br>
                    <span>$<%= sp.getDongia()%></span>
                </div>
            </div>
            </a>
            <% }%>
        </div>
    </body>
</html>
