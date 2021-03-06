<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Furama resort</title>
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="css/mdb.min.css">
    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.15.3/css/all.css" integrity="sha384-SZXxX4whJ79/gErwcOYf+zWLeJdY/qpuqC4cAa9rOGUstPomtqpuNWT9wdPEn2fk" crossorigin="anonymous">
</head>
<body>

<!--Main nav-->
<header>
    <!-- Navbar -->
    <nav id="bg-nav" class="navbar navbar-expand-lg navbar-light bg-light fixed-top">
        <!-- Container wrapper -->
        <div class="container-fluid">
            <!-- Navbar brand -->
            <a class="navbar-brand" href="home.jsp">
                <img src="img/logo.png" alt="">
            </a>

            <!-- Toggle button -->
            <button
                    class="navbar-toggler"
                    type="button"
                    data-mdb-toggle="collapse"
                    data-mdb-target="#navbarSupportedContent"
                    aria-controls="navbarSupportedContent"
                    aria-expanded="false"
                    aria-label="Toggle navigation"
            >
                <i class="fas fa-bars"></i>
            </button>

            <!-- Collapsible wrapper -->
            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <!-- Left links -->
                <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                    <li class="nav-item">
                        <a class="nav-link active" aria-current="page" href="home.jsp">Home</a>
                    </li>
                    <!-- Navbar dropdown -->
                    <c:if test="${sessionScope.account.isManager == 1}">
                        <li class="nav-item dropdown">
                            <a
                                    class="nav-link dropdown-toggle"
                                    href="#"
                                    id="navbarDropdownEmployee"
                                    role="button"
                                    data-mdb-toggle="dropdown"
                                    aria-expanded="false"
                            >
                                Employee
                            </a>
                            <!-- Dropdown menu -->
                            <ul class="dropdown-menu" aria-labelledby="navbarDropdownEmployee">
                                <li><a class="dropdown-item" href="/employee?actionUser=addNewEmployee">Add new employee</a></li>
                                <li><a class="dropdown-item" href="/employee?actionUser=displayEmployee">Display employee</a></li>
                            </ul>
                        </li>
                    </c:if>
                    <li class="nav-item dropdown">
                        <a
                                class="nav-link dropdown-toggle"
                                href="#"
                                id="navbarDropdownCus"
                                role="button"
                                data-mdb-toggle="dropdown"
                                aria-expanded="false"
                        >
                            Customer
                        </a>
                        <!-- Dropdown menu -->
                        <ul class="dropdown-menu" aria-labelledby="navbarDropdownCus">
                            <li><a class="dropdown-item" href="/customer?actionUser=addNewCustomer">Add new customer</a></li>
                            <li><a class="dropdown-item" href="/customer?actionUser=displayCustomer">Display customer</a></li>
                        </ul>
                    </li>
                    <li class="nav-item dropdown">
                        <a
                                class="nav-link dropdown-toggle"
                                href="#"
                                id="navbarDropdownServices"
                                role="button"
                                data-mdb-toggle="dropdown"
                                aria-expanded="false"
                        >
                            Service
                        </a>
                        <!-- Dropdown menu -->
                        <ul class="dropdown-menu" aria-labelledby="navbarDropdownServices">
                            <li><a class="dropdown-item" href="/service?actionUser=addNewService">Add new service</a></li>
                            <li><a class="dropdown-item" href="/service?actionUser=displayService&index=1">Display service</a></li>
                        </ul>
                    </li>
                    <li class="nav-item dropdown">
                        <a
                                class="nav-link dropdown-toggle"
                                href="#"
                                id="navbarDropdownContract"
                                role="button"
                                data-mdb-toggle="dropdown"
                                aria-expanded="false"
                        >
                            Contract
                        </a>
                        <!-- Dropdown menu -->
                        <ul class="dropdown-menu" aria-labelledby="navbarDropdownContract">
                            <li><a class="dropdown-item" href="/contract?actionUser=addNewContract">Add new contract</a></li>
                            <li><a class="dropdown-item" href="/contract?actionUser=addNewContractDetail">Add new contract detail</a></li>
                            <li><a class="dropdown-item" href="/contract?actionUser=display">Display contract
                                detail</a></li>
                        </ul>
                    </li>
                </ul>
                <!-- Left links -->
                <!-- Search form -->
                <form class="d-flex input-group w-auto">
                    <input
                            type="search"
                            class="form-control btn-rounded"
                            placeholder="Search..."
                            aria-label="Search"
                    />
                    <button
                            class="btn btn-outline-primary border"
                            type="button"
                            data-mdb-ripple-color="dark"
                    >
                        <i class="fas fa-search"></i>
                    </button>
                </form>
                <a class="nav-link" href="/login?actionUser=logOut" data-mdb-toggle="tooltip" data-bs-placement="bottom" title="Log out ${sessionScope.account.userName}">
                    Log out
                </a>
            </div>
            <!-- Collapsible wrapper -->
        </div>
        <!-- Container wrapper -->
    </nav>
    <!-- Navbar -->

    <!--Mask-->
    <div id="intro" class="view ">
        <div class="mask container-fluid d-flex justify-content-center align-items-center full-bg-img" style="background-color: rgba(0, 0, 0, 0.6)">
            <div class="row d-flex justify-content-center">
                <div class="col-1-lg"></div>
                <div class="col-10-lg text-center mt-lg-5">
                    <h2 class="display-5 font-weight-bold text-white justify-content-center">
                        <strong>Furama Resort</strong>
                        <br>
                        <strong>Da Nang</strong>
                    </h2>
                    <hr class="my-4 text-white">
                    <h4 class="text-white my-4">
                        <strong>KHU NGH??? D?????NG ???M TH???C </strong><br>
                        <strong>T???A L???C T???I B??I BI???N ???? N???NG </strong><br>
                        <strong>M???T TRONG 6 B??I BI???N ?????P NH???T TH??? GI???I<br>
                        </strong>
                    </h4>
                    <a href="#">
                        <button type="button" class="btn btn-outline-white">
                            Booking
                        </button>
                    </a>
                </div>
            </div>
        </div>
    </div>
    <!--Mask-->
</header>
<!--Main nav-->

<!--Main layout-->
<div class="mt-lg-5">
    <div class="container">
        <!--main introduce-->
        <div class="row">
            <div class="col-lg-4">
                <h3 class="justify-content-center text-warning font-weight-bold">
                    KHU NGH??? D?????NG ?????NG C???P TH??? GI???I, FURAMA ???? N???NG, N???I TI???NG L?? KHU NGH??? D?????NG ???M TH???C T???I VI???T NAM.
                </h3>
            </div>
            <div class="col-lg-4">
                <a href="#" data-toggle="modal" data-target=".bd-example-modal-lg">
                    <img class="w-100" src="img/Vietnam_Danang_Furama_Resort_Exterior_Beach.jpg" alt=""/>
                    <div class="justify-content-center icon-play">
                        <svg xmlns="http://www.w3.org/2000/svg" width="50" height="50" fill="currentColor" class="bi bi-play-circle" viewBox="0 0 16 16">
                            <path d="M8 15A7 7 0 1 1 8 1a7 7 0 0 1 0 14zm0 1A8 8 0 1 0 8 0a8 8 0 0 0 0 16z"/>
                            <path d="M6.271 5.055a.5.5 0 0 1 .52.038l3.5 2.5a.5.5 0 0 1 0 .814l-3.5 2.5A.5.5 0 0 1 6 10.5v-5a.5.5 0 0 1 .271-.445z"/>
                        </svg>
                    </div>
                </a>
                <div class="modal fade bd-example-modal-lg" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
                    <div class="modal-dialog modal-lg">
                        <div class="modal-content">
                            <iframe width="900" height="506" src="https://www.youtube.com/embed/IjlT_4mvd-c" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-4">
                <p class="text-justify">H?????ng ra b??i bi???n ???? N???ng tr???i d??i c??t tr???ng, Furama Resort ???? N???ng l?? c???a ng?? ?????n v???i 3 di s???n v??n ho?? th??? gi???i: H???i An (20 ph??t), M??? S??n (90 ph??t) v?? Hu??? (2 ti???ng. 196 ph??ng h???ng sang c??ng v???i 70 c??n bi???t th??? t??? hai ?????n b???n ph??ng ng??? c?? h??? b??i ri??ng ?????u ???????c trang tr?? trang nh??, theo phong c??ch thi???t k??? truy???n th???ng c???a Vi???t Nam v?? ki???n tr??c thu???c ?????a c???a Ph??p, bi???n Furama th??nh khu ngh??? d?????ng danh gi?? nh???t t???i Vi???t Nam ??? vinh d??? ???????c ????n ti???p nhi???u ng?????i n???i ti???ng, gi???i ho??ng gia, ch??nh kh??ch, ng??i sao ??i???n ???nh v?? c??c nh?? l??nh ?????o kinh doanh qu???c t???.

                </p>
            </div>
        </div>
        <!--main introduce-->
        <!--            introduce services-->
        <div class="row justify-content-center text-center mt-lg-5">
            <div class="col-lg-2"></div>
            <div class="col-lg-8">
                <h3 class="text-warning">
                    <strong>C??C LO???I PH??NG</strong>
                </h3>
                <p>
                    Khu ngh??? d?????ng c?? 196 ph??ng ???????c thi???t k??? theo phong c??ch truy???n th???ng Vi???t Nam k???t h???p v???i phong c??ch Ph??p, 2 t??a nh?? 4 t???ng c?? h?????ng nh??n ra bi???n, nh??n ra h??? b??i trong xanh v?? nh???ng khu v?????n nhi???t ?????i xanh t????i m??t. Ngo??i ra, khu ngh??? d?????ng Furama c??n cung c???p ca??c li????u ph??p spa, ph??ng x??ng h??i ??????t, ph??ng x??ng h??i kh??, di??ch vu?? ma??t-xa ca??nh h???? b??i, c??c d???ch v??? th??? thao d?????i n?????c v?? ca??c l????p t????p yoga v?? Tha??i C????c Quy????n tr??n b??i bi???n.
                </p>
            </div>
            <div class="col-lg-2"></div>
        </div>
        <div class="row mt-lg-3">
            <div class="col-lg-12 text-center">
                <a class="nav-link text-center" href="#">VIEW ALL ROOMS</a>
            </div>
        </div>
        <div class="row">
            <div class="col-lg-2"></div>
            <div class="col-lg-8">
                <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
                    <ol class="carousel-indicators">
                        <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
                        <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
                        <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
                    </ol>
                    <div class="carousel-inner">
                        <div class="carousel-item active">
                            <img class="d-block w-100" src="img/Vietnam_Danang_Furama_Garden-Deluxe-twin-bed-F-370x239.jpg" alt="First slide">
                            <div class="carousel-caption d-none d-md-block">
                                <h5>PH??NG DULEX H?????NG V?????N</h5>
                                <p>Di???n T??ch Ph??ng: 43.7 m??t vu??ng</p>
                                <a href="#">
                                    <button type="button" class="btn btn-outline-primary">?????T PH??NG</button>
                                </a>
                            </div>
                        </div>
                        <div class="carousel-item">
                            <img class="d-block w-100" src="img/Vietnam_Danang_Furama_Ocean-Studio-Suite-F-370x239.jpg" alt="Second slide">
                            <div class="carousel-caption d-none d-md-block">
                                <h5>PH??NG DULEX H?????NG BI???N</h5>
                                <p>Di???n T??ch Ph??ng: 43.7 m??t vu??ng</p>
                                <a href="#">
                                    <button type="button" class="btn btn-outline-primary">?????T PH??NG</button>
                                </a>
                            </div>
                        </div>
                        <div class="carousel-item">
                            <img class="d-block w-100" src="img/Vietnam_Danang_Furama_Ocean-Suite-Feature-370x239.jpg" alt="Third slide">
                            <div class="carousel-caption d-none d-md-block">
                                <h5>PH??NG DULEX H?????NG V?????N C?? H??? B??I RI??NG</h5>
                                <p>Di???n T??ch Ph??ng: 43.7 m??t vu??ng</p>
                                <a href="#">
                                    <button type="button" class="btn btn-outline-primary">?????T PH??NG</button>
                                </a>
                            </div>
                        </div>
                    </div>
                    <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
                        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                        <span class="sr-only">Previous</span>
                    </a>
                    <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
                        <span class="carousel-control-next-icon" aria-hidden="true"></span>
                        <span class="sr-only">Next</span>
                    </a>
                </div>
                <div class="col-lg-2"></div>
            </div>
        </div>
        <div class="row mt-lg-3 text-center">
            <div class="col-lg-2"></div>
            <div class="col-lg-8">
                <h3 class="text-warning">
                    <strong>TR???I NGHI???M ???M TH???C & GI???I TR??</strong>
                </h3>
                <p>Khu ngh??? d?????ng Furama ???? N???ng l?? m???t khu ngh??? d?????ng 5 sao sang tr???ng, c?? uy t??n v?? ???????c xem l?? m???t trong nh???ng bi???u t?????ng c???a ng??nh du l???ch Vi???t Nam.</p>
            </div>
            <div class="col-lg-2"></div>
        </div>
        <div class="row mt-lg-5">
            <div class="col-lg-12">
                <div id="carouselExampleControls" class="carousel slide" data-ride="carousel">
                    <div class="carousel-inner">
                        <div class="carousel-item active">
                            <img class="d-block w-100" src="img/am-thuc.jpg" alt="First slide" style="filter: blur(2px) brightness(50%)">
                            <div class="carousel-caption d-none d-md-block text-center">
                                <h3 class="text-warning">???M TH???C</h3>
                                <p>Tr???i nghi???m ???m th???c t???i Khu ngh??? c?? s??? pha tr???n ?????c ????o c??c m??n ??n truy???n th???ng Vi???t Nam v???i nhi???u nh???ng h????ng v??? ???m th???c ch??u ??, ?? v?? ch??u ??u c??ng c??c m??n b?? nh???p kh???u th?????ng h???ng t???i ??a d???ng c??c nh?? h??ng, qu???y bar ?????ng c???p ???????c bao quanh b???i m???t khu v?????n nhi???t ?????i hay h?????ng m??nh ra bi???n, ????n nh???ng h??i th??? m??t m??? th???i v??? t??? bi???n ????ng. .</p>
                                <a href="#">
                                    <button type="button" class="btn btn-outline-light">KH??M PH?? NGAY</button>
                                </a>
                            </div>
                        </div>
                        <div class="carousel-item">
                            <img class="d-block w-100" src="img/giai-tri.jpg" alt="Second slide" style="filter: blur(2px) brightness(50%)">
                            <div class="carousel-caption d-none d-md-block text-center">
                                <h3 class="text-warning">GI???I TR??</h3>
                                <P>Bi???n k??? ngh??? d?????ng n??ng ?????ng h??n b???ng c??ch tham gia c??c ho???t ?????ng th??? thao tr??n n?????c t??? ch??o thuy???n catamaran, l?????t v??n bu???m, ch??o thuy???n tr??n bi???n, l?????t v??t, ??i xe ?????p n?????c, tr?????t n?????c, l?????t v??n, chu???i, d?? l?????n v?? ??a d???ng c??c ho???t ?????ng.</P>
                                <a href="#">
                                    <button type="button" class="btn btn-outline-light">KH??M PH?? NGAY</button>
                                </a>
                            </div>
                        </div>
                        <div class="carousel-item">
                            <img class="d-block w-100" src="img/hoi-nghi.jpg" alt="Third slide" style="filter: blur(2px) brightness(50%)">
                            <div class="carousel-caption d-none d-md-block text-center">
                                <h3 class="text-warning">S??? KI???N</h3>
                                <p>Cung h???i ngh??? Qu???c t??? International Convention Palace (ICP) v???i ph??ng H???i ngh??? l???n s???c ch???a l??n t???i 1000 kh??ch c??ng h??n 10 ph??ng ch???c n??ng ph??? tr??? quy m?? t??? 50 ?????n 300 kh??ch ???????c trang b??? c?? s??? v???t ch???t, thi???t b??? hi???n ?????i, l?? ?????a ??i???m l?? t?????ng d??nh cho c??c ??o??n MICE t??? ch???c h???i ngh???, h???i th???o v?? s??? ki???n.</p>
                                <a href="#">
                                    <button type="button" class="btn btn-outline-light">KH??M PH?? NGAY</button>
                                </a>
                            </div>
                        </div>
                    </div>
                    <a class="carousel-control-prev" href="#carouselExampleControls" role="button" data-slide="prev">
                        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                        <span class="sr-only">Previous</span>
                    </a>
                    <a class="carousel-control-next" href="#carouselExampleControls" role="button" data-slide="next">
                        <span class="carousel-control-next-icon" aria-hidden="true"></span>
                        <span class="sr-only">Next</span>
                    </a>
                </div>
            </div>
        </div>
        <!--            introduce services-->
    </div>
</div>

<!--Main layout-->
<!--footer-->
<div class="container-fluid mt-lg-5" style="background-color: #8e8b8b">
    <div class="row">
        <div class="col-lg-4">
            <h3 class="text-white mt-lg-5">B???N ?????</h3>
            <iframe class="w-100 h-75" src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3834.50245898014!2d108.24769741416945!3d16.039395344498725!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x31420fdbc8cc38ef%3A0x9a6a3e31121225d2!2sFurama%20Resort%20Danang!5e0!3m2!1svi!2s!4v1619427748449!5m2!1svi!2s" style="border:0;" allowfullscreen="" loading="lazy"></iframe>
        </div>

        <div class="col-lg-4"></div>
        <div class="col-lg-4">
            <h3 class="text-white mt-lg-5">Li??n h???</h3>
            <p>105 V?? Nguy??n Gi??p, Ng?? H??nh S??n, ???? N???ng, Vi???t Nam</p>
            <p>Tel.: 84-236-3847 333/888 * Fax: 84-236-3847 666</p>
            <p>Email: reservation@furamavietnam.com * www.furamavietnam.com</p>
            <img src="img/world-hotel-F-new.png" class="w-100"/>
            <p>GDS-Codes: Amadeus-WWDADFUR, Apollo/Galileo-WW16236, SabreWW32771, Worldspan-WWDADFU</p>
        </div>
    </div>
    <div class="row text-center">
        <div class="col-lg-12">
            <p>?? 2018 Furama Resort Danang.</p>
        </div>
    </div>
</div>
<!--footer-->
<!--js-->
<script src="js/jquery-3.6.0.min.js "></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/mdb.min.js"></script>
<!--js-->
</body>
</html>
