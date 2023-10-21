<%-- 
    Document   : contactus
    Created on : Sep 12, 2023, 9:57:36 AM
    Author     : Brijesh
--%>



<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Farmer Merchant Integration</title>
         <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css" integrity="sha512-z3gLpd7yknf1YoNbCzqRKc4qyor8gaKU1qmn+CShxbuBusANI9QpRohGBreCFkKxLhei6S9CQXFEbbKuqLg0DA==" crossorigin="anonymous" referrerpolicy="no-referrer" />
        <link href="css/bootstrap.css" rel="stylesheet"/>
        <script src="js/bootstrap.bundle.js"></script>
        <link href="css/style.css"rel="stylesheet"/>
        <style>
             .image{
        background-image: url(images/bck1.jpg);
            background-size: cover;
            opacity: 0.8;
            color:white;
             }
             .name{
                font-size: 20px;
                padding-left: 20px;
                color:white; 
                padding-top:30px;
             }
             .in{
                 padding-right: 20px;
             }
             .control{
                 margin-top: 25px;
                 color:white;
                 padding-left: 15px;
                 border-radius: 20px;
                 background-color: transparent;
                 box-shadow: 0px 2px 10px 2px  #000;
                width:400px;
                height:43px;
                font-size: 20px;
             }
        </style>
    </head>
    <body>
          <script>
            function validate()
            {
                var name=document.getElementById("name");
                var male=document.getElementById("male");
                var female=document.getElementById("male");
                var address=document.getElementById("address");
                var eaddress=document.getElementById("emailaddress");
                var contact=document.getElementById("contact");
                var etext=document.getElementById("enquirytext");
               if(name.value==""|| name.value==null)
               {
                   document.getElementById("name").style.border="2px solid red";
               }if else(address.vlaue=="" || address.value==null)
               {
                    document.getElementById("address").style.border="2px solid red";
               }
               if else(eaddress.value=="" || eaddress.value==null)
               {
                    document.getElementById("eaddress").style.border="2px solid red";
               }if else(contact.vlaue="" || contact.value==null)
               {
                    document.getElementById("contact").style.border="2px solid red";
               }if else(etext.value==""|| etext.value==null)
               {
                    document.getElementById("etext").style.border="2px solid red";
               }else{
                    document.getElementById("").style.border="2px solid blue";
               }
            }
        </script>
        <div class="container-fulid">
            <!--Outer section start-->

            <!--Header.jsp section start-->
            <jsp:include page="header.jsp"/>
            <!--Header.jsp section end-->


            <!-- Main section start-->
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
                    <div class="col-sm-8 image bg-opacity-25" style="min-height:600px;">
                        <h2 style="text-align:center; color:white;margin-top: 30px;">Farmer Enquiry Form</h2>
                        <form class="form-group" method="post"id="enquiry"onsubmit="return validate()" action="controller.jsp">
                            <input type="hidden" name="page" value="contactus"/>
                            <table class="tab"style="width:60%; margin-left: 125px;margin-top: 30px;border-radius: 20px;height: 400px;width: 600px;box-shadow: 0px 2px 20px 2px  #000;">
                                <tr>
                               <td class="name">Enter Name</td>
                                    <td class="in">
                                        <input type="text" name="name"id="name" class="control"required/>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="name">Select Gender</td>
                                    <td style="font-size:20px;">
                                        <input type="radio" name="gender" id="male"value="Male" class=""style="margin-top:30px;"required/>Male
                                        <input type="radio" name="gender" id="female"value="Female" class=""style="margin-top:30px;required"/>Female
                                    </td>
                                </tr>
                                <tr>
                                    <td class="name">Enter Address</td>
                                    <td class="in">
                                        <textarea name="address" class="control"id="address"required></textarea>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="name">Enter Contact No</td>
                                    <td class="in">
                                        <input type="number" name="contactno" class="control"id="contact"required />
                                    </td>
                                </tr>
                                <tr>
                                    <td class="name">Enter Email Address</td>
                                    <td class="in">
                                        <input type="email" name="emailaddress" class="control"id="emailaddress"required />
                                    </td>
                                </tr>
                                <tr>
                                    <td class="name">Enter Enquiry Text</td>
                                    <td class="in">
                                        <textarea name="enquirytext" class="control"id="enquirytext"required></textarea>
                                    </td>
                                </tr>
                                <tr>
                                    <td></td>
                                    <td >
                                        <button type="submit" class="btn btn-danger"style="width: 150px;margin-top: 20px;margin-bottom: 20px;"required>Submit</button>
                                    </td>
                                </tr>
                            </table>
                        </form>
                    </div>
                </div>
            </div>
            <!-- main section end-->
            <!--Footer.jsp section start-->
            <jsp:include page="footer.jsp"/>
            <!--Footer.jsp section end-->

            <!--Outer section end-->
        </div>
    </body>
</html>

