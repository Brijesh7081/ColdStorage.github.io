           <%@page import="java.sql.ResultSet"%>
<%@page import="dbpack.DbManager"%>
<div class="row bg-success text-light"style="height: 28px;">
               <div class="col-sm-4"><ul class="smi"><li><i class="fa-solid fa-phone"></i></li>Helpline No : +91-7081768719</ul></div>
               <div class="col-sm-4"><ul class="smi"><li><i class="fa-solid fa-envelope"></i></li>Email Id : bk1188851@gmail.com</ul></div>
                <div class="col-sm-4 ">
                    <ul class="smi text-light">Follow Us :
                        <a href="http://surl.li/lzvbs"target="_blank"><li><i class="fa-brands fa-whatsapp"></i></li></a>
                        <a href="https://shorturl.at/hLMOQ"target="_blank"><li><i class="fa-brands fa-instagram"></i></li></a>
                        <a href="https://shorturl.at/qzX59"target="_blank"><li><i class="fa-brands fa-facebook"></i></li></a>
                        <a href="https://shorturl.at/dotI8"target="_blank"><li><i class="fa-brands fa-twitter"></i></li></a>
                    <a href="https://t.me/Brijeshbauddh7081"target="_blank"><li><i class="fa-brands fa-telegram"></i></li></a>
                    <a href="https://shorturl.at/gnqwV"target="_blank"><li><i class="fa-brands fa-youtube"></i></li></a>
                    </ul>
                </div>
            </div>
            <div class="row mt-1">
                <nav class="navbar navbar-expand-lg bg-success sticky"id="menu">
  <div class="container-fluid">
      <a class="navbar-brand" href="#">
          <img src="images/logo_2.jpg"style="height:22px;width:100px; overflow: hidden;border-radius: 50%;"/>
      </a>
    <button class="navbar-toggler bg-secondary" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
        <li class="nav-item">
          <a class="nav-link " aria-current="page" href="index.jsp">Home</a>
        </li>
        <li class="nav-item">
          <a class="nav-link " href="aboutus.jsp">About Us</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="registration.jsp">Registration</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="login.jsp">Admin Login</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="contactus.jsp">Contact Us</a>
        </li>
          <li class="nav-item">
          <a class="nav-link" href="translate.jsp">Translate</a>
        </li>
      </ul>
      <form class="d-flex" role="search">
        <input class="form-control me-3" type="search" placeholder="Search" aria-label="Search">
        <button class="btn btn-dark text-light" type="submit">Search</button>
      </form>
    </div>
  </div>
</nav>
            </div>
<div class="row mt-1 bg-info text-dark"style="border:1px solid lightblue;height: 35px;">
    <marquee onmouseover="stop();"onmouseout="start()">
    <ul style="list-style-type: none;">
        <%
            DbManager dm=new DbManager();
            ResultSet rs=dm.select("select * from news");
            while(rs.next())
            { 
        %>
        <li style="display: inline;padding: 20px;font-size: 20px;font-style: bold;"><%=rs.getString("newstext")%></li>
        
        <%}%>
    </ul>
    </marquee>
</div>
            <div class="row mt-1">
               <div id="carouselExampleAutoplaying" class="carousel slide" data-bs-ride="carousel">
  <div class="carousel-inner">
    <div class="carousel-item active">
        <img src="images/slider_1.jpg" class="d-block w-100" alt="...">
    </div>
    <div class="carousel-item">
        <img src="images/slider_2.jpg" class="d-block w-100" alt="...">
    </div>
    <div class="carousel-item">
        <img src="images/slider_3.png" class="d-block w-100" alt="...">
    </div>
      <div class="carousel-item">
          <img src="images/slider_4.jpg" class="d-block w-100" alt="...">
    </div>
      <div class="carousel-item">
          <img src="images/slider_5.jpg" class="d-block w-100" alt="...">
    </div>
       <div class="carousel-item">
          <img src="images/slider_6.jpg" class="d-block w-100" alt="...">
    </div>
       <div class="carousel-item">
          <img src="images/slider_7.jpg" class="d-block w-100" alt="...">
    </div>
  </div>
  <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleAutoplaying" data-bs-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Previous</span>
  </button>
  <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleAutoplaying" data-bs-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Next</span>
  </button>
</div>
</div>
            