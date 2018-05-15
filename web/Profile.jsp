
<%@page import="com.DAO.PostFB"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@page import="java.sql.Blob"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="EN" lang="EN" dir="ltr">
    <head profile="http://gmpg.org/xfn/11">
        <title>Facebook</title>
        <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
        <meta http-equiv="imagetoolbar" content="no" />
       
         <link rel="stylesheet" href="styles/layout.css" type="text/css" />
        <link rel="stylesheet" type="text/css" href="css/style.css" />
        <script type="text/javascript" src="JS/jquery-1.4.2.min.js"></script>
        <script src="JS/jquery.autocomplete.js"></script>
       
        <script>
            jQuery(function() {
                $("#name").autocomplete("list.jsp");
            });
        </script>
      <script>
            function readURL(input) {
                if (input.files && input.files[0]) {
                    var reader = new FileReader();

                    reader.onload = function(e) {
                        $('#blah')
                                .attr('src', e.target.result)
                                .width(80)
                                .height(80);
                    };

                    reader.readAsDataURL(input.files[0]);
                }
            }
        </script>
        <style>
    #intro1122{
	padding:30px 0 5px 0;
	font-size:16px;
	font-family:Georgia, "Times New Roman", Times, serif;
	}

#intro1122 .fl_left{
	display:block;
	float:left;
	width:90%;
	height:auto;
	margin:0;
	padding:30px;
	color:#FFFFFF;
	background-color:#2684B7;
        margin-left: 3px;
	}

#intro1122 .fl_left h2{
	font-size:27px;
	margin:0 0 3px 0;
	padding:0;
	border:none;
	color:#FFFFFF;
	background-color:#2684B7;
	}

#intro1122 .fl_left p{
	margin:0;
	padding:0;
	line-height:1.6em;
	}

#intro1122 .fl_left p.readmore{
	display:block;
	width:100%;
	margin:20px 0 0 0;
	padding:0;
	text-align:right;
	line-height:normal;
	}

#intro1122 .fl_left p.readmore a{
	padding:8px 15px;
	font-size:18px;
	color:#FFFFFF;
	background-color:#1C5E82;
	}
#intro1122 .fl_right{float:right;}
</style>
  
        <script>

            function showonlyone(thechosenone) {
                var newboxes = document.getElementsByTagName("div");
                for (var x = 0; x < newboxes.length; x++) {
                    name = newboxes[x].getAttribute("class");
                    if (name == 'newboxes') {
                        if (newboxes[x].id == thechosenone) {
                            newboxes[x].style.display = 'block';
                        }
                        else {
                            newboxes[x].style.display = 'none';
                        }
                    }
                }
            }

        </script>
        
    </head>
    <body id="top" bgcolor="#F0F0F0">
        <div class="wrapper">

            <header class="header">
                <div class="wrapper col1">
                    <div id="header">
                        <%
                            String uname = session.getAttribute("Username").toString();
                            String USerRegID = session.getAttribute("userRegId").toString();
                            String EmailID = session.getAttribute("EmailId").toString();
                            
                            PostFB  fb =(com.DAO.PostFB)session.getAttribute("profile");
                        %>

                        <br class="clear" />
                    </div>
                </div>
                <div class="wrapper col2">
                    <div id="topbar">
                        <div id="topnav">
                            <ul>
                                <li class="active"><a href="Home.jsp">Home</a></li>
                                <!--<li><a href="style-demo.html">Style Demo</a></li>
                                <li><a href="full-width.html">Full Width</a></li>-->
                                <li><a href="Profile.jsp">Profile</a>
                                    <!--<ul>
                                      <li><a href="#">Link 1</a></li>
                                      <li><a href="#">Link 2</a></li>
                                      <li><a href="#">Link 3</a></li>
                                    </ul>-->
                                </li>
                                <li><a href="index.html" >Log Out</a></li>

                                <!-- <li class="last"><a href="#">A Long Link Text</a></li>-->
                            </ul>
                            <ul><li><div style="float:right;position:absolute ;right:30%;top:30%; ">&nbsp;&nbsp;&nbsp;<%=uname%></div></li></ul>
                        </div>
                        <div id="search">
                            <form action="ShowProfile.jsp" method="post">
                                <fieldset>
                                    <legend>Site Search</legend>
                                    <input type="text" id="name"  name="country" class="input_text"/>
                                    <input type="submit" name="go" id="go" value="Search" />
                                </fieldset>
                            </form>
                            <!--<form action="" method="">
                                <fieldset>
                                    <input type="text" id="name"  name="country" class="input_text"/>
                                    <input type="submit" value="Search"/>
                                     </fieldset>
                            </form>-->
                        </div>

                        <br class="clear" />
                    </div>
                </div>
            </header><!-- .header-->

            <div class="middle">

                <div class="container">
                    <table>
                        <tr> <td width="20%;" rowspan="2">
                                <img src="<%=fb.getImage_path()%>" alt="Profile Image" height="100px" width="100%;" />
                                <br>
                                    <center><b><%=uname%></b></center>
                                <br>
                                <div  class="left">
                                    <table>
                                        <tr><td>
                                                <div style="width:90%;  float: left;border: 1px solid blue; background-color: #fff; padding: 5px;">
                                                    <a id="myHeader1" href="Home.jsp" >Update Status</a>
                                                </div>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <div style=" width:90%; float: left;border: 1px solid blue; background-color: #fff; padding: 5px;">
                                                    <a id="myHeader2" href="Home.jsp" >Add Photo</a>
                                                </div>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <div style="width:90%;  float: left;border: 1px solid blue; background-color: #fff; padding: 5px;">
                                                    <a id="myHeader1" href="privatewall.jsp" >Private Wall</a>
                                                </div>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <div style=" width:90%; float: left;border: 1px solid blue; background-color: #fff; padding: 5px;">
                                                    <a id="myHeader2" href="Home.jsp" >Wall</a>
                                                </div>
                                            </td>
                                        </tr>
                                    </table>
                                </div>
                            </td>
                            <td>
                            
                            </td>
                        </tr>
                        <tr >
                            <td>
                                <div id="intro1122">
                            <div class="fl_left">
                                <h2>Personal Info</h2>
                                <div class="loginbox radius">

                                    <div class="loginboxinner radius">
                                        <div class="loginform">
<%
    String[] name=uname.split(" ");
%>
<form  action="FileUploadDBServlet" method="post"  enctype="multipart/form-data" onsubmit="javascript:return profilevalidations();">
                                                <table><tr><td >
                                                <div style="background-color: black;height:70px;width: 80px; ">
                                                    <img id="blah" src="#" alt="your image" />
                                                </div>
                                                            <input type='file' name="image" id="image" onchange="readURL(this);" />
                                                &nbsp;<br>
                                                    </td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            <table><tr><td>
                                                    <input type="text" id="fname" style="width:99%;" name="name"  placeholder="First Name" value="<%=name[0]%>" class="radius mini" /> 
                                                                    </td><td>
                                                    <input type="hidden" id="userid" name="userregi"   value="<%=USerRegID%>"  /> 
                                                    <input type="text" id="lname" style="width:99%;" name="name1" placeholder="Last Name" value="<%=name[1]%>" class="radius mini" />
                                                    </td>
                                                    </tr>
                                                    </table>
                                                    </td>
                                                    </tr>
                                                    &nbsp;
                                                    <tr><td >
                                                    &nbsp;
                                                <p>
                                                    <input type="text" id="emailid" style="width:70%;" name="email"   placeholder="Your Email" value="<%=EmailID%>" class="radius" />
                                                    
                                                </p></td>
                                                    </tr>
                                                        <tr><td>
                                                <p>
                                                    
                                                    <textarea name="address" rows="3" id="address" cols="60" placeholder="Address" value="<%=fb.getAddress() %>"></textarea>
                                                    

                                                </p>
                                                    </td></tr>
                                                    <tr><td>
                                                <p>
                                                    <button class="radius title" name="client_login">Update</button>
                                                    <!-- <input type="submit" value="Sign Up for Facebook" class="radius title" name="client_login" onclick="check()"/>-->
                                                </p>
                                                            </td></tr>
                                                </table>
                                            </form>
                                        </div><!--loginform-->
                                    </div><!--loginboxinner-->
                                </div>





                            </div>
                            <!--<div class="fl_right"><img src="images/demo/380x300.gif" alt="" /></div>-->
                            <br class="clear" />
                        </div>
                            </td>
                        </tr>
                    </table>

                </div>
            </div><!-- .middle-->

        </div>
    </body>
</html>
                                                     <script>
                                                                function profilevalidations(){
                                                                    
                                                                       // alert("hi");
                                                                       var fname=document.getElementById("image").value;
                                                                       var lname=document.getElementById("lname").value;
                                                                       var femail=document.getElementById("emailid").value;
                                                                       var contact=document.getElementById("contact").value;
                                                                       var address=document.getElementById("address").value;
                                                                       
                                                                       if(fname==null || fname==""){
                                                                           alert("Please Select Image.");
                                                                           return false;
                                                                       }else if(lname==null || lname==""){
                                                                           alert("Please Enter Last Name.");
                                                                           return false;
                                                                       }else  if(femail=="" || femail==null ){
                                                                           alert("Please Enter Email ID.");
                                                                           return false;
                                                                       }else  if(contact=="" || contact==null ){
                                                                           alert("Please Enter Contact No.");
                                                                           return false;
                                                                       }else  if(address=="" || address==null ){
                                                                           alert("Please Enter Address.");
                                                                           return false;
                                                                       }else
                                                                       {
                                                                           return true;
                                                                       }
                                                                       
                                                                    
                                                                }
                                                            </script>