<%-- 
    Document   : thankyou
    Created on : Mar 2021
    Author     : Ziggas
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:import url="/includes/header.html" />

<h1>Thank You For Your Order!</h1>

<p>Here Is the Information That You Entered:</p><br>

<label>Your Name</label><br>
<span>${order.name}</span><br><br>
<label>Your Email</label><br>
<span>${order.email}</span><br><br>

<table>
    <tr>
        <th> Book Cover </th>
        <th> Book Title </th>
        <th> Price </th>
    </tr>
    
    <c:if test="${lordBook != null}">
    <tr>
        <th> <a href="https://cdn2.mhpbooks.com/2011/11/lotf11-320x484.png" target="_blank">
                https://cdn2.mhpbooks.com/2011/11/lotf11-320x484.png</a> </th>
        <th> Lord of the Flies </th>
        <th> $7.35 </th>
    </tr>
    </c:if>

    <c:if test="${greatBook != null}">
    <tr>
        <th> <a href="https://images-na.ssl-images-amazon.com/images/I/81af+MCATTL.jpg" target="_blank">
                https://images-na.ssl-images-amazon.com/images/I/81af+MCATTL.jpg</a> </th>
        <th> The Great Gatsby </th>
        <th> $8.74 </th>
    </tr>
    </c:if>
    
    <c:if test="${killBook != null}">
    <tr>
        <th> <a href="https://m.media-amazon.com/images/I/516IbJ592JL.jpg" target="_blank">
                https://m.media-amazon.com/images/I/516IbJ592JL.jpg</a> </th>
        <th> To Kill a Mockingbird </th>
        <th> $7.19 </th>
    </tr>
    </c:if>
    
    <c:if test="${georgeBook != null}">
    <tr>
        <th> <a href="https://cdn2.penguin.com.au/covers/400/9780141036144.jpg" target="_blank">
                https://cdn2.penguin.com.au/covers/400/9780141036144.jpg</a> </th>
        <th> George Orwell's 1984 </th>
        <th> $8.60 </th>
    </tr>
    </c:if>
</table><br>

<p>To request another order, please hit the return button below.</p>

<form action="" method="get">
    <input type="hidden" name="action" value="return">
    <input type="submit" value="Return" class="buttons">
</form><br>

<c:import url="/includes/footer.jsp"/>
