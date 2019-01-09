<%-- 
    Document   : silverd
    Created on : May 21, 2018, 1:40:28 AM
    Author     : udit1
--%>

<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Silver Description</title>
        <style> 
            h2
        {
            font-size:40px; 
        }
        body
            {
              
             background-image: url("xyz8.jpg");
             background-repeat: no-repeat;
             background-size: 100% 100%;  
            }
        
        </style>
    </head>
    <body>
    <center><h2><b> Silver Package Information</b></h2></center>
    <pre><h1>
             <%! String nperson="";
    String tcharge="";
    String acharge="";
    String bcharge="";
    String year="";
    %><%
        Class.forName("com.mysql.jdbc.Driver"); 
           Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/birthday","root","12345");
           String qr1="select * from asilver order by year";
           Statement st1=con.createStatement();
           ResultSet rs1=st1.executeQuery(qr1);
           rs1.last();
           String y=rs1.getString(5);
           
          
           String qr="select * from asilver where year=?";
           PreparedStatement ps=con.prepareStatement(qr);
           ps.setString(1,y );
           ResultSet rs=ps.executeQuery();
           
           while(rs.next())
           {
                nperson=rs.getString(1);
                tcharge=rs.getString(2);
                acharge=rs.getString(3);
                bcharge=rs.getString(4);
                year=rs.getString(5);
               
           }
    %>           1. Air conditioned.

                        2. Capacity of <%=nperson%> persons.

                        3. Decorative lights and flowers.

                        4. Snacks and drinks.

                        5. Timing 6:00pm to 9:00pm.                                     

                        6. Total charges   Rs.<%=tcharge%> 
                           Advance charges Rs.<%=acharge%> 
                           Balance charge  Rs.<%=bcharge%>
    </h1>                                 <form action="birthday.html">
                                                                   <input type="submit" name="back" value="Go Back"></form>
    </pre>
</body>
</html>

