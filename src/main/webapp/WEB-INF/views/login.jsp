<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Login</title>
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
<br>

<div class="container" id="formCon">
    <!-- Default form login -->
    <form class="text-center border border-light p-5" method="post" action="/auth">
        <p class="h4 mb-4">Sign in</p>
        <!-- Login -->
        <input type="text" id="defaultLoginFormEmail" class="form-control mb-4" placeholder="Login" name="login">
        <!-- Password -->
        <input type="password" id="defaultLoginFormPassword" class="form-control mb-4" placeholder="Password" name="password">
        <!-- Sign in button -->
        <button class="btn btn-info btn-block my-4" type="submit">Sign in</button>
        <!-- Register -->
        <p>If you do not have an account, you can <span><a class="badge badge-info" href="/signUp">sign up</a></span></p>
        <!--<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" /> -->
    </form>
    <!-- Default form login -->
</div>


<!--
<div class="container">
    <br>
    <h4>If you do not have an account, you can <span><a class="badge badge-info" href="/getRegister">register</a></span></h4>
</div>
-->

</body>
</html>
