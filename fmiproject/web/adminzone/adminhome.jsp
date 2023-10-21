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
         <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css" integrity="sha512-z3gLpd7yknf1YoNbCzqRKc4qyor8gaKU1qmn+CShxbuBusANI9QpRohGBreCFkKxLhei6S9CQXFEbbKuqLg0DA==" crossorigin="anonymous" referrerpolicy="no-referrer" />
        <link href="../css/style.css"rel="stylesheet"/>
        <style>
    *{
    padding: 0;
    margin: 0;
    box-sizing: border-box;
    font-family: 'poppins',sans-serif;
}
/*.topbar{
    position: fixed;
    margin-top: 0px;
    background: #fff;
    box-shadow: 0 4px 8px 0 rgba(0,0,0,0.08);
    width: 100%;
    display: grid;
    grid-template-columns: 2fr 10fr 0.4fr 1fr;
    align-items: center;
    z-index: 1;
}
.user{
    position: relative;
    height: 50px;
    width: 50px;
}
.logo h2{
    color: #299B63;
}
.search {
    position: initial;
    width: 60%;
    justify-content: center;
}
.search input{
    width: 100%;
    height: 40px;
    padding: 0 40px;
    font-size: 16px;
    outline: none;
    border: none;
    border-radius: 10px;
    background: #f5f5f5;
}
.search i{
    position: absolute;
    right: 15px;
    top: 15px;
    cursor: pointer;
   
}
.user img{
    position: absolute;
    top: 0;
    left: 0;
    height: 100%;
    width: 100%;
    object-fit: cover;

}
*/
/* sidebar starts here */

.sidebar{
    position:absolute;
    top: 170px;
    width: 250px;
    margin-left: -13px;
    height: calc(100% - 5px);
    background: #299B63;
    overflow: hidden;
}
.sidebar ul{
    margin-top: 20px;

}
.sidebar ul li{
    width:90%;
    list-style: none;
}
.sidebar ul li:hover{
    background-color: #fff;
}
.sidebar ul li:hover a{
    color: #299B63;
}
.sidebar ul li a{
    width: 100%;
    text-decoration:none;
    color: #fff;
    height: 60px;
    display: flex;
    align-items: center;
}
.sidebar ul li a i{
    min-width: 60px;
    font-size: 24px;
    text-align: center;
}

/* main section starts here */

.main{
    position: absolute;
    top:170px;
    width: calc(100% - 260px);
    left: 260px;
    min-height: calc(100vh - 60px);
    background: #f5f5f5;
}
.cards{
    width: 100%;
    padding: 35px 20px;
    display: grid;
    grid-template-columns: repeat(4,1fr);
    grid-gap: 20px;
}
.cards .card{
    padding: 20px;
    display: flex;
    align-items: center;
    justify-content: space-between;
    background-color: #fff;
    border-radius: 10px;
    box-shadow: 0 7px 25px 0 rgba(0,0,0,0.08);
}
.cards .card:hover{
    background: #299B63;
}
.cards .card:hover .number{
    color:#fff;
}
.cards .card:hover .card-name{
    color:#fff;
}
.cards .card:hover .icon-box{
    color:#fff;
}

.number{
    font-size: 35px;
    font-weight: 500;
    color: #299B63;
}
.card-name{
    color: #888;
    font-weight: 600;
}
.icon-box{
    font-size: 45px;
    color: #299B63;
}

/* charts starts here */

.charts{
    display: grid;
    grid-template-columns: 2fr 1fr;
    grid-gap: 20px;
    padding: 20px;
    padding-top: 0;

}
.chart{
    background-color: #fff;
    padding: 20px;
    border-radius: 10px;
    box-shadow: 0 7px 25px 0 rgba(0,0,0,0.08);
    width: 100%;
}
.chart h2{
    margin-bottom: 5px;
    font-size: 20px;
    color: #666;
    text-align: center;
}
/* Responsive starts here */

@media (max-width:1115px) {
    .sidebar{
        width: 60px;
    }    
    .main{
        left: 60px;
        width: calc(100% - 60px);

    }
}
@media (max-width:880px) {
    .cards{
        
        grid-template-columns: repeat(2,1fr);
       
    }
    .charts{
      
        grid-template-columns: 1fr;
     
    }
    #doughnut-chart{
        padding: 50px;

    }
    #doughnut{
        padding: 50px;
    }
}
@media (max-width:500px){
    .topbar{
        grid-template-columns: 1fr 5fr 0.4fr 1fr;
    }
    .cards{
        grid-template-columns: 1fr;
    }
    .logo h2{
        font-size: 20px;
    }
    .search{
        width: 80%;
    }
    .search input{
        padding: 0 20px;
    }
    .fa-bell{
        margin-right: 5px;
    }
    .user{
        width: 40px;
        height: 40px;
    }
    #doughnut-chart{
        padding: 10px;
    }
    #doughnut{
        padding: 0;
    }
}

        </style>
    </head>
    <body>
        <div class="container-fluid mt-1">
                 <jsp:include page="header.jsp"/>
            <div class="row">
                <div class="col-sm-12"style="min-height: 600px;">

                    
        <div class="topbar">
<!--            <div class="logo">
                <h2>Brand</h2>
            </div>
            <div class="search">
                <input type="text"id="search"placeholder="search here">
                <label for="search"><i class="fas fa-search"></i></label>
            </div>
            <i class="fas fa-bell"></i> 
            <div class="user">
                <img src="../images/brijesh.png"alt="">
            </div>
        </div>-->
        <div class="sidebar">
            <ul>
                <li>
                    <a href="#">
                        <i class="fas fa-th-large"></i>
                        <div>Dashborad</div>
                    </a>
                </li>
                <li>
                    <a href="#">
                        <i class="fas fa-user-graduate"></i>
                        <div>Costumer</div>
                    </a>
                </li>
                <li>
                    <a href="#">
                        <i class="fas fa-chalkboard"></i>
                        <div>Capacity</div>
                    </a>
                </li>
                <li>
                    <a href="#">
                        <i class="fas fa-users"></i>
                        <div>Employees</div>
                    </a>
                </li>
                <li>
                    <a href="#">
                        <i class="fas fa-hand-holding-usd"></i>
                        <div>Earning</div>
                    </a>
                </li>
                   <li>
                    <a href="#">
                        <i class="fas fa-envelope"></i>
                        <div>Application</div>
                    </a>
                </li>
                   <li>
                    <a href="#">
                        <i class="fas fa-envelope"></i>
                        <div>Application</div>
                    </a>
                </li>
                   <li>
                    <a href="#">
                        <i class="fas fa-location-dot"></i>
                        <div>Location</div>
                    </a>
                </li>
                <li>
                    <a href="#">
                        <i class="fas fa-cog"></i>
                        <div>Settings</div>
                    </a>
                </li>
                <li>
                    <a href="#">
                        <i class="fas fa-question"></i>
                        <div>Help</div>
                    </a>
                </li>
            </ul>
        </div>
        <div class="main">
            <div class="cards">
                <div class="card">
                    <div class="card-content">
                        <div class="number">1217</div>
                        <div class="card-name">Costumers</div>
                    </div>
                    <div class="icon-box">
                        <i class="fas fa-user-graduate"></i>
                    </div>
                </div>
                <div class="card">
                    <div class="card-content">
                        <div class="number">126</div>
                        <div class="card-name">capacity</div>
                    </div>
                    <div class="icon-box">
                        <i class="fas fa-chalkboard"></i>
                    </div>
                </div>
                <div class="card">
                    <div class="card-content">
                        <div class="number">40</div>
                        <div class="card-name">Employees</div>
                    </div>
                    <div class="icon-box">
                        <i class="fas fa-users"></i>
                    </div>
                </div>
                <div class="card">
                    <div class="card-content">
                        <div class="number">$4500</div>
                        <div class="card-name">Earning</div>
                    </div>
                    <div class="icon-box">
                        <i class="fas fa-dollar-sign"></i>
                    </div>
                </div>
                </div>
                <div class="charts">
                    <div class="chart">
                        <h2>Earnings(Past 12 months)</h2>
                        <canvas id="linechart"></canvas>
                    </div>
                    <div class="chart"id="doughnut-chart">
                        <h2>Employees</h2>
                        <canvas id="doughnut"></canvas>
                    </div>
                </div>
            
        </div>
    </div>
    <script src="https://cdn.jsdelivr.net/npm/chart.js@4.4.0/dist/chart.umd.min.js"></script>
    <script src="../js/chart1.js"></script>
    <script src="../js/chart2.js"></script>

    
           
        <div class="row" style="font-family: calbari;margin-top: 50%;">
                <div class="col-sm-6"style="min-height: 40px;background-color: activecaption;color:white;font-size: 20px;text-align: center;line-height: 40px;">
                    Copyright&copy; Farmer Merchant Integration
                </div>
                <div class="col-sm-6"style="min-height: 40px;background-color: activecaption;color:white;font-size: 20px;text-align: center;line-height: 40px;">
                    Developed by - <u><i>Brijesh Kumar(Software Engineer)</i></u>
                </div>
            </div>
        </div>
    </body>
</html>
<%}%>