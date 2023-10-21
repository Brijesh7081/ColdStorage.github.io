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
                 font-size: 18px;
                 padding-top: 20px;
                 padding-left: 60px;
             }
             .cols{
                font-size: 18px; 
                 height: 40px;
                 width: 400px;
                 box-shadow: 0px 2px 5px 2px black;
                 border-radius: 20px;
                 margin-top: 20px;
                 padding-left: 15px;
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
                    <h2 style="text-align: center;color:white;margin-top: 30px;">Booking Form</h2>
                    <%
                        String aadharno=session.getAttribute("ano").toString();
                        DbManager dm=new DbManager();
                        String query="select * from farmerinfo where aadharno='"+aadharno+"'";
                        ResultSet rs=dm.select(query);
                        if(rs.next())
                        {
                    %>
                    <form class="form-group"method="post"action="admincontroller.jsp">
                        <input type="hidden"name="page"value="book"/>
                        <table class=" mt-5"style="border-radius: 20px;box-shadow:0px 2px 20px 2px  #000;margin: auto;width: 60%;color:white;">
                            <tr>
                                <td class="col">Registration Id</td>
                                <td>
                                    <input type="text" name="regid" value="<%=rs.getString("regid")%>"class="cols"readonly/>
                                </td>
                            </tr>
                            <tr>
                                <td class="col">Farmer Name</td>
                                <td>
                                    <input type="text"name="name"value="<%=rs.getString("name")%>"class="cols"readonly/>
                                </td>
                            </tr>
                            <tr>
                                <td class="col">Village</td>
                                <td>
                                    <input type="text"name="village"value="<%=rs.getString("village")%>"class="cols"readonly/>
                                </td>
                            </tr>
                            <tr>
                                <td class="col">Post</td>
                                <td>
                                    <input type="text"name="post"value="<%=rs.getString("post")%>"class="cols"readonly/>
                                </td>
                            </tr>
                            <tr>
                                <td class="col">District</td>
                                <td>
                                    <input type="text"name="district"value="<%=rs.getString("district")%>"class="cols"readonly/>
                                </td>
                            </tr>
                                <tr>
                                <td class="col">State</td>
                                <td>
                                    <input type="text"name="state"value="<%=rs.getString("state")%>"class="cols"readonly/>
                                </td>
                            </tr>
                            <tr>
                                <td class="col">Pin Code</td>
                                <td>
                                    <input type="text"name="pincode"value="<%=rs.getString("pincode")%>"class="cols"readonly/>
                                </td>
                            </tr>
                            <tr>
                                <td class="col">Contact No</td>
                                <td>
                                     <input type="text"name="contactno"value="<%=rs.getString("contactno")%>"class="cols"readonly/>
                                </td>
                            </tr>
                            <tr>
                                <td class="col">Aadhar No</td>
                                <td>
                                     <input type="text"name="aadharno"value="<%=rs.getString("aadharno")%>"class="cols"readonly/>
                                </td>
                            </tr>
                            <tr>
                                <td class="col">Enter Number of packet</td>
                                <td>
                                    <input type="number"required name="noofpacket"class="cols"required/>
                                </td>
                            </tr>
                            <tr>
                                <td class="col">Enter Duration in months</td>
                                <td>
                                    <input type="number"required name="duration"class="cols"required/>
                                </td>
                            </tr>
                            <tr>
                                <td class="col">Enter Rate</td>
                                <td>
                                    <input type="number" name="rate"class="cols"required/>
                                </td>
                            </tr>
                            <tr>
                                <td class="col">Enter Advance Amount</td>
                                <td>
                                    <input type="number"required name="advanceamt"class="cols"required/>
                                </td>
                            </tr>
                            <tr>
                                <td></td>
                                <td style="">
                                    <button type="submit"class="btn btn-danger mt-3"style="width: 110px;margin-bottom: 20px;">Submit</button>
                                </td>
                            </tr>
                        </table><br/><br/>
                    </form>
                    <%}%>
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