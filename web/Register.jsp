

<%@page import="java.util.Random"%>
<%@ page import="java.sql.*"%>
<%@ page import="java.util.*"%>
<%@ page import="javax.mail.*"%>
<%@ page import="javax.mail.internet.*"%>
<%@ page import="javax.activation.*"%>
<%@ page import="javax.mail.Session.*"%>


<%! String email;
    String u;
    String p;
    int key;
    String contact;%>
<%

    try {

        String fname = request.getParameter("name");
        String lname = request.getParameter("name1");
        String email = request.getParameter("email");
        String pass = request.getParameter("pass");
        int i =0;
if(!email.isEmpty() || email!=null){
        Connection con = com.db.Connect.dbConnect();
        PreparedStatement pstmt = con.prepareStatement("insert into registration (first_name,last_name,email_id,password) values(?,?,?,?)");
        PreparedStatement st=null;
        

        pstmt.setString(1, fname);
        pstmt.setString(2, lname);
        pstmt.setString(3, email);

        pstmt.setString(4, pass);
         i = pstmt.executeUpdate();
         String qery="INSERT INTO profile (registration_id) "
                 + " select max(registration_id) from registration";
         st = con.prepareStatement(qery);
         st.executeUpdate();
}else
{%>
<script>
    alert('Please Enter Your Email Id.');
     window.location="index.html";
</script>
<%
}
        if (i > 0) {%>

<%


    String result = null;
    
  

 %>
<script>
    alert('You are Register Succesfull.');
     window.location="index.html";
</script>
<%
        }        else {
%>
<script>
    alert("Sorry Registration Failed!.");
    window.location="index.html";
</script>
<%                            }
        }
    
    catch (Exception e)
    {
        %>
        <script>
    alert("Sorry Registration Failed!.");
    window.location="index.html";
</script>
<%
        e.printStackTrace();
}


%>
