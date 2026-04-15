<%-- 
    Document   : add_student_outcome
    Created on : 14 Apr 2026, 10:28:59 PM
    Author     : S DYWILI 230654182
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <!-- Viewport for responsiveness -->
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Add Student Outcome Page</title>
        <link href="https://fonts.googleapis.com/css2?family=Inter:opsz,wght@14..32,300;14..32,400;14..32,500;14..32,600;14..32,700&display=swap" rel="stylesheet">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/style.css">
        <!-- Confetti Library -->
        <script src="https://cdn.jsdelivr.net/npm/canvas-confetti@1"></script>
    </head>
    <body>
        <main class="container">
            <h1>Add student outcome</h1>
            <p>
                The student has been successfully persisted into the database. Please 
                click <a href="menu.jsp">here</a> to get back to the menu page or 
                <a href="index.html">here</a> to the main page.
            </p>
        </main>
        <script src="${pageContext.request.contextPath}/js/confetti.js"></script>
    </body>
</html>
