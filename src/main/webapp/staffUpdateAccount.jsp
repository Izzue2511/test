<%--
  Created by IntelliJ IDEA.
  User: HP
  Date: 9/7/2022
  Time: 11:14 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<!DOCTYPE html>
<html lang="en" dir="ltr">
<head>
    <meta charset="UTF-8">
    <title> Update Staff Form </title>
    <link rel="stylesheet" href="accountHandler.css">
    <link href='https://unpkg.com/boxicons@2.0.7/css/boxicons.min.css' rel='stylesheet'>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.2/css/all.min.css"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
</head>
<body>
<sql:setDataSource
        var="ic"
        driver="oracle.jdbc.OracleDriver"
        url="jdbc:oracle:thin:@localhost:1521:XE"
        user="ibooking"
        password="system"/>

<sql:query dataSource="${ic}" var="oc">
    <%
        int jstaffid = 0;

        if(request.getParameter("staffid")==null){
            jstaffid = (Integer) session.getAttribute("staffid");
        }
        else{
            jstaffid = Integer.parseInt(request.getParameter("staffid"));
            session.setAttribute("staffid", jstaffid);
        }
    %>
    <c:set var="jstaffid" value="<%=jstaffid%>"/>
    SELECT * FROM staff WHERE staffid=?
    <sql:param value="${jstaffid}" />
</sql:query>
<div class="sidebar">
    <div class="logo-details">
        <img src="logoWhite.png">
    </div>
    <ul class="nav-links">
        <li>
            <a class="main-menu" href="#">
                <i class='bx bx-home'></i>
                <span class="links_name">LAMAN UTAMA</span>
            </a>
        </li>

        <li>
            <a class="main-menu" href="viewSpace.jsp">
                <i class='bx bx-box' ></i>
                <span class="links_name">RUANGAN</span>
            </a>
        </li>

        <li>
            <a class="main-menu" href="#">
                <i class='bx bx-bookmark'></i>
                <span class="links_name">TEMPAHAN</span>
            </a>
            <ul class="sub-menu">
                <li><a href="#">TEMPAH RUANG</a></li>
                <li><a href="#">LIHAT TEMPAHAN</a></li>
                <li><a href="#">PADAM TEMPAHAN</a></li>
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
            <a href="https://www.instagram.com/surau_ar_rahman_pchg/"><i class="fab fa-instagram"></i></a>
        </div>
    </nav>
    <c:forEach var="staff" items="${oc.rows}">
        <div class="home-content">
            <div class="container-staff">
                <div class="rightbox">
                    <form action="" method="POST">
                        <div class="profile tabShow">
                            <h1>MAKLUMAT STAF</h1>
                            <input type="hidden" name="staffid" value="${staff.staffid}"/>
                            <h2>Nama Penuh</h2>
                            <input type="text" class="input"  name="staffname" value = "${staff.staffname}">
                            <h2>Kad Pengenalan</h2>
                            <input type="text" class="input" name="staffic" value = "${staff.staffic}">
                            <h2>Tarikh Lahir</h2>
                            <input type="date" class="input" name="staffdateofbirth" value ="${staff.staffdateofbirth}">
                            <h2>Alamat</h2>
                            <input type="text" class="input" name="staffaddress" value = "${staff.staffaddress}">
                            <h2>Email</h2>
                            <input type="text" class="input" name="staffemail" value = "${staff.staffemail}">
                            <h2>Nombor Telefon</h2>
                            <input type="text" class="input" name="staffphone" value = "${staff.staffphone}">
                            <h2>Jawatan</h2>
                            <input type="text" class="input" name="staffrole" value = "${staff.staffrole}">
                            <h2>ID Penyelia</h2>
                            <input type="text" class="input" name="supervisorid" value = "${staff.supervisorid}">
                            <h2>Nombor Staf</h2>
                            <input type="text" class="input" name="staffusername" value = "${staff.staffusername}">
                            <h2>Kata Laluan</h2>
                            <input type="password" class="input" name="staffpassword" value = "${staff.staffpassword}">

                            <input type="hidden" name="action" value="updateStaff">

                            <a href="staffViewAccount.jsp"><button class="btn update">Simpan</button></a>
                            <a href="staffViewAccount.jsp"><button class="btn cancel">Batal</button></a>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </c:forEach>
</section>
</body>
</html>

