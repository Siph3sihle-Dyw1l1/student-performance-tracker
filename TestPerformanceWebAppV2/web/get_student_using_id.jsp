<%-- 
    Document   : get_student_using_id
    Created on : 14 Apr 2026, 10:34:01 PM
    Author     : S DYWILI 230654182
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <!-- Viewport for responsiveness -->
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Get Student Using ID Page</title>
        <link href="https://fonts.googleapis.com/css2?family=Inter:opsz,wght@14..32,300;14..32,400;14..32,500;14..32,600;14..32,700&display=swap" rel="stylesheet">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/style.css">
    </head>
    <body>
        <main class="container">
            <h1>Get student using id</h1>
            <p>
                Please enter the ID of the student below.
            </p>
            <form action="GetStudentByIDServlet.do" method="POST">
                <table>
                    <tr>
                        <td>ID: </td>
                        <td><input type="text" name="id"</td>
                    </tr>
                    <tr>
                        <td></td>
                        <td><input type="submit" value="GET"</td>
                    </tr>
                </table>
            </form>
        </main>
    </body>
</html>

