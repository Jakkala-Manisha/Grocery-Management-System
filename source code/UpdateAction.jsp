<%-- 
    Document   : OwnerRegAction
    Created on : 29 Sep, 2020, 5:52:17 PM
    Author     : KishanVenky
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="com.database.Queries"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
try{

   String id=request.getParameter("id");
    String pname=request.getParameter("pname");
    String cost=request.getParameter("cost");
    String cname=request.getParameter("cname");
    String type=request.getParameter("type");
    String description=request.getParameter("description");
   
  
    
    String query="update products set product_name='"+pname+"',cost_per_uint='"+cost+"',company_name='"+cname+"',type='"+type+"',description='"+description+"'where id='"+id+"'";
    int i=Queries.getExecuteUpdate(query);
    if(i>0){
%>
      <script type='text/javascript'>
          window.alert("Successful...!!");
          window.location="ProductsReports.jsp";
      </script>
      <%

    }else{
    
%>
      <script type='text/javascript'>
          window.alert(" Failed..!!");
          window.location="ProductsReports.jsp";
      </script>
      <%
}
}catch(Exception e){
    out.println(e);
}



%>