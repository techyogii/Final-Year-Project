<%@ page contentType="text/html" pageEncoding="UTF-8" language="java" import="java.sql.*" errorPage="" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title></title>

        <link rel="stylesheet" type="text/css" href="style.css" media="screen,projection">
        <style type="text/css">
            .a:hover
            {
                font-family:verdana;
                color:#75B163;
                font-size:18px;
            }
        </style>
    </head>


    <body>
        <form name="f1" action="upload1.jsp" method="post" onSubmit="return valid4()">
            <div id="container" class="clearfix">

                <h1><em></em></h1>

                

                <div id="content">

<img src="images/heading1.jpg" width=100%>
                    <h3>CIA <img src="images/administrator.png" height="40"  width="60"></h3>

                    <ul>
                        <br />
                        <br />
                        <li type="square" > <a href="ciauserlist.jsp"  class="a"><strong>&nbsp &nbsp USER LIST</strong></a> <img src="images/export.jpg" height="50" width="50" align="baseline"></li>
                        <br />
                        <br />
                        <br />
                        <li type="square"><a href="addelete.jsp" class="a"><strong>&nbsp &nbsp DELETE RECORD</strong></a><img src="images/User Anonymous Red Delete.jpg" height="50" width="50" align="baseline"></li>


                    </ul>


                </div>

                <ul id="nav">
                    
                    
                    <li><br></li>
                    <li><br></li>
                    
                    <li><br></li>
                    <li><br></li>
                    
                    <li><br></li>
                    <li><br></li>
                    
                    <li><br></li>
                    <li><br></li>
                    
                    <li><br></li>
                    <li><br></li>
                    
                    
                    <li><a href="adview.jsp">View All Registrations</a></li>
                    <li><a href="granted.jsp">View All Request </a></li>			
                    <li><a href="index.jsp">Logout</a></li>


                </ul>

            </div>

            


        </form>
    </body>
</html>