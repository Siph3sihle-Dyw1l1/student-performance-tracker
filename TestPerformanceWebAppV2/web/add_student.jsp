<%-- 
    Document   : add_student
    Created on : 14 Apr 2026, 10:28:15 PM
    Author     : S DYWILI 230654182
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <!-- Viewport for responsiveness -->
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Add Student Page</title>
        <link href="https://fonts.googleapis.com/css2?family=Inter:opsz,wght@14..32,300;14..32,400;14..32,500;14..32,600;14..32,700&display=swap" rel="stylesheet">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/style.css">
    </head>
    <body>
        <main class="container">
            <h1>Add student</h1>
            <p>
                Please add student details below:
            </p>
            <form action="AddStudentServlet.do" method="POST">
                <table>
                    <tr>
                        <td>Student number: </td>
                        <td><input type="text" name="studNr"></td>
                    </tr>
                    <tr>
                        <td>Name: </td>
                        <td><input type="text" name="name"></td>
                    </tr>
                    <tr>
                        <td>Surname: </td>
                        <td><input type="text" name="surname"></td>
                    </tr>
                    <tr>
                        <td>Age: </td>
                        <td><input type="text" name="age"></td>
                    </tr>
                    <tr>
                        <td>Gender: </td>
                        <td>
                            <select name="gender">
                                <option value="F">F</option>
                                <option value="M">M</option>
                            </select>
                        </td>
                    </tr>
                    <tr>
                        <td>Mark Obtained: </td>
                        <td><input type="text" name="percentageMark"></td>
                    </tr>
                    <tr>
                        <td></td>
                        <td><input type="submit" value="ADD STUDENT"></td>
                    </tr>
                </table>
            </form>
        </main>
    </body>
</html>
