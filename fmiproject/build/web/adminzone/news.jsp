<%-- 
    Document   : adminhome
    Created on : 15 Sep, 2023, 10:09:51 AM
    Author     : hp
--%>
<%@page import="java.sql.ResultSet"%>
<%@page import="dbpack.DbManager"%>
<%
    if (session.getAttribute("adminid") == null) {
        response.sendRedirect("../login.jsp");
    } else {

        
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link href="../css/bootstrap.css" rel="stylesheet"/>
        <script src="../js/bootstrap.bundle.js"></script>
         <link href="../css/style.css"rel="stylesheet"/>
         <style>
             .img{
                 background-image: url(../images/bcg.jpg);
                 background-size: cover;
                 opacity: 0.8;
             }
                    .cols{
                font-size: 18px; 
                 height: 55px;
                 width: 600px;
                 padding-left: 10px;
                 box-shadow: 0px 2px 10px 2px black;
                 border-radius: 20px;
                 margin-top: 30px;
                 line-height: 55px;
                 color: white;
                 background-color: transparent;
             }
      
         </style>
    </head>
    <body>
        <div class="container-fluid mt-1">
                 <jsp:include page="header.jsp"/>
            <div class="row">
                <div class="col-sm-12 img"style="min-height: 600px;background-color:grey;">
                    <h2 style="color:white;margin-top: 30px;text-align: center;">Add News & Events</h2>
                    <form class="form-group"method="post"action="admincontroller.jsp">
                        <input type="hidden"name="page"value="news"/>
                        <table class=" mt-5"style="box-shadow:0px 2px 20px 2px  #000;width: 70%;margin: auto;color: white;border-radius:20px;">
                            <tr>
                                <td style="font-size: 30px;text-align: center;width:300px;padding-top: 32px;">Enter news</td>
                                <td><textarea name="newstext"class="cols"style="background-color:transparent;color:white;font-size:18px;"></textarea></td>
                            </tr>
                            <tr>
                                <td></td>
                                <td style="">
                                    <button type="submit"class="btn btn-danger mt-4"style="width:150px;margin-bottom: 30px;">Post</button>
                                </td>
                            </tr>
                        </table>
                      
                    </form>
                    <br/>
                    <h2 style="text-align: center;color:white;margin-top: 30px;">News Management</h2>
                    <table class="table-bordered mt-5"style="box-shadow:0px 2px 20px 2px  #000;width: 80%;margin: auto;border:2px solid;text-align: center;color:white">
                        <tr style="background-color: black;">
                            <th>Id</th>
                            <th>News Text</th>
                            <th>Posted Date</th>
                        <th>Delete</th>
                        </tr>
                        <%
                            DbManager dm=new DbManager();
                            ResultSet rs=dm.select("select * from news");
                            while(rs.next())
                            {
                            
                        %>
                             <tr style="background-color: #6c757d;">
                                 <td><%=rs.getInt("id")%></td>
                                 <td><%=rs.getString("newstext")%></td>
                                 <td><%=rs.getString("posteddate")%></td>
                                 <td>
                                     <a href="deletenews.jsp?id=<%=rs.getInt("id")%>">
                                         <button class="btn btn-danger ">Delete</button>
                                     </a>
                                 </td>
                                </tr>
                        <% } %>
                    </table><br><br>
                </div>
            </div>
            <div class="row" style="font-family: calbari">
                <div class="col-sm-6"style="min-height: 60px;background-color: black;color:white;font-size: 20px;text-align: center;line-height: 60px;">
                    Copyright&copy; Farmer Merchant Integration
                </div>
                <div class="col-sm-6"style="min-height: 60px;background-color: navy;color:white;font-size: 20px;text-align: center;line-height: 60px;">
                    Developed by - Brijesh Kumar
                </div>
            </div>
        </div>
    </body>
</html>
<%}%>