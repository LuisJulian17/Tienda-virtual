<%@ page
    import="
        java.io.*,
        java.util.*,
        com.BO.TiendaDeportivaVirtual.*,com.DTO.TiendaDeportivaVirtual.*"
        
%>
<%
UsuariosController user =new UsuariosController();
    UsuarioVo userVo=new UsuarioVo();
    long cedula= Long.parseLong(request.getParameter("cedula_usuario"));
    userVo.setNombre_usuario(request.getParameter("nombre_usuario"));
    userVo=user.consultarPersona(cedula);
    //String nombre=userVo.getNombre_usuario("nombre");

%>

<head>
 <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Usuarios</title>
    <link href="css/Estilos.css" type="text/css" rel="stylesheet"/>
    <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@200;400;600&display=swap" rel="stylesheet">
<title>Page Redirection</title>
</head>
<body>
    <div id="inicio">
        <div class="item-a">
            <h2></h2>
         </div>
          <div class="item-b">
            <a href="./usuarios.html">Usuarios</a>
            <a href="./clientes.html">Clientes</a>
            <a href="./proveedores.html">Proveedores</a>
            <a href="./productos.html">Productos</a>
            <a href="./ventas.html">Ventas</a>
            <a href="./reportes.html">Reportes</a>
          </div>
    </div>

    <div id="reusuario">
      <form method="POST">
            <table>
                <tr class="elemento">
                    <td>
                        <label for="document">C�dula</label>
                        <input type="text" id="document" name="cedula_usuario" value=<%= request.getParameter("usuario")%> />
                    </td>
                    <td>
                    <label for="user">Usuario</label>
                    <input type="text" id="user" name="usuario" value=<%= request.getParameter("nombre_usuario")%>/>
                    
                </td>
                </tr>
                
                <tr class="elemento">
                    <td>
                        <br>
                        <label for="name">Nombre Completo</label>
                        <input type="text" id="name" name="nombre_usuario"/>
                        <%= request.getParameter("nombre_usuario")%>
                    </td>
                    <td>
                    <label for="password">Contrase�a</label>
                    <input type="password" id="password" name="contrasena" value= <%= request.getParameter("contrasena")%>
                    />
                    
                   
                </tr>
                <tr class="elemento">
                    <td>
                        <br>
                        <label for="mail">Correo Electr�nico</label>
                        <input type="email" id="mail" name="email_usuario"/>
                        <%= request.getParameter("email_usuario")%>
                        <%= request.getParameter("usuario")%>
                    </td>
                </tr>
                <tr class="botones">
                    <td>
                    	<input type="submit" value="Consultar" name="crear" formaction="ConsultarUsuario.jsp" />
                    	<input type="submit" value="Crear" formaction="CrearUsuario.jsp" onclick="usuarios.html"/>
                    	<input type="submit" value="Actualizar" formaction="ActualizarUsuario.jsp"/>
                    	<input type="submit" value="Borrar" formaction="EliminarUsuario.jsp"/>
                   			

                    </td>
                </tr>
            </table> 
       </form> 
    </div>
</body>
</html>