<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Formulario</title>
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
    .form-container {
        background-color: #fff;
        padding: 20px;
        border-radius: 8px;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        width: 300px;
    }
    .form-container h2 {
        margin-top: 0;
    }
    .form-container input[type="text"], .form-container input[type="radio"], .form-container input[type="checkbox"] {
        margin: 10px 0;
    }
    .form-container input[type="submit"] {
        background-color: #4CAF50;
        color: white;
        padding: 10px 15px;
        border: none;
        border-radius: 4px;
        cursor: pointer;
        width: 100%;
    }
    .form-container input[type="submit"]:hover {
        background-color: #45a049;
    }
</style>
</head>
<body>
    <div class="form-container">
        <h2>Formulario</h2>
        <form action="mostrarDatos.jsp" method="get">   
            Nombre: <input type="text" name="nombre"><br>
            Apellidos: <input type="text" name="apellidos"><br>
            Genero:<br>
            <input type="radio" name="genero" value="masculino"> Masculino<br>
            <input type="radio" name="genero" value="femenino"> Femenino<br>
            
            Pasatiempos:<br>
            <input type="checkbox" name="pasatiempos" value="futbol"> Futbol<br>
            <input type="checkbox" name="pasatiempos" value="natacion"> Natacion<br>
            <input type="checkbox" name="pasatiempos" value="lectura"> Lectura<br>
            <input type="submit" value="Enviar">
        </form>
    </div>
</body>
</html>
