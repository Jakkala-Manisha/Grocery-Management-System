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
      <li><a href="ProductsReports.jsp"><strong>Product Reports</strong></a></li>
      <li><a href="AddSells.jsp"><strong>Add Sells</strong></a></li>
      <li class="active"><a href="SalesReport.jsp"><strong>Sales Reports</strong></a></li>
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
                 <h2>All Sales Reports</h2>
       
                 <table>
                     <tr>
                         <th>SrNo</th><th>Customer Name</th><th>Mobile</th>
                         <th>Product Name</th><th>Quantity</th><th>Cost</th><th>Total</th>
                         <th>Delete</th>
                     </tr>
         <%try{
             ResultSet r=Queries.getExecuteQuery("select * from sales");
             int c=0;
             while(r.next()){
                 c=c+1;
               %>
               <tr> 
                   <td><%=c%></td>
                   <td><%=r.getString(2)%></td>
                   <td><%=r.getString(3)%></td>
                   <td><%=r.getString(4)%></td>
                   <td><%=r.getString(5)%></td>
                   <td><%=r.getString(6)%> Rs/-</td>
                   <td><%=r.getString(7)%> Rs/-</td>
                   <td><a href="SaleDelete.jsp?id=<%=r.getString(1)%>">Delete</a></td>
               </tr> 
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