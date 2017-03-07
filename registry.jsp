<%-- 
    Document   : registry
    Created on : Oct 17, 2016, 11:40:45 PM
    Author     : holong
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="css/login.css"/>
        <script src="js/prefixfree.min.js"></script>
        <title>Registry</title>
    </head>
    <body>  
        <div class="body"></div>
        <div class="grad"></div>
        <div class="header">
            <div>PETR<span>COPE</span></div>
        </div>
        <br>
        <form action="SignupServlet" method="POST" class="login">
            <input type="text" placeholder="Họ tên" name="hoTen" value=""><br>
            <input type="text" placeholder="Địa chỉ" name="diachi" value=""><br>
            <input type="text" placeholder="Số điện thoại" name="sdt" value=""><br>
            <input type="text" placeholder="Tên đăng nhập" name="tendangnhap" value=""><br>
            <input type="password" placeholder="Mật khẩu" name="matkhau" value=""><br>
            <input type="submit" name="action" value="Signup">
        </form>
        <script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
    </body>
</html>
