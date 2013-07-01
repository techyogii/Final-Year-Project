<%@ page contentType="text/html" pageEncoding="UTF-8" language="java" import="java.sql.*" errorPage="" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title></title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="generator" content="NoteTab Light 4.9">
        <meta name="author" content="TengYong Ng">
        <meta name="description" content="">
        <meta name="keywords" content="">
        <script language="javascript" type="text/javascript" src="datetimepicker.js">

            //Date Time Picker script- by TengYong Ng of http://www.rainforestnet.com
            //Script featured on JavaScript Kit (http://www.javascriptkit.com)
            //For this script, visit http://www.javascriptkit.com 

        </script>
        <link rel="stylesheet" type="text/css" href="style.css" media="screen,projection">
        <style type="text/css">
            .c1
            {
                font-family:verdana;
                font-size:11px;
                color:#0074E8;
                font-weight:bold;
                padding:2px 2px 2px 2px;
            }
            .c1:hover
            {
                color:red;
                font-size:12px;
            }
            .c2
            {
                font-family:verdana;
                font-size:12px;
                color:#000000;
                border:1px solid #ddd;
                font-weight:normal;
                padding:1px 1px 1px 1px;
            }
        </style>
        <script  type="text/javascript">
            function valid4()
            {
                if ( ( f1.mode[0].checked == false ) && ( f1.mode[1].checked == false ) && ( f1.mode[2].checked == false ) )
                {
                    alert ( "Select any mode" );
                    return false;
                }
                var a = document.f1.cardname.value;
                if(a=="")
                {
                    alert ("Enter a card name");
                    document.f1.cardname.focus();
                    return false;
                }
                var b = document.f1.accno.value;
                if(b=="")
                {
                    alert ("Enter a card no");
                    document.f1.accno.focus();
                    return false;
                }
	
                var c = document.f1.cedate.value;
                if(c=="")
                {
                    alert ("Pick a Date");
                    document.f1.cedate.focus();
                    return false;
                }
	
	
	
	
            }
	
	
        </script>
    </head>



    <body>

        <%
            String fid = request.getQueryString();
            String sql = "select * from upload  where id='" + fid + "'";
            String id1 = null, filename1 = null, ownername1 = null, utime = null,fkey2 = null;
            try {
                Class.forName("com.mysql.jdbc.Driver");
                Connection conn3 = DriverManager.getConnection("jdbc:mysql://127.8.1.1/cia", "adminsWtjE3x", "8h1kTabnsNwn");
                Statement st = conn3.createStatement();
                ResultSet rs2 = st.executeQuery(sql);

                while (rs2.next()) {
                    id1 = rs2.getString("id");
                    filename1 = rs2.getString("filename");
                    ownername1 = rs2.getString("ownername");
                    utime = rs2.getString("utime");
               
                    fkey2 = rs2.getString("filekey");
                    session.setAttribute("idx", id1);
                    session.setAttribute("filenamex", filename1);
                    session.setAttribute("ownernamex", ownername1);
                    session.setAttribute("utimex", utime);
                    session.setAttribute("fk", fkey2);

                }
            } catch (Exception e) {
                out.print(e);
            }

        %>






        <form name="f1" action="paid.jsp" method="post" onSubmit="return valid4()">
            <div id="container" class="clearfix">

                <h1><em></em></h1>

                <h2></h2>

                <div id="content">


                    <h4>UPLOADED FILES</h4>
                    <table  cellspacing="3" >
                        <tr>
                            <td class="c1">FILE ID</td>
                            <td class="c1">:</td>
                            <td><input type="text" class="c2" name="id" Value=<%=id1%>   disabled /></td>
                        </tr>

                        <tr>
                            <td class="c1">FILE NAME</td>
                            <td class="c1">:</td>
                            <td><input type="text" class="c2"  name="name" value=<%=filename1%> disabled></td>
                        </tr>

                        <tr>
                            <td class="c1">OWNER NAME</td>
                            <td class="c1">:</td>
                            <td><input type="text" class="c2" name="oname1" value=<%=ownername1%> disabled></td>
                        </tr>

                        <tr>
                            <td class="c1">UPLOAD TIME</td>
                            <td class="c1">:</td>
                            <td><input type="text" class="c2" name="utime" value=<%=utime%> disabled></td>
                        </tr>

                        <tr>
                            <td class="c1">FileKey</td>
                            <td class="c1">:</td>
                            <td><input type="text" class="c2" name="rcost" value=<%=fkey2%> disabled></td>
                        </tr>

                        <tr>
                            <td class="c1">MODE OF THE PAYMENT</td>
                            <td class="c1">:</td>
                            <td><input type="radio"  name="mode" value="debit" class="c2">Debit &nbsp;<input type="radio"  name="mode" class="c2" value="credit">Credit&nbsp;<input type="radio"  name="mode" class="c2" value="n/b">N/B&nbsp;</td>
                        </tr>

                        <tr>
                            <td class="c1">NAME OF THE CARD</td>
                            <td class="c1">:</td>
                            <td><input type="text"  name="cardname" class="c2"></td>
                        </tr>

                        <tr>
                            <td class="c1">NETBANKING ACC NO/CARD NO</td>
                            <td class="c1">:</td>
                            <td><input type="text" name="accno" class="c2"></td>
                        </tr>

                        <tr>
                            <td class="c1"> CARD EXPIRY DATE </td>
                            <td class="c1">:</td>
                            <td><input name="cedate" type="Text" id="demo1" maxlength="25" size="20" class="c2" ><a href="javascript:NewCal('demo1','ddmmmyyyy',true,24)"><img src="cal.gif" width="16" height="16" border="0" alt="Pick a date"></a>
                                <span class="descriptions"></span></td>

                        </tr>


                        <tr>
                            <td></td>
                            <td><input type="submit" value="PAY" ></td>
                            <td><input type="reset" value="RESET"></td>
                        </tr>

                    </table>




                </div>

                <ul id="nav">


                    <li><a href="login.jsp">Login</a></li>
                    <li><a href="viewdownloadrec.jsp">Back</a></li>    

                </ul>

            </div>


        </form>
    </body>
</html>

