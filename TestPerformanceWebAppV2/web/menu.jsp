<%-- 
    Document   : menu
    Created on : 14 Apr 2026, 10:26:59 PM
    Author     : S DYWILI 230654182
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <!-- Viewport for responsiveness -->
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Menu Page</title>
        <link href="https://fonts.googleapis.com/css2?family=Inter:opsz,wght@14..32,300;14..32,400;14..32,500;14..32,600;14..32,700&display=swap" rel="stylesheet">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/style.css">
    </head>
    <body>
        <main class="container">
            <h1>Menu</h1>    
            <p>
                Please select one of the following options:
            </p>
            <ol>
                <li>Click <a href="add_student.jsp">here</a> to add a student.</li>
                <li>Click <a href="get_test_statistics.jsp">here</a> to get test statistics.</li>
                <li>Click <a href="get_student_using_id.jsp">here</a> to get a student using id as criteria.</li>
                <li>Click <a href="get_student_using_name_surname.jsp">here</a> to get a specific student using name and surname.</li>
                <li>Click <a href="get_student_using_age.jsp">here</a> to get a student using age as a criteria.</li>
            </ol>
        </main>
    </body>
</html>

