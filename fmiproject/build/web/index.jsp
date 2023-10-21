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
            .sticky{
                position: fixed;
                top:0;
                width: 110%;
                margin-left:12px;
            } 
            .whatsapp{
                position: fixed;
                bottom: -25px;
                right: -25px;
                text-align: end;
               
            }
        </style>
    </head>
    <body>
        <script>
            window.addEventListener('scroll',function(){
                let navbar=
                        document.getElementById('menu');
                if(window.pageYOffset >=30)
                {
                    navbar.classList.add('sticky');
                    
                }else{
                    navbar.classList.remove('sticky');
                }
            })
        </script>
        <div class="container-fulid">
            <jsp:include page="header.jsp"/>
            <div class="container-fulid">
            <div class="row mt-1">
                <h2 style="text-align:center;margin-top:10px;margin-bottom: 25px;">Product & Services</h2>
              
                    <div class="col-sm-3 text-center"><button class="btn btn-outline-warning " type="submit"style="font-size: larger;color:black;box-shadow: 0px 2px 20px 2px  #000;width: 250px;"><b>TURNKEY PROJECTS</b></button></div>
                    <div class="col-sm-3 text-center"><button class="btn btn-outline-warning " type="submit"style="font-size: larger;color:black;box-shadow: 0px 2px 20px 2px  #000;width: 250px;"><b>EQUIPMENTS</b></button></div>
                    <div class="col-sm-3 text-center"><button class="btn btn-outline-warning " type="submit"style="font-size: larger;color:black;box-shadow: 0px 2px 20px 2px  #000;width: 250px;"><b>CONSULTANCY</b></button></div>
                    <div class="col-sm-3 text-center"><button class="btn btn-outline-warning " type="submit"style="font-size: larger;color:black;box-shadow: 0px 2px 20px 2px  #000;width: 250px;"><b>SERVICES</b></button></div>
                    <div class="whatsapp">
                        <a href="http://surl.li/lzvbs"target="_blank">
                            <img src="images/whatsapp.png"style="width:150px;height:150px;border-radius: 100%;"alt="">
                        </a>
                    </div>
            </div><br/>
                <div class="row me-5 ms-5">
                 
                    <div class="row me-5"style="background-color:blueviolet;background-color: transparent;box-shadow: margin-left: 60px;border-radius: 25px;box-shadow: 0px 2px 20px 2px  #000;background-image: url(images/bk.jpg);">
                <div class="col-sm-6 ms-3 ">
                    <h3 style="color: yellow;">About Us</h3><br/>
                    <p style="text-align: justify;color:white;back">Natural Storage Solutions Pvt. Ltd. (NSSPL) is a leading turnkey solution provider company for All Types Cold Storage, Food Processing Units ( French Fries Line, Fruits & Vegetables, Dairy, Sea Food & Meat etc) across the Globe. NSSPL helps its customers from Conceptualization of the project then Designing, Integration of Technologies, Manufacturing, Execution & Commissioning and support in Operation. NSSPL executes the project worldwide with the latest technologies. NSSPL executed projects are automatic, less energy consuming and most efficient in the operation.</p>
                    
                     <button type="button"style="width:150px;border-radius: 25px;" class="btn btn-warning"><b>Know More </b></button>
                </div>
              <div class="col-sm-2 ms-5">
                   <img src="images/header.jpg"style="height:320px;width:500px;border-radius: 30px;margin-left:50px;"/>
              </div>
                    </div>
              <div class="row mt-3">
                  <h2 style="text-align: center;">Recent Projects</h2><br/>
                  <div class="col-sm-6"style="border-radius: 50px;border:3px solid orange;overflow: hidden;background-image: url(images/gallery8.jpg);">
                  
</div>
                      <div class="col-sm-6 ps-5">
                          <h4>Project: – Devrath Cold Storage LLP</h4>
                        <hr/>  <h6> <i class="fa-solid fa-calendar-days"></i>&nbsp;
                              Year of Commissioning:-2019</h6><hr/>
                              <h6><i class="fa-solid fa-location-dot"></i>&nbsp;Survey No 261, Vill-Nawanagar, Tauka—Himmatnagar, Dist-Sabarkantha, PIN-383220</h6>
                              <hr/>
                              <h6><i class="fa-solid fa-lightbulb"></i>&nbsp;Facility Installed: - Bulk Potatoes Storage with Advance Ventilation System and Bulk Potato Handling System</h6>
                              <hr/>
                              <h6><i class="fa-solid fa-toolbox"></i>&nbsp;Application: - Storage of Processed Potatoes</h6>
                              <hr/>
                              <h6><i class="fa-solid fa-box"></i>&nbsp;Capacities: - 11,000 Tons (Eleven Metric Ton)</h6>
                   <hr/>   </div>
                      
                           
                  </div>
                    <div class="row mt-5 mb-4">
                        <div class="col-sm-4 ms-5"style="width: 360px;border-radius: 20px;box-shadow:0px 2px 20px 2px  #000;height:400px; ">
                            <img src="images/blog1.jpg"style="width:320px;height:250px;margin:10px;border-radius: 20px;">
                            <h5 style="text-align:center;">I Want To Set Up Cold Storage In Surat Gujarat How Do I Do That?</h5>
                            <button type="button"style="width:150px;border-radius: 25px;margin-left: 100px;margin-top:20px;" class="btn btn-warning"><b>Know More </b></button>
                        </div>
                        <div class="col-sm-4 ms-5"style="width: 360px;border-radius: 20px;box-shadow:0px 2px 20px 2px  #000;height:400px; ">
                            <img src="images/blog2.jpg"style="width:320px;height:250px;margin:10px;border-radius: 20px;">
                            <h5 style="text-align:center;">How Can I Start A Cold Storage Business In Daman And Diu?</h5>
                            <button type="button"style="width:150px;border-radius: 25px;margin-left: 100px;margin-top:20px;" class="btn btn-warning"><b>Know More </b></button>
                        </div> 
                        <div class="col-sm-4 ms-5"style="width: 360px;border-radius: 20px;box-shadow:0px 2px 20px 2px  #000;height:400px; ">
                            <img src="images/blog3.jpg"style="width:320px;height:250px;margin:10px;border-radius: 20px;">
                            <h5 style="text-align:center;">How Can I Start A French Fries Line Production In Madhya Pradesh</h5>
                            <button type="button"style="width:150px;border-radius: 25px;margin-left: 100px;margin-top:20px;" class="btn btn-warning"><b>Know More </b></button>
                        </div>
                    </div> </div>
                 <br/><div class="row"style="margin-left: 550px;">
                        <button type="button"style="width:200px;border-radius: 25px;text-align: center;"class="btn btn-warning">Read More Post</button>
                 </div>
               <hr/>
               <div class="row">
                   <image src="images/head2.jpg"style="height:400px;"/>
            </div>
               <div class="row  bg-secondary text-light">
                   <div class="col-sm-7 mt-2">
                       <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d227599.4796822915!2d82.50139675604008!3d26.959238865278415!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3990cc9588ab1add%3A0x6066c567f5e2b00e!2sAurh%20Jangal%2C%20Uttar%20Pradesh%20272190!5e0!3m2!1sen!2sin!4v1695154614470!5m2!1sen!2sin" width="700" height="400" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
                   </div>
                   <div class="col-sm-5 mt-2">
                       <h3>Cold Storage</h3>
                       <p style="text-align: justify;margin-left: -40px;margin-right: 40px;">Our strategically located Cold Storage facilities around the globe come equipped with ideal temperature parameters for your precious goods; typically within the range of -25° and + 25° Celcius. Depending on your commodity’s specific needs, we also provide atmosphere-controlled conditions that facilitate ripe-to-market commodities and long-term cold storage for fresh fruits and pharmaceutical goods. We are flexible and agile in our operations to ensure that we can match your pace as your needs change with seasonal demand. </p>
                       <h4>A network built for global reach</h4>
                       <p>
                           
                       <li style="text-align: justify;margin-left: -40px;">Puerto Mont, Chile</li>
                       <li style="text-align: justify;margin-left: -40px;">San Antonio, Chile</li>
                       <li style="text-align: justify;margin-left: -40px;">Dammam, Saudi Arabia</li>
                       <li style="text-align: justify;margin-left: -40px;">Chennai, India</li>
                       </p>
                   </div>
               </div>
            <jsp:include page="footer.jsp"/>
        </div>
    </body>
</html>
