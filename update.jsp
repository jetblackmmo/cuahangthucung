<%-- 
    Document   : update
    Created on : Oct 20, 2016, 3:42:37 PM
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
        <%String maSP = request.getParameter("maSP");%>
        <%SanPhamDAO spdaoedit = new SanPhamDAO(); %>
        <%ArrayList<SanPham> sp = spdaoedit.viewDBB(maSP);%>
        <% SanPham s = sp.get(0); %>
        <form action="UpdateServlet" method="POST">
                    <table>
                        <tr>
                            <td>Mã SP: </td>
                            <td><input type="text" name="maSP" value="<%=s.getMaSp()%>"/></td>
                        </tr>
                        <tr>
                            <td>Tên SP: </td>
                            <td> <input type="text" name="tenSP" value="<%=s.getTenSp()%>"/></td>
                        </tr>
                        <tr>
                            <td>Mã LSP: </td>
                            <td><select name="maLSP">
                                    <option value="<%=s.getMaLsp()%>">Áo quần</option>
                                    <option value="LC1">Lồng</option>
                                    <option value="N1">Nệm</option>
                                </select>
                            </td>
                        </tr>
                        <tr>
                            <td>Ảnh SP: </td>
                            <td> <input type="text" name="anhSP" value="<%=s.getAnhSp()%>"/></td>
                        </tr>	<tr>
                            <td>Mô tả: </td>
                            <td><input type="text" name="mota" value="<%=s.getMota()%>"/></td>
                        </tr>
                        <tr>
                            <td>Số lượng: </td>
                            <td> <input type="text" name="soluong" value="<%=s.getSoluong()%>"/></td>
                        </tr>
                        <tr>
                            <td>Đơn giá: </td>
                            <td> <input type="text" name="dongia" value="<%=s.getDongia()%>"/></td>
                        </tr>
                        <tr><td><input type="submit" value="Update" /></td></tr>
                    </table>
                </form>
    </body>
</html>
