<%-- 
    Document   : pbook.jsp
    Created on : May 21, 2018, 9:06:38 PM
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
        <title>Bookings</title>
        <style>
            body
            {
              height:100%;
             width:100%;
             background-image: url("xyz11.jpg");
             background-repeat: no-repeat;
             background-size: 100% 100%;  
            }
        </style>
    </head>
    <body>
        <pre> <h2>
        <center> <table aligh="center" border="1px" cellspacing="5" cellpadding="5">
                 <tr>
                <th>Name</th>
                <th>Address</th>
                <th>Phone</th>
                <th>Birthday Person's Name</th>
                <th>Party Date</th>
                <th>Air Conditioned</th>
                <th>Music</th>
                <th>Hard Drinks</th>
                <th>Time Of Party</th>
                <th>Food</th>
                <th>Total Charge</th>
                         </tr>             
        <%!
            String name="";
            String address="";
            String phone="";
            String bname="";
            String pdate="";
            String ac="";
            String music="";
            String hd="";
            String tparty="";
            String food="";
            String tcharge="";
        %>
        <%
           Class.forName("com.mysql.jdbc.Driver");
           Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/birthday","root","12345");
           String qr="select * from custom order by pdate";
           Statement st=con.createStatement();
           ResultSet rs=st.executeQuery(qr);
           
           while(rs.next())
           {
                name=rs.getString(1);
                address=rs.getString(2);
                phone=rs.getString(3);
                bname=rs.getString(4);
                pdate=rs.getString(5);
                ac=rs.getString(6);
                music=rs.getString(7);
                hd=rs.getString(8);
                tparty=rs.getString(9);
                food=rs.getString(10);
                tcharge=rs.getString(12);
        %>
                    <tr>
                <td><%=name%></td>
                <td><%=address%></td>
                <td><%=phone%></td>
                <td><%=bname%></td>
                <td><%=pdate%></td>
                <td><%=ac%></td>
                <td><%=music%></td>
                <td><%=hd%></td>
                <td><%=tparty%></td>
                <td><%=food%></td>
                <td><%=tcharge%></td>
            </tr> 
            <%
                }
            %>
            </table> </center> </h2>
<form action="adminuser.html">                                                                                       <input type="submit" value="Go Back"> </form>
        </pre>
    </body>
</html>
