
<%@ page contentType="text/html" pageEncoding="UTF-8" language="java" import="java.sql.*" errorPage="" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title></title>

        <link rel="stylesheet" type="text/css" href="style.css" media="screen,projection">
        <script type="text/javascript">
            function valid2()
            {
                var a=document.frm.name.value;
                if(a=="")
                {
                    alert ("enter a user name");
                    document.frm.name.focus();
                    return false;
                }
                var b=document.frm.password.value;
                if(b=="")
                {
                    alert ("enter a password");
                    document.frm.password.focus();
                    return false;
                }
            }
        </script>



    </head>

    <body>
        <form name="frm" action="check.jsp" method="post" onSubmit="return valid2()">
            <div>

                <div>

                    <img src="images/heading1.jpg" width=100%>
                    <center>
                    <table bgcolor="grey"  height="250" width="400">
                        <tr>
                        <br/>
                        <td><strong><font color="#FFFFFF" size="2">UserName</font></strong></td>
                        <td><font color="#FFFFFF">:</font></td>
                        <td><input type="text"  name="name"  ></td><td></td></td></tr>
                        <tr><td><strong><font color="#FFFFFF" size="2">Password</font></strong></td>
                            <td><font color="#FFFFFF">:</font></td>
                            <td><input type="password" name="password" ></td></tr>
                            
                        <tr><td></td><td></td><td><input type="submit" style="color:black;background:#cccccc" value="SUBMIT" name="submit"></td></tr>
                        
                    </table>


                </div>

               

            </div>

            
        </form>
    </body>
</html>
