<%-- 
    Document   : response.jsp
    Created on : 30-Sep-2019, 8:20:50 PM
    Author     : Vaibhav
--%>

<%@page import="model.Swim"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Swimming Club</title>

        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    </head>
    <body>
    <center> 

        <h1>MISSISSAUGA SWIMMING CLUB </h1><br>
        <h3> Welcome to Swim Club</h3>
        <h3> Thank You! You have joined Mississauga Swimming Club</h3>
    </center>
    <%
        Swim swimmer1 = (Swim) request.getAttribute("swimmer1");
        String name = swimmer1.getName();
        int age = swimmer1.getAge();
        int contact = swimmer1.getContact();
        String address = swimmer1.getAddress();
        String time = swimmer1.getTime();
        String pack = swimmer1.getPack();

        out.print("<br>Name: " + name);
        out.print("<br>Age: " + age);
        out.print("<br>Contact: " + contact);
        out.print("<br>Address: " + address);
        out.print("<br>Time: " + time);
        out.print("<br>Package: " + pack);
    %>

    <br><br>
    <button type="Button" autofocus onclick="location.href = 'index.jsp'"> Main Page</button>     
    <button type="Button" autofocus onclick="location.href = 'input.jsp'"> Update Details</button>

</body>
</html>
