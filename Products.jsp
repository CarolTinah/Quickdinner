<%-- 
    Document   : Products
    Created on : Aug 3, 2022, 5:35:53 PM
    Author     : hp
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import = "lol.AppData, java.sql.*, lol.DatabaseConn" %>

<%

     AppData data = new AppData();
     ResultSet res = data.Products();
   
                                              
     DatabaseConn co = new DatabaseConn();
     Connection conn = co.getConn();
     Statement st= conn.createStatement();
                               
                                             

%>

<!doctype html>
<html lang="en">

 
<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Concept - Bootstrap 4 Admin Dashboard Template</title>
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="assets/vendor/bootstrap/css/bootstrap.min.css">
    <link href="assets/vendor/fonts/circular-std/style.css" rel="stylesheet">
    <link rel="stylesheet" href="assets/libs/css/style.css">
    <link rel="stylesheet" href="assets/vendor/fonts/fontawesome/css/fontawesome-all.css">
    <link rel="stylesheet" href="assets/vendor/charts/chartist-bundle/chartist.css">
    <link rel="stylesheet" href="assets/vendor/charts/morris-bundle/morris.css">
    <link rel="stylesheet" href="assets/vendor/fonts/material-design-iconic-font/css/materialdesignicons.min.css">
    <link rel="stylesheet" href="assets/vendor/charts/c3charts/c3.css">
    <link rel="stylesheet" href="assets/vendor/fonts/flag-icon-css/flag-icon.min.css">
     <link rel="stylesheet" href="css/style.css"/>
</head>

<body>
 
    <!-- ============================================================== -->
    <!-- main wrapper -->
    <!-- ============================================================== -->
    <div class="dashboard-main-wrapper">
        <!-- ============================================================== -->
        <!-- navbar -->
        <!-- ============================================================== -->
       <div class="dashboard-header">
            <nav class="navbar navbar-expand-lg bg-white fixed-top">
                <a class="navbar-brand" href="../index.html">Concept</a>
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav ml-auto navbar-right-top">
                        <li class="nav-item">
                            <div id="custom-search" class="top-search-bar">
                                <input class="form-control" type="text" placeholder="Search..">
                            </div>
                        </li>
                        <li class="nav-item dropdown notification">
                            <a class="nav-link nav-icons" href="#" id="navbarDropdownMenuLink1" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><i class="fas fa-fw fa-bell"></i> <span class="indicator"></span></a>
                            <ul class="dropdown-menu dropdown-menu-right notification-dropdown">
                                <li>
                                    <div class="notification-title"> Notification</div>
                                    <div class="notification-list">
                                        <div class="list-group">
                                            <a href="#" class="list-group-item list-group-item-action active">
                                                <div class="notification-info">
                                                    <div class="notification-list-user-img"><img src="../assets/images/avatar-2.jpg" alt="" class="user-avatar-md rounded-circle"></div>
                                                    <div class="notification-list-user-block"><span class="notification-list-user-name">Jeremy Rakestraw</span>accepted your invitation to join the team.
                                                        <div class="notification-date">2 min ago</div>
                                                    </div>
                                                </div>
                                            </a>
                                            <a href="#" class="list-group-item list-group-item-action">
                                                <div class="notification-info">
                                                    <div class="notification-list-user-img"><img src="../assets/images/avatar-3.jpg" alt="" class="user-avatar-md rounded-circle"></div>
                                                    <div class="notification-list-user-block"><span class="notification-list-user-name">
John Abraham</span>is now following you
                                                        <div class="notification-date">2 days ago</div>
                                                    </div>
                                                </div>
                                            </a>
                                            <a href="#" class="list-group-item list-group-item-action">
                                                <div class="notification-info">
                                                    <div class="notification-list-user-img"><img src="../assets/images/avatar-4.jpg" alt="" class="user-avatar-md rounded-circle"></div>
                                                    <div class="notification-list-user-block"><span class="notification-list-user-name">Monaan Pechi</span> is watching your main repository
                                                        <div class="notification-date">2 min ago</div>
                                                    </div>
                                                </div>
                                            </a>
                                            <a href="#" class="list-group-item list-group-item-action">
                                                <div class="notification-info">
                                                    <div class="notification-list-user-img"><img src="../assets/images/avatar-5.jpg" alt="" class="user-avatar-md rounded-circle"></div>
                                                    <div class="notification-list-user-block"><span class="notification-list-user-name">Jessica Caruso</span>accepted your invitation to join the team.
                                                        <div class="notification-date">2 min ago</div>
                                                    </div>
                                                </div>
                                            </a>
                                        </div>
                                    </div>
                                </li>
                                <li>
                                    <div class="list-footer"> <a href="#">View all notifications</a></div>
                                </li>
                            </ul>
                        </li>
                        <li class="nav-item dropdown connection">
                            <a class="nav-link" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"> <i class="fas fa-fw fa-th"></i> </a>
                            <ul class="dropdown-menu dropdown-menu-right connection-dropdown">
                                <li class="connection-list">
                                    <div class="row">
                                        <div class="col-xl-4 col-lg-4 col-md-6 col-sm-12 col-12 ">
                                            <a href="#" class="connection-item"><img src="../assets/images/github.png" alt="" > <span>Github</span></a>
                                        </div>
                                        <div class="col-xl-4 col-lg-4 col-md-6 col-sm-12 col-12 ">
                                            <a href="#" class="connection-item"><img src="../assets/images/dribbble.png" alt="" > <span>Dribbble</span></a>
                                        </div>
                                        <div class="col-xl-4 col-lg-4 col-md-6 col-sm-12 col-12 ">
                                            <a href="#" class="connection-item"><img src="../assets/images/dropbox.png" alt="" > <span>Dropbox</span></a>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-xl-4 col-lg-4 col-md-6 col-sm-12 col-12 ">
                                            <a href="#" class="connection-item"><img src="../assets/images/bitbucket.png" alt=""> <span>Bitbucket</span></a>
                                        </div>
                                        <div class="col-xl-4 col-lg-4 col-md-6 col-sm-12 col-12 ">
                                            <a href="#" class="connection-item"><img src="../assets/images/mail_chimp.png" alt="" ><span>Mail chimp</span></a>
                                        </div>
                                        <div class="col-xl-4 col-lg-4 col-md-6 col-sm-12 col-12 ">
                                            <a href="#" class="connection-item"><img src="../assets/images/slack.png" alt="" > <span>Slack</span></a>
                                        </div>
                                    </div>
                                </li>
                                <li>
                                    <div class="conntection-footer"><a href="#">More</a></div>
                                </li>
                            </ul>
                        </li>
                        <li class="nav-item dropdown nav-user">
                            <a class="nav-link nav-user-img" href="#" id="navbarDropdownMenuLink2" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><img src="../assets/images/avatar-1.jpg" alt="" class="user-avatar-md rounded-circle"></a>
                            <div class="dropdown-menu dropdown-menu-right nav-user-dropdown" aria-labelledby="navbarDropdownMenuLink2">
                                <div class="nav-user-info">
                                    <h5 class="mb-0 text-white nav-user-name">
John Abraham</h5>
                                    <span class="status"></span><span class="ml-2">Available</span>
                                </div>
                                <a class="dropdown-item" href="#"><i class="fas fa-user mr-2"></i>Account</a>
                                <a class="dropdown-item" href="#"><i class="fas fa-cog mr-2"></i>Setting</a>
                                <a class="dropdown-item" href="#"><i class="fas fa-power-off mr-2"></i>Logout</a>
                            </div>
                        </li>
                    </ul>
                </div>
            </nav>
        </div>
        <!-- ============================================================== -->
        <!-- end navbar -->
        <!-- ============================================================== -->
        <!-- ============================================================== -->
        <!-- left sidebar -->
        <!-- ============================================================== -->
       <div class="nav-left-sidebar sidebar-dark">
            <div class="menu-list">
                <nav class="navbar navbar-expand-lg navbar-light">
                    <a class="d-xl-none d-lg-none" href="index.html">Dashboard</a>
                    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                        <span class="navbar-toggler-icon"></span>
                    </button>
                    <div class="collapse navbar-collapse" id="navbarNav">
                        <ul class="navbar-nav flex-column">
                            <li class="nav-divider">
                                Menu
                            </li>
                            <li class="nav-item ">
                                <a class="nav-link active" href="AdminDashboard.jsp" ><i class="fa fa-fw fa-user-circle"></i>Dashboard <span class="badge badge-success">6</span></a>
                                <div id="submenu-1" class="collapse submenu" style="">
                                    <ul class="nav flex-column">
                                        <li class="nav-item">
                                            <a class="nav-link" href="#" data-toggle="collapse" aria-expanded="false" data-target="#submenu-1-2" aria-controls="submenu-1-2">E-Commerce</a>
                                            <div id="submenu-1-2" class="collapse submenu" style="">
                                                <ul class="nav flex-column">
                                                    <li class="nav-item">
                                                        <a class="nav-link" href="index.html">E Commerce Dashboard</a>
                                                    </li>
                                                    <li class="nav-item">
                                                        <a class="nav-link" href="ecommerce-product.html">Product List</a>
                                                    </li>
                                                    <li class="nav-item">
                                                        <a class="nav-link" href="ecommerce-product-single.html">Product Single</a>
                                                    </li>
                                                    <li class="nav-item">
                                                        <a class="nav-link" href="ecommerce-product-checkout.html">Product Checkout</a>
                                                    </li>
                                                </ul>
                                            </div>
                                        </li>
                                        <li class="nav-item">
                                            <a class="nav-link" href="dashboard-finance.html">Customer Tracking</a>
                                        </li>
                                        <li class="nav-item">
                                            <a class="nav-link" href="dashboard-sales.html">Sales</a>
                                        </li>
                                        <li class="nav-item">
                                            <a class="nav-link" href="#" data-toggle="collapse" aria-expanded="false" data-target="#submenu-1-1" aria-controls="submenu-1-1">Infulencer</a>
                                            <div id="submenu-1-1" class="collapse submenu" >
                                                <ul class="nav flex-column">
                                                    <li class="nav-item">
                                                        <a class="nav-link" href="dashboard-influencer.html">Influencer</a>
                                                    </li>
                                                    <li class="nav-item">
                                                        <a class="nav-link" href="influencer-finder.html">Influencer Finder</a>
                                                    </li>
                                                    <li class="nav-item">
                                                        <a class="nav-link" href="influencer-profile.html">Influencer Profile</a>
                                                    </li>
                                                </ul>
                                            </div>
                                        </li>
                                    </ul>
                                </div>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="Customers.jsp" ><i class="fa fa-fw fa-rocket"></i>Customer Tracking</a>
                                <div id="submenu-2" class="collapse submenu" >
                                    
                                </div>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="HRManagement.jsp" ><i class="fas fa-fw fa-chart-pie"></i>Human Resource</a>
                                <div id="submenu-3" class="collapse submenu" >
                                   
                                </div>
                            </li>
                            <li class="nav-item ">
                                <a class="nav-link" href="Sales.jsp"><i class="fab fa-fw fa-wpforms"></i>Sales</a>
                                <div id="submenu-4" class="collapse submenu" >
                                   
                                </div>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="#" ><i class="fas fa-fw fa-table"></i>Products</a>
                                <div id="submenu-5" class="collapse submenu" style="">
                                   
                                </div>
                            </li>
                            <li class="nav-divider">
                                Features
                            </li>
                           
                           
                           
                           
                            <li class="nav-item">
                                <a class="nav-link" href="#" data-toggle="collapse" aria-expanded="false" data-target="#submenu-10" aria-controls="submenu-10"><i class="fas fa-f fa-folder"></i>Reports</a>
                                <div id="submenu-10" class="collapse submenu" style="">
                                   
                                </div>
                            </li>
                        </ul>
                    </div>
                </nav>
            </div>
        </div>>
        <!-- ============================================================== -->
        <!-- end left sidebar -->
        <!-- ============================================================== -->
        <!-- ============================================================== -->
        <!-- wrapper  -->
        <!-- ============================================================== -->
        <div class="dashboard-wrapper">
            <div class="container-fluid dashboard-content">
                <!-- ============================================================== -->
                <!-- pageheader -->
                <!-- ============================================================== -->
                <div class="row">
                    <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
                        <div class="page-header">
                            <h2 class="pageheader-title">Product Management </h2>
                            <p class="pageheader-text">Proin placerat ante duiullam scelerisque a velit ac porta, fusce sit amet vestibulum mi. Morbi lobortis pulvinar quam.</p>
                            <div class="page-breadcrumb">
                                <nav aria-label="breadcrumb">
                                    <ol class="breadcrumb">
                                        <li class="breadcrumb-item"><a href="#" class="breadcrumb-link">Dashboard</a></li>
                                        <li class="breadcrumb-item"><a href="#" class="breadcrumb-link">Pages</a></li>
                                        <li class="breadcrumb-item active" aria-current="page">Products</li>
                                    </ol>
                                </nav>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- ============================================================== -->
                <!-- end pageheader -->
                <!-- ============================================================== -->
                
                
                <div class ="row">
                     
                    <div class="col-xl-9 col-lg-9 col-md-12 col-sm-12 col-12" style="margin: 0 auto;">
                            <div class="card">
                                <h5 class="card-header"style =" text-align: center;" >Product Lines</h5>
                                <div class="card-body">
                                    <table class="table table-bordered">
                                        <thead>
                                            <tr>
                                                <th scope="col">#</th>
                                                <th scope="col">Long Term</th>
                                                <th scope="col">Medium Term</th>
                                                <th scope="col" colspan = "2">Short Term</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <th scope="row"></th>
                                                <td><div class = "m-r-10"><img src = "images/home-img-3.png" class = "rounded" width="45"></div></td>
                                                <td><div class = "m-r-10"><img src = "images/dish-3.png" class = "rounded" width="45"></div></td>
                                                <td><div class = "m-r-10"><img src = "images/menu-7.jpg" class = "rounded" width="50"></div><td><div class = "m-r-10"><img src = "images/menu-9.jpg" class = "rounded" width="50"></div></td></td>
                                            </tr>    
                                        </tbody>
                                        <tfoot>
                                        
                                            
                                            <tr>
                                                                              
                                              <td></td>
                                                <td>pizza<span style = "float: right">
                                                        <%
                                                  ResultSet pizza = st.executeQuery("select sum(Product_quantity) from products where Product_line ='"+"long-term"+"'");
                                                 if(pizza.next()){                                                    
                                                 %>    
                                                        Qty: <%out.print(pizza.getInt(1));
                                                            }%>
                                                    </span></td>
                                                <td>chicken<span style = "float: right">
                                                         <%
                                                  ResultSet chicken = st.executeQuery("select sum(Product_quantity) from products where Product_line ='"+"middle-term"+"'");
                                                 if(chicken.next()){                                                    
                                                 %>    
                                                        Qty: <%out.print(chicken.getInt(1));
                                                        
                                                            }%></span></td>
                                                <td colspan="2">burgers & Drinks<span style = "float: right">
                                                       <%
                                                 ResultSet drinks_burgers = st.executeQuery("select sum(Product_quantity) from products where Product_line ='"+"short-term"+"'");
                                                      if(drinks_burgers.next()){                                                    
                                                 %>    
                                                        Qty: <%out.print(drinks_burgers.getInt(1));
                                                        
                                                            }%>
                                                    </span></td>
                                            </tr>
                                        <form action="CalculateQuantity" method="post">
                                             <tr>
                                                <td></td>
                                       
                                                <td colspan="4"><div style="display:inline-flex; float: right;" ><div style="margin-top: 25px; " ><input type="text" name="dailyInput" style="border: 1px #002752 solid" ></div><div style = "margin-left: 1rem;"><button class="btn btn-outline-success" >Generate Quantity</button></div></div></td>
                                            </tr>
                                            
                                        </form>
                                           
                                        </tfoot>
                                    </table>
                                </div>
                            </div>
                        </div>
                  
                </div>
                
                
                <!-- end of bordered table -->
                <div class="row">
                    <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
                        
                        <div class="col-xl-12 col-lg-12 col-md-6 col-sm-12 col-12">
                            <div class="card">
                                <h5 class="card-header" style="text-align: center">Available Products</h5>
                                <div class="card-body p-0">
                                    <div class="table-responsive">
                                        <table class="table">
                                            <thead class="bg-light">
                                                <tr class="border-0">
                                                    <th class="border-0">id</th>
                                                    <th class="border-0">Image</th>
                                                    <th class="border-0">Product Name</th>
                                                    <th class="border-0">Product Line</th>
                                                    <th class="border-0">Quantity</th>
                                                    <th class="border-0">Price</th>
                                                    <th class="border-0">Likes</th>
                                                    <th class="border-0">DELETE</th>
                                                   
                                                </tr>
                                                
                                            </thead>
                                            <!<!-- table body starts -->
                                            <tbody>
                                               
                                                <%
                                                while(res.next()){
                                                %>
                                           
                                                <%
                                                   out.print("<tr>");
                                                   out.print("<td>"+res.getString("Product_id")+"</td>");
                                                   %>
                                                
                                                <%
                                                   out.print(" <td>");
                                                   out.print(" <div class=\"m-r-10\"><img src=\"images/"+res.getString("product_pic")+"\" class=\"rounded\" width=\"45\"></div>");
                                                   out.print(" </td>");
                                                   out.print(" <td>"+res.getString("Product_name")+"</td>");
                                                   out.print(" <td>"+res.getString("Product_line")+"</td>");
                                                   out.print(" 	<td>"+res.getString("Product_quantity")+"</td>");
                                                   out.print("  <td>"+res.getString("Product_price")+"</td>");
                                                   out.print(" <td>"+res.getString("product_like")+"</td>");
                                                   %>  <form method="post" action="delete_product">  <input type="hidden" name="p_id" value="<%=res.getString("Product_id")%>"><td><button type="submit" class="btn-outline-danger">DELETE ITEM</button></td> </form> <%
                                                   out.print(" </tr>");
                                                  }
                                             %>
                                                 <%
                                                %>
                                                
                                                
                                               
                                                <!<!-- table button section -->
                                                <tr>
                                                    <td colspan="9"><a href="#" class="btn btn-outline-success float-right">View All</a></td>
                                                </tr>
                                            </tbody>
                                            <!<!-- table body ends -->
                                        </table>
                                    </div>
                                </div>
                            </div>
                        </div>

                    </div>
                </div>
            </div>

             <div class="container col-lg-6 ">
                <div class="card">
                    <div class="card-body">
                        <form action = "AddProduct" method="post">
                            <div class="form-group">
                                <label for="inputText3" class="col-form-label">Name</label>
                                <input id="inputText3" type="text" class="form-control" name = "p_name">
                                <label for="inputText3" class="col-form-label">Product Line</label>
                                <input id="inputText3" type="text" class="form-control" name="p_line">
                                <label for="inputText3" class="col-form-label">Price</label>
                                <input id="inputText3" type="text" class="form-control" name="p_price">
                                <label for="inputText3" class="col-form-label">Category</label>
                                <select id="inputText3" class="form-control" name="category">
                                    <option>Category</option>
                                    <option value="pizza">Pizza</option>
                                    <option value="chicken">Chicken</option>
                                    <option value="burger">Burgers</option>
                                    <option value="drinks">Drinks</option>
                                </select>
                                <label for="exampleFormControlTextarea1">Description</label>
                                <textarea class="form-control" id="exampleFormControlTextarea1" rows="3" name="descrip"></textarea>
                               
                                <label class="" for="customFile"></label>
                                <input type="file" class="" id="customFile" name="p_image">
                            </div>
                            <button type="submit" class="btn-outline-success">Add product</button>
                            
                            
                        </form>
                    </div>
                </div>
             </div>
            <!-- ============================================================== -->
            <!-- footer -->
            <!-- ============================================================== -->
            <div class="footer">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-xl-6 col-lg-6 col-md-12 col-sm-12 col-12">
                            Copyright © 2018 Concept. All rights reserved. Dashboard by <a href="https://colorlib.com/wp/">Colorlib</a>.
                        </div>
                        <div class="col-xl-6 col-lg-6 col-md-12 col-sm-12 col-12">
                            <div class="text-md-right footer-links d-none d-sm-block">
                                <a href="javascript: void(0);">About</a>
                                <a href="javascript: void(0);">Support</a>
                                <a href="javascript: void(0);">Contact Us</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- ============================================================== -->
            <!-- end footer -->
            <!-- ============================================================== -->
        </div>
        <!-- ============================================================== -->
        <!-- end main wrapper -->
        <!-- ============================================================== -->
    </div>
    <!-- ============================================================== -->
    <!-- end main wrapper -->
    <!-- ============================================================== -->
    <!-- Optional JavaScript -->
    <script src="../assets/vendor/jquery/jquery-3.3.1.min.js"></script>
    <script src="../assets/vendor/bootstrap/js/bootstrap.bundle.js"></script>
    <script src="../assets/vendor/slimscroll/jquery.slimscroll.js"></script>
    <script src="../assets/libs/js/main-js.js"></script>
</body>
 
</html>

