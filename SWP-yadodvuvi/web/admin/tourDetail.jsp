<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <link rel="icon" type="image/png" href="assets/img/favicon.ico">
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />

        <title>Light Bootstrap Dashboard by Creative Tim</title>

        <meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0' name='viewport' />
        <meta name="viewport" content="width=device-width" />


        <!-- Bootstrap core CSS     -->
        <link href="assets/css/bootstrap.min.css" rel="stylesheet" />

        <!-- Animation library for notifications   -->
        <link href="assets/css/animate.min.css" rel="stylesheet"/>

        <!--  Light Bootstrap Table core CSS    -->
        <link href="assets/css/light-bootstrap-dashboard.css?v=1.4.0" rel="stylesheet"/>


        <!--  CSS for Demo Purpose, don't include it in your project     -->
        <link href="assets/css/demo.css" rel="stylesheet" />


        <!--     Fonts and icons     -->
        <link href="http://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css" rel="stylesheet">
        <link href='http://fonts.googleapis.com/css?family=Roboto:400,700,300' rel='stylesheet' type='text/css'>
        <link href="assets/css/pe-icon-7-stroke.css" rel="stylesheet" />
    </head>
    <body>

        <div class="wrapper">
            <div class="sidebar" data-color="purple" data-image="assets/img/sidebar-5.jpg">

                <!--   you can change the color of the sidebar using: data-color="blue | azure | green | orange | red | purple" -->


                <div class="sidebar-wrapper">
                    <div class="logo">
                        <a href="http://www.creative-tim.com" class="simple-text">
                            Creative Tim
                        </a>
                    </div>

                    <ul class="nav">
                        <li>
                            <a href="adminSite">
                                <i class="pe-7s-graph"></i>
                                <p>Dashboard</p>
                            </a>
                        </li>
                        <li>
                            <a href="getAccount">
                                <i class="pe-7s-user"></i>
                                <p>User Profile</p>
                            </a>
                        </li>
                        <li>
                            <li class="active">
                            <a href="getTour">
                                <i class="pe-7s-note2"></i>
                                <p>Table List</p>
                            </a>
                        </li>
                        <li>
                            <a href="typography.html">
                                <i class="pe-7s-news-paper"></i>
                                <p>Typography</p>
                            </a>
                        </li>
                        <li>
                            <a href="icons.html">
                                <i class="pe-7s-science"></i>
                                <p>Icons</p>
                            </a>
                        </li>
                        <li>
                            <a href="maps.html">
                                <i class="pe-7s-map-marker"></i>
                                <p>Maps</p>
                            </a>
                        </li>
                        <li>
                            <a href="notifications.html">
                                <i class="pe-7s-bell"></i>
                                <p>Notifications</p>
                            </a>
                        </li>
                        <li class="active-pro">
                            <a href="upgrade.html">
                                <i class="pe-7s-rocket"></i>
                                <p>Upgrade to PRO</p>
                            </a>
                        </li>
                    </ul>
                </div>
            </div>

            <div class="main-panel">
                <nav class="navbar navbar-default navbar-fixed">
                    <div class="container-fluid">
                        <div class="navbar-header">
                            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#navigation-example-2">
                                <span class="sr-only">Toggle navigation</span>
                                <span class="icon-bar"></span>
                                <span class="icon-bar"></span>
                                <span class="icon-bar"></span>
                            </button>
                            <a class="navbar-brand" href="#">User</a>
                        </div>
                        <div class="collapse navbar-collapse">
                            <ul class="nav navbar-nav navbar-left">
                                <li>
                                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                                        <i class="fa fa-dashboard"></i>
                                        <p class="hidden-lg hidden-md">Dashboard</p>
                                    </a>
                                </li>
                                <li class="dropdown">
                                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                                        <i class="fa fa-globe"></i>
                                        <b class="caret hidden-sm hidden-xs"></b>
                                        <span class="notification hidden-sm hidden-xs">5</span>
                                        <p class="hidden-lg hidden-md">
                                            5 Notifications
                                            <b class="caret"></b>
                                        </p>
                                    </a>
                                    <ul class="dropdown-menu">
                                        <li><a href="#">Notification 1</a></li>
                                        <li><a href="#">Notification 2</a></li>
                                        <li><a href="#">Notification 3</a></li>
                                        <li><a href="#">Notification 4</a></li>
                                        <li><a href="#">Another notification</a></li>
                                    </ul>
                                </li>
                                <li>
                                    <a href="">
                                        <i class="fa fa-search"></i>
                                        <p class="hidden-lg hidden-md">Search</p>
                                    </a>
                                </li>
                            </ul>

                            <ul class="nav navbar-nav navbar-right">
                                <li>
                                    <a href="">
                                        <p>Account</p>
                                    </a>
                                </li>
                                <li class="dropdown">
                                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                                        <p>
                                            Dropdown
                                            <b class="caret"></b>
                                        </p>

                                    </a>
                                    <ul class="dropdown-menu">
                                        <li><a href="#">Action</a></li>
                                        <li><a href="#">Another action</a></li>
                                        <li><a href="#">Something</a></li>
                                        <li><a href="#">Another action</a></li>
                                        <li><a href="#">Something</a></li>
                                        <li class="divider"></li>
                                        <li><a href="#">Separated link</a></li>
                                    </ul>
                                </li>
                                <li>
                                    <a href="#">
                                        <p>Log out</p>
                                    </a>
                                </li>
                                <li class="separator hidden-lg hidden-md"></li>
                            </ul>
                        </div>
                    </div>
                </nav>


                <div class="content">
                    <form action="tourDetail" method="Post">  
                        <div class="container-fluid">
                            <div class="row">
                                <div class="col-md-8">
                                    <div class="card">
                                        <div class="header">
                                            <h3 class="title" style="font-weight:400">Tour Detail</h3>
                                        </div>

                                        <div class="content">                                                                                     
                                            <div class="row">
                                                <div class="col-md-4">
                                                    <div class="form-group">
                                                        <label>Tour ID</label>
                                                        <input type="text" class="form-control" placeholder="Company" name="tour_ID" readonly="" value="${tourDetail.getTour_ID()}">

                                                    </div>
                                                </div>
                                                <div class="col-md-4">
                                                    <div class="form-group">
                                                        <label>Start Date</label>
                                                        <input type="text" class="form-control" placeholder="YYYY-MM-dd" name="startDate" value="${tourDetail.getStartDate()}">
                                                    </div>
                                                </div>
                                                <div class="col-md-4">
                                                    <div class="form-group">
                                                        <label for="exampleInputEmail1">End Date</label>
                                                        <input type="text" class="form-control" placeholder="YYYY-MM-dd" name="endDate" value="${tourDetail.getEndDate()}">
                                                    </div>
                                                </div>
                                            </div>

                                            <div class="row">
                                                <div class="col-md-4">
                                                    <div class="form-group">
                                                        <label>Hotel</label>
                                                        <input type="text" class="form-control" placeholder="Hotel" name="hotel_ID" value="${tourDetail.getHotel_ID()}">
                                                    </div>
                                                </div>
                                                <div class="col-md-4">
                                                    <div class="form-group">
                                                        <label>City</label>
                                                        <input type="text" class="form-control" placeholder="City" name="city_ID" value="${tourDetail.getCity_ID()}">
                                                    </div>
                                                </div>
                                                <div class="col-md-4">
                                                    <div class="form-group">
                                                        <label>Type</label>
                                                        <select class="form-control" placeholder="Type">
                                                            <c:forEach var="t" items="${requestScope.type}">
                                                                <option selected="${tourDetail.getType_name() == t.getType_ID()}" value="${t.getType_ID()}">${t.getType_Name()}</option>
                                                            </c:forEach>
                                                        </select>                                                                                                         
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="col-md-4">
                                                    <div class="form-group">
                                                        <label>Number People</label>
                                                        <input type="number" class="form-control" placeholder="Number People" name="numberPeople" value="${tourDetail.getNumberPeople()}">
                                                    </div>
                                                </div>
                                                <div class="col-md-4">
                                                    <div class="form-group">
                                                        <label>IMG</label>
                                                        <input type="text" class="form-control" placeholder="Link Img" name="img" value="${tourDetail.getImg()}">
                                                    </div>
                                                </div>
                                                <div class="col-md-4">
                                                    <div class="form-group">
                                                        <label>Total Price</label>
                                                        <input type="text" class="form-control" placeholder="Total Price" name="totalPrice" value="${tourDetail.getTotalPrice()}">
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="col-md-12">
                                                    <div class="form-group">
                                                        <label>Content</label>
                                                        <textarea rows="5" class="form-control" placeholder="Here can be your Content" name="content" value="${tourDetail.getContent()}"></textarea>
                                                    </div>
                                                </div>
                                            </div>

                                            <div class="header">
                                                <h5 class="title" style="margin-left: 5%; font-size: 20px; font-weight:400">List Activity</h5>
                                            </div>


                                            <div class="content table-responsive table-full-width">
                                                <table class="table table-hover table-striped">
                                                    <thead>
                                                    <th style="display: none">ID Tour</th>
                                                    <th>Activity ID</th>
                                                    <th>Activity Name</th>
                                                    <th>Landscape Address</th>
                                                    <th>Time</th>   
                                                    <th>Activity</th> 
                                                    </thead>
                                                    <tbody>
                                                        <c:forEach var="k" items="${requestScope.listActivity}">
                                                    <tr>
                                                        <td style="display: none">${k.getTour_ID()}</td>
                                                        <td>${k.getActivity_ID()}</td>                                                      
                                                        <td>${k.getActivityName()}</td>
                                                        <td>${k.getLandscape_Address()}</td>
                                                        <td>${k.getTime()}</td>                                                        
                                                        <td style="display: flex">
                                                            
                                                            <div style="margin-right: 10%; font-size:25px">
                                                                <a href="actionUpdate?tour=${k}" onclick="">
                                                                    <i class="pe-7s-news-paper" title="Detail"></i>
                                                                </a>
                                                            </div>
                                                            <div style=" font-size:25px">
                                                                <a href="actionUpdate?tour=${k}" >
                                                                    <i class="pe-7s-trash" title="Delete"></i>
                                                                </a>
                                                            </div>
                                                        </td>
                                                        
                                                    </tr>
                                                    </c:forEach>
                                                    </tbody>
                                                </table>
                                            </div>

                                          <div style="display: flex">
                                              <c:if test="${tourDetail.getIsDelete() == true}">
                                                 <button type="submit" class="btn  btn-fill " style="margin-right: 5%" name="isDelete" value="false">Ban Tour</button>
                                              <div class="clearfix"></div>  
                                              </c:if>
                                              <c:if test="${tourDetail.getIsDelete() == false}">
                                                  <button type="submit" class="btn  btn-fill " style="margin-right: 5%; background-color: red; border-color: red" name="isDelete" value="true">UnBan Tour</button>
                                              <div class="clearfix"></div>
                                              </c:if>
                                              <button type="submit" class="btn btn-info btn-fill pull-right" onclick="ShowMessUpdate">Update Tour</button>
                                            <div class="clearfix"></div>
                                            
                                         
                                         </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="card card-user">
                                        <div class="image">
                                            <img src="https://ununsplash.imgix.net/photo-1431578500526-4d9613015464?fit=crop&fm=jpg&h=300&q=75&w=400" alt="..."/>
                                        </div>
                                        <div class="content">
                                            <div class="author">
                                                <a href="#">
                                                    <img class="avatar border-gray" src="assets/img/faces/face-3.jpg" alt="..."/>
                                                    <h4 class="title">Mike Andrew<br />
                                                        <small>michael24</small>
                                                    </h4>
                                                </a>
                                            </div>
                                            <p class="description text-center"> "Lamborghini Mercy <br>
                                                Your chick she so thirsty <br>
                                                I'm in that two seat Lambo"
                                            </p>
                                        </div>
                                        <hr>
                                        <div class="text-center">
                                            <button href="#" class="btn btn-simple"><i class="fa fa-facebook-square"></i></button>
                                            <button href="#" class="btn btn-simple"><i class="fa fa-twitter"></i></button>
                                            <button href="#" class="btn btn-simple"><i class="fa fa-google-plus-square"></i></button>
                                        </div>
                                    </div>
                                </div>

                            </div>
                        </div>
                    </form>
                </div>


                <footer class="footer">
                    <div class="container-fluid">
                        <nav class="pull-left">
                            <ul>
                                <li>
                                    <a href="#">
                                        Home
                                    </a>
                                </li>
                                <li>
                                    <a href="#">
                                        Company
                                    </a>
                                </li>
                                <li>
                                    <a href="#">
                                        Portfolio
                                    </a>
                                </li>
                                <li>
                                    <a href="#">
                                        Blog
                                    </a>
                                </li>
                            </ul>
                        </nav>
                    </div>
                </footer>

            </div>
        </div>


    </body>

    <!--   Core JS Files   -->
    <script src="assets/js/jquery.3.2.1.min.js" type="text/javascript"></script>
    <script src="assets/js/bootstrap.min.js" type="text/javascript"></script>

    <!--  Charts Plugin -->
    <script src="assets/js/chartist.min.js"></script>

    <!--  Notifications Plugin    -->
    <script src="assets/js/bootstrap-notify.js"></script>

    <!--  Google Maps Plugin    -->
    <script type="text/javascript" src="https://maps.googleapis.com/maps/api/js?key=YOUR_KEY_HERE"></script>

    <!-- Light Bootstrap Table Core javascript and methods for Demo purpose -->
    <script src="assets/js/light-bootstrap-dashboard.js?v=1.4.0"></script>

    <!-- Light Bootstrap Table DEMO methods, don't include it in your project! -->
    <script src="assets/js/demo.js"></script>
<!--    <script>
        function ShowMessUpdate(id){
            var option = confirm('Are You Sure ?');
            if(option === true){
                window.location.href = 'actionUpdate?tour='+id;
            }
        }
    </script>-->

</html>
