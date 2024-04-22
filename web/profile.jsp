<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="db.User" %>
<jsp:include page="resources.jsp"/>
<jsp:include page="header.jsp"/>

<div class="container mt-5">
    <div class="row justify-content-center">
        <div class="col-md-6">
            <div class="card shadow">
                <div class="card-body">
                    <%
                        User user = (User) request.getSession().getAttribute("user");
                        if (user != null) {
                    %>
                    <h1 class="card-title text-center mb-4">Hello, <%= user.getFullName() %>!</h1>
                    <p class="card-text text-center">Welcome to your profile page.</p>
                    <% } else { %>
                    <div class="alert alert-danger text-center" role="alert">
                        You are not logged in. Please <a href="login.jsp">login</a>.
                    </div>
                    <% } %>
                </div>
            </div>
        </div>
    </div>
</div>