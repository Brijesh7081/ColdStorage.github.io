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
         </style>
    </head>
    <body>
        <div class="container-fluid mt-1">
                 <jsp:include page="header.jsp"/>
            <div class="row">
                <div class="col-sm-12 img"style="min-height: 600px;background-color:grey;">
                    <h2 style="text-align: center;color:white;margin-top: 30px;">Enquiry Management</h2>
                    <table class="table-bordered mt-5"style="box-shadow:0px 2px 20px 2px  #000;width: 90%;margin: auto;border:2px solid;color:white;">
                        <tr style="text-align: center;background-color: #000;">
                            <th>Id</th>
                            <th>Name</th>
                            <th>Gender</th>
                            <th>Address</th>
                            <th>Contact Number</th>
                            <th>Email Address</th>
                            <th>Enquiry Text</th>
                            <th>Posted Date</th>
                            <th>Delete</th>
                        </tr>
                        <%
                            DbManager dm=new DbManager();
                            String query="select * from enquiry";
                            ResultSet rs=dm.select(query);
                            while(rs.next())
                            {
                        %>
                        <tr style="background-color: #6c757d;">
                        <td><%=rs.getInt("id")%></td>
                        <td><%=rs.getString("name")%></td>
                        <td><%=rs.getString("gender")%></td>
                        <td><%=rs.getString("address")%></td>
                        <td><%=rs.getString("contactno")%></td>
                        <td><%=rs.getString("emailaddress")%></td>
                        <td><%=rs.getString("enquirytext")%></td>
                        <td><%=rs.getString("enquirydate")%></td>
                        <td>
                            <a href="delenq.jsp?id=<%=rs.getInt("id")%>">
                                <button class="btn btn-danger"style="">Delete</button>
                            </a>
                        </td>
                        </tr>
                        <%}%>
                    </table><br/><br/>
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