<%-- 
    Document   : index
    Created on : 10 Sep, 2023, 10:10:00 AM
    Author     : Brijesh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html;  charset=UTF-8">
        <title>Farmer Merchant Integration</title>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css" integrity="sha512-z3gLpd7yknf1YoNbCzqRKc4qyor8gaKU1qmn+CShxbuBusANI9QpRohGBreCFkKxLhei6S9CQXFEbbKuqLg0DA==" crossorigin="anonymous" referrerpolicy="no-referrer" />
        <link href="css/bootstrap.css" rel="stylesheet"/>
        <script src="js/bootstrap.bundle.js"></script>
         <link href="css/style.css"rel="stylesheet"/>
         <style>
             .col{
                font-size: 20px;
                padding-left: 40px;
                color:white; 
                padding-top:50px;
             } 
             .control{
                 margin-top: 50px;
                 color:white;
                 border-radius: 20px;
                 background-color: transparent;
                 box-shadow: 0px 2px 10px 2px  #000;
                width:400px;
                height:40px;
                padding-left: 15px;
                font-size: 18px;
             }
         </style>
       
             
        
    </head>
    <body>
      
        <div class="container-fulid">
            <jsp:include page="header.jsp"/>
            <div class="container-fulid">
            <div class="row mt-2">
                <div class="col-sm-4 bg-info" style="min-height:600px;">
                    <h3 style="text-align:center;">Gallery</h3>
                    <img src="images/gallery1.jpg"style="height:100px;width:130px;margin-top:5px;margin-left: 25px;"/>
                    <img src="images/gallery2.jpg"style="height:100px;width:130px;margin-top: 5px;"/>
                    <img src="images/gallery3.jpg"style="height:100px;width:130px;margin-top: 5px;"/>
                    <img src="images/gallery4.jpg"style="height:100px;width:130px;margin-top: 5px;margin-left: 25px;"/>
                    <img src="images/gallery5.jpg"style="height:100px;width:130px;margin-top: 5px;"/>
                    <img src="images/gallery6.jpg"style="height:100px;width:130px;margin-top: 5px;"/>
                    <img src="images/gallery7.jpg"style="height:100px;width:130px;margin-top: 5px;margin-left: 25px;"/>
                    <img src="images/gallery8.jpg"style="height:100px;width:130px;margin-top: 5px;"/>
                    <img src="images/gallery9.jpg"style="height:100px;width:130px;margin-top: 5px;"/>
                    <h3 style="text-align:center;">Information</h3>
                    <ul style="text-align: justify;margin-left: 5px;text-size:25px;">
<li>Foods like fresh produce, meat and seafood, dairy, processed foods, and frozen foods</li>
<li>Nutritional supplements like perishable nutrient products</li>
<li>Botanicals such as flowers and plants</li>
<li>Bio-pharmaceuticals like medicines, vaccines, blood samples, IVs, and certain dental materials</li>
<li>Books and artwork like historical documents, paintings, and film canisters</li>
<li>Craft goods like candles (as they can lose their shape or color or melt if kept in high heat)</li>

                    </ul>
                </div>
                 <div class="col-sm-8" style="min-height:600px;background-image:url(images/bck1.jpg);opacity: 0.8;">
                     
                      <h2 style="text-align:center; color:white;margin-top: 110px;">Admin Login</h2>
                     <form class="form-group" method="post" action="controller.jsp">
                         <input type="hidden"name="page"value="login"/>
                         <table class="tab" style="width:70%; margin-left: 120px;margin-top: 50px;border-radius: 20px;box-shadow: 0px 2px 20px 2px  #000;">
                             <tr>
                                 <td class="col">Enter User Id</td>
                                 <td style="padding-right: 20px;">
                                     <input type="email"name="userid"class="control"/>
                              
                                 </td>
                             </tr>
                             <tr>
                                 <td class="col">Enter Password</td>
                                 <td style="padding-right: 20px;">
                                     <input type="password"name="password"class="control"/>
                              
                                 </td>
                             </tr>
                             <tr>
                                 <td></td>
                                 <td>
                                        <button type="submit" class="btn btn-danger mt-4"style="width: 120px;margin-bottom: 40px;">Login</button>
                                    </td>
                             </tr>
                         </table>
                     </form>
                 </div>
            </div>
            </div>
            <jsp:include page="footer.jsp"/>
        </div>
    </body>
</html>
