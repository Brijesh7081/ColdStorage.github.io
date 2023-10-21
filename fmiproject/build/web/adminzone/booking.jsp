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
                    <h2 style="text-align: center;color: white;margin-top:40px;">List of Farmer</h2>
                    <table class=" table-bordered mt-5"style="box-shadow:0px 2px 20px 2px  #000;width:90%;margin:auto;border:2px solid;color:white;">
                        <tr style="text-align: center;background-color: black">
                            <th>Rg. Id</th>
                            <th>Name</th>
                            <th>Village</th>
                            <th>Post</th>
                            <th>District</th>
                            <th>State</th>
                            <th>Pin Code</th>
                            <th>Contact No</th>
                            <th>Aadhar No</th>
                            <th>Book</th>
                            <th>View</th>
                        </tr>
                        <%
                            DbManager dm=new DbManager();
                            ResultSet rs=dm.select("select * from farmerinfo");
                            while(rs.next())
                            {
                        %>
                        <tr style="background-color: #6c757d">
                            <td><%=rs.getString("regid")%></td>
                            <td><%=rs.getString("name")%></td>
                            <td><%=rs.getString("village")%></td>
                            <td><%=rs.getString("post")%></td>
                            <td><%=rs.getString("district")%></td>
                            <td><%=rs.getString("state")%></td>
                            <td><%=rs.getString("pincode")%></td>
                            <td><%=rs.getString("contactno")%></td>
                            <td><%=rs.getString("aadharno")%></td>
                            <td>
                                <a href="validate.jsp?ano=<%=rs.getString("aadharno")%>">
                                    <button type="submit"class="btn btn-danger">Book</button>
                                </a>
                            </td>
                            <td>
                                <a href="view.jsp?ano=<%=rs.getString("aadharno")%>">
                                    <button class="btn btn-primary">View</button>
                                </a>
                            </td>
                        </tr>
                        <%}%>
                    </table>
                </div>
            </div>
            <div class="row" style="font-family: calbari">
                <div class="col-sm-6"style="min-height: 40px;background-color: black;color:white;font-size: 20px;text-align: center;line-height: 40px;">
                    Copyright&copy; Farmer Merchant Integration
                </div>
                <div class="col-sm-6"style="min-height: 40px;background-color: navy;color:white;font-size: 20px;text-align: center;line-height: 40px;">
                    Developed by - <u><i>Brijesh Kumar</i></u>
                </div>
            </div>
        </div>
    </body>
</html>
<%}%>