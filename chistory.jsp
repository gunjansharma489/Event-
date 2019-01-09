<%-- 
    Document   : chistory
    Created on : May 21, 2018, 8:19:21 AM
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
                <th>Air Conditioned</th>
                <th>Music</th>
                <th>Hard Drinks</th>
                <th>veg Food</th>
                <th>Non-Veg Food</th>
                <th>Both Food</th>
                <th>Charge Per Person</th>
                <th>Year</th>
                         </tr>             
        <%!
            String ac="";
            String music="";
            String hd="";
            String veg="";
            String nonv="";
            String both="";
            String cpp="";
            String year="";
        %>
        <%
           Class.forName("com.mysql.jdbc.Driver");
           Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/birthday","root","12345");
           String qr="select * from acustom";
           Statement st=con.createStatement();
           ResultSet rs=st.executeQuery(qr);
           
           while(rs.next())
           {
                ac=rs.getString(1);
                music=rs.getString(2);
                hd=rs.getString(3);
                veg=rs.getString(4);
                nonv=rs.getString(5);
                both=rs.getString(6);
                cpp=rs.getString(7);
                year=rs.getString(8);
           
        %>
                    <tr>
                <td><%=ac%></td>
                <td><%=music%></td>
                <td><%=hd%></td>
                <td><%=veg%></td>
                <td><%=nonv%></td>
                <td><%=both%></td>
                <td><%=cpp%></td>
                <td><%=year%></td>
            </tr> 
            <%
                }
            %>
            </table> </center> </h2>
        </pre>
    </body>
</html>
