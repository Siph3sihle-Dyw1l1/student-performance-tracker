<%-- 
    Document   : get_student_using_age_outcome
    Created on : 14 Apr 2026, 10:34:23 PM
    Author     : S DYWILI 230654182
--%>

<%@page import="java.text.DecimalFormat"%>
<%@page import="java.util.List"%>
<%@page import="za.ac.tut.model.entity.Student"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <!-- Viewport for responsiveness -->
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Get Student Using Age Outcome Page</title>
        <link href="https://fonts.googleapis.com/css2?family=Inter:opsz,wght@14..32,300;14..32,400;14..32,500;14..32,600;14..32,700&display=swap" rel="stylesheet">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/style.css">
    </head>
    <body>
        <main class="container">
            <h1>Get student using age outcome</h1>
            <%
                List<Student> studList = (List<Student>) request.getAttribute("studList");
                Integer minAge = (Integer) request.getAttribute("minAge");
                Integer maxAge = (Integer) request.getAttribute("maxAge");
            %>

            <p>
                Below are the students within the age <b><%=minAge%></b> and <b><%=maxAge%></b>.
            </p>
            <table border='1'>
                <tr>
                    <th>Student No</th>
                    <th>Name</th>
                    <th>Surname</th>
                    <th>Age</th>
                    <th>Gender</th>
                    <th>Mark obtained</th>
                </tr>
                <%
                    for (int i = 0; i < studList.size(); i++) {
                        Long studNr = studList.get(i).getId();
                        String name = studList.get(i).getFirstName();
                        String surname = studList.get(i).getLastName();
                        Integer age = studList.get(i).getAge();
                        String gender = studList.get(i).getGender();
                        Double markObtained = studList.get(i).getPercentageMark();

                %>
                <tr>
                    <td><%=studNr%></td>
                    <td><%=name%></td>
                    <td><%=surname%></td>
                    <td><%=age%></td>
                    <td><%=gender%></td>
                    <td><%=(new DecimalFormat("###.0").format(markObtained))%>%</td>
                </tr>
                <%
                    }
                %>
            </table>
            <p>
                Please click <a href="menu.jsp">here</a> to get back to the menu page or 
                <a href="index.html">here</a> to the main page.
            </p>
        </main>
    </body>
</html>
