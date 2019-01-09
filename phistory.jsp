<%-- 
    Document   : phistory
    Created on : May 21, 2018, 6:23:18 AM
    Author     : udit1
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Records</title>
        <style>
            body
            {
              height:100%;
             width:100%;
             background-image: url("xyz3.jpg");
             background-repeat: no-repeat;
             background-size: 100% 100%;  
            }
        </style>
    </head>
    <body>
        <pre> <h2>
        <center> <table aligh="center" border="1px" cellspacing="5" cellpadding="5">
                 <tr>
                <th>No. of People</th>
                <th>Total Charges</th>
                <th>Advance Charges</th>
                <th>Balance Charges</th>
                <th>Year</th>
                         </tr>             
        <%!
            String nperson="";
            String tcharge="";
            String acharge="";
            String bcharge="";
            String year="";
        %>
        <%
           Class.forName("com.mysql.jdbc.Driver");
           Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/birthday","root","12345");
           String qr="select * from aplatinum";
           Statement st=con.createStatement();
           ResultSet rs=st.executeQuery(qr);
           
           while(rs.next())
           {
                nperson=rs.getString(1);
                tcharge=rs.getString(2);
                acharge=rs.getString(3);
                bcharge=rs.getString(4);
                year=rs.getString(5);
           
        %>
                    <tr>
                <td><%=nperson%></td>
                <td><%=tcharge%></td>
                <td><%=acharge%></td>
                <td><%=bcharge%></td>
                <td><%=year%></td>
            </tr> 
            <%
                }
            %>
            </table> </center> </h2>
        </pre>
    </body>
</html>
