<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<%@page contentType="text/html;charset=utf-8" language="java" import="java.sql.*"%>
<%@include file="config.jsp" %>
<%

  
if(request.getParameter("id") !=null && request.getParameter("pwd") != null){
      
    
   sql = "SELECT * FROM login WHERE id='" +request.getParameter("id") + "'  AND pwd='" + request.getParameter("pwd") + "'"  ; 
    ResultSet paperrs =con.createStatement().executeQuery(sql);
    
    if(paperrs.next()){            
        session.setAttribute("id",request.getParameter("id"));
        response.sendRedirect("user.jsp") ;
    }
    else
        out.println("密碼帳號不符 !! <a href='login.html'>按此</a>重新登入") ;
}
%>