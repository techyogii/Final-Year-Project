<%@ page contentType="text/html" pageEncoding="UTF-8" language="java" import="java.sql.*" errorPage="" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title></title>

        <link rel="stylesheet" type="text/css" href="style.css" media="screen,projection">
    <script type="text/javascript">
        function valid4()
        {
            var a=document.f1.filename.value;
            if(a=="")
            {
                alert ("enter a file name");
                document.f1.filename.value;
                return false;
            }
            
	
            var b=document.f1.datafile.value;
            if(b=="")
            {
                alert ("select a file");
                document.f1.datafile.value;
                return false;
            }
	
	
        }
    </script>

</head>



<body>
    <form name="f1" action="File_Upload_DL" method="post" enctype="multipart/form-data" onSubmit="return valid4()" id="f1">
        
        <div id="container" class="clearfix">

            <h1><em></em></h1>

            <h2></h2>

            <div id="content">


                <h4>FILE UPLOAD</h4>
                <table height="250" bgcolor="#000000">
                    <tr>
                        <td></td>
                        <td><font face="mono" color="#FFFFFF" color="#666666" size="+1" ><strong>FILE NAME</strong></font></td>
                        <td>:</td>
                        <td><font face="mono" color="#FFFFFF" size="+1" ><strong><input type="text" style="color:blue" name="filename" /></strong></font></td>
                    </tr>
                    
                    <tr>
                        <td></td>
                        <td><font face="mono" color="#FFFFFF" color="#666666" size="+1" ><strong>FILE KEY</strong></font></td>
                        <td>:</td>
                        <td><font face="mono" color="#FFFFFF" size="+1" ><strong><input type="text" style="color:blue" name="filekey"  value="<%=(int) (Math.random() * 1000)%>"/></strong></font></td></tr>





                    <tr>
                        <td></td>
                        <td><font face="mono" color="#FFFFFF" color="#666666" size="+1" ><strong>FILE</strong></font></td>
                        <td>:</td>
                        <td><font face="mono" color="#FFFFFF" size="+1" ><strong><input type="file" style="color:blue" name="file" id="file" size="30" /></strong></font></td>
                    </tr>

                    <tr>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td>&nbsp;&nbsp;<input type="submit" name="upload" value="UPLOAD"> </td>
                    </tr>

                </table>
                <!--<img src="images/file-transfer-protocol-zanity-com-au.jpg" / width="499" height="175" border="25" />-->





            </div>

            <ul id="nav">
                <div id="hme"> 
                    <li><a href="index.html" title="">Home <img src="images/HomeGreen.png" width="35" height="30" align="texttop"  ></a></li>
                </div>


                <li><a href="fileupdload.jsp">File Upload</a></li>
                <li><a href="ownerpage.jsp">Back</a></li>
                <li><a href="#"></a></li>
            </ul>

        </div>

       

    </form>
</body>
</html>
