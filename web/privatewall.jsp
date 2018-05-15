

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
        <script src="JS/ajaxMethods.js"></script>
        <script>
            jQuery(function() {
                $("#name").autocomplete("list.jsp");
            });
        </script>
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
        
        <style>
            article, aside, figure, footer, header, hgroup, 
            menu, nav, section { display: block; }
        </style>
    </head>
    <body id="top" bgcolor="#F0F0F0">
        <div class="wrapper">

            <header class="header">
                <div class="wrapper col1">
                    <div id="header">
                        <%
                            String uname = session.getAttribute("Username").toString();
                            String USerRegID = session.getAttribute("userRegId").toString();
                            PostFB fb=com.DAO.UserDAO.getAllUserDetails(Integer.parseInt(USerRegID));
                            session.setAttribute("profile",fb );
                            
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
                                                    <a id="myHeader1" href="javascript:showonlyone('newboxes1');" >Update Status</a>
                                                </div>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <div style=" width:90%; float: left;border: 1px solid blue; background-color: #fff; padding: 5px;">
                                                    <a id="myHeader2" href="javascript:showonlyone('newboxes2');" >Add Photo</a>
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
                               <div class="newboxes" id="newboxes1" >
                                                <form action="poststatus.jsp" method="post" name="form1">
                                                    <textarea cols="51" rows="3" id="text"  name="status"></textarea>
                                                    <select   name="display">
                                                        <option value="public" selected>Public</option>
                                                        <option value="private">Private</option>
                                                        <!--<option value="friend">Friends</option>-->
                                                    </select>
                                                    <input type="submit" name="submit" value="POST"/>
                                                </form>
                                            </div>

                                            <div class="newboxes" id="newboxes2" style=" display: none;  background-color: RGB(5,155,205) ;">
                                                <form  action="postimage" method="post"  enctype="multipart/form-data">
                                                    <table><tr><td>
                                                    <div style="background-color: black;height:100px;width: 150px; ">
                                                        <img id="blah" src="#" alt="your image" />
                                                    </div>
                                                    <input type='file' name="image" onchange="readURL(this);" />
                                                            </td><td>
                                                    <textarea cols="51" rows="3" id="text"  name="status"></textarea>
                                                    <select   name="display">
                                                        <option value="public" selected>Public</option>
                                                        <option value="private">Private</option>
<!--                                                        <option value="friend">Friends</option>-->
                                                    </select>
                                                    <input type="submit"  value="POST"/>
                                                            </td></tr>
                                                    </table>
                                                </form>

                                            </div>
                            </td>
                        </tr>
                        <tr >
                            <td>
                                <table >
                                                    <%
                                                        List statuslist = com.DAO.ListDAO.getListForPrivatewallStatus(Integer.parseInt(USerRegID));
                                                        Iterator itr = statuslist.iterator();
                                                        while (itr.hasNext()) {
                                                            com.DAO.PostFB fbstatus = (com.DAO.PostFB) itr.next();
                                                    %>
                                                    <tr>
                                                        <td bgcolor="#fff">
                                                            <table bgcolor="#29313C">
                                                                <tr >
                                                                    <td>Posted by <b><a style="color:goldenrod" href="friendProfile.jsp?friendId=<%= fbstatus.getSender_id()%>" target="_blank">
                                                                                <%=fbstatus.getUsername()%></a></b></td>
                                                                </tr>
                                                                <%if (!fbstatus.getImage_path().trim().equals("noimage")) {%>
                                                                <tr>
                                                                    <td><img src="<%=fbstatus.getImage_path()%>" alt="Post Image" width="250px" height="150px"/></td>
                                                                </tr>
                                                                <%}%>
                                                                <tr>
                                                                    <td><%=fbstatus.getDescription()%></td>
                                                                </tr>
                                                                <tr>
                                                                    <td ><div id="<%=fbstatus.getPost_id()%>" style="color:black;background-color:white;border:1px solid black;display:none;width:80%;height:80px;">
                                                                            <from action="sharepost"  >
                                                                                <input type="hidden" id="postid<%=fbstatus.getPost_id()%>" name="postid" value="<%=fbstatus.getPost_id()%>"/>
                                                                                <input type="hidden" id="registrationid<%=fbstatus.getPost_id()%>" name="registrationid" value="<%=USerRegID%>" />
                                                                                <table border="0">
                                                                                    <tr>
                                                                                        <td>Description</td>
                                                                                        <td><input type="text" id="description<%=fbstatus.getPost_id()%>" name="description" style="width:98%;" /></td>
                                                                                    </tr>
                                                                                    <tr>
                                                                                        <td><a href="#" onclick="document.getElementById('<%=fbstatus.getPost_id()%>').style.display = 'none';">Close</a></td>
                                                                                        <td><input type="submit" onclick="saveSharePost('<%=fbstatus.getPost_id()%>');"   value="Share" /></td>
                                                                                    </tr>
                                                                                </table>

                                                                            </from>
                                                                        </div>
                                                                        <font > <a color="white" href="#" onclick="document.getElementById('<%=fbstatus.getPost_id()%>').style.display = 'block';">Share Post</a></font>




                                                                    </td>
                                                                </tr>
                                                            </table>
                                                        </td>
                                                    </tr>    
                                                    <%
                                                        }
                                                    %>


                                                    <tr >
                                                        <td>
                                                            <table >
                                                                <%
                                                                    List shrlist = com.DAO.ListDAO.getListForShared(Integer.parseInt(USerRegID));
                                                                    Iterator itr1 = shrlist.iterator();
                                                                    while (itr1.hasNext()) {
                                                                        com.DAO.PostFB fbsta = (com.DAO.PostFB) itr1.next();
                                                                %>
                                                                <tr>
                                                                    <td bgcolor="#fff">
                                                                        <table bgcolor="#29313C">
                                                                            <tr >
                                                                                <td>Shared By <b><%=fbsta.getUsername()%></b></td>
                                                                            </tr>
                                                                            <tr>
                                                                                <td><%=fbsta.getDescription()%></td>
                                                                            </tr>
                                                                            <%if (!fbsta.getImage_path().trim().equals("noimage")) {%>
                                                                            <tr>
                                                                                <td><img src="<%=fbsta.getImage_path()%>" alt="Post Image" width="250px" height="150px"/></td>
                                                                            </tr>
                                                                            <%}%>
                                                                            <tr>
                                                                                <td><%=fbsta.getAddress() %></td>
                                                                            </tr>
                                                                            

                                                                        </table>
                                                                    </td>
                                                                </tr>    
                                                                <%
                                                                    }
                                                                %>
                                                            </table>
                                                        </td>
                                                    </tr>


                                                </table>
                            </td>
                        </tr>
                    </table>

                </div>

            </div><!-- .middle-->

        </div>



    </body>
</html>