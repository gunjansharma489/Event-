<%-- 
    Document   : status
    Created on : May 22, 2018, 1:00:21 PM
    Author     : udit1
--%>

<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Statement"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Details</title>   
        <style type="text/css">
            #main
            {
             height:100%;
             width:100%;
             
            }
            body
            {
              height:100%;
             width:100%;
             background-image: url("xyz23.jpg");
             background-repeat: no-repeat;
             background-size: 100% 100%;  
            }
            h1
            {
                font-size: 50px;
                text-decoration: underline;
            }
        </style>
    </head>
    <body>
        <%! String n="";
            String a="";
            String p="";
            String bn="";
            String pd="";
            String pck="";
            String unum="";
        %>
        <%
            try{
             unum=request.getParameter("num");
             pck=request.getParameter("pck");
            
            Class.forName("com.mysql.jdbc.Driver");
           Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/birthday","root","12345");
          
           if(pck.equals("Platinum"))
           {
           String st1="select * from platinum where unumber=?";
           PreparedStatement ps=con.prepareStatement(st1);
           ps.setString(1, unum);
           ResultSet rs5=ps.executeQuery();
           %>
           <h1><center>Platinum Package</center></h1>
           <%
               rs5.next();
               n=rs5.getString("name");
               a=rs5.getString("address");
               p=rs5.getString("phone");
               bn=rs5.getString("bname");
               pd=rs5.getString("pdate");
               
               }
           else if(pck.equals("Golden"))
                   {
                    String st1="select * from golden where unumber=?";
           PreparedStatement ps=con.prepareStatement(st1);
           ps.setString(1, unum);
           ResultSet rs=ps.executeQuery();
           %>
           <h1><center>Golden Package</center></h1>
           <% 
               rs.next();
           
               n=rs.getString("name");
               a=rs.getString("address");
               p=rs.getString("phone");
               bn=rs.getString("bname");
               pd=rs.getString("pdate");
           
           }
           else if(pck.equals("Silver"))
           {
               String st1="select * from silver where unumber=?";
           PreparedStatement ps=con.prepareStatement(st1);
           ps.setString(1, unum);
           ResultSet rs=ps.executeQuery();
           %>
           <h1><center>Silver Package</center></h1>
           <%
               rs.next();
           
               n=rs.getString("name");
               a=rs.getString("address");
               p=rs.getString("phone");
               bn=rs.getString("bname");
               pd=rs.getString("pdate");
           
           }
}catch(Exception e)
{
out.println(e);
}
         %>
           <pre><h2>
<form action="cancel">
                    Name                     <input type="text" name="name" value="<%=n%>" > <input type="hidden" name="pck" value="<%=pck%>">


                    Address                  <input type="text" name="address" value="<%=a%>" > <input type="hidden" name="unum" value="<%=unum%>">


                    Phone                    <input type="text" name="phone" maxlength="10" value="<%=p%>" >


                    Birthday Person's Name   <input type="text" name="bname" value="<%=bn%>" >

                    
                    Party Date               <input type="text" value="<%=pd%>" >

                                             <input type="submit" name="cancel" value="Cancel Registration"> 
</form> </h2> <form action="status.html">                                                                   <input type="submit" value="Go Back"></form>

           </pre>
    </body>
</html>