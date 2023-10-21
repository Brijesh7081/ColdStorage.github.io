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
              .image{
        background-image: url(images/bck1.jpg);
            background-size: cover;
            color:white;
    }
         </style>
        
    </head>
    <body>
        <div class="container-fulid ">
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
                 <div class="col-sm-8 image bg-opacity-25" style="min-height:600px;">
                      <h2 style="text-align:center; color:white;margin-top: 30px;">About Us</h2><br/>
                      <p style="text-align: justify;padding-left: 30px;padding-right: 30px;">Cold storage warehouses maintain cooler temperatures through a combination of insulation and HVAC cooling systems.

Insulation serves the same purpose for cold storage warehouses as it does for houses: It helps limit the transfer of heat between the inside and the outside.

On the other hand, cooling systems for cold storage warehouses are a bit more complex.

But the basic idea is that they use a combination of coolant, pipes, radiators, and fans to absorb and remove heat and replace it with cooler air.

You can watch the following video or to the sections below to read more about how a basic cold storage warehouse cooling system works:

If the coolant is the “blood,” the compressor is similar to the "heart" in that it helps move the coolant.

It does so by raising the coolant pressure and temperature through compression and then pumps the heated refrigerant into the condenser.

THE CONDENSER
The condenser removes heat from the refrigerant and disperses it into the atmosphere using tubes, fans, and/or water spray.

Coils on a cooling condensor
The condenser removes heat from the coolant and disperses the heat into the atmosphere
In the process, the refrigerant changes state from a gas to a liquid and then flows into the receiver.

Through this, the receiver allows the whole system to maintain pressure while also providing a buffer for handling increased loads, such as when more cool air is needed.

When needed, the receiver releases the refrigerant into an expansion valve.

The expansion valve helps regulate the pressure, temperature, and amount of refrigerant released into the next component - the separator.

THE SEPARATOR
The separator receives and accumulates refrigerant from the receiver.

Pumps outside the separator pull the refrigerant into another expansion valve, where the flow rate is adjusted before it enters the evaporator.

Pumps connected to piping in an industrial facility
Pumps outside the separator circulate the coolant around the system while accounting for spikes in cooling demand
The pumps also help adjust the load placed on the evaporator, which is determined by the cooling needs in the warehouse.

THE EVAPORATOR
The evaporator is what brings cold air into the space being cooled and causes the temperature to drop.

It does this by passing the cold refrigerant through a series of tubes while a fan blows air from the space across the tubes.

A 2D illustration of the refrigeration/cooling process.</p>
                 </div>
            </div>
            </div>
            <jsp:include page="footer.jsp"/>
        </div>
    </body>
</html>
