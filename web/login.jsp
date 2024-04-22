<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:include page="resources.jsp"/>
<jsp:include page="header.jsp"/>

<div class="container mt-5">
    <div class="row justify-content-center">
        <div class="col-md-6">
            <div class="card shadow">
                <div class="card-body">
                    <h1 class="card-title text-center mb-4">Login</h1>
                    <% if (request.getAttribute("loginError") != null) { %>
                    <div class="alert alert-danger text-center" role="alert">
                        <%= request.getAttribute("loginError") %>
                    </div>
                    <% } %>
                    <form action="login" method="post">
                        <div class="mb-3">
                            <label for="email" class="form-label">Email:</label>
                            <input type="email" class="form-control" id="email" name="email" required>
                        </div>
                        <div class="mb-3">
                            <label for="password" class="form-label">Password:</label>
                            <input type="password" class="form-control" id="password" name="password" required>
                        </div>
                        <div class="text-center">
                            <button type="submit" class="btn btn-primary col-6 mt-4">Login</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>