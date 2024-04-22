<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.List" %>
<%@ page import="db.Item" %>
<jsp:include page="resources.jsp"/>
<jsp:include page="header.jsp"/>

<div class="container mt-3 mb-3">
    <h1 class="text-center">Welcome to KAZAKH SHOP</h1>
    <h3 class="text-center mb-4">Electronic devices with high quality and service</h3>
    <div class="row justify-content-center">
        <div class="col-md-4">
            <a href="login.jsp" class="btn btn-primary btn-lg d-block mx-auto mb-4">Sign In</a>
        </div>
    </div>
    <div class="row row-cols-1 row-cols-md-3 g-4">
        <%
            List<Item> items = (List<Item>) request.getAttribute("items");
            if (items != null && !items.isEmpty()) {
                for (Item item : items) {
        %>
        <div class="col">
            <div class="card h-100 shadow">
                <div class="card-body">
                    <h5 class="card-title text-center"><%= item.getName() %>
                    </h5>
                    <p class="card-text text-center"><%= item.getDescription() %>
                    </p>
                    <p class="card-text text-center">Price: $<%= item.getPrice() %>
                    </p>
                </div>
            </div>
        </div>
        <%
            }
        } else {
        %>
        <div class="col text-center">
            <p>No items available.</p>
        </div>
        <%
            }
        %>
    </div>
</div>