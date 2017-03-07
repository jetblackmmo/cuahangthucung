<%-- 
    Document   : Login
    Created on : Oct 17, 2016, 8:05:59 PM
    Author     : holong
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="css/login.css"/>
        <script src="js/prefixfree.min.js"></script>
        <title>JSP Page</title>

    </head>
    <body>
        <div class="body"></div>
        <div class="grad"></div>
        <div class="header">
            <div>PETR<span>COPE</span></div>
        </div>
        <br>
        <form action="LoginServlet" method="POST" class="login">
            <input type="text" placeholder="Tên đăng nhập" name="tentaikhoan" value="" ><br>
            <input type="password" placeholder="Mật khẩu" name="matkhau" value="" ><br>
            <input type="submit" name="action" value="Login" >
        </form>
        <script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
    </body>
</html>
