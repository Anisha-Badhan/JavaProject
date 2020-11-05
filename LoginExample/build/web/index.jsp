<%-- 
    Document   : index
    Created on : Nov 4, 2020, 11:46:29 PM
    Author     : User
--%>

<%@page import="javax.servlet.http.Cookie"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%--<c:choose>
  <c:when test="{$Cookie['user_name'].getValue()==null}">
        <jsp:forward page="Login.jsp"></jsp:forward>
    </c:when>
</c:choose>--%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Personal Diary</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script><!-- comment -->
        <style>
            body, html {
                    height: 100%;
                  }

             .bg {
                    background-image: url("images/img-2.jpg");
                    height: 50%;
                    background-position: center;
                    background-repeat: no-repeat;
                    background-size: cover;
                  }
             .navItem{
                   color:black; 
                  }
                  
                  .navItem:hover{
                      color:#800000;
                      font-size:20px;
                  }
                  h1{
                      color:#800000;
                  }
        </style>
    </head>
    <body>
        <div class="container-fluid bg ">
            
            <div class="alert alert-success">
                                Welcome<strong>!<%=request.getAttribute("user_name")%>'</strong>
                                    </div>
                <nav class="navbar navbar-expand-sm justify-content-end">
                    <ul class="navbar-nav">

                        <li class="nav-item">
                            <a class="nav-link navItem" href="#"><strong>About</strong></a>
                        </li>
                        <c:choose>
                    <c:if test="($Cookie['user_name'].getValue()==null)">
                        <li class="nav-item ">
                            <a class="nav-link navItem" href="Login.jsp"><strong>Login</strong></a>
                        </li>
                    </c:if></c:choose>
                       
                    <c:if test="{$Cookie['user_name'].getValue()!=null}">
                        <li class="nav-item ">
                          <a class="nav-link navItem" href="Login.jsp"><strong>Logout</strong></a>
                        </li>
                    </c:if>
                        <li class="nav-item navItem">
                            <a class="nav-link navItem" href="Register.jsp"><strong>Register</strong></a>
                        </li>

                    </ul>
                  </nav>
        </div>
        
            <div class="container ">
                <br><!-- <!-- comment -->
                <br>
                <h1><strong>My online personal Diary</strong></h1> 
                <h2> <strong>Store your ideas </strong></h2><!-- comment -->
                <h2><strong>Any where</strong</h2><!-- comment -->
                <h2><strong>Any time</strong></h2>
            </div>
        
        
    </body>
</html>
