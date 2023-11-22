<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Autenticator</title>
    </head>
    <body>
       <%
            String ua = request.getHeader("User-Agent").toLowerCase();
            
            if(ua.matches("(?i).*((android|bb\\d+|meego).+mobile|avantgo|bada\\/|"
                        + "blackberry|blazer|compal|elaine|fennec|hiptop|iemobile|ip(hone|od)|iris|"
                        + "kindle|lge |maemo|midp|mmp|mobile.+firefox|netfront|opera m(ob|in)i|"
                        + "palm( os)?|phone|p(ixi|re)\\/|plucker|pocket|psp|series(4|6)0|"
                        + "symbian|treo|up\\.(browser|link)|vodafone|wap|windows ce|xda|xiino).*") ) {
                out.print("\n\n Mobile ");
                response.sendRedirect("mobile.jsp");
            }
            else{
                out.print("\n\n Desktop ");
                response.sendRedirect("desktop.html");
            }

        %>
    </body>
</html>
