<%-- 
    Document   : get_student_using_name_surname_outcome
    Created on : 14 Apr 2026, 10:32:33 PM
    Author     : S DYWILI 230654182
--%>

<%@page import="java.text.DecimalFormat"%>
<%@page import="za.ac.tut.model.entity.Student"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Get Student Using ID Outcome Page</title>
        <link href="https://fonts.googleapis.com/css2?family=Inter:opsz,wght@14..32,300;14..32,400;14..32,500;14..32,600;14..32,700&display=swap" rel="stylesheet">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/style.css">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    </head>
    <body>
        <main class="container">
            <%
                Student s = (Student) request.getAttribute("s");
                if (s != null) {
                    Long id = s.getId();
                    String name = s.getFirstName();
                    String surname = s.getLastName();
                    Integer age = s.getAge();
                    String gender = s.getGender();
                    Double markObtained = s.getPercentageMark();
                    String markFormatted = new DecimalFormat("##0.0").format(markObtained);

                    // Determine avatar initial
                    String initial = name.substring(0, 1).toUpperCase();

                    // Determine grade based on mark
                    String gradeClass = "";
                    String gradeText = "";
                    if (markObtained >= 75) {
                        gradeClass = "🌟 Distinction";
                        gradeText = "Excellent!";
                    } else if (markObtained >= 50) {
                        gradeClass = "✅ Pass";
                        gradeText = "Good Job!";
                    } else {
                        gradeClass = "📚 Needs Improvement";
                        gradeText = "Keep Trying!";
                    }
            %>

            <h1>🎓 Student Profile</h1>
            <p>Click or hover on the card to flip it and see more details!</p>

            <!-- 3D Flip Card -->
            <div class="card-3d-container">
                <div class="card-3d">
                    <!-- FRONT SIDE -->
                    <div class="card-front">
                        <div class="student-avatar">
                            <%= initial%>
                        </div>
                        <h2 style="margin: 0.5rem 0; color: var(--accent-cyan);"><%= name%> <%= surname%></h2>
                        <p style="color: var(--text-secondary);">Student ID: <%= id%></p>

                        <div class="info-item">
                            <span class="info-label">📚 Grade:</span>
                            <span class="info-value"><%= gradeClass%></span>
                        </div>

                        <div class="info-item">
                            <span class="info-label">📊 Mark:</span>
                            <span class="info-value"><%= markFormatted%>%</span>
                        </div>

                        <div class="mark-badge">
                            <%= markFormatted%>% 
                        </div>
                        <div class="flip-hint">✨ Hover to flip ✨</div>
                    </div>

                    <!-- BACK SIDE -->
                    <div class="card-back">
                        <h3 style="color: var(--accent-cyan); margin-bottom: 1.5rem;">📋 Complete Details</h3>

                        <div class="info-item">
                            <span class="info-label">🆔 Student ID:</span>
                            <span class="info-value"><%= id%></span>
                        </div>

                        <div class="info-item">
                            <span class="info-label">👤 Name:</span>
                            <span class="info-value"><%= name%></span>
                        </div>

                        <div class="info-item">
                            <span class="info-label">👪 Surname:</span>
                            <span class="info-value"><%= surname%></span>
                        </div>

                        <div class="info-item">
                            <span class="info-label">🎂 Age:</span>
                            <span class="info-value"><%= age%> years</span>
                        </div>

                        <div class="info-item">
                            <span class="info-label">⚥ Gender:</span>
                            <span class="info-value"><%= gender.equals("M") ? "Male ♂" : "Female ♀"%></span>
                        </div>

                        <div class="info-item">
                            <span class="info-label">📈 Percentage:</span>
                            <span class="info-value"><%= markFormatted%>%</span>
                        </div>

                        <div class="info-item">
                            <span class="info-label">💬 Comment:</span>
                            <span class="info-value"><%= gradeText%></span>
                        </div>

                        <div class="flip-hint">✨ Hover to flip back ✨</div>
                    </div>
                </div>
            </div>

            <%
            } else {
            %>
            <div class="error-message">
                ❌ No student found with the provided ID.
            </div>
            <%
                }
            %>

            <p style="text-align: center; margin-top: 2rem;">
                <a href="menu.jsp">← Back to Menu</a> | 
                <a href="index.html">Home</a>
            </p>
        </main>
    </body>
</html>