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
                 width: 500px;
                 padding-left: 10px;
                 box-shadow: 0px 2px 10px 2px black;
                 border-radius: 20px;
                 margin-top: 30px;
                 line-height: 55px;
                 color: white;
                 background-color: transparent;
             }
      .col{
                 font-size: 18px;
                 padding-top: 29px;
                 padding-left: 30px;
                 color:white;
             }
            </style>
    </head>
    <body>
        <div class="container-fluid mt-1">
                 <jsp:include page="header.jsp"/>
            <div class="row">
                <div class="col-sm-12 img"style="min-height: 600px;background-color:grey;">
                    <h2 style="color:white;text-align: center;margin-top: 30px;">Do Payment</h2>
                    <%
                        DbManager dm=new DbManager();
                        String ano=request.getParameter("ano");
                        String query="select * from booking where aadharno='"+ano+"'";
                        ResultSet rs=dm.select(query);
                        if(rs.next())
                        {
                    %>
                    <form class=""method="post"action="admincontroller.jsp">
                        <input type="hidden"name="page"value="payment"/>
                    <table class="mt-4"style="box-shadow:0px 2px 20px 2px  #000;width:50%;margin: auto;color:;border-radius:20px;">
                        <tr>
                            <td class="col">Aadhar No</td>
                            <td>
                                <input type="text"name="aadharno"value="<%=rs.getString("aadharno")%>"class="cols"readonly/>
                            </td>
                        </tr>
                        <tr>
                            <td class="col">Total Amount</td>
                            <td>
                                <input typ="number"name="totalamt"value="<%=rs.getString("totalamt")%>"class="cols"readonly/>
                            </td>
                        </tr>
                        <tr>
                            <td class="col">Rest Amount</td>
                            <td>
                                <input typ="number"name="restamt"value="<%=rs.getString("restamt")%>"class="cols"readonly/>
                            </td>
                        </tr>
                        <tr>
                            <td class="col">Pay Amount</td>
                            <td>
                                <input type="number"name="payamt"class="cols"required/>
                            </td>
                        </tr>
                        <tr>
                            <td></td>
                            <td style="padding-top: 20px;text-align:center;">
                                <button type="submit"class="btn btn-danger"style="margin-bottom:30px;width: 120px;">Payment</button>
                            </td>
                        </tr>
                    </table>
                            </form>
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