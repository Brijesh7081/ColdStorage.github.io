<%-- 

    Document   : adminhome
    Created on : 15 Sep, 2023, 10:09:51 AM
    Author     : hp
--%>
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
                 padding-left: 20px;
             }
             .cols{
                font-size: 20px; 
                 height: 40px;
                 width: 380px;
                 padding-left: 15px;
                 box-shadow: 0px 2px 10px 2px black;
                 border-radius: 20px;
                 margin-top: 30px;
                 color: white;
                 background-color: transparent;
                 
             }
         </style>
    </head>
    <body>
        <script>
            function validate()
            {
                var op=document.getElementById("oldpassword");
                var np=document.getElementById("newpassword");
                var cp=document.getElementById("confirmpassword");
                if(op.value==""||op.value==null)
                {
                    alert('Please Enter Old Password');
                    op.focus();
                }
                else if(np.value==""||np.value==null)
                {
                    alert('Please Enter New Password');
                    np.focus();
                }else if(cp.value==""||cp.value==null)
                {
                    alert('Please Enter Confirm Password');
                    cp.focus();
                }else if(np.value!=cp.value)
                {
                    alert('Confirm Password Is Not Match');
                    cp.focus();
                }else
                {
                    document.getElementById("frmchangepassword").submit();
                }
            }
        </script>
        <div class="container-fluid mt-1">
                 <jsp:include page="header.jsp"/>
            <div class="row">
                <div class="col-sm-12 img"style="min-height: 600px;background-color:grey;">
                    <h2 style="text-align: center;color: white;margin-top: 30px;">Change Password</h2>
                    <form class="form-group" method="post" id="frmchangepassword" onsubmit="event.preventDefault(); validate();"action="admincontroller.jsp">
                        <input type="hidden"name="page"value="changepassword"/>
                        <table class=" mt-5"style="border-radius: 20px;box-shadow:0px 2px 20px 2px  #000;width:600px;margin:auto;color:white;">
                            <tr>
                                <td class="col">Enter Old password</td>
                                <td>
                                    <input type="password"name="oldpassword"class="cols"id="oldpassword"/>
                                </td>
                            </tr>
                            <tr>
                                <td class="col">Enter New Password</td>
                                <td>
                                    <input type="password"name="newpassword"class="cols"id="newpassword"/>
                                </td>
                            </tr>
                            <tr>
                                <td class="col">Confirm Password</td>
                                <td>
                                    <input type="password"name="confirmpassword"class="cols"id="confirmpassword"/>
                                </td>
                            </tr>
                            <tr>
                                <td></td>
                                <td style="">
                                    <button type="submit"class="btn btn-danger mt-3"style="width:110px;margin-bottom: 30px;">Change</button>
                                </td>
                            </tr>
                        </table>
                    </form>
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