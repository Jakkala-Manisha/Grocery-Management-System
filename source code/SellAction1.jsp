<%-- 
    Document   : OwnerRegAction
    Created on : 29 Sep, 2020, 5:52:17 PM
    Author     : KishanVenky
--%>

<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="com.database.Dbconnection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="com.database.Queries"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
try{

   
    String customername=request.getParameter("cname");
    String mobile=request.getParameter("mobile");
    String pid=request.getParameter("pid");
    String quantity=request.getParameter("quantity");
   
    int quant=Integer.parseInt(quantity);
   
  Connection con=Dbconnection.getcon();
  Statement st=con.createStatement();
    
    String query="select * from products where id='"+pid+"'";
    ResultSet r=Queries.getExecuteQuery(query);
    int cost=0;
    String pname=null;
    while(r.next()){
         cost=Integer.parseInt(r.getString(3));
         pname=r.getString(2);
    }
        int fcost=cost*quant;
        
     int ii=st.executeUpdate("insert into sales values(null,'"+customername+"','"+mobile+"','"+pname+"','"+quantity+"','"+cost+"','"+fcost+"',now())");       
    if(ii>0){
response.sendRedirect("SellAction.jsp?cname="+customername+"&mobile="+mobile+"&msg=Done");

    }else{
    
%>
      <script type='text/javascript'>
          window.alert(" Failed..!!");
          window.location="AddProducts.jsp";
      </script>
      <%
}
}catch(Exception e){
    out.println(e);
}



%>