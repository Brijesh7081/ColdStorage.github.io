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
            .col{
                background-color: black;
                font-size: 18px;
            }
            .cols{
                background-color: #6c757d;
                font-size: 18px;
            }
        </style>
    </head>
    <body>
        <div class="container-fluid mt-1">
                 <jsp:include page="header.jsp"/>
            <div class="row">
                <div class="col-sm-12 img"style="min-height: 600px;background-color:grey;">
                    <%
                        DbManager dm=new DbManager();
                        String ano=request.getParameter("ano");
                        String query="select * from booking where aadharno='"+ano+"'";
                        ResultSet rs=dm.select(query);
                        if(rs.next())
                        {
                    %>
                    <h2 style="text-align: center;color: white;margin-top: 30px;">Farmer View Information</h2>
                    <table class="table-bordered mt-5"style="box-shadow:0px 2px 20px 2px  #000;border:2px solid;width:50%;margin:auto;color:white;">
                        <tr>
                            <td class="col">Registration Id</td>
                            <td class="cols"><%=rs.getString("regid")%></td>
                        </tr>
                        <tr>
                            <td class="col">Farmer Name</td>
                            <td class="cols"><%=rs.getString("name")%></td>
                        </tr>
                        <tr>
                            <td class="col">Village</td>
                            <td class="cols"><%=rs.getString("village")%></td>
                        </tr>
                        <tr>
                            <td class="col">Post</td>
                            <td class="cols"><%=rs.getString("post")%></td>
                        </tr>
                        <tr>
                            <td class="col">District</td>
                            <td class="cols"><%=rs.getString("district")%></td>
                        </tr>
                        <tr>
                            <td class="col">State</td>
                            <td class="cols"><%=rs.getString("state")%></td>
                        </tr>
                        <tr>
                            <td class="col">Pin Code</td>
                            <td class="cols"><%=rs.getString("pincode")%></td>
                        </tr>
                        <tr>
                            <td class="col">Contact No</td>
                            <td class="cols"><%=rs.getString("contactno")%></td>
                        </tr>
                        <tr>
                            <td class="col">Aadhar No</td>
                            <td class="cols"><%=rs.getString("aadharno")%></td>
                        </tr>
                        <tr>
                            <td class="col">NO of packet</td>
                            <td class="cols"><%=rs.getString("noofpacket")%></td>
                        </tr>
                        <tr>
                            <td class="col">Duration of months</td>
                            <td class="cols"><%=rs.getString("duration")%></td>
                        </tr>
                        <tr>
                            <td class="col">Rate</td>
                            <td class="cols"><%=rs.getString("rate")%></td>
                        </tr>
                        <tr>
                            <td class="col">Total Amount</td>
                            <td class="cols"><%=rs.getString("totalamt")%></td>
                        </tr>
                        <tr>
                            <td class="col">Advance Amount</td>
                            <td class="cols"><%=rs.getString("advanceamt")%></td>
                        </tr>
                        <tr>
                            <td class="col">Rest Amount</td>
                            <td class="cols"><%=rs.getString("restamt")%></td>
                        </tr>
                        <tr>
                            <td class="col">Booking Date</td>
                            <td class="cols"><%=rs.getString("bookingdate")%></td>
                        </tr>
                    </table><br/><br/>
                    <%  
                        }
                        else
                        {
                        %>
                        
                        <h2 style="color:white;text-align: center;margin-top: 30px;">Booking is not available</h2>
                        <% } %>
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