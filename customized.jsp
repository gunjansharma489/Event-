<%-- 
    Document   : customized
    Created on : May 20, 2018, 9:42:33 PM
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
        <title>Customized Pack</title>   
        <style type="text/css">
            #main
            {
             height:100%;
             width:100%;
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
        <%!
            int acc=0;
            int musicc=0;
            int hdc=0;
            int vegc=0;
            int nonvc=0;
            int bothc=0;
            int cpp=0;
            int foodc=0;
            int tcharge=0;
            String ac="";
            String music="";
            String hd="";
            String food="";
            String nperson="";
            int person=0;
            String charge="";
        %>
        <%
             ac=request.getParameter("ac");
             music=request.getParameter("music");
             hd=request.getParameter("hd");
             food=request.getParameter("food");
             nperson=request.getParameter("nperson");
             person=Integer.parseInt(nperson);
            
            Class.forName("com.mysql.jdbc.Driver");
           Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/birthday","root","12345");
           String qr1="select * from acustom order by year";
           Statement st1=con.createStatement();
           ResultSet rs1=st1.executeQuery(qr1);
           rs1.last();
           String y=rs1.getString(8);
           
          
           String qr="select * from acustom where year=?";
           PreparedStatement ps=con.prepareStatement(qr);
           ps.setString(1,y );
           ResultSet rs=ps.executeQuery();
           
           while(rs.next())
           {
               acc=Integer.parseInt(rs.getString(1));
               musicc=Integer.parseInt(rs.getString(2));
               hdc=Integer.parseInt(rs.getString(3));
               vegc=Integer.parseInt(rs.getString(4));
               nonvc=Integer.parseInt(rs.getString(5));
               bothc=Integer.parseInt(rs.getString(6));
               cpp=Integer.parseInt(rs.getString(7));
               String year=rs.getString(8);
           }
           
           if(ac.equals("No"))
           {
            acc=0;
           }
           if(music.equals("No"))
           {
            musicc=0;
           } 
           if(hd.equals("No"))
           {
            hdc=0;
           }
           if(food.equals("Veg"))
           {
            foodc=vegc;
           }
           else if(food.equals("NonVeg"))
           {
            foodc=nonvc;
           }
           else
           {
            foodc=bothc;
           }
           
          tcharge=acc+musicc+hdc+(person*cpp)+(person*foodc);
          charge=String.valueOf(tcharge);
   %>
   
        <div id="main">
            <form action="customizedcheck">
            <h1><center>Registration Form : Customized Package</center></h1><pre> <h2>                    Total Charges:           <input type="text" name="tcharge" value="<%=charge%>">


                    Enter your details:

                    Party Date*               <input type="date" name="pdate" required>      <input type="submit" name="check" value="Check">
                      
                    Name*                    <input type="text" name="name" required>       <input type="hidden" name="ac" value="<%=ac%>">

                    Address*                 <input type="text" name="address" required>    <input type="hidden" name="music" value="<%=music%>">

                    Phone*                   <input type="text" name="phone" maxlength="10" required> <input type="hidden" name="hd" value="<%=hd%>">

                    Birthday Person's Name   <input type="text" name="bname">  <input type="hidden" name="food" value="<%=food%>"> <input type="hidden" name="nperson" value="<%=nperson%>"> 

                    Party Time               <select name="tparty" value="4:00pm - 8:00pm">
                        <option> 4:00pm - 8:00pm </option> <option> 5:00pm - 9:00pm </option> <option> 6:00pm - 10:00pm </option>
</select>

                               <input type="hidden" name="pck" value="custom">            </h2><p>                             <b>*Fields Are Compulsory</b></p>                                                                         <input type="submit" name="check" value="Register" ></pre></form>
<pre><h3><form action="custtry.jsp">                                                              <input type="submit" value="Go Back" name="goback"> </form> </h3> </pre>
   
         </div>
    </body>
</html>

