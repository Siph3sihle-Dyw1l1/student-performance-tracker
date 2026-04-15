<%-- 
    Document   : get_statistics_outcome
    Created on : 14 Apr 2026, 10:35:31 PM
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
        <title>Get Test Statistics Outcome Page</title>
        <link href="https://fonts.googleapis.com/css2?family=Inter:opsz,wght@14..32,300;14..32,400;14..32,500;14..32,600;14..32,700&display=swap" rel="stylesheet">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/style.css">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <!-- Chart.js CDN -->
        <script src="https://cdn.jsdelivr.net/npm/chart.js@4.4.0/dist/chart.umd.min.js"></script>
    </head>
    <body>
        <main class="container">
            <%
                Integer totalStud = (Integer) request.getAttribute("totalStud");
                Integer cntAllStudPassed = (Integer) request.getAttribute("cntAllStudPassed");
                Integer cntAllStudFailed = (Integer) request.getAttribute("cntAllStudFailed");
                Integer cntAllMaleStud = (Integer) request.getAttribute("cntAllMaleStud");
                Integer cntAllFemaleStud = (Integer) request.getAttribute("cntAllFemaleStud");
                Integer cntAllMaleStudPassed = (Integer) request.getAttribute("cntAllMaleStudPassed");
                Integer cntAllFemaleStudPassed = (Integer) request.getAttribute("cntAllFemaleStudPassed");
                Integer cntAllMaleStudFailed = (Integer) request.getAttribute("cntAllMaleStudFailed");
                Integer cntAllFemaleStudFailed = (Integer) request.getAttribute("cntAllFemaleStudFailed");
                Double highestMark = (Double) request.getAttribute("highestMark");
                Double lowestMark = (Double) request.getAttribute("lowestMark");
                Double avgMark = (Double) request.getAttribute("avgMark");

                List<Student> studList = (List<Student>) request.getAttribute("studList");
            %>

            <h1>📊 Test Statistics Dashboard</h1>

            <!-- Hidden inputs to pass data to JavaScript -->
            <input type="hidden" id="totalStudData" value="<%=totalStud%>">
            <input type="hidden" id="cntAllStudPassedData" value="<%=cntAllStudPassed%>">
            <input type="hidden" id="cntAllStudFailedData" value="<%=cntAllStudFailed%>">
            <input type="hidden" id="cntAllMaleStudData" value="<%=cntAllMaleStud%>">
            <input type="hidden" id="cntAllFemaleStudData" value="<%=cntAllFemaleStud%>">
            <input type="hidden" id="cntAllMaleStudPassedData" value="<%=cntAllMaleStudPassed%>">
            <input type="hidden" id="cntAllFemaleStudPassedData" value="<%=cntAllFemaleStudPassed%>">
            <input type="hidden" id="avgMarkData" value="<%=avgMark%>">

            <!-- Statistics with Charts -->
            <div class="stats-container">
                <h2>📈 Visual Statistics</h2>

                <div style="display: grid; grid-template-columns: repeat(auto-fit, minmax(320px, 1fr)); gap: 2rem; margin-bottom: 2rem;">
                    <!-- Chart 1: Pass/Fail -->
                    <div class="card">
                        <canvas id="passFailChart" width="400" height="400"></canvas>
                    </div>

                    <!-- Chart 2: Gender Distribution -->
                    <div class="card">
                        <canvas id="genderChart" width="400" height="400"></canvas>
                    </div>

                    <!-- Chart 3: Gender Performance -->
                    <div class="card">
                        <canvas id="genderPerformanceChart" width="400" height="400"></canvas>
                    </div>
                </div>

                <!-- Key Stats Summary Cards -->
                <div style="display: grid; grid-template-columns: repeat(auto-fit, minmax(200px, 1fr)); gap: 1rem; margin-bottom: 2rem;">
                    <div class="card" style="text-align: center;">
                        <div style="font-size: 2rem;">🎯</div>
                        <div style="font-size: 1.8rem; font-weight: bold; color: var(--accent-cyan);"><%= new DecimalFormat("###.0").format(avgMark)%>%</div>
                        <div>Average Mark</div>
                    </div>
                    <div class="card" style="text-align: center;">
                        <div style="font-size: 2rem;">📈</div>
                        <div style="font-size: 1.8rem; font-weight: bold; color: #10b981;"><%= new DecimalFormat("###.0").format(highestMark)%>%</div>
                        <div>Highest Mark</div>
                    </div>
                    <div class="card" style="text-align: center;">
                        <div style="font-size: 2rem;">📉</div>
                        <div style="font-size: 1.8rem; font-weight: bold; color: #f59e0b;"><%= new DecimalFormat("###.0").format(lowestMark)%>%</div>
                        <div>Lowest Mark</div>
                    </div>
                    <div class="card" style="text-align: center;">
                        <div style="font-size: 2rem;">👥</div>
                        <div style="font-size: 1.8rem; font-weight: bold; color: var(--accent-purple);"><%= totalStud%></div>
                        <div>Total Students</div>
                    </div>
                </div>

                <!-- Detailed Statistics Table (Collapsible) -->
                <details>
                    <summary style="cursor: pointer; color: var(--accent-cyan); margin: 1rem 0; font-size: 1.1rem; font-weight: 600;">📋 View Detailed Numbers Table</summary>
                    <table style="margin-top: 1rem;">
                        <tr>
                            <td>Number of student that wrote the test: </td>
                            <td><%=totalStud%></td>
                        </tr>
                        <tr>
                            <td>Number of student that passed: </td>
                            <td><%=cntAllStudPassed%></td>
                        </tr>
                        <tr>
                            <td>Number of student that failed: </td>
                            <td><%=cntAllStudFailed%></td>
                        </tr>
                        <tr>
                            <td>Number of male student: </td>
                            <td><%=cntAllMaleStud%></td>
                        </tr>
                        <tr>
                            <td>Number of female student: </td>
                            <td><%=cntAllFemaleStud%></td>
                        </tr>
                        <tr>
                            <td>Number of male student that passed: </td>
                            <td><%=cntAllMaleStudPassed%></td>
                        </tr>
                        <tr>
                            <td>Number of female student that passed: </td>
                            <td><%=cntAllFemaleStudPassed%></td>
                        </tr>
                        <tr>
                            <td>Number of male student that failed: </td>
                            <td><%=cntAllMaleStudFailed%></td>
                        </tr>
                        <tr>
                            <td>Number of female student that failed: </td>
                            <td><%=cntAllFemaleStudFailed%></td>
                        </tr>
                        <tr>
                            <td>Highest mark: </td>
                            <td><%=(new DecimalFormat("###.0").format(highestMark))%>%</td>
                        </tr>
                        <tr>
                            <td>Lowest mark: </td>
                            <td><%=(new DecimalFormat("###.0").format(lowestMark))%>%</td>
                        </tr>
                        <tr>
                            <td>Average mark: </td>
                            <td><%=(new DecimalFormat("###.0").format(avgMark))%>%</td>
                        </tr>
                    </table>
                </details>
            </div>

            <!-- Class List Section -->
            <h2>📋 Class List</h2>
            <div style="overflow-x: auto;">
                <table>
                    <thead>
                        <tr>
                            <th>Student No</th>
                            <th>Name</th>
                            <th>Surname</th>
                            <th>Age</th>
                            <th>Gender</th>
                            <th>Mark obtained</th>
                        </tr>
                    </thead>
                    <tbody>
                        <%
                            for (int i = 0; i < studList.size(); i++) {
                                Long studNr = studList.get(i).getId();
                                String name = studList.get(i).getFirstName();
                                String surname = studList.get(i).getLastName();
                                Integer age = studList.get(i).getAge();
                                String gender = studList.get(i).getGender();
                                Double markObtained = studList.get(i).getPercentageMark();
                                String markClass = markObtained >= 50 ? "style='color: #10b981; font-weight: bold;'" : "style='color: #ef4444; font-weight: bold;'";
                        %>
                        <tr>
                            <td><%=studNr%></td>
                            <td><%=name%></td>
                            <td><%=surname%></td>
                            <td><%=age%></td>
                            <td><%=gender%></td>
                            <td <%=markClass%>><%=(new DecimalFormat("###.0").format(markObtained))%>%</td>
                        </tr>
                        <%
                            }
                        %>
                    </tbody>
                </table>
            </div>

            <p style="text-align: center; margin-top: 2rem;">
                <a href="menu.jsp">← Back to Menu</a> | 
                <a href="index.html">Home</a>
            </p>
        </main>

        <script src="${pageContext.request.contextPath}/js/chart-config.js"></script>
    </body>
</html>