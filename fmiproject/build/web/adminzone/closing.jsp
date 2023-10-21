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
                    <h2 style="color:white;text-align: center;margin-top: 30px;">Manage Booking</h2>
                    <table class="table-bordered mt-5"style="box-shadow:0px 2px 20px 2px  #000;border:2px solid;width:100%;margin:auto;color:white;">
                        <tr style="text-align: center;background-color: black;">
                            <th>Reg. Id</th>
                            <th>Name</th>
                            <th>Aadhar No</th>
                            <th>No. of Packet</th>
                            <th>Duration</th>
                            <th>Rate</th>
                            <th>Total Amount</th>
                            <th>Advance Amount</th>
                            <th>Rest Amount</th>
                            <th>Pay</th>
                        </tr>
                        <%
                            DbManager dm=new DbManager();
                            ResultSet rs=dm.select("select * from booking");
                            while(rs.next())
                            {
                        %>
                        <tr style="background-color: #6c757d;">
                            <td><%=rs.getString("regid")%></td>
                            <td><%=rs.getString("name")%></td>
                            <td><%=rs.getString("aadharno")%></td>
                            <td><%=rs.getString("noofpacket")%></td>
                            <td><%=rs.getString("duration")%></td>
                            <td><%=rs.getString("rate")%></td>
                            <td><%=rs.getString("totalamt")%></td>
                            <td><%=rs.getString("advanceamt")%></td>
                            <td><%=rs.getString("restamt")%></td>
                            <td>
                                <a href="payment.jsp?ano=<%=rs.getString("aadharno")%>">
                                    <button class="btn btn-danger">Pay</button>
                                </a>
                            </td>
                        </tr>
                        
                        <% } %>
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