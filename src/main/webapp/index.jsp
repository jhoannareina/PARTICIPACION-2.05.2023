<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page import="java.util.List"%>
<%@page import="com.emergentes.modelo.Libro"%>

<%
    List<Libro> lista = (List<Libro>) request.getAttribute("lista");
%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Listado de Libros</h1>
        <p>
            <a href="NewController?op=nuevo">Nuevo</a>
        </p>
        <table border="1">
            <tr>
                <th>Id</th>
                <th>ISBN</th>
                <th>Titulo</th>
                <th>Categoria</th>
                <th></th>
            </tr>
            <c:forEach var="item" items="${lista}">
                <tr>
                    <td>${item.id}</td>
                    <td>${item.isbn}</td>
                    <td>${item.titulo}</td>
                    <td>${item.categoria}</td>
                    <td>
                        <a href="NewController?op=eliminar&id=$(item.id)"onclick="return(confirm('¿Esta seguro?'))">Eliminar</a>
                    </td>
                </tr>
            </c:forEach>


        </table>
    </body>
</html>