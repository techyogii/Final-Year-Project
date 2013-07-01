<%@ page contentType="text/html" pageEncoding="UTF-8" language="java" import="java.sql.*" errorPage="" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title></title>

        <link rel="stylesheet" type="text/css" href="style.css" media="screen,projection">
        <style type="text/css">
            .c2:hover
            {
                color:green;
                font-size:20px;
            }
            .c1
            {
                font-family:verdana;
                font-size:12px;
                color:#000000;
                border:1px solid #ddd;
                font-weight:normal;
                padding:2px 2px 2px 2px;

            }
            .c3
            {
                font-family:verdana;
                font-size:11px;
                color:#0074E8;
                font-weight:bold;
                padding:2px 2px 2px 2px;

            }
            .c3:hover
            {
                color:red;
                font-size:15px;
            }

            .a
            {
                font-weight:bold;
                font-face:mono;
            }
            .a:hover
            {
                color:#458932;
                font-size:20px;
            }

        </style>
        <script type="text/javascript">
            function valid4()
            {
                var a=document.f1.name.value;
                if(a=="")
                {
                    alert ("enter a user name");
                    document.f1.name.focus();
                    return false;
                }
            }

        </script>

    </head>



    <body>
        <form name="f1" action="delete1.jsp"  method="post" onSubmit="return valid4()" >
            <div id="container" class="clearfix">

                <h1><em></em></h1>

                <h2></h2>

                <div id="content">


                    <h3 class="c2">DELETE THE RECORDS</h3>

                    <table height="140px" >
                        <tr >
                        </tr>
                        <tr>
                        </tr>
                        <tr>
                        </tr>
                        <tr>
                        </tr>

                        <tr>
                            <td class="c3">User Name</td>
                            <td><input type="text" name="name" class="c1"></td>
                        </tr>
                        <tr><tr></tr></tr><tr>
                        </tr>
                        <tr>
                        </tr>

                        <tr><td>
                            </td><td><input type="submit" name="submit" value="Delete"  class="c3"/></td></tr><tr></tr>
                        <tr>
                        </tr>

                        <tr><td></td><td><a href="deleteall.jsp" class="a">DeleteALL</a></td></tr>


                    </table>





                </div>

                <ul id="nav">
                    <li><a href="index.html" >Home</a></li>
                    <li><a href="admin.jsp">Back</a></li>


                </ul>

            </div>



        </form>
    </body>
</html>