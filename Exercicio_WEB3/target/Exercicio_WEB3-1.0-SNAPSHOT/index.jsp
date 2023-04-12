<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>JSP - Hello World</title>
    <style>
        form{
            display: flex;
            flex-direction: column;
            gap: 25px;
            width: 300px;
        }
    </style>
</head>
<body>
<form action="processa_vaga" method="post">
    <label>
        Nome:
        <input type="text" name="nome" value="">
    </label>
    <label>
        Data de Nascimento:
        <input type="text" name="data_nascimento" value="">
    </label>

    <div>
        <div>Idioma Nativo: </div>
        <input type="radio" name="idioma" value="portugues" checked>Portugues
        <input type="radio" name="idioma" value="ingles">Inglês
        <input type="radio" name="idioma" value="espanhol">Espanhol
    </div>

    <div>
        <div>Habilidades: </div>
        <input type="checkbox" name="habilidades" value="java" checked>JAVA
        <input type="checkbox" name="habilidades" value="javascript">JavaScript
        <input type="checkbox" name="habilidades" value="html">HTML
        <input type="checkbox" name="habilidades" value="css">CSS

    </div>

    <input type="submit" value="aplicar">
    <input type="reset" value="resetar">


</form>

<a href="hello-servlet">Hello Servlet</a>
</body>
</html>