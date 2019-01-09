<%-- 
    Document   : statusc
    Created on : May 22, 2018, 11:07:04 PM
    Author     : udit1
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
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
            String ac="";
            String m="";
            String hd="";
            String t="";
            String f="";
            String np="";
            String tc="";
            String unum="";
            String pck="";
        %>
        <%
            try{
             unum=request.getParameter("num");
             pck=request.getParameter("pck");
            
            Class.forName("com.mysql.jdbc.Driver");
           Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/birthday","root","12345");
          
           if(pck.equals("Customized"))
           {
           String st1="select * from custom where unumber=?";
           PreparedStatement ps=con.prepareStatement(st1);
           ps.setString(1, unum);
           ResultSet rs5=ps.executeQuery();
           %>
           <h1><center>Customized Package</center></h1>
           <%
               rs5.next();
               n=rs5.getString("name");
               a=rs5.getString("address");
               p=rs5.getString("phone");
               bn=rs5.getString("bname");
               pd=rs5.getString("pdate");
               ac=rs5.getString("ac");
               m=rs5.getString("music");
               hd=rs5.getString("hd");
               t=rs5.getString("tparty");
               f=rs5.getString("food");
               np=rs5.getString("nperson");
               tc=rs5.getString("tcharge");
               }
}catch(Exception e)
{
out.println(e);
}
%>
           <pre><h2><form action="cancelc">
<input type="hidden" name="pck" value="<%=pck%>"> <input type="hidden" name="unum" value="<%=unum%>">
                    Name                     <input type="text" name="name" value="<%=n%>" >      Air Conditioned             <input type="text" value="<%=ac%>">


                    Address                  <input type="text" name="address" value="<%=a%>" >      Music                       <input type="text" value="<%=m%>">


                    Phone                    <input type="text" name="phone" maxlength="10" value="<%=p%>" >      Hard Drinks                 <input type="text" value="<%=hd%>">


                    Birthday Person's Name   <input type="text" name="bname" value="<%=bn%>" >      Food                        <input type="text" value="<%=f%>">

                    
                    Party Date               <input type="text" value="<%=pd%>" >      Total Charge                <input type="text" value="<%=tc%>">


                    Time Of Party            <input type="text" value="<%=t%>">      No. Of People               <input type="text" value="<%=np%>">

                                                          <input type="submit" name="cancel" value="Cancel Registeration"> </form>
<form action="status.html">                                                             <input type="submit" value="Go Back"></form>               </h2></pre>
           
           
    </body>
</html>