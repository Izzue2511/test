<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
    <title> Staff Approve Booking </title>
    <link rel="stylesheet" href="approveBooking.css">
    <link href='https://unpkg.com/boxicons@2.0.7/css/boxicons.min.css' rel='stylesheet'>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.2/css/all.min.css"/>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css" />
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
     <meta name="viewport" content="width=device-width, initial-scale=1.0">
</head>
<body>
<sql:setDataSource
        var="ic"
        driver="org.postgresql.Driver"
        url="jdbc:postgresql://ec2-52-72-56-59.compute-1.amazonaws.com:5432/d274lnoegak379"
        user="dnzxqagexabepj"
        password="edb330e6fe55ed3bb6d1ee1eb3c1f995e6b205eb5d464bee634abc3345b2d294"/>

<sql:query dataSource="${ic}" var="oc">
  SELECT * from space
</sql:query>

  <div class="sidebar">
    <div class="logo-details">
      <img src="logoWhite.png">
    </div>
      <ul class="nav-links">
        <li>
          <a class="main-menu" href="homepageStaff.jsp">
            <i class='bx bx-home'></i>
            <span class="links_name">LAMAN UTAMA</span>
          </a>
        </li>

        <li>
          <a class="main-menu" href="staffViewSpace.jsp">
            <i class='bx bx-box' ></i>
            <span class="links_name">RUANG</span>
          </a>
          <!--ul class="sub-menu">
            <li><a href="createRoom.jsp">CIPTA INFO BILIK</a></li>
            <li><a href="createHall.jsp">CIPTA INFO DEWAN</a></li>
          </ul-->
        </li>

        <li>
          <a class="main-menu" href="#">
            <i class='bx bx-bookmark'></i>
            <span class="links_name">TEMPAHAN</span>
          </a>
          <ul class="sub-menu">
            <li><a href="staffViewBooking.jsp">LIHAT TEMPAHAN</a></li>
            <li><a href="staffApproveBooking.jsp">PENGESAHAN TEMPAHAN</a></li>
          </ul>
        </li>

       <li>
          <a class="main-menu" href="staffViewAccount.jsp">
            <i class='bx bx-user'></i>
            <span class="links_name">AKAUN</span>
          </a>
        </li>
        
        <li class="log_out">
          <a class="main-menu" href="index.jsp">
            <i class='bx bx-log-out'></i>
            <span class="links_name">LOG KELUAR</span>
          </a>
        </li>
     </ul>
  </div>

<section class="home-section">
    <nav>
      <div class="sidebar-button">
        <span class="dashboard">SURAU AR-RAHMAN BANDAR PUCHONG JAYA</span>
      </div>
        <div class="media_icons">
          <a href="https://www.facebook.com/sarpuchongjaya/"><i class="fab fa-facebook-f"></i></a>
          <a href="https://www.instagram.com.surau_ar_rahman_pchg"><i class="fab fa-instagram"></i></a>
        </div>
    </nav>
  <div class="home-content">
    <div class="table">
    <div class="table_header">
      <header class="main_title" style="font-size: xx-large">SENARAI TEMPAHAN</header>
    </div>
      	  <table class="container">
           <tr>
             <th>NO.TEMPAHAN</th>
             <th>NAMA RUANG</th>
             <th>TARIKH TEMPAHAN</th>
             <th>TARIKH AKTIVITI</th>
             <th>PERINCIAN AKTIVITI</th>
             <th>TINDAKAN</th>
           </tr>
            <tr>
             <td>1</td>
             <td>Dewan 1</td>
             <td>23/4/2022</td>
             <td>27/4/2022</td>
             <td>Majlis Akad Nikah</td>
             <td>
             	<button><i class="fa-solid fa-check"></i></button>
             	<button><i class="fa-solid fa-xmark"></i></button>
             </td>
           </tr>
         </table>
  	</div>
  </div>
</section>
</body>
</html>