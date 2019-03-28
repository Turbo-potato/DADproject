<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Register</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css">
    <style>
        #formCon{
            width:420px;
            height:600px;
        }
    </style>
</head>
<body>


<div class="container" id="formCon">
    <!-- Default form login -->
    <form class="text-center border border-light p-5" method="post" action="/signup">
        <p class="h4 mb-4">Register</p>
        <!-- NickName -->
        <input type="text"  class="form-control mb-4" placeholder="set nickname..." name="nickname">
        <!-- Login -->
        <input type="text" id="defaultLoginFormEmail" class="form-control mb-4" placeholder="set login..." name="login">
        <!-- Password -->
        <input type="password" id="defaultLoginFormPassword" class="form-control mb-4" placeholder="set password..." name="password">
        <!-- Sign in button -->
        <button class="btn btn-info btn-block my-4" type="submit">Sign up</button>
       <!-- <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" /> -->
    </form>
    <!-- Default form login -->
</div>

</body>
</html>
