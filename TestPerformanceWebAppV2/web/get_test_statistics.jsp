<%-- 
    Document   : get_test_statistics
    Created on : 14 Apr 2026, 10:29:45 PM
    Author     : S DYWILI 230654182
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <!-- Viewport for responsiveness -->
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Get Test Statistics Page</title>
        <link href="https://fonts.googleapis.com/css2?family=Inter:opsz,wght@14..32,300;14..32,400;14..32,500;14..32,600;14..32,700&display=swap" rel="stylesheet">
        <link rel="stylesheet" href="style.css">
    </head>
    <body>
        <main class="container">
            <h1>Get test statistics</h1>
            <p>
                Please click on the button below to get test statistics.
            </p>
            <form action="GetStatsServlet.do" method="GET">


                <input type="submit" value="GET TEST STATISTICS">


            </form>
        </main>
        <script>
            // Show spinner when form is submitted
            document.querySelector('form').addEventListener('submit', function () {
                // Create spinner overlay
                const spinner = document.createElement('div');
                spinner.className = 'spinner-overlay';
                spinner.innerHTML = `
            <div class="spinner">
                <div class="spinner-ring"></div>
                <div class="spinner-text">FETCHING STATISTICS...</div>
                <div class="spinner-sub">Connecting to cloud database</div>
            </div>
        `;
                document.body.appendChild(spinner);

                // Disable button to prevent double submit
                const btn = document.querySelector('input[type="submit"]');
                btn.disabled = true;
                btn.value = 'LOADING...';
            });
        </script>
    </body>
</html>
