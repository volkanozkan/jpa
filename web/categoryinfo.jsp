<%-- 
    Document   : categoryinfo
    Created on : May 11, 2015, 11:58:26 PM
    Author     : VolkanOzkan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="/SoftwareHw/style.css" />
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <jsp:include page="adminindex.jsp" />
        <title>Category</title>
    </head>
    <body>
        <table align="center" border="1">
            <td><a href="categoryinfo.jsp">Category Info</a></td>
             <td><a href="addcategory.jsp">Add Category</a></td>
            <td><a href="${pageContext.request.contextPath}/AllCategories">All Categories</a></td>            
        </table>
        <form action="${pageContext.request.contextPath}/CategoryServlet" method="POST">
            <table align="center" border="2">
              
                <tr>
                    <td>ID:</td>
                    <td><input type="hidden" name="id" value="${category.id}"/></td>
                </tr>
                <tr>
                    <td>Name:</td>
                    <td><input type="text" name="name" value="${category.name}" required="true"/></td>
                </tr>
                <tr>
                    <td>Tax:</td>
                    <td><input type="text" name="tax" value="${category.tax}" required="true"/></td>
                </tr>
                <tr>
                    <td colspan="4">
                    <input type="Submit" name="operation" value="Edit" />
                    <input type="Submit" onclick="return confirm('Are you sure to Delete?');" name="operation" value="Delete" />
                    </td>
                </tr>                
            </table>
        </form>  
    </body>
</html>
