<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="./css/login.css">
        
        <title>Login</title>
    </head>

    <body>
      
        <section id="register_box">
            <form action="backendJsp/login_back.jsp" method="post" class="register_form" onsubmit="return validate()">
                <div id="heading">
                    <h1>LOGIN</h1>
                </div>
                <%
                    String msg = (String) session.getAttribute("message");
                    if (msg != null) {
                %>
                <h1 id="message"> <%=msg%> </h1>
                <%
                    session.removeAttribute("message");
                } else {
                %>
                <h1 id="message">All fields are required</h1>
                <%
                    }
                %>

                <div class="reg_input">
                    <input id="er_no" name="username" type="text" placeholder="Enrollment Number/Username for admin">
                </div>
                <div class="reg_input">
                    <input id="pass" name="pass" type="password" placeholder="password">
                </div>
                <div class="type_input">
                    <label for="student">Student</label>
                    <input type="radio" id="student" name="userType" value="student" checked>
                    <label for="admin">Admin</label>
                    <input type="radio" id="admin" name="userType" value="admin">
                </div>
                <div>
                    <input id="sub_btn" value="Login" type="submit">
                </div>
                <div>
                    <a class="reg" href="register.jsp">Create New Account</a>
                </div>
            </form>

        </section>

        <!--javascript-->

        <script src="js/login.js" type="text/javascript"></script>
         <script src="https://code.jquery.com/jquery-3.7.0.min.js" integrity="sha256-2Pmvv0kuTBOenSvLm6bvfBSSHrUJ+3A7x6P5Ebd07/g=" crossorigin="anonymous"></script>       
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
    </body>

</html>