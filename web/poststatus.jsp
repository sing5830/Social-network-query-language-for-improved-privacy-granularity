
<%@page import="java.util.Collections"%>
<%@page import="java.util.LinkedList"%>
<%@page import="java.util.Arrays"%>
<%@page import="java.util.List"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
        String status=request.getParameter("status");
        String action=request.getParameter("submit");
         String receiverid="";
        
               receiverid=session.getAttribute("userRegId").toString();
        String group="";
                String unameId = session.getAttribute("userRegId").toString();
                String display=request.getParameter("display");
                
                if(action.equals("CustomPost") ||   display.equals("custom"))
                {
                    
                    if(action.equals("CustomPost"))
                    {
                       String areaFriend=request.getParameter("removeFriendArea");
                       String [] users= areaFriend.split("\\s+");
                       String  finUser="";
                      //  String groups[]=request.getParameterValues("Relatives");
                         List<String> groupValues =new LinkedList<String>(Arrays.asList(request.getParameterValues("Relatives")));
                if(groupValues.contains("neighbours") || groupValues.contains("relatives"))
                {
                    if(!groupValues.contains("family"))
                        groupValues.add("family");
                }
                    if(groupValues.contains("Section A") || groupValues.contains("Sports Club"))
                {
                    if(!groupValues.contains("university"))
                        groupValues.add("university");
                }
                    Collections.sort(groupValues);
                  for(String g:groupValues){
                if(!group.equals(""))
                    group=group+","+g;
                else
                    group=g;
                }
                
                       for(String n:users){
                           System.out.println(n);
                          if(n.contains("@")){
                              if(!finUser.equals(""))
                           finUser=finUser+","+n;
                              else
                                  finUser=n;
                       System.out.println(finUser+" concat"+n);
                          }
                          
                       }
                       
        //System.out.println("name="+fname);
        try{
            Connection con=com.db.Connect.dbConnect();
            PreparedStatement pstmt=con.prepareStatement("insert into post (sender_id,reciver_id,description,image_path,post_display,po_date,blockfriend) values(?,?,?,?,?,CURRENT_TIMESTAMP(),?)");
            
            pstmt.setInt(1, Integer.parseInt(unameId));
            pstmt.setInt(2, Integer.parseInt(receiverid));
            pstmt.setString(3, status);
            pstmt.setString(4, "noimage");
            pstmt.setString(5, display);
             if(!finUser.equals(""))
            pstmt.setString(6, finUser+","+group);
                else
                 pstmt.setString(6, group);
                
            
            System.out.println(finUser);
           
            int i1=pstmt.executeUpdate();
            if(i1>0){%>
            <script>
                
                window.location="Home.jsp";
            </script>
            <%}
        }catch(Exception e){
            System.out.println(e);
        }
        
                       
                    }
                    else{
                       // session.setAttribute("custom", "custom");
                       // request.setAttribute("status", status);
                        response.sendRedirect("Home.jsp?custom='custom'");
                    }
                }
                else{
        //System.out.println("name="+fname);
        try{
            Connection con=com.db.Connect.dbConnect();
            PreparedStatement pstmt=con.prepareStatement("insert into post (sender_id,reciver_id,description,image_path,post_display,po_date) values(?,?,?,?,?,CURRENT_TIMESTAMP())");
            
            pstmt.setInt(1, Integer.parseInt(unameId));
            pstmt.setInt(2, Integer.parseInt(receiverid));
            pstmt.setString(3, status);
            pstmt.setString(4, "noimage");
            pstmt.setString(5, display);
           
            int i=pstmt.executeUpdate();
            if(i>0){%>
            <script>
                
                window.location="Home.jsp";
            </script>
            <%}
        }catch(Exception e){
            System.out.println(e);
        }}
        %>
    </body>
</html>
