<%-- 
    Document   : DebyJspUsed
    Created on : Apr 27, 2017, 5:00:58 AM
    Author     : prafull
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Connection to Derby</h1>
        <jsp:useBean id="myBean" scope="session" class="Project.Derby"/>
        <jsp:setProperty name ="myBean" property="name"/>
        <jsp:setProperty name ="myBean" property="pass"/>
        <form>
            <input type="text" value="name"/>
            <jsp:setProperty name ="myBean" property="name"/>
            <input type="text" value="pass"/>
            <jsp:setProperty name ="myBean" property="name"/>
            <input type="submit" value="clear"/>
            <jsp:setProperty name ="myBean" property="clear"/>
            <input type="submit" value="submit"/>
            <jsp:setProperty name ="myBean" property="submit"/>
            
        </form>
            <%
                
                int a = myBean.store();
                  if(a==1){
                      out.print("Elements Stored Successfully");
                  }else{
                      out.print("elements are not inserted successfully");
                  }
              %>
            
    </body>
</html>
