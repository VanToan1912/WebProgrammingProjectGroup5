<%--
  Created by IntelliJ IDEA.
  User: danny
  Date: 1/13/2024
  Time: 3:41 PM
  To change this template use File | Settings | File Templates.
--%>
<%@page import="java.util.Date"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Login Successful!</title>
</head>
<body>
<%
    //Allow access only if session exists
    String session_cookie = null;
    String username_cookie = null;
    String user = null;
    Date date = new Date();
    if (session != null) {
        user = (String) session.getAttribute("user");
        Cookie[] cookies = request.getCookies();
        if (cookies != null) {
            for (Cookie c : cookies) {
                if (c.getName().equals("user"))
                    username_cookie = c.getValue();
                if (c.getName().equals("JSESSIONID"))
                    session_cookie = c.getValue();
            }
        }

    } else {
        //send redirect login.jsp or error code 403 Forbiden
    }
%>
<h3>
    Hi
    <%=username_cookie%> Đăng nhập thành công. Session ID của bạn = <%=session_cookie%></h3><br>
<h3 style="color:blue;"><%=date %></h3>
<%
    /**
     response.setIntHeader method sends data from the server
     on time interval set by the second parameter in seconds
     */
    response.setIntHeader("Refresh", 5);
%>
User =	<%=user%>
<p></p>
<a style="color: green;" href="CheckoutPage.jsp">Go to Checkout
    Page</a>
<p></p>
<br>
<form action="LogoutController" method="post">
    <input type="submit" value="Logout">
</form>
</body>
</html>
