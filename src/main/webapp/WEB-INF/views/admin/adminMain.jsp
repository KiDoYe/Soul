<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <%@ taglib tagdir="/WEB-INF/tags" prefix="chalKagTags" %>
        <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
            <!doctype html>
            <html class="no-js" lang="">

            <head>
                <script src="https://code.jquery.com/jquery-3.7.1.min.js"></script>
                <meta charset="utf-8">
                <meta http-equiv="X-UA-Compatible" content="IE=edge">
                <title>Ela Admin - HTML5 Admin Template</title>
                <meta name="description" content="Ela Admin - HTML5 Admin Template">
                <meta name="viewport" content="width=device-width, initial-scale=1">

                <link rel="apple-touch-icon" href="https://i.imgur.com/QRAUqs9.png">
                <link rel="shortcut icon" href="https://i.imgur.com/QRAUqs9.png">

                <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/normalize.css@8.0.0/normalize.min.css">
                <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.1.3/dist/css/bootstrap.min.css">
                <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/font-awesome@4.7.0/css/font-awesome.min.css">
                <link rel="stylesheet"
                    href="https://cdn.jsdelivr.net/gh/lykmapipo/themify-icons@0.1.2/css/themify-icons.css">
                <link rel="stylesheet"
                    href="https://cdn.jsdelivr.net/npm/pixeden-stroke-7-icon@1.2.3/pe-icon-7-stroke/dist/pe-icon-7-stroke.min.css">
                <link rel="stylesheet"
                    href="https://cdnjs.cloudflare.com/ajax/libs/flag-icon-css/3.2.0/css/flag-icon.min.css">
                <link rel="stylesheet" href="css/admin/assets/css/cs-skin-elastic.css">
                <link rel="stylesheet" href="css/admin/assets/css/style.css">
                <!-- <script type="text/javascript" src="https://cdn.jsdelivr.net/html5shiv/3.7.3/html5shiv.min.js"></script> -->
                <link href="https://cdn.jsdelivr.net/npm/chartist@0.11.0/dist/chartist.min.css" rel="stylesheet">
                <link href="https://cdn.jsdelivr.net/npm/jqvmap@1.5.1/dist/jqvmap.min.css" rel="stylesheet">

                <link href="https://cdn.jsdelivr.net/npm/weathericons@2.1.0/css/weather-icons.css" rel="stylesheet" />
                <link href="https://cdn.jsdelivr.net/npm/fullcalendar@3.9.0/dist/fullcalendar.min.css"
                    rel="stylesheet" />


                <style>
                    #weatherWidget .currentDesc {
                        color: #ffffff !important;
                    }

                    .traffic-chart {
                        min-height: 335px;
                    }

                    #flotPie1 {
                        height: 150px;
                    }

                    #flotPie1 td {
                        padding: 3px;
                    }

                    #flotPie1 table {
                        top: 20px !important;
                        right: -10px !important;
                    }

                    .chart-container {
                        display: table;
                        min-width: 270px;
                        text-align: left;
                        padding-top: 10px;
                        padding-bottom: 10px;
                    }

                    #flotLine5 {
                        height: 105px;
                    }

                    #flotBarChart {
                        height: 150px;
                    }

                    #cellPaiChart {
                        height: 160px;
                    }

                    /* tab css */
                    a {
                        text-decoration: none;
                        color: inherit;
                    }

                    a:focus {
                        color: #FFF;
                    }

                    .tab {
                        display: flex;
                        align-items: center;
                        padding: 1rem;
                    }

                    .tab__item {
                        padding: 0.6rem 1.3rem;
                        margin-right: 1rem;
                        border: 1px solid #ddd;
                        border-radius: 0.25rem;
                        cursor: pointer;
                    }

                    .tab__item.active {
                        display: inline-block;
                        border: 1px solid #F73F52;
                        background-color: #F73F52;
                        color: #fff;
                    }

                    .tab__item:hover {
                        border: 1px solid #F73F52;
                    }

                    .tab__item.active a:hover {
                        color: inherit;
                        /* 현재 색상 유지 */
                    }

                    .tab__content-wrapper {
                        padding: 1rem
                    }

                    .tab__content {
                        display: none;
                    }

                    .tab__content.active {
                        display: block;
                    }

                    ul {
                        list-style: none;
                    }

                    /* select 디자인 */
                    select {
                        background-color: #ffffff;
                        color: rgb(0, 0, 0);
                        padding: 10px;
                        width: 200px;
                        border: none;
                        font-size: 16px;
                        border-radius: 5px;
                        margin: 10px;
                        border: 3px solid #F73F52;
                    }

                    /* 텝 그래프간의 간격 조절 */
                    dl,
                    ol,
                    ul {
                        margin-top: 0;
                        margin-bottom: 0rem;
                    }
                    .table th,
    .table td {
        text-align: left; /* 가운데 정렬 */
    }
              
   
</style>                
            </head>

            <body>
                <!-- Left Panel -->
                <aside id="left-panel" class="left-panel">
                    <nav class="navbar navbar-expand-sm navbar-default">
                        <div id="main-menu" class="main-menu collapse navbar-collapse">
                            <ul class="nav navbar-nav">
                                <li class="menu-title">MAIN</li>
                                <li class="active">
                                    <a href="adminMain"><i class="menu-icon fa fa-laptop"></i>Main</a>
                                </li>
                                <li class="menu-title">MANAGEMENT</li><!-- /.menu-title -->
                                <li> <a href="adminProfit"><i class="menu-icon fa fa-signal"></i>Profit</a> </li>
                                <li> <a href="adminReportList"><i class="menu-icon fa fa-warning (alias)"></i>Report</a>
                                </li>
                                <li> <a href="adminTimeOutList"><i class="menu-icon fa fa-ban"></i>TimeOut List</a>
                                </li>
                                <li> <a href="adminWebContent"><i class="menu-icon fa fa-picture-o"></i>Web Content</a>
                                </li>

                                <li class="menu-title">MOVE TO</li>
                                <li>
                                    <a href="main"><i class="menu-icon fa fa-camera-retro"></i>CHALKAG</a>
                                </li>
                            </ul>
                        </div><!-- /.navbar-collapse -->
                    </nav>
                </aside>
                <!-- /#left-panel -->
                <!-- Right Panel -->
                <div id="right-panel" class="right-panel">
                    <!-- Header-->
                    <header id="header" class="header">
                        <div class="top-left">
                            <div class="navbar-header">
                                <a class="navbar-brand" href="adminMain"><img src="css/user/images/chalKagLogo.png"
                                        alt="Logo"></a>
                                <a class="navbar-brand hidden" href="adminMain"><img src="css/admin/images/logo2.png"
                                        alt="Logo"></a>
                                <a id="menuToggle" class="menutoggle"><i class="fa fa-bars"></i></a>
                            </div>
                        </div>
                        <div class="top-right">
                            <div class="header-menu">
                                <div class="header-left">
                                    <button class="search-trigger"><i class="fa fa-search"></i></button>
                                    <div class="form-inline">
                                        <form class="search-form">
                                            <input class="form-control mr-sm-2" type="text" placeholder="Search ..."
                                                aria-label="Search">
                                            <button class="search-close" type="submit"><i
                                                    class="fa fa-close"></i></button>
                                        </form>
                                    </div>

                                    <div class="dropdown for-notification">
                                        <button class="btn btn-secondary dropdown-toggle" type="button"
                                            id="notification" data-toggle="dropdown" aria-haspopup="true"
                                            aria-expanded="false">
                                            <i class="fa fa-bell"></i>
                                            <span class="count bg-danger">3</span>
                                        </button>
                                        <div class="dropdown-menu" aria-labelledby="notification">
                                            <p class="red">You have 3 Notification</p>
                                            <a class="dropdown-item media" href="#">
                                                <i class="fa fa-check"></i>
                                                <p>Server #1 overloaded.</p>
                                            </a>
                                            <a class="dropdown-item media" href="#">
                                                <i class="fa fa-info"></i>
                                                <p>Server #2 overloaded.</p>
                                            </a>
                                            <a class="dropdown-item media" href="#">
                                                <i class="fa fa-warning"></i>
                                                <p>Server #3 overloaded.</p>
                                            </a>
                                        </div>
                                    </div>

                                    <div class="dropdown for-message">
                                        <button class="btn btn-secondary dropdown-toggle" type="button" id="message"
                                            data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                            <i class="fa fa-envelope"></i>
                                            <span class="count bg-primary">4</span>
                                        </button>
                                        <div class="dropdown-menu" aria-labelledby="message">
                                            <p class="red">You have 4 Mails</p>
                                            <a class="dropdown-item media" href="#">
                                                <span class="photo media-left"><img alt="avatar"
                                                        src="css/admin/images/avatar/1.jpg"></span>
                                                <div class="message media-body">
                                                    <span class="name float-left">Jonathan Smith</span>
                                                    <span class="time float-right">Just now</span>
                                                    <p>Hello, this is an example msg</p>
                                                </div>
                                            </a>
                                            <a class="dropdown-item media" href="#">
                                                <span class="photo media-left"><img alt="avatar"
                                                        src="css/admin/images/avatar/2.jpg"></span>
                                                <div class="message media-body">
                                                    <span class="name float-left">Jack Sanders</span>
                                                    <span class="time float-right">5 minutes ago</span>
                                                    <p>Lorem ipsum dolor sit amet, consectetur</p>
                                                </div>
                                            </a>
                                            <a class="dropdown-item media" href="#">
                                                <span class="photo media-left"><img alt="avatar"
                                                        src="css/admin/images/avatar/3.jpg"></span>
                                                <div class="message media-body">
                                                    <span class="name float-left">Cheryl Wheeler</span>
                                                    <span class="time float-right">10 minutes ago</span>
                                                    <p>Hello, this is an example msg</p>
                                                </div>
                                            </a>
                                            <a class="dropdown-item media" href="#">
                                                <span class="photo media-left"><img alt="avatar"
                                                        src="css/admin/images/avatar/4.jpg"></span>
                                                <div class="message media-body">
                                                    <span class="name float-left">Rachel Santos</span>
                                                    <span class="time float-right">15 minutes ago</span>
                                                    <p>Lorem ipsum dolor sit amet, consectetur</p>
                                                </div>
                                            </a>
                                        </div>
                                    </div>
                                </div>

                                <div class="user-area dropdown float-right">
                                    <a href="#" class="dropdown-toggle active" data-toggle="dropdown"
                                        aria-haspopup="true" aria-expanded="false">
                                        <img class="user-avatar rounded-circle" src="css/admin/images/admin.jpg"
                                            alt="User Avatar">
                                    </a>

                                    <div class="user-menu dropdown-menu">
                                        <a class="nav-link" href="#"><i class="fa fa- user"></i>My Profile</a>

                                        <a class="nav-link" href="#"><i class="fa fa- user"></i>Notifications <span
                                                class="count">13</span></a>

                                        <a class="nav-link" href="#"><i class="fa fa -cog"></i>Settings</a>

                                        <a class="nav-link" href="#"><i class="fa fa-power -off"></i>Logout</a>
                                    </div>
                                </div>

                            </div>
                        </div>
                    </header>
                    <!-- /#header -->
                    <!-- Content -->
                    <div class="content">
                        <!-- Animated -->
                        <div class="animated fadeIn">
                            <!-- Widgets  -->
                            <div class="row">
                                <div class="col-lg-3 col-md-6">
                                    <div class="card">
                                        <div class="card-body">
                                            <div class="stat-widget-five">
                                                <div class="stat-icon dib flat-color-1">
                                                    <i class="pe-7s-cash"></i>
                                                </div>
                                                <div class="stat-content">
                                                    <div class="text-left dib">
                                                        <div class="stat-text"><span
                                                                class="count">${adminHeader.revenue}</span></div>
                                                        <div class="stat-heading">Revenue</div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                                <div class="col-lg-3 col-md-6">
                                    <div class="card">
                                        <div class="card-body">
                                            <div class="stat-widget-five">
                                                <div class="stat-icon dib flat-color-2">
                                                    <i class="pe-7s-note2"></i>
                                                </div>
                                                <div class="stat-content">
                                                    <div class="text-left dib">
                                                        <div class="stat-text"><span
                                                                class="count">${adminHeader.postDatas}</span></div>
                                                        <div class="stat-heading">PostDatas</div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>



                                <div class="col-lg-3 col-md-6">
                                    <div class="card">
                                        <div class="card-body">
                                            <div class="stat-widget-five">
                                                <div class="stat-icon dib flat-color-3">
                                                    <i class="pe-7s-diamond"></i>
                                                </div>
                                                <div class="stat-content">
                                                    <div class="text-left dib">
                                                        <div class="stat-text"><span
                                                                class="count">${adminHeader.premiumUsers}</span></div>
                                                        <div class="stat-heading">Premium Users</div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>


                                <div class="col-lg-3 col-md-6">
                                    <div class="card">
                                        <div class="card-body">
                                            <div class="stat-widget-five">
                                                <div class="stat-icon dib flat-color-4">
                                                    <i class="pe-7s-users"></i>
                                                </div>
                                                <div class="stat-content">
                                                    <div class="text-left dib">
                                                        <div class="stat-text"><span
                                                                class="count">${adminHeader.users}</span></div>
                                                        <div class="stat-heading">Users</div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!-- /Widgets -->

                            <!--  Traffic  -->
                            <div class="row">
                                <div class="col-lg-12">
                                    <div class="card">
                                        <div class="card-body">
                                            <h4 class="box-title"> Graphs </h4>
                                        </div>
                                        <!-- 탭 버튼 영역 -->
                                        <ul class="tab">
                                            <li class="tab__item active">
                                                <a href="#tab1">Weakly SignIn</a>
                                            </li>
                                            <li class="tab__item">
                                                <a href="#tab2">Monthly SignIn</a>
                                            </li>
                                            <li class="tab__item">
                                                <a href="#tab3">Yearly SignUp</a>
                                            </li>
                                            <li class="tab__item">
                                                <a href="#tab4">NM by Age</a>
                                            </li>
                                            <li class="tab__item">
                                                <a href="#tab5">NM by Gender</a>
                                            </li>
                                        </ul><!-- 탭 내용 영역 -->
                                        <div class="tab__content-wrapper">
                                            <div id="tab1" class="tab__content active">
                                                <div class="row">
                                                    <div class="col-lg-8">
                                                        <div class="card-body">
                                                            <canvas id="signInCountByDayOfWeekBar"></canvas>
                                                        </div>
                                                    </div>
                                                    <div class="col-lg-4">
                                                        <div class="card-body" id="signInCountByDayOfWeekBarContainer">
                                                           

                                                            <!-- 서브테이블 동적생성 -->

                                                        </div>
                                                    </div>
                                                </div>
                                            </div>


                                            <div id="tab2" class="tab__content">
                                                <div class="row">
                                                    <div class="col-lg-8">
                                                        <div class="card-body">
                                                            <select id="year">
                                                                <option value="2023">2023</option>
                                                                <option value="2024">2024</option>
                                                                <!-- 연도 옵션을 계속 추가하세요 -->
                                                            </select>
                                                            <select id="month">
                                                                <option value="1">1월</option>
                                                                <option value="2">2월</option>
                                                                <option value="3">3월</option>
                                                                <option value="4">4월</option>
                                                                <option value="5">5월</option>
                                                                <option value="6">6월</option>
                                                                <option value="7">7월</option>
                                                                <option value="8">8월</option>
                                                                <option value="9">9월</option>
                                                                <option value="10">10월</option>
                                                                <option value="11">11월</option>
                                                                <option value="12">12월</option>
                                                                <!-- 월 옵션을 계속 추가하세요 -->
                                                            </select>
                                                            <canvas id="signInCountByYearMonthDateLine"></canvas>
                                                        </div>
                                                    </div>
                                                    <div class="col-lg-4">
                                                        <div class="card-body" id="signInCountByYearMonthDateLineContainer">

                                                            <!-- 서브테이블 동적생성 -->

                                                        </div>
                                                    </div>
                                                </div> <!-- /.row -->
                                            </div>

                                            <div id="tab3" class="tab__content">
                                                <div class="row">
                                                    <div class="col-lg-8">
                                                        <div class="card-body">
                                                            <canvas id="signUpCountByYearLine"></canvas>
                                                        </div>
                                                    </div>
                                                    <div class="col-lg-4">
                                                        <div class="card-body" id="signUpCountByYearLineContainer">
                                                            <label>평균 가입자수 대비 올해 가입자수</label>

                                                            <!-- 서브테이블 동적생성 -->

                                                        </div>
                                                    </div>
                                                </div> <!-- /.row -->
                                            </div>


                                            <div id="tab4" class="tab__content">
                                                <div class="row">
                                                    <div class="col-lg-8">
                                                        <div class="card-body">
                                                            <canvas id="signUpCountByAgeGroupBar"></canvas>
                                                        </div>
                                                    </div>
                                                    <div class="col-lg-4">
                                                        <div class="card-body" id="signUpCountByAgeGroupBarContainer">

                                                            <!-- 서브테이블 동적생성 -->

                                                        </div>
                                                    </div>
                                                </div> <!-- /.row -->
                                            </div>
                                            <div id="tab5" class="tab__content">
                                                <div class="row">
                                                    <div class="col-lg-8">
                                                        <div class="card-body">
                                                            <canvas id="signUpCountByGenderGroupBar"></canvas>
                                                        </div>
                                                    </div>
                                                    <div class="col-lg-4">
                                                        <div class="card-body" id="signUpCountByGenderGroupBarContainer">

                                                            <!-- 서브테이블 동적생성 -->

                                                        </div>
                                                    </div>
                                                </div> <!-- /.row -->
                                            </div>
                                        </div>
                                    </div>

                                    <div class="card-body"></div>
                                </div>
                            </div>


                            <!--  /Traffic -->
                            <div class="clearfix"></div>
                            <!-- Orders -->
                            <div class="Rank">
                                <div class="row">
                                    <div class="col-xl-8">
                                        <div class="card">
                                            <div class="card-body">
                                                <h4 class="box-title">User Rank</h4>
                                            </div>
                                            <div class="card-body--">
                                                <div class="table-stats order-table ov-h">
                                                    <table class="table ">
                                                        <thead>
                                                            <tr>
                                                                <th style="width:12%;">Rank</th>
                                                                <th style="width:12%;">profile</th>
                                                                <th style="width:12%;">Lv</th>
                                                                <th style="width:20%;">EMAIL</th>
                                                                <th style="width:20%;">NICNAME</th>
                                                                <th style="width:12%;">Register Date</th>
                                                                <th style="width:12%;">GRADE</th>
                                                            </tr>
                                                        </thead>
                                                        <c:set var="counter" value="1" />
                                                        <!-- 반복문을 통해 데이터를 삽입 -->
                                                        <c:forEach items="${adminLevelRank}" var="adminLevelRankData">
                                                        
                                                                <tr>
                                                                    <td>${counter}</td>
                                                                    <td class="avatar">
                                                                        <div class="round-img">
                                                                            <img class="rounded-circle" src="profileImg/${adminLevelRankData.profileImgName}" alt="" style="height: 45px; width: 45px;">
                                                                        </div>
                                                                    </td>
                                                                    <td>${adminLevelRankData.currentLevel}</td>
                                                                    <td style="text-transform:none;">${adminLevelRankData.memberId}</td>
                                                                    <td style="text-transform:none;">${adminLevelRankData.memberNickname}</td>
                                                                    <td>${fn:substring(adminLevelRankData.signUpDate, 0, 10)}</td>
                                                                    <c:if test="${adminLevelRankData.memberGrade eq 'PREMIUM'}">
                                                                    <td><span class="badge badge-primary">${adminLevelRankData.memberGrade}</span></td>
                                                                    </c:if>
                                                                    <c:if test="${adminLevelRankData.memberGrade ne 'PREMIUM'}">
                                                                    <td><span class="badge badge-secondary">${adminLevelRankData.memberGrade}</span></td>
                                                                    </c:if>

                                                                    
                                                                </tr>
                                                            <c:set var="counter" value="${counter + 1}" />
                                                        
                                                        </c:forEach>
                                                    </table>
                                                </div> <!-- /.table-stats -->
                                            </div>
                                        </div> <!-- /.card -->
                                    </div> <!-- /.col-lg-8 -->

                                    <div class="col-xl-4">


                                        <div class="card">
                                            <div class="card-body">
                                                <!-- <h4 class="box-title">Chandler</h4> -->
                                                <div class="calender-cont widget-calender">
                                                    <div id="calendar"></div>
                                                </div>
                                            </div>
                                        </div><!-- /.card -->
                                    </div>




                                </div> <!-- /.col-md-4 -->
                            </div>
                        </div>
                        <!-- /.orders -->
                        <!-- To Do and Live Chat -->
                        <div class="row">


                            <!-- /Calender Chart Weather -->
                            <!-- Modal - Calendar - Add New Event -->
                            <div class="modal fade none-border" id="event-modal">
                                <div class="modal-dialog">
                                    <div class="modal-content">
                                        <div class="modal-header">
                                            <button type="button" class="close" data-dismiss="modal"
                                                aria-hidden="true">&times;</button>
                                            <h4 class="modal-title"><strong>Add New Event</strong></h4>
                                        </div>
                                        <div class="modal-body"></div>
                                        <div class="modal-footer">
                                            <button type="button" class="btn btn-default waves-effect"
                                                data-dismiss="modal">Close</button>
                                            <button type="button"
                                                class="btn btn-success save-event waves-effect waves-light">Create
                                                event</button>
                                            <button type="button"
                                                class="btn btn-danger delete-event waves-effect waves-light"
                                                data-dismiss="modal">Delete</button>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!-- /#event-modal -->
                            <!-- Modal - Calendar - Add Category -->
                            <div class="modal fade none-border" id="add-category">
                                <div class="modal-dialog">
                                    <div class="modal-content">
                                        <div class="modal-header">
                                            <button type="button" class="close" data-dismiss="modal"
                                                aria-hidden="true">&times;</button>
                                            <h4 class="modal-title"><strong>Add a category </strong></h4>
                                        </div>
                                        <div class="modal-body">
                                            <form>
                                                <div class="row">
                                                    <div class="col-md-6">
                                                        <label class="control-label">Category Name</label>
                                                        <input class="form-control form-white" placeholder="Enter name"
                                                            type="text" name="category-name" />
                                                    </div>
                                                    <div class="col-md-6">
                                                        <label class="control-label">Choose Category Color</label>
                                                        <select class="form-control form-white"
                                                            data-placeholder="Choose a color..." name="category-color">
                                                            <option value="success">Success</option>
                                                            <option value="danger">Danger</option>
                                                            <option value="info">Info</option>
                                                            <option value="pink">Pink</option>
                                                            <option value="primary">Primary</option>
                                                            <option value="warning">Warning</option>
                                                        </select>
                                                    </div>
                                                </div>
                                            </form>
                                        </div>
                                        <div class="modal-footer">
                                            <button type="button" class="btn btn-default waves-effect"
                                                data-dismiss="modal">Close</button>
                                            <button type="button"
                                                class="btn btn-danger waves-effect waves-light save-category"
                                                data-dismiss="modal">Save</button>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!-- /#add-category -->
                        </div>
                        <!-- .animated -->
                    </div>
                    <!-- /.content -->

                    <div class="clearfix"></div>
                    <!-- Footer -->
                    <footer class="site-footer">
                        <div class="footer-inner bg-white">
                            <div class="row">
                                <div class="col-sm-6">
                                    Copyright &copy; 2023 - 2024 INFINITY STONE . ALL RIGHT RESERVED.
                                </div>
                            </div>
                        </div>
                     

                    </footer>
                    <!-- /.site-footer -->
                </div>
                <!-- /#right-panel -->
                <div id="dataContainer" data-signUpCountByAgeGroup='${signUpCountByAgeGroup}'
                    data-signUpCountByGenderGroup='${signUpCountByGenderGroup}'
                    data-signInCountByYearMonthDate='${signInCountByYearMonthDate}'
                    data-signInCountByDayOfWeek='${signInCountByDayOfWeek}'
                    data-signUpCountByYear='${signUpCountByYear}'></div>

                <!-- Scripts -->
                <script src="https://cdn.jsdelivr.net/npm/jquery@2.2.4/dist/jquery.min.js"></script>
                <script src="https://cdn.jsdelivr.net/npm/popper.js@1.14.4/dist/umd/popper.min.js"></script>
                <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.1.3/dist/js/bootstrap.min.js"></script>
                <script
                    src="https://cdn.jsdelivr.net/npm/jquery-match-height@0.7.2/dist/jquery.matchHeight.min.js"></script>
                <script src="css/admin/assets/js/main.js"></script>

                <!--  Chart js -->
                <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>

                <!--Chartist Chart-->
                <script src="https://cdn.jsdelivr.net/npm/chartist@0.11.0/dist/chartist.min.js"></script>
                <script
                    src="https://cdn.jsdelivr.net/npm/chartist-plugin-legend@0.6.2/chartist-plugin-legend.min.js"></script>

                <script src="https://cdn.jsdelivr.net/npm/jquery.flot@0.8.3/jquery.flot.min.js"></script>
                <script src="https://cdn.jsdelivr.net/npm/flot-pie@1.0.0/src/jquery.flot.pie.min.js"></script>
                <script src="https://cdn.jsdelivr.net/npm/flot-spline@0.0.1/js/jquery.flot.spline.min.js"></script>

                <!-- <script src="https://cdn.jsdelivr.net/npm/simpleweather@3.1.0/jquery.simpleWeather.min.js"></script>
                <script src="css/admin/assets/js/init/weather-init.js"></script> -->

                <script src="https://cdn.jsdelivr.net/npm/moment@2.22.2/moment.min.js"></script>
                <script src="https://cdn.jsdelivr.net/npm/fullcalendar@3.9.0/dist/fullcalendar.min.js"></script>
                <script src="css/admin/assets/js/init/fullcalendar-init.js"></script>

                <script src="js/admin/leftPanalActive.js"></script>
                <script src="js/admin/drawBarChart.js"></script>


                <script>


drawSideGraph();
drawSideGraph2();





           
function drawSideGraph() {
    // 받아온 데이터를 반복하면서 HTML에 추가
    signInCountByDayOfWeek.forEach(function(data) {
        var appendTab = $("#signInCountByDayOfWeekBarContainer");
        var title = data.dayOfWeek;
        var yValue = data.signInCount;
       // 모든 signInCount 값을 더하여 총 합 구함
         var totalYvalue = signInCountByDayOfWeek.reduce(function(acc, cur) {
        return acc + parseInt(cur.signInCount);
          }, 0);
          var percent = Math.round((yValue / totalYvalue) * 100);
        addDataToHTML(appendTab, title, yValue, percent, totalYvalue);
    });
}

        // var appendTab = $("#signInCountByYearMonthDateLineContainer");
        // addDataToHTML(appendTab, data.dayOfWeek, data.signInCount);

        // var appendTab = $("#signUpCountByAgeGroupBarContainer");
        // addDataToHTML(appendTab, data.dayOfWeek, data.signInCount);


        // var appendTab = $("#signUpCountByGenderGroupBarContainer");
        // addDataToHTML(appendTab, data.dayOfWeek, data.signInCount);
       
        function drawSideGraph2() {
         
        var avgValue = 0;
        var totalYvalue = 0;
        for (var i = 0; i < signUpCountByYear.length-1; i++) {
            totalYvalue += signUpCountByYear[i].signUpCount;
            }
            avgValue=Math.round(totalYvalue/(signUpCountByYear.length-1));

        var appendTab = $("#signUpCountByYearLineContainer");
        var title = signUpCountByYear[signUpCountByYear.length-1].year;
        var yValue = signUpCountByYear[signUpCountByYear.length-1].signUpCount;
    // 모든 signInCount 값을 더하여 총 합 구함
    var percent = Math.round((yValue / avgValue) * 100);

    console.log("왜아난와");
    console.log(appendTab);
    console.log(title);
    console.log(yValue);
    console.log(avgValue);
    console.log(percent);
    addDataToHTML(appendTab, title, yValue, percent, avgValue);
}

        

              // 요일과 카운트 데이터를 이용하여 HTML을 동적으로 생성하여 추가하는 함수
              function addDataToHTML(appendTab, title, yValue, percent, totalYvalue) {
    var html = '<div class="progress-box progress-2">' +
                        '<h4 class="por-title">' + title + '</h4>' +
                        '<div class="por-txt">' + yValue + ' Users (' +percent + '%)</div>' +
                        '<div class="progress mb-2" style="height: 5px;">' +
                            '<div class="progress-bar bg-flat-color-4" role="progressbar" style="width: ' + percent + '%;" aria-valuenow="' + yValue + '" aria-valuemin="0" aria-valuemax="' + totalYvalue + '"></div>' +
                        '</div>' +
                    '</div>';
        appendTab.append(html);
    }


        
     






                </script>


            </body>

            </html>