<%-- 
    Document   : thankyou
    Created on : Mar 2021
    Author     : Ziggas
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:import url="/includes/header.html" />

<h1>Book Fair Order Form</h1>
<p>* Fields are Required</p>

<form action="bookOrder" method="post">
    <input type="hidden" name="action" value="add">   
    <label class="inputLabel">Name*</label><br>
    <input type="text" name="name" value="${order.name}"><br>
    <label class="inputLabel">Email*</label><br>
    <input type="email" name="email" value="${order.email}"><br>
    
    <c:if test="${infoMessage != null}">
        <h4><i>${infoMessage}</i></h4><br>
    </c:if>
        
    <table>
        <tr>
            <th> Book Cover </th>
            <th> Book Title </th>
            <th> Price </th>
            <th> Add to Cart* </th>
        </tr>

        <tr>
            <th> <a href="https://cdn2.mhpbooks.com/2011/11/lotf11-320x484.png" target="_blank">
                    https://cdn2.mhpbooks.com/2011/11/lotf11-320x484.png</a> </th>
            <th> Lord of the Flies </th>
            <th> $7.35 </th>
            <th> <input type="checkbox" name="lordBook" value="${lordOrder}"> </th>
        </tr>

        <tr>
            <th> <a href="https://images-na.ssl-images-amazon.com/images/I/81af+MCATTL.jpg" target="_blank">
                    https://images-na.ssl-images-amazon.com/images/I/81af+MCATTL.jpg</a> </th>
            <th> The Great Gatsby </th>
            <th> $8.74 </th>
            <th> <input type="checkbox" name="greatBook" value="${greatOrder}"> </th>

        </tr>
        <tr>
            <th> <a href="https://m.media-amazon.com/images/I/516IbJ592JL.jpg" target="_blank">
                    https://m.media-amazon.com/images/I/516IbJ592JL.jpg</a> </th>
            <th> To Kill a Mockingbird </th>
            <th> $7.19 </th>
            <th> <input type="checkbox" name="killBook" value="${killOrder}"> </th>
        </tr>

        <tr>
            <th> <a href="https://cdn2.penguin.com.au/covers/400/9780141036144.jpg" target="_blank">
                    https://cdn2.penguin.com.au/covers/400/9780141036144.jpg</a> </th>
            <th> George Orwell's 1984 </th>
            <th> $8.60 </th>
            <th> <input type="checkbox" name="georgeBook" value="${georgeOrder}"> </th>
        </tr>
    </table><br>
    
    <c:if test="${bookMessage != null}">
        <h4><i>${bookMessage}</i></h4>
    </c:if><br>
        
    <input type="submit" value="Place Order" class="buttons"><br>
</form><br>

<c:import url="/includes/footer.jsp"/>
