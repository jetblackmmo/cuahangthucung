<%-- 
    Document   : quantri
    Created on : Oct 18, 2016, 1:57:49 PM
    Author     : holong
--%>

<%@page import="POJOs.KhachHang"%>
<%@page import="DAO.KhachHangDAO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="POJOs.SanPham"%>
<%@page import="DAO.SanPhamDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="css/quantri.css">
    </head>
    <body>
        <% request.setCharacterEncoding("utf-8"); %>
        <% response.setCharacterEncoding("utf-8"); %>
        <% SanPhamDAO spd = new SanPhamDAO(); %>
        <% ArrayList<SanPham> viewsp = spd.viewDB(); %>
        <div id="content">
            <section>
                <ul>
                    <li><a>Quản lý tài khoản</a></li>
                    <li><a>Quản lý sản phẩm</a></li>
                    <li><a>Quản lý tài khoản</a></li>
                    <li><a>Quản lý tài khoản</a></li>
                    <li><a>Quản lý tài khoản</a></li>
                </ul>
            </section>
            <aside>
                <form action="AddspServlet" method="POST">
                    <table>
                        <tr>
                            <td>Mã SP: </td>
                            <td><input type="text" name="maSP" /></td>
                        </tr>
                        <tr>
                            <td>Tên SP: </td>
                            <td> <input type="text" name="tenSP"/></td>
                        </tr>
                        <tr>
                            <td>Mã LSP: </td>
                            <td><select name="maLSP">
                                    <option value="AQ1">Áo quần</option>
                                    <option value="LC1">Lồng</option>
                                    <option value="N1">Nệm</option>
                                </select>
                            </td>
                        </tr>
                        <tr>
                            <td>Ảnh SP: </td>
                            <td> <input type="text" name="anhSP"/></td>
                        </tr>	<tr>
                            <td>Mô tả: </td>
                            <td><input type="text" name="mota"/></td>
                        </tr>
                        <tr>
                            <td>Số lượng: </td>
                            <td> <input type="text" name="soluong" /></td>
                        </tr>
                        <tr>
                            <td>Đơn giá: </td>
                            <td> <input type="text" name="dongia" /></td>
                        </tr>
                        <tr><td><input type="submit" /></td></tr>
                    </table>
                </form>
                <div id="viewds">
                <table>
                    <tr>
                        <th width="10%">Mã SP</th>
                        <th width="10%">Tên SP</th>
                        <th width="10%">Mã LSP</th>
                        <th width="30%">Mô tả</th>
                        <th width="10%">Số lượng</th>
                        <th width="10%">Đơn giá</th>
                        <th width="10%">Delete</th>
                        <th width="10%">Edit</th>
                    </tr>
                    <%
                        for (int i = 0; i < viewsp.size(); i++) {
                    %>
                    <% SanPham s = viewsp.get(i);%>
                    <tr>
                        <td width="10%"><%= s.getMaSp()%></td>
                        <td width="10%"><%= s.getTenSp()%></td>
                        <td width="10%"><%= s.getMaLsp()%></td>
                        <td width="30%"><%= s.getMota()%></td>
                        <td width="10%"><%= s.getSoluong()%></td>
                        <td width="10%"><%= s.getDongia()%></td>
                        <td width="10%"><a href="DeleteServlet?id=<%=s.getMaSp()%>">Delete</a></td>
                        <td width="10%"><a href="update.jsp?maSP=<%=s.getMaSp()%>">Edit</a></td>
                    </tr>
                    <% }%>
                </table>
                </div>


            </aside>
    </body>
</html>