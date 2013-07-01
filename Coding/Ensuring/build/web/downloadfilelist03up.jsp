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
        <form name="frm" action="Owner_FileUpload.jsp" method="post" onSubmit="return valid2()">
            <div id="container" class="clearfix">

                <h1><em></em></h1>

                <h2></h2>

                <div id="content">

                    <h4>Enter CIA Password</h4>

                    <table bgcolor="#003333" height="160">
                        <tr>
                        <br/>
                        <td><strong><font color="#FFFFFF" size="2">UserName</font></strong></td>
                        <td><font color="#FFFFFF">:</font></td>
                        <td><input type="text"  name="name" placeholder="enter a username" ></td><td></td></td></tr>
                        <tr><td><strong><font color="#FFFFFF" size="2">Password</font></strong></td>
                            <td><font color="#FFFFFF">:</font></td>
                            <td><input type="password" name="password" placeholder="enter password" ></td></tr>

                        <tr><td></td><td></td><td><input type="submit" style="color:black;background:#cccccc" value="SUBMIT" name="submit"></td></tr>

                    </table>

                    <div  class="lock" align="right" > <img  height="250" width="200" src="images/PC_MacLock.jpg" /> 
                    </div>


                </div>

                <ul id="nav">
                    <div id="hme"> 
                        <li><a href="index.html" title="">Home <img src="images/HomeGreen.png" width="35" height="30" align="texttop"  ></a></li>
                    </div>

                    <li><a href="ownerpage.jsp">BACK</a></li>
                    <li><a href="register.jsp"></a></li>
                    <li><a href="#"></a></li>
                    <li><a href="#"></a></li>
                    <li><a href="#"></a></li>
                </ul>

            </div>

            <address>
                <a href="http://www.caddoo.net" ></a>  <a href="http://www.zymic.com" ></a> <a href="http://www.zymic.com/free-templates"></a>. <a href="http://www.zymic.com/free-web-hosting/"></a>.
            </address>

        </form>
    </body>
</html>
