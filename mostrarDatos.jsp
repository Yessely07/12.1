<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Mostrar Datos</title>
<style>
    body {
        font-family: Arial, sans-serif;
        background-color: #f0f0f0;
        display: flex;
        justify-content: center;
        align-items: center;
        height: 100vh;
        margin: 0;
    }
    .data-container {
        background-color: #fff;
        padding: 20px;
        border-radius: 8px;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        text-align: left;
    }
</style>
</head>
<body>
    <div class="data-container">
        <h1>Datos recibidos</h1>
        <p>Nombre: <%= request.getParameter("nombre") %></p>
        <p>Apellidos: <%= request.getParameter("apellidos") %></p>
        <p>Genero: <%= request.getParameter("genero") %></p>
        <p>Pasatiempos:</p>
        <ul>
            <%
                String[] pasatiempos = request.getParameterValues("pasatiempos");
                if (pasatiempos != null) {
                    for (String pasatiempo : pasatiempos) {
                        out.println("<li>" + pasatiempo + "</li>");
                    }
                } else {
                    out.println("<li>No se seleccionaron pasatiempos</li>");
                }
            %>
        </ul>
    </div>
</body>
</html>
