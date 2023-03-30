<%-- 
    Document   : Manager
    Created on : 26 Mar, 2021, 9:08:24 PM
    Author     : KishanVenky
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="com.database.Queries"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
<head>
<title>Grocery Management System</title>

<link rel="stylesheet" href="layout/styles/layout.css" type="text/css" />
<script type="text/javascript" src="layout/scripts/jquery.min.js"></script>
<!-- Featured Slider  -->
<script type="text/javascript" src="layout/scripts/jquery-s3slider.js"></script>
<script type="text/javascript">
$(document).ready(function() {
	$("#featured_slide_").s3Slider({
		timeOut:10000 
	});
});
</script>
<!-- / Featured Slider -->
</head>
<body id="top">
<div class="wrapper row1">
  <div id="topnav">
    <ul>
      <li><a href="ManagerHome.jsp"><strong>Home</strong></a></li>
      <li><a href="AddProducts.jsp"><strong>Add Product</strong></a></li>
      <li class="active"><a href="ProductsReports.jsp"><strong>Product Reports</strong></a></li>
      <li><a href="AddSells.jsp"><strong>Add Sells</strong></a></li>
      <li><a href="SalesReport.jsp"><strong>Sales Reports</strong></a></li>
      <li><a href="Manager.jsp"><strong>Logout</strong></a></li>
      
      
      
    </ul>
  </div>
</div>
<!-- ####################################################################################################### -->
<div class="wrapper row2">
  <div id="header" class="clear">
    <div class="fl_left">
      <h1><a href="#">Grocery Management System</a></h1>
    
    </div>
    
  </div>
</div>
<!-- ####################################################################################################### -->
<div class="wrapper row3">
  <div id="featured_slide_">
    <ul id="featured_slide_Content">
      <li class="featured_slide_Image"><a href="#"><img src="images/Grocery.jpg" alt="" /></a>
        
      </li>
      
      
      <li class="clear featured_slide_Image"><!-- Important - Leave This Empty --></li>
    </ul>
  </div>
  
</div>
<div class="wrapper row5">
  <div id="container" class="clear"> 
    <!-- ####################################################################################################### -->
    <div id="homepage" class="clear">
     <center>
             <center>
                 <h2>Product Reports</h2>
       <%String id=request.getParameter("id");%>
                 
         <%try{
             ResultSet r=Queries.getExecuteQuery("select * from products where id='"+id+"'");
             
             if(r.next()){
               
               %>
               <form action="UpdateAction.jsp" method="post">
               <table>
               <tr> 
                   <th>Product Id</th><td><input type="text" name="id" value="<%=r.getString(1)%>" readonly=""></td>
                   <th>Product Name</th><td><input type="text" name="pname" value="<%=r.getString(2)%>"></td>
                   <th>Cost per Unit</th><td><input type="text" name="cost" value="<%=r.getString(3)%>"></td>
                   <th>Company Name</th><td><input type="text" name="cname" value="<%=r.getString(4)%>"></td>
                   <th>Type</th><td><input type="text" name="type" value="<%=r.getString(5)%>"></td>
                    <th>Description</th><td><input type="text" name="description" value="<%=r.getString(6)%>"></td>
                   
               
             
                    <td><input type="submit" value="Update"></td>
               </tr> 
               </table>
               </form>
               <%
             }
             
         }catch(Exception e){
             out.println(e);
}%>
                 </table>
      </center>    
    </div>
       </div>
</div>


</body>
</html>