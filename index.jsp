<%-- 
    Document   : index
    Created on : Oct 18, 2016, 4:23:47 PM
    Author     : holong
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="DAO.SanPhamDAO"%>
<%@page import="POJOs.SanPham"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="css/style.css">
        <link href="https://fonts.googleapis.com/css?family=Raleway" rel="stylesheet" type="text/css">
    </head>
    <body>
        <% SanPhamDAO spDAO = new SanPhamDAO(); %>
        <% ArrayList<SanPham> viewsp = spDAO.viewDB(); %>
        <jsp:include page="header.jsp" />

        <section>
            <div id="left-section">
                <img src="image/theme.jpg" width="100%" height="430px">
            </div>
            <div id="right-section">
                <div id="left-img">
                    <img src="image/theme1.jpg" width="100%" height="213px">
                    <img src="image/theme2.jpg" width="100%" height="213px">
                </div>

                <div id="right-img">
                    <img src="image/theme4.jpg" width="100%" height="213px">
                    <img src="image/theme3.jpg" width="100%" height="213px">
                </div>
            </div>
        </section>
        <article>
            <div id="title-art">
                <h2>HÀNG MỚI VỀ</h2>
            </div>
            <% for (int i = 0; i < 4; i++) {%>
            <% SanPham spp = viewsp.get(i); %>
            <div id="sp-1">
                <a href="chitiet.jsp?maSP=<%=spp.getMaSp()%>">
                <div id="sp1-1">
                    <%= spp.getAnhSp()%>
                </div>
                <div id="sp1-2">
                    <span><%= spp.getTenSp()%></span></br>
                    <span>$<%= spp.getDongia()%></span>
                </div>
                </a>
            </div>
            <%}%>

        </article>
        <article style="margin-top:30px">
            <div class="articpets" style="background-image:url('image/dog.jpg');background-size:100% 100%;border-top:5px solid #b30059;">
                <div class="articontent" >
                    <h3>DOGS</h3>
                    <ul>
                        <li>
                            <a>Thức ăn</a>
                        </li>
                        <li>
                            <a>Sức khỏe</a>
                        </li>
                        <li>
                            <a>Huấn luyện</a>
                        </li>
                        <li>
                            <a>Đồ chơi</a>
                        </li>
                        <li>
                            <a>Bệnh</a>
                        </li>
                        <li>
                            <a>Vitamin</a>
                        </li>
                        <li>
                            <a>Phòng bệnh</a>
                        </li>
                    </ul>
                </div>
            </div>
            <div class="articpets1" style="background-image:url('image/cat.jpg');background-size:100% 100%;border-top:5px solid #ff8533;">
                <div class="articontent" >
                    <h3 style="color:#ff8533">CATS</h3>
                    <ul>
                        <li>
                            <a>Thức ăn</a>
                        </li>
                        <li>
                            <a>Sức khỏe</a>
                        </li>
                        <li>
                            <a>Huấn luyện</a>
                        </li>
                        <li>
                            <a>Đồ chơi</a>
                        </li>
                        <li>
                            <a>Bệnh</a>
                        </li>
                        <li>
                            <a>Vitamin</a>
                        </li>
                        <li>
                            <a>Phòng bệnh</a>
                        </li>
                    </ul>
                </div>
            </div>
            <div class="articpets1" style="background-image:url('image/ca.jpg');background-size:100% 100%;border-top:5px solid #33ffff;">
                <div class="articontent" >
                    <h3 style="color:#33ffff">PETS OTHER</h3>
                    <ul>
                        <li>
                            <a>Thức ăn</a>
                        </li>
                        <li>
                            <a>Sức khỏe</a>
                        </li>
                        <li>
                            <a>Huấn luyện</a>
                        </li>
                        <li>
                            <a>Đồ chơi</a>
                        </li>
                        <li>
                            <a>Bệnh</a>
                        </li>
                        <li>
                            <a>Vitamin</a>
                        </li>
                        <li>
                            <a>Phòng bệnh</a>
                        </li>
                    </ul>
                </div>
            </div>
        </article>      
        <jsp:include page="footer.jsp" />
    </body>
</html>
