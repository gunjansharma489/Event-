<%-- 
    Document   : Platinum
    Created on : Apr 21, 2018, 4:16:13 PM
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
        <title>Platinum</title>   
        <style type="text/css">
            #main
            {
             height:100%;
             width:100%;
                        }
            #button
            {
             
             width:40; 
             text-align:center;
             border:1;
            }
            #button:hover
           {
             background-color:green;
             color: white;
           }
           p
           {
            color:red;   
           }
           
            body
            {
              height:100%;
             width:100%;
             background-image: url("xyz23.jpg");
             background-repeat: no-repeat;
             background-size: 100% 100%;  
            }
        
        </style>
    </head>
    <body>
        <%! String Nperson="";
            String Tcharge="";
            String Acharge="";
            String Bcharge="";
            String Year="";   %>
        <%
            Class.forName("com.mysql.jdbc.Driver");
           Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/birthday","root","12345");
          
           String qr1="select * from aplatinum order by year";
           Statement st1=con.createStatement();
           ResultSet rs1=st1.executeQuery(qr1);
           rs1.last();
           String y=rs1.getString(5);
           
          
           String qr="select * from aplatinum where year=?";
           PreparedStatement ps=con.prepareStatement(qr);
           ps.setString(1,y );
           ResultSet rs=ps.executeQuery();
           
           while(rs.next())
           {
               Nperson=rs.getString("nperson");
               Tcharge=rs.getString("tcharge");
               Acharge=rs.getString("acharge");
               Bcharge=rs.getString("bcharge");
               Year=rs.getString("year");
           }

         %>   
        <div id="main">
        
            <h1><center>Registration Form : Platinum Package</center></h1><pre><form action="Platinumcheck"> <h2> 
                    Party Date*              <input type="date" name="pdate" required>      <input type="submit" name="check" value="Check">
                      
                    Name*                    <input type="text" name="name" required>

                    Address*                 <input type="text" name="address" required>

                    Phone*                   <input type="text" name="phone" maxlength="10" required>

                    Birthday Person's Name   <input type="text" name="bname">

                    No. of Persons           <input type="text" name="nperson" value="<%= Nperson %>" disabled>

                    Total Charges            <input type="text" name="tc" value="<%= Tcharge %>" disabled>

                    Advance Charges          <input type="text" name="ac" value="<%= Acharge %>" disabled>

                    Balance Amount           <input type="text" name="ba" value="<%= Bcharge %>" disabled>           <input type="hidden" name="pck" value="Platinum">
            </h2><p>                             *Fields Are Compulsory</p>                                                                          <input type="submit" name="check" value="Register">  </form>
                       
<form action="birthday.html">                                                                          <input type="submit" value="Go Back"> </form>
            </pre>
         </div>
    </body>
</html>

