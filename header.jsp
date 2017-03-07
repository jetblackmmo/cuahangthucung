<%-- 
    Document   : header
    Created on : Oct 18, 2016, 8:37:10 PM
    Author     : holong
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <% request.setCharacterEncoding("utf-8"); %>
        <% response.setCharacterEncoding("utf-8"); %>
        <header>
            <div id="header-content">
                <div id="header-1">
                    <ul>
                        <li><a href="login.jsp">Login</a></li>
                        <li><a href="registry.jsp">Registry</a></li>
                    </ul>
                </div>
                <div id="header-2">
                    <img src="image/logo.jpg">
                </div>
                <div id="header-3">
                    <ul>

                        <li>
                            <b>${sessionScope.USER}</b>
                        </li>
                        <li>
                            <a href="giohang.jsp"><img src="image/cart.png" width="32" height="20"></a>
                        </li>
                    </ul>
                    <ul>
                        <li>
                            <form action="SearchServlet" method="post">
                                <p><input type="text" name="tenSP" placeholder="Search..." /></p>
                            </form>
                        </li>
                    </ul>    
                </div>
            </div>
        </header>
        <nav>
            <ul>
                <li class="navullii">
                    &nbsp;
                </li>
                <li class="navulli">
                    <a href="index.jsp">Home</a>
                </li>
                <li class="navulli">
                    <a>Dogs</a>
                </li>
                <li class="navulli">
                    <a>Cats</a>
                </li>
                <li class="navulli">
                    <a href="cuahang.jsp">Mart</a>
                </li>
                <li class="navull">
                    <a>Sell Pets</a>
                </li>
                <li class="navull">
                    <a>Contacts</a>
                </li>
                <li class="navullii">&nbsp;</li>
            </ul>
        </nav>       
    </body>
</html>
