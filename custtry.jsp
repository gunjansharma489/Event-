<%-- 
    Document   : custtry
    Created on : May 22, 2018, 3:33:37 AM
    Author     : udit1
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Customized Pack</title> 
        <style>
            #main
            {
            
            }
        h3
        {
            font-size:20px; 
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
        <div id="main">
            <center><b><h1>Customized Package</h1></b></center>
             <pre><form action="customized.jsp"> <h2>                   <u>Select custom choices</u>:</h2>        <h3>                   Air Conditioned       <select name="ac" value="Yes">                   
        <option>Yes</option>
        <option>No</option>
    </select>                 


                   Music                 <select name="music" value="Yes">
        <option>Yes</option>
        <option>No</option>
        </select>                


                   Hard drinks           <select name="hd" value="Yes">
        <option>Yes</option>
        <option>No</option></select>                 


                   Food                  <select name="food" value="Veg">
        
        
        
        <option>Veg</option>
        <option>Non-Veg</option>
        <option>Both Veg & Non-Veg</option></select>        


                   Capacity of person    <input type="text" name="nperson" id="nperson" size="16" required>    <input type="hidden" name="pck" value="customized">


                                         <input type="submit" name="clickbtn" value="Calculate">
</h3></form>
 <form action="birthday.html">                                                               <input type="submit" value="Go Back"> </form>
</pre>        
       
        </div></body></html>
