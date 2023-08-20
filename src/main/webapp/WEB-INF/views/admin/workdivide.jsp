<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="ko">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>SB Admin 2 - Dashboard</title>

    <!-- Custom fonts for this template-->
    <link href="css/admin/all.min.css" rel="stylesheet" type="text/css">
    <link
        href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
        rel="stylesheet">

    <!-- Custom styles for this template-->
    <link href="css/admin/sb-admin-2.min.css" rel="stylesheet">
    <link href="css/admin/workdivide.css" rel="stylesheet">
    <link href="air-datepicker/dist/css/datepicker.min.css" rel="stylesheet" type="text/css" media="all">
    <!-- Air datepicker css -->
</head>

<body id="page-top">

    <!-- Page Wrapper -->
    <div id="wrapper">

        <!-- Sidebar -->
        <ul class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion" id="accordionSidebar">

            <!-- Sidebar - Brand -->
            <a class="sidebar-brand d-flex align-items-center justify-content-center" href="index.mdo">
                <div class="sidebar-brand-icon rotate-n-15">
                    <i class="fas fa-laugh-wink"></i>
                </div>
                <div class="sidebar-brand-text mx-3">SB Admin <sup>2</sup></div>
            </a>
            <!-- Divider -->
            <hr class="sidebar-divider">

            <!-- Heading -->
            <div class="sidebar-heading">
                메뉴
            </div>

            <!-- Nav Item - Pages Collapse Menu -->
            <li class="nav-item">
                <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseTwo"
                    aria-expanded="true" aria-controls="collapseTwo">
                    <i class="fas fa-fw fa-cog"></i>
                    <span>전체 교재</span>
                </a>
                <div id="collapseTwo" class="collapse" aria-labelledby="headingTwo" data-parent="#accordionSidebar">
                    <div class="bg-white py-2 collapse-inner rounded">
                        <h6 class="collapse-header">목록</h6>
                        <a class="collapse-item" href="maincontent.mdo">모두 보기</a>
                        <a class="collapse-item" href="textcontents.mdo">독해</a>
                        <a class="collapse-item" href="#">문법</a>
                        <a class="collapse-item" href="#">어휘</a>
                        <a class="collapse-item" href="#">듣기</a>
                        <a class="collapse-item" href="#">영작</a>
                        <a class="collapse-item" href="#">내신</a>
                    </div>
                </div>
            </li>

            <!-- Nav Item - Pages Collapse Menu -->
            <li class="nav-item">
                <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapse"
                    aria-expanded="true" aria-controls="collapseTwo">
                    <i class="fas fa-fw fa-cog"></i>
                    <span>Components</span>
                </a>
                <div id="collapse" class="collapse" aria-labelledby="headingTwo" data-parent="#accordionSidebar">
                    <div class="bg-white py-2 collapse-inner rounded">
                        <h6 class="collapse-header">Custom Components:</h6>
                        <a class="collapse-item" href="buttons.mdo">Buttons</a>
                        <a class="collapse-item" href="cards.mdo">Cards</a>
                    </div>
                </div>
            </li>

            <!-- Nav Item - Utilities Collapse Menu -->
            <li class="nav-item">
                <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseUtilities"
                    aria-expanded="true" aria-controls="collapseUtilities">
                    <i class="fas fa-fw fa-wrench"></i>
                    <span>Utilities</span>
                </a>
                <div id="collapseUtilities" class="collapse" aria-labelledby="headingUtilities"
                    data-parent="#accordionSidebar">
                    <div class="bg-white py-2 collapse-inner rounded">
                        <h6 class="collapse-header">Custom Utilities:</h6>
                        <a class="collapse-item" href="utilities-color.mdo">Colors</a>
                        <a class="collapse-item" href="utilities-border.mdo">Borders</a>
                        <a class="collapse-item" href="utilities-animation.mdo">Animations</a>
                        <a class="collapse-item" href="utilities-other.mdo">Other</a>
                    </div>
                </div>
            </li>

            <!-- Divider -->
            <hr class="sidebar-divider">

            <!-- Heading -->
            <div class="sidebar-heading">
                Addons
            </div>

            <!-- Nav Item - Pages Collapse Menu -->
            <li class="nav-item">
                <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapsePages"
                    aria-expanded="true" aria-controls="collapsePages">
                    <i class="fas fa-fw fa-folder"></i>
                    <span>Pages</span>
                </a>
                <div id="collapsePages" class="collapse" aria-labelledby="headingPages" data-parent="#accordionSidebar">
                    <div class="bg-white py-2 collapse-inner rounded">
                        <h6 class="collapse-header">Login Screens:</h6>
                        <a class="collapse-item" href="login.mdo">Login</a>
                        <a class="collapse-item" href="register.mdo">Register</a>
                        <a class="collapse-item" href="forgot-password.mdo">Forgot Password</a>
                        <div class="collapse-divider"></div>
                        <h6 class="collapse-header">Other Pages:</h6>
                        <a class="collapse-item" href="404.mdo">404 Page</a>
                        <a class="collapse-item" href="blank.mdo">Blank Page</a>
                    </div>
                </div>
            </li>

            <!-- Nav Item - Charts -->
            <li class="nav-item">
                <a class="nav-link" href="charts.mdo">
                    <i class="fas fa-fw fa-chart-area"></i>
                    <span>Charts</span></a>
            </li>

            <!-- Nav Item - Tables -->
            <li class="nav-item">
                <a class="nav-link" href="tables.mdo">
                    <i class="fas fa-fw fa-table"></i>
                    <span>Tables</span></a>
            </li>

            <!-- Divider -->
            <hr class="sidebar-divider d-none d-md-block">

            <!-- Heading -->
            <div class="sidebar-heading">
                최고 관리자 전용
            </div>

            <!-- Nav Item - Tables -->
            <li class="nav-item">
                <a class="nav-link" href="workdivide.mdo">
                    <i class="fas fa-fw fa-table"></i>
                    <span>업무 리스트 작성</span></a>
            </li>
            
            <!-- Divider -->
            <hr class="sidebar-divider d-none d-md-block">
            <!-- Sidebar Toggler (Sidebar) -->
            <div class="text-center d-none d-md-inline">
                <button class="rounded-circle border-0" id="sidebarToggle"></button>
            </div>
        </ul>
        <!-- End of Sidebar -->

        <!-- Content Wrapper -->
        <div id="content-wrapper" class="d-flex flex-column">

            <!-- Main Content -->
            <div id="content">

                <!-- Topbar -->
                <nav class="navbar navbar-expand navbar-light bg-white topbar mb-4 static-top shadow">

                    <!-- Sidebar Toggle (Topbar) -->
                    <button id="sidebarToggleTop" class="btn btn-link d-md-none rounded-circle mr-3">
                        <i class="fa fa-bars"></i>
                    </button>

                    <!-- Topbar Navbar -->
                    <ul class="navbar-nav ml-auto">
                        <!-- Nav Item - Alerts -->
                        <li class="nav-item dropdown no-arrow mx-1">
                            <a class="nav-link dropdown-toggle" href="#" id="alertsDropdown" role="button"
                                data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                <i class="fas fa-bell fa-fw"></i>
                                <!-- Counter - Alerts -->
                                <span class="badge badge-danger badge-counter">3+</span>
                            </a>
                            <!-- Dropdown - Alerts -->
                            <div class="dropdown-list dropdown-menu dropdown-menu-right shadow animated--grow-in"
                                aria-labelledby="alertsDropdown">
                                <h6 class="dropdown-header">
                                    Alerts Center
                                </h6>
                                <a class="dropdown-item d-flex align-items-center" href="#">
                                    <div class="mr-3">
                                        <div class="icon-circle bg-primary">
                                            <i class="fas fa-file-alt text-white"></i>
                                        </div>
                                    </div>
                                    <div>
                                        <div class="small text-gray-500">December 12, 2019</div>
                                        <span class="font-weight-bold">A new monthly report is ready to download!</span>
                                    </div>
                                </a>
                                <a class="dropdown-item d-flex align-items-center" href="#">
                                    <div class="mr-3">
                                        <div class="icon-circle bg-success">
                                            <i class="fas fa-donate text-white"></i>
                                        </div>
                                    </div>
                                    <div>
                                        <div class="small text-gray-500">December 7, 2019</div>
                                        $290.29 has been deposited into your account!
                                    </div>
                                </a>
                                <a class="dropdown-item d-flex align-items-center" href="#">
                                    <div class="mr-3">
                                        <div class="icon-circle bg-warning">
                                            <i class="fas fa-exclamation-triangle text-white"></i>
                                        </div>
                                    </div>
                                    <div>
                                        <div class="small text-gray-500">December 2, 2019</div>
                                        Spending Alert: We've noticed unusually high spending for your account.
                                    </div>
                                </a>
                                <a class="dropdown-item text-center small text-gray-500" href="#">Show All Alerts</a>
                            </div>
                        </li>

                        <!-- Nav Item - Messages -->
                        <li class="nav-item dropdown no-arrow mx-1">
                            <a class="nav-link dropdown-toggle" href="#" id="messagesDropdown" role="button"
                                data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                <i class="fas fa-envelope fa-fw"></i>
                                <!-- Counter - Messages -->
                                <span class="badge badge-danger badge-counter">7</span>
                            </a>
                            <!-- Dropdown - Messages -->
                            <div class="dropdown-list dropdown-menu dropdown-menu-right shadow animated--grow-in"
                                aria-labelledby="messagesDropdown">
                                <h6 class="dropdown-header">
                                    Message Center
                                </h6>
                                <a class="dropdown-item d-flex align-items-center" href="#">
                                    <div class="dropdown-list-image mr-3">
                                        <img class="rounded-circle" src="img/undraw_profile_1.svg"
                                            alt="...">
                                        <div class="status-indicator bg-success"></div>
                                    </div>
                                    <div class="font-weight-bold">
                                        <div class="text-truncate">Hi there! I am wondering if you can help me with a
                                            problem I've been having.</div>
                                        <div class="small text-gray-500">Emily Fowler · 58m</div>
                                    </div>
                                </a>
                                <a class="dropdown-item d-flex align-items-center" href="#">
                                    <div class="dropdown-list-image mr-3">
                                        <img class="rounded-circle" src="img/undraw_profile_2.svg"
                                            alt="...">
                                        <div class="status-indicator"></div>
                                    </div>
                                    <div>
                                        <div class="text-truncate">I have the photos that you ordered last month, how
                                            would you like them sent to you?</div>
                                        <div class="small text-gray-500">Jae Chun · 1d</div>
                                    </div>
                                </a>
                                <a class="dropdown-item d-flex align-items-center" href="#">
                                    <div class="dropdown-list-image mr-3">
                                        <img class="rounded-circle" src="img/undraw_profile_3.svg"
                                            alt="...">
                                        <div class="status-indicator bg-warning"></div>
                                    </div>
                                    <div>
                                        <div class="text-truncate">Last month's report looks great, I am very happy with
                                            the progress so far, keep up the good work!</div>
                                        <div class="small text-gray-500">Morgan Alvarez · 2d</div>
                                    </div>
                                </a>
                                <a class="dropdown-item d-flex align-items-center" href="#">
                                    <div class="dropdown-list-image mr-3">
                                        <img class="rounded-circle" src="https://source.unsplash.com/Mv9hjnEUHR4/60x60"
                                            alt="...">
                                        <div class="status-indicator bg-success"></div>
                                    </div>
                                    <div>
                                        <div class="text-truncate">Am I a good boy? The reason I ask is because someone
                                            told me that people say this to all dogs, even if they aren't good...</div>
                                        <div class="small text-gray-500">Chicken the Dog · 2w</div>
                                    </div>
                                </a>
                                <a class="dropdown-item text-center small text-gray-500" href="#">Read More Messages</a>
                            </div>
                        </li>

                        <div class="topbar-divider d-none d-sm-block"></div>

                        <!-- Nav Item - User Information -->
                        <li class="nav-item dropdown no-arrow">
                            <a class="nav-link dropdown-toggle" href="#" id="userDropdown" role="button"
                                data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                <span class="mr-2 d-none d-lg-inline text-gray-600 small">홍길동님 안녕하세요.</span>
                            </a>
                            <!-- Dropdown - User Information -->
                            <div class="dropdown-menu dropdown-menu-right shadow animated--grow-in"
                                aria-labelledby="userDropdown">
                                <a class="dropdown-item" href="#">
                                    <i class="fas fa-user fa-sm fa-fw mr-2 text-gray-400"></i>
                                    Profile
                                </a>
                                <a class="dropdown-item" href="#">
                                    <i class="fas fa-cogs fa-sm fa-fw mr-2 text-gray-400"></i>
                                    Settings
                                </a>
                                <a class="dropdown-item" href="#">
                                    <i class="fas fa-list fa-sm fa-fw mr-2 text-gray-400"></i>
                                    Activity Log
                                </a>
                                <div class="dropdown-divider"></div>
                                <a class="dropdown-item" href="#" data-toggle="modal" data-target="#logoutModal">
                                    <i class="fas fa-sign-out-alt fa-sm fa-fw mr-2 text-gray-400"></i>
                                    Logout
                                </a>
                            </div>
                        </li>

                    </ul>

                </nav>
                <!-- End of Topbar -->

                <!-- Begin Page Content -->
                <div class="container-fluid">
                    <!-- Page Heading -->
                    <h1 class="h1 mb-2 text-gray-800" style="margin-bottom: 20px !important;">직원 업무 현황</h1>
                    <!-- Content Row -->
                    <div class="row">
                        <div class="col-xl-12 col-lg-7">
                            <!-- Basic Card Example -->
                            <div class="card shadow mb-4">
                                <div class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
                                    <h4 class="m-0 font-weight-bold text-primary">업무 리스트 현황</h4>
                                </div>
                                <div class="card-body">
                                    <div class="selectday" style="font-size: 20px;">
                                        날짜 선택 : <input type="text" class="workday" id="datepicker" readonly>
                                        <button type="button">선 택</button>
                                    </div>
                                    <hr style="margin:20px 0 20px 0;">
                                    <div class="imcomplete" style="margin-bottom: 20px; font-size: 24px;">
                                        미완성 현황 
                                    </div>
                                    <div class="workdivide">
                                        <table class="table table-bordered" id="dataTable1" style="width: 100%; height: 100%; margin-bottom: 3px;" cellspacing="0">
                                            <thead>
                                                <tr>
                                                    <th style="width: 10%; text-align:center"">마감</th>
                                                    <th style="text-align:center"">업무 내용</th>
                                                    <th style="width:13%; text-align:center">담당자</th>
                                                    <th style="width:13%; text-align:center">미완성 담당자</th>
                                                    <th style="width:8%; text-align:center">재배정</th>
                                                    <th style="width:8%; text-align:center">삭제</th>
                                                </tr>
                                            </thead>
                                            <tbody id="memDiv1">
                                                <tr>
                                                    <td style="text-align:center; vertical-align:middle;">8/11</td>
                                                    <td style="text-align:center">업무 1</textarea></td>
                                                    <td style="text-align:center; vertical-align:middle;">전체</td>
                                                    <td style="text-align:center; vertical-align:middle;">홍길동</td>
                                                    <td style="text-align:center; vertical-align:middle;"><button class="d-none d-sm-inline-block btn btn-sm btn-primary shadow-sm" onclick='rowDel(this);'>재배정</button></td>
                                                    <td style="text-align:center; vertical-align:middle;"><button class="d-none d-sm-inline-block btn btn-sm btn-danger shadow-sm" onclick='rowDel(this);'>삭제</button></td>
                                                </tr>
                                                <tr>
                                                    <td style="text-align:center; vertical-align:middle;">8/11</td>
                                                    <td style="text-align:center">업무 1</textarea></td>
                                                    <td style="text-align:center; vertical-align:middle;">손오공,김하나</td>
                                                    <td style="text-align:center; vertical-align:middle;">김하나</td>
                                                    <td style="text-align:center; vertical-align:middle;"><button class="d-none d-sm-inline-block btn btn-sm btn-primary shadow-sm" onclick='rowDel(this);'>재배정</button></td>
                                                    <td style="text-align:center; vertical-align:middle;"><button class="d-none d-sm-inline-block btn btn-sm btn-danger shadow-sm" onclick='rowDel(this);'>삭제</button></td>
                                                </tr>
                                                <tr>
                                                    <td style="text-align:center; vertical-align:middle;">8/10</td>
                                                    <td style="text-align:center">업무 1</textarea></td>
                                                    <td style="text-align:center; vertical-align:middle;">사오정</td>
                                                    <td style="text-align:center; vertical-align:middle;">사오정</td>
                                                    <td style="text-align:center; vertical-align:middle;"><button class="d-none d-sm-inline-block btn btn-sm btn-primary shadow-sm" onclick='rowDel(this);'>재배정</button></td>
                                                    <td style="text-align:center; vertical-align:middle;"><button class="d-none d-sm-inline-block btn btn-sm btn-danger shadow-sm" onclick='rowDel(this);'>삭제</button></td>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </div>
                                    <hr style="margin:20px 0 20px 0;">
                                    <div class="lockup" style="margin-bottom: 20px; font-size: 24px; display: flex;">
                                        고정 업무
                                        <div class="workheader">
                                            <button type="button" onclick='insertTr1()'>리스트 추가</button>
                                            <button class="d-none d-sm-inline-block btn btn-sm btn-primary shadow-sm">저장</button>
                                        </div>
                                    </div>
                                    <div class="workdivide">
                                        <table class="table table-bordered" id="dataTable2" style="width: 100%; height: 100%; margin-bottom: 3px;" cellspacing="0">
                                            <thead>
                                                <tr>
                                                    <th style="text-align:center">업무 내용</th>
                                                    <th style="width:20%; text-align:center">담당자</th>
                                                    <th style="width:10%; text-align:center">삭제</th>
                                            </thead>
                                            <tbody id="memDiv2">
                                                <tr>
                                                    <td style="text-align:center">업무 1</textarea></td>
                                                    <td style="text-align:center; vertical-align:middle;">전체</td>
                                                    <td style="text-align:center; vertical-align:middle;"><button class="d-none d-sm-inline-block btn btn-sm btn-danger shadow-sm" onclick='rowDel(this);'>삭제</button></td>
                                                </tr>
                                                <tr>
                                                    <td style="text-align:center">업무 1</textarea></td>
                                                    <td style="text-align:center; vertical-align:middle;">손오공,김하나</td>
                                                    <td style="text-align:center; vertical-align:middle;"><button class="d-none d-sm-inline-block btn btn-sm btn-danger shadow-sm" onclick='rowDel(this);'>삭제</button></td>
                                                </tr>
                                                <tr>
                                                    <td style="text-align:center">업무 1</textarea></td>
                                                    <td style="text-align:center; vertical-align:middle;">사오정</td>
                                                    <td style="text-align:center; vertical-align:middle;"><button class="d-none d-sm-inline-block btn btn-sm btn-danger shadow-sm" onclick='rowDel(this);'>삭제</button></td>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </div>
                                    <hr style="margin:20px 0 20px 0;">
                                    <div class="lockup" style="margin-bottom: 20px; font-size: 24PX;">
                                        금일 월간 업무
                                    </div>
                                    <div class="workdivide">
                                        <table class="table table-bordered" id="dataTable3" style="width: 100%; height: 100%; margin-bottom: 3px;" cellspacing="0">
                                            <thead>
                                                <tr>
                                                    <th style="width: 20%; text-align:center">날짜</th>
                                                    <th style="text-align:center">업무 내용</th>
                                                    <th style="width:20%; text-align:center">담당자</th>
                                                </tr>
                                            </thead>
                                            <tbody id="memDiv3">
                                                <tr>
                                                    <td style="text-align:center">업무 1</textarea></td>
                                                    <td style="text-align:center; vertical-align:middle;">전체</td>
                                                    <td style="text-align:center; vertical-align:middle;">홍길동</td>
                                                </tr>
                                                <tr>
                                                    <td style="text-align:center">업무 1</textarea></td>
                                                    <td style="text-align:center; vertical-align:middle;">손오공,김하나</td>
                                                    <td style="text-align:center; vertical-align:middle;">김하나</td>
                                                </tr>
                                                <tr>
                                                    <td style="text-align:center">업무 1</textarea></td>
                                                    <td style="text-align:center; vertical-align:middle;">사오정</td>
                                                    <td style="text-align:center; vertical-align:middle;">사오정</td>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </div>
                                    <hr style="margin:20px 0 20px 0;">
                                    <div class="lockup" style="margin-bottom: 20px; font-size: 24px; display: flex;">
                                        당일 오더
                                        <div class="workheader">
                                            <button type="button" onclick='insertTr2()'>리스트 추가</button>
                                            <button class="d-none d-sm-inline-block btn btn-sm btn-primary shadow-sm">저장</button>
                                        </div>
                                    </div>
                                    <div class="workdivide">
                                        <table class="table table-bordered" id="dataTable4" style="width: 100%; height: 100%; margin-bottom: 3px;" cellspacing="0">
                                            <thead>
                                                <tr>
                                                    <th style="text-align:center">업무 내용</th>
                                                    <th style="width:20%; text-align:center">담당자</th>
                                                    <th style="width:10%; text-align:center">삭제</th>
                                                </tr>
                                            </thead>
                                            <tbody id="memDiv4">
                                                <tr>
                                                    <td style="text-align:center">업무 1</textarea></td>
                                                    <td style="text-align:center; vertical-align:middle;">전체</td>
                                                    <td style="text-align:center; vertical-align:middle;"><button class="d-none d-sm-inline-block btn btn-sm btn-danger shadow-sm" onclick='rowDel(this);'>삭제</button></td>
                                                </tr>
                                                <tr>
                                                    <td style="text-align:center">업무 1</textarea></td>
                                                    <td style="text-align:center; vertical-align:middle;">손오공,김하나</td>
                                                    <td style="text-align:center; vertical-align:middle;"><button class="d-none d-sm-inline-block btn btn-sm btn-danger shadow-sm" onclick='rowDel(this);'>삭제</button></td>
                                                </tr>
                                                <tr>
                                                    <td style="text-align:center">업무 1</textarea></td>
                                                    <td style="text-align:center; vertical-align:middle;">사오정</td>
                                                    <td style="text-align:center; vertical-align:middle;"><button class="d-none d-sm-inline-block btn btn-sm btn-danger shadow-sm" onclick='rowDel(this);'>삭제</button></td>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </div>
                                    <hr style="margin:20px 0 20px 0;">
                                    <div class="lockup" style="margin-bottom: 20px; font-size: 24px; display: flex;">
                                        예정 업무
                                        <div class="workheader">
                                            <button type="button" onclick='insertTr3()'>리스트 추가</button>
                                            <button class="d-none d-sm-inline-block btn btn-sm btn-primary shadow-sm">저장</button>
                                        </div>
                                    </div>
                                    <div class="workdivide">
                                        <table class="table table-bordered" id="dataTable5" style="width: 100%; height: 100%; margin-bottom: 3px;" cellspacing="0">
                                            <thead>
                                                <tr>
                                                    <th style="width: 20%; text-align:center"">날짜</th>
                                                    <th style="text-align:center"">업무 내용</th>
                                                    <th style="width:20%; text-align:center">담당자</th>
                                                    <th style="width:10%; text-align:center">삭제</th>
                                                </tr>
                                            </thead>
                                            <tbody id="memDiv5">
                                                <tr>
                                                    <td style="text-align:center">업무 1</textarea></td>
                                                    <td style="text-align:center; vertical-align:middle;">전체</td>
                                                    <td style="text-align:center; vertical-align:middle;">홍길동</td>
                                                    <td style="text-align:center; vertical-align:middle;"><button class="d-none d-sm-inline-block btn btn-sm btn-danger shadow-sm" onclick='rowDel(this);'>삭제</button></td>
                                                </tr>
                                                <tr>
                                                    <td style="text-align:center">업무 1</textarea></td>
                                                    <td style="text-align:center; vertical-align:middle;">손오공,김하나</td>
                                                    <td style="text-align:center; vertical-align:middle;">김하나</td>
                                                    <td style="text-align:center; vertical-align:middle;"><button class="d-none d-sm-inline-block btn btn-sm btn-danger shadow-sm" onclick='rowDel(this);'>삭제</button></td>
                                                </tr>
                                                <tr>
                                                    <td style="text-align:center">업무 1</textarea></td>
                                                    <td style="text-align:center; vertical-align:middle;">사오정</td>
                                                    <td style="text-align:center; vertical-align:middle;">사오정</td>
                                                    <td style="text-align:center; vertical-align:middle;"><button class="d-none d-sm-inline-block btn btn-sm btn-danger shadow-sm" onclick='rowDel(this);'>삭제</button></td>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </div>
                                    <hr style="margin:20px 0 20px 0;">
                                    <div class="lockup" style="margin-bottom: 20px; font-size: 24px; display: flex;">
                                        월간 업무
                                        <div class="workheader">
                                            <button type="button" onclick='insertTr4()'>리스트 추가</button>
                                            <button class="d-none d-sm-inline-block btn btn-sm btn-primary shadow-sm">저장</button>
                                        </div>
                                    </div>
                                    <div class="workdivide">
                                        <table class="table table-bordered" id="dataTable6" style="width: 100%; height: 100%; margin-bottom: 3px;" cellspacing="0">
                                            <thead>
                                                <tr>
                                                    <th style="width: 20%; text-align:center">날짜</th>
                                                    <th style="text-align:center">업무 내용</th>
                                                    <th style="width:20%; text-align:center">담당자</th>
                                                    <th style="width:10%; text-align:center">삭제</th>
                                                </tr>
                                            </thead>
                                            <tbody id="memDiv6">
                                                <tr>
                                                    <td style="text-align:center">업무 1</textarea></td>
                                                    <td style="text-align:center; vertical-align:middle;">전체</td>
                                                    <td style="text-align:center; vertical-align:middle;">홍길동</td>
                                                    <td style="text-align:center; vertical-align:middle;"><button class="d-none d-sm-inline-block btn btn-sm btn-danger shadow-sm" onclick='rowDel(this);'>삭제</button></td>
                                                </tr>
                                                <tr>
                                                    <td style="text-align:center">업무 1</textarea></td>
                                                    <td style="text-align:center; vertical-align:middle;">손오공,김하나</td>
                                                    <td style="text-align:center; vertical-align:middle;">김하나</td>
                                                    <td style="text-align:center; vertical-align:middle;"><button class="d-none d-sm-inline-block btn btn-sm btn-danger shadow-sm" onclick='rowDel(this);'>삭제</button></td>
                                                </tr>
                                                <tr>
                                                    <td style="text-align:center">업무 1</textarea></td>
                                                    <td style="text-align:center; vertical-align:middle;">사오정</td>
                                                    <td style="text-align:center; vertical-align:middle;">사오정</td>
                                                    <td style="text-align:center; vertical-align:middle;"><button class="d-none d-sm-inline-block btn btn-sm btn-danger shadow-sm" onclick='rowDel(this);'>삭제</button></td>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- /.container-fluid -->

            </div>
            <!-- End of Main Content -->

            <!-- Footer -->
            <footer class="sticky-footer bg-white">
                <div class="container my-auto">
                    <div class="copyright text-center my-auto">
                        <span>Copyright &copy; Your Website 2021</span>
                    </div>
                </div>
            </footer>
            <!-- End of Footer -->

        </div>
        <!-- End of Content Wrapper -->

    </div>
    <!-- End of Page Wrapper -->

    <!-- Scroll to Top Button-->
    <a class="scroll-to-top rounded" href="#page-top">
        <i class="fas fa-angle-up"></i>
    </a>

    <!-- Logout Modal-->
    <div class="modal fade" id="logoutModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
        aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">Ready to Leave?</h5>
                    <button class="close" type="button" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">x</span>
                    </button>
                </div>
                <div class="modal-body">Select "Logout" below if you are ready to end your current session.</div>
                <div class="modal-footer">
                    <button class="btn btn-secondary" type="button" data-dismiss="modal">Cancel</button>
                    <a class="btn btn-primary" href="login.mdo">Logout</a>
                </div>
            </div>
        </div>
    </div>
    <!-- Bootstrap core JavaScript-->
    <script src="js/admin/jquery.min.js"></script>
    <script src="js/admin/bootstrap.bundle.min.js"></script>

    <!-- Core plugin JavaScript-->
    <script src="js/admin/jquery.easing.min.js"></script>

    <!-- Custom scripts for all pages-->
    <script src="js/admin/sb-admin-2.min.js"></script>

    <script src="air-datepicker/dist/js/datepicker.js"></script> <!-- Air datepicker js -->
    <script src="air-datepicker/dist/js/i18n/datepicker.ko.js"></script> <!-- 달력 한글 추가를 위해 커스텀 -->
    <script>
        function insertTr1(){
            var insertTr = "";
            insertTr += "<tr>";
            insertTr += "<td style=\"text-align:center;\"><textarea class=\"workcontents\"></textarea></td>";
            insertTr += "<td style=\"text-align:center; vertical-align:middle;\"><input type=\"text\" class=\"workdeadline\"></td>";
            insertTr += "<td style=\"text-align:center; vertical-align:middle;\"><button class=\"d-none d-sm-inline-block btn btn-sm btn-danger shadow-sm\" onclick='rowDel(this);'>삭제</button></td>";
            insertTr += "</tr>";
            $("#memDiv2").append(insertTr);
        };
        $('#deletework1').click(function() {
            $('#dataTable2 > tbody > tr:last').remove();
        });
        function insertTr2(){
            var insertTr = "";
            insertTr += "<tr>";
            insertTr += "<td style=\"text-align:center;\"><textarea class=\"workcontents\"></textarea></td>";
            insertTr += "<td style=\"text-align:center; vertical-align:middle;\"><input type=\"text\" class=\"workdeadline\"></td>";
            insertTr += "<td style=\"text-align:center; vertical-align:middle;\"><button class=\"d-none d-sm-inline-block btn btn-sm btn-danger shadow-sm\" onclick='rowDel(this);'>삭제</button></td>";
            insertTr += "</tr>";
            $("#memDiv4").append(insertTr);
        };
        $('#deletework2').click(function() {
            $('#dataTable4 > tbody > tr:last').remove();
        });
        function insertTr3(){
            var insertTr = "";
            insertTr += "<tr>";
            insertTr += "<td style=\"text-align:center; vertical-align:middle;\"><input type=\"text\" class=\"workdeadline\"></td>";
            insertTr += "<td style=\"text-align:center;\"><textarea class=\"workcontents\"></textarea></td>";
            insertTr += "<td style=\"text-align:center; vertical-align:middle;\"><input type=\"text\" class=\"workdeadline\"></td>";
            insertTr += "<td style=\"text-align:center; vertical-align:middle;\"><button class=\"d-none d-sm-inline-block btn btn-sm btn-danger shadow-sm\" onclick='rowDel(this);'>삭제</button></td>";
            insertTr += "</tr>";
            $("#memDiv5").append(insertTr);
        };
        $('#deletework3').click(function() {
            $('#dataTable5 > tbody > tr:last').remove();
        });
        function insertTr4(){
            var insertTr = "";
            insertTr += "<tr>";
            insertTr += "<td style=\"text-align:center; vertical-align:middle;\"><input type=\"text\" class=\"workdeadline\"></td>";
            insertTr += "<td style=\"text-align:center;\"><textarea class=\"workcontents\"></textarea></td>";
            insertTr += "<td style=\"text-align:center; vertical-align:middle;\"><input type=\"text\" class=\"workdeadline\"></td>";
            insertTr += "<td style=\"text-align:center; vertical-align:middle;\"><button class=\"d-none d-sm-inline-block btn btn-sm btn-danger shadow-sm\" onclick='rowDel(this);'>삭제</button></td>";
            insertTr += "</tr>";
            $("#memDiv6").append(insertTr);
        };
        $('#deletework4').click(function() {
            $('#dataTable6 > tbody > tr:last').remove();
        });
        $("#datepicker").datepicker({
    	    language: 'ko'
        });
        function rowDel(obj){
            var tr = obj.parentNode.parentNode;
            tr.parentNode.removeChild(tr);
        }
    </script>
</body>

</html>