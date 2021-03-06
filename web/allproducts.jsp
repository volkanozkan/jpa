<%-- 
    Document   : allcategories
    Created on : May 11, 2015, 11:59:50 PM
    Author     : VolkanOzkan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <jsp:include page="adminindex.jsp" />
        <title>Category</title>
    </head>
    <body>
       <table border="1" align="center" >
            <td><a href="${pageContext.request.contextPath}/AddProductChoose">Add Product</a></td>
            <td><a href="${pageContext.request.contextPath}/AllProducts">All Products</a></td> 
        </table>
           
        <form action="${pageContext.request.contextPath}/AllProducts" method="POST">
            <table border="1" align="center" >
                <td> <select name = "currency" >
                        <option value="Turkey"> Turkey </option>
                        <option value="US"> United States </option>
                        <option value="Europe"> Europe </option>
                     </select>
                       *Default = TR
                </td>
                <tr>
                    <td colspan="2"><input type="Submit" name="currency" value="Change Currency" />
                </tr>
             </table>
        </form>
               
        <table border="1" align="center" >
            <th>Id</th>
            <th>Barcode</th>
            <th>Name</th>
            <th>Quantity</th>
            <th>Price</th>
            <th>Currency</th>
            <th>Attributes</th>
            <th>SubCategory</th>
            <th>Supplier</th>
            <c:forEach items="${requestScope.list}" var="product" varStatus="status">
                <tr>
                    <td>${product.id}</td>
                    <td>${product.barcode}</td>
                    <td>${product.name}</td>
                    <td>${product.quantity}</td>
                    <td>${product.price}</td> 
                    <c:forEach items="${requestScope.list2}" var="symbol" >
                    <td>${symbol}</td>
                    </c:forEach>
                    <td>${product.attributes}</td>
                    <td>${product.subcategoryid}</td>
                    <td>${product.supplierid}</td> 
                </tr>
            </c:forEach>  
        </table>
    </body>
</html>
