<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title></title>

        <link rel="stylesheet" type="text/css" href="style.css" media="screen,projection">

        <!-- Loading Calendar JavaScript files -->



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

        <script type="text/javascript">
            function valid1()
            {
                var a = document.form1.name.value;
                if(a=="")
                {
                    alert ("enter a name");
                    document.form1.name.focus();
                    return false;
                }
	
                if(!isNaN(a))
                {
                    alert ("enter a alphat");
                    document.form1.name.select();
                    return false;
                }
                var b=document.form1.username.value;
	
                if(b=="")
                {
                    alert ("enter a user name");
                    document.form1.username.focus();
                    return false;
                }
	
                var emailfilter=/^\w+[\+\.\w-]*@([\w-]+\.)*\w+[\w-]*\.([a-z]{2,4}|\d+)$/i
                var c=emailfilter.test(document.form1.emailid.value);
                if(c==false)
                {
                    alert("Please Enter a valid Mail ID");
                    document.form1.emailid.focus();
                    return false;
                }
	
                var d=document.form1.password.value;
                if(d=="")
                {
                    alert ("enter a password");
                    document.form1.password.focus();
                    return false;
                }
                var e=document.form1.confirmpassword.value;
                if(e=="")
                {
                    alert ("enter confirm password");
                    document.form1.confirmpassword.focus();
                    return false;
                }
                if(d!=e)
                {
                    alert ("enter a correct password");
                    document.form1.confirmpassword.select();
                    return false;
                }
                var f=document.form1.dob.value;
                if(f=="")
                {
                    alert ("pick date");
                    document.form1.dob.focus();
                    return false;
                }
	
	
	
                var g=document.form1.address.value;
                if(g=="")
                {
                    alert ("enter address");
                    document.form1.address.focus();
                    return false;
                }
	
                var h=document.form1.mobilenum.value;
                if(h=="")
                {
                    alert ("enter a mobile number");
                    document.form1.mobilenum.focus();
                    return false;
                }
	
                if(isNaN(h))
                {
                    alert ("enter  valid mobile number");
                    document.form1.mobilenum.focus();
                    return false;
                }
	
	
                var i=document.form1.country.value;
                if(i=="")
                {
                    alert ("enter a country");
                    document.form1.country.focus();
                    return false;
                }
	
                if ( ( form1.gender[0].checked == false ) && ( form1.gender[1].checked == false ) )
                {
                    alert ( "Please choose your Gender: Male or Female" );
                    return false;
                }
	
                if(document.form1.utype.selectedIndex==0)
                {
                    alert ("Select User Type");
                    document.form1.utype.focus();
                    return false;
	
                }
	
            }
	
        </script>
    </head>

    <body>
        <form name="form1" action="insert_owner.jsp" method="post" onSubmit="return valid1()">
            <div id="container" class="clearfix">

                <h1><em></em></h1>

                <h2></h2>

                <div id="content">

                    <center>
                    <h4>OWNER REGISTRATION</h4>


                    <table  bgcolor="#00000">
                        <tr>
                            <td><strong><font color="#FFFFFF" size="2">Name</font></strong></td>
                            <td><font color="#FFFFFF">:</font></td>
                            <td><input type="text"  name="name"></td></tr>

                        <tr><td><strong><font color="#FFFFFF" size="2">UserName</font></strong></td>
                            <td><font color="#FFFFFF">:</font></td>
                            <td><input type="text" name="username"></td></tr>

                        <tr><td><strong><font color="#FFFFFF" size="2">Email-id</font></strong></td>
                            <td><font color="#FFFFFF">:</font></td>
                            <td><input type="text" name="emailid"></td></tr>

                        <tr><td><strong><font color="#FFFFFF" size="2">Password</font></strong></td>
                            <td><font color="#FFFFFF">:</font></td>
                            <td><input type="password" name="password"></td></tr>

                        <tr><td><strong><font color="#FFFFFF" size="2">Confirm Password</font></strong></td>
                            <td><font color="#FFFFFF">:</font></td>
                            <td><input type="password" name="confirmpassword"></td></tr>

                        <tr><td><strong><font color="#FFFFFF" size="2">DOB</font></strong></td>
                            <td><font color="#FFFFFF">:</font></td>
                            <td><input name="dob" type="Text" id="demo1" maxlength="25" size="20"><a href="javascript:NewCal('demo1','ddmmmyyyy',true,24)"><img src="cal.gif" width="16" height="16" border="0" alt="Pick a date"></a>
                                <span class="descriptions"></span>
                            </td></tr>

                        <tr><td><strong><font color="#FFFFFF" size="2">Address</font></strong></td>
                            <td><font color="#FFFFFF">:</font></td>
                            <td><input type="text" name="address"></td></tr>

                        <tr><td><strong><font color="#FFFFFF" size="2">MobileNo</font></strong></td>
                            <td><font color="#FFFFFF">:</font></td>
                            <td><input type="text" name="mobilenum"></td></tr>

                        <tr><td><strong><font color="#FFFFFF" size="2">Country</font></strong></td>
                            <td><font color="#FFFFFF">:</font></td>
                            <td><input type="text" name="country"></td></tr>

                        <tr><td><strong><font color="#FFFFFF" size="2">Gender</font></strong></td>
                            <td><font color="#FFFFFF">:</font></td>
                            <td><font color="#FFFFFF"><input type="radio"  name="gender" value="Male">Male</font>&nbsp;<font color="#FFFFFF"><input type="radio"  name="gender" value="Fe-Male">Female</font> </td></tr>

                        <tr><td><strong><font color="#FFFFFF" size="2">UserType</font></strong></td>
                            <td><font color="#FFFFFF">:</font></td>
                            <td><select name="utype"><option value="0">--Select--</option><option value="owner">Owner</option></select></td></tr>
                        <tr><td></td><td><input type="submit" style="color:black;background:#cccccc" value="SUBMIT" name="submit"></td>
                            <td><input type="reset" style="color:black;background:#cccccc" value="RESET" name="reset"></td>
                        </tr>
                    </table>



                </div>

                <ul id="nav">
                    <div id="hme"> 
                        <li><a href="index.html" title="">Home <img src="images/HomeGreen.png" width="35" height="30" align="texttop"  ></a></li>
                    </div>

                    <li><a href="login.jsp">Login</a></li>
                    <li><a href="register.jsp">Register</a></li>
                    <li><a href="#"></a></li>
                    <li><a href="#"></a></li>
                    <li><a href="#"></a></li>
                </ul>

            </div>

        </form>
    </body>
</html>
