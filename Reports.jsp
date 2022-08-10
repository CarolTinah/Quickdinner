<%-- 
    Document   : Reports
    Created on : Aug 4, 2022, 9:44:21 PM
    Author     : HP
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import = "lol.DatabaseConn, java.sql.*" %>
<%
    DatabaseConn conn = new DatabaseConn();

    Connection co = conn.getConn();

    Statement st = co.createStatement();
    
    
    //Queries for HR Managemment...............
    ResultSet results = st.executeQuery("select count(id) from employees where role= '"+"long"+"'");
    results.next();
    int l = results.getInt(1);
    ResultSet ress = st.executeQuery("select count(id) from employees where role= '"+"medium"+"'");
    ress.next();
    int m = ress.getInt(1);
    ResultSet shortres = st.executeQuery("select count(id) from employees where role= '"+"short"+"'");
    shortres.next();
    int s = shortres.getInt(1);
    // querries for tracking which customers need which products
    //according to male
    ResultSet res = st.executeQuery("select count(Customer_gender) from sales where Customer_gender= '"+"male"+"' AND category = '"+"pizza"+"'");
    res.next();
    int p = res.getInt(1);
    ResultSet res1 = st.executeQuery("select count(Customer_gender) from sales where Customer_gender= '"+"male"+"' AND category = '"+"burger"+"'");
    res1.next();
    int b = res1.getInt(1);
    ResultSet res2 = st.executeQuery("select count(Customer_gender) from sales where Customer_gender= '"+"male"+"' AND category = '"+"chicken"+"'");
    res2.next();
    int c = res2.getInt(1);
    ResultSet res3 = st.executeQuery("select count(Customer_gender) from sales where Customer_gender= '"+"male"+"' AND category = '"+"drinks"+"'");
    res3.next();
    int d = res3.getInt(1);
    //according to female
    ResultSet r = st.executeQuery("select count(Customer_gender) from sales where Customer_gender= '"+"female"+"' AND category = '"+"pizza"+"'");
    r.next();
    int p1 = r.getInt(1);
    ResultSet r1 = st.executeQuery("select count(Customer_gender) from sales where Customer_gender= '"+"female"+"' AND category = '"+"burger"+"'");
    r1.next();
    int b1 = r1.getInt(1);
    ResultSet r2 = st.executeQuery("select count(Customer_gender) from sales where Customer_gender= '"+"female"+"' AND category = '"+"chicken"+"'");
    r2.next();
    int c1 = r2.getInt(1);
    ResultSet r3 = st.executeQuery("select count(Customer_gender) from sales where Customer_gender= '"+"female"+"' AND category = '"+"drinks"+"'");
    r3.next();
    int d1 = r3.getInt(1);
    //according to location-central
    ResultSet result4 = st.executeQuery("select count(Region) from sales where Region= '"+"central"+"' AND category = '"+"pizza"+"'");
    result4.next();
    int central = result4.getInt(1);
    ResultSet result5 = st.executeQuery("select count(Region) from sales where Region= '"+"central"+"' AND category = '"+"burger"+"'");
    result5.next();
    int central1  = result5.getInt(1);
    ResultSet result6 = st.executeQuery("select count(Region) from sales where Region= '"+"central"+"' AND category = '"+"chicken"+"'");
    result6.next();
    int central2 = result6.getInt(1);
    ResultSet result7 = st.executeQuery("select count(Region) from sales where Region= '"+"central"+"' AND category = '"+"drinks"+"'");
    result7.next();
    int central3 = result7.getInt(1);
    //according to location-western
    ResultSet result = st.executeQuery("select count(Region) from sales where Region= '"+"western"+"' AND category = '"+"pizza"+"'");
    result.next();
    int w1 = result.getInt(1);
    ResultSet result1 = st.executeQuery("select count(Region) from sales where Region= '"+"western"+"' AND category = '"+"burger"+"'");
    result1.next();
    int w2  = result1.getInt(1);
    ResultSet result2 = st.executeQuery("select count(Region) from sales where Region= '"+"western"+"' AND category = '"+"chicken"+"'");
    result2.next();
    int w3 = result2.getInt(1);
    ResultSet result3 = st.executeQuery("select count(Region) from sales where Region= '"+"western"+"' AND category = '"+"drinks"+"'");
    result3.next();
    int w4 = result3.getInt(1);

    //according to location-eastern
    ResultSet re = st.executeQuery("select count(Region) from sales where Region= '"+"eastern"+"' AND category = '"+"pizza"+"'");
    re.next();
    int e1 = re.getInt(1);
    ResultSet re1 = st.executeQuery("select count(Region) from sales where Region= '"+"eastern"+"' AND category = '"+"burger"+"'");
    re1.next();
    int e2  = re1.getInt(1);
    ResultSet re2 = st.executeQuery("select count(Region) from sales where Region= '"+"eastern"+"' AND category = '"+"chicken"+"'");
    re2.next();
    int e3 = re2.getInt(1);
    ResultSet re3 = st.executeQuery("select count(Region) from sales where Region= '"+"eastern"+"' AND category = '"+"drinks"+"'");
    re3.next();
    int e4 = re3.getInt(1);
    //according to location-northern
    ResultSet re4 = st.executeQuery("select count(Region) from sales where Region= '"+"northern"+"' AND category = '"+"pizza"+"'");
    re4.next();
    int n1 = re4.getInt(1);
    ResultSet re5 = st.executeQuery("select count(Region) from sales where Region= '"+"northern"+"' AND category = '"+"burger"+"'");
    re5.next();
    int n2  = re5.getInt(1);
    ResultSet re6 = st.executeQuery("select count(Region) from sales where Region= '"+"northern"+"' AND category = '"+"chicken"+"'");
    re6.next();
    int n3 = re6.getInt(1);
    ResultSet re7 = st.executeQuery("select count(Region) from sales where Region= '"+"northern"+"' AND category = '"+"drinks"+"'");
    re7.next();
    int n4 = re7.getInt(1);
    //queries for product and sales management ..............
    //queries for quantity available for each product
    ResultSet pizza = st.executeQuery("select sum(Product_quantity) from products where category = '"+"pizza"+"'");
    pizza.next();
    int piz = pizza.getInt(1);
    ResultSet burger = st.executeQuery("select sum(Product_quantity) from products where category = '"+"burger"+"'");
    burger.next();
    int bur = burger.getInt(1);
    ResultSet chicken = st.executeQuery("select sum(Product_quantity) from products where category = '"+"chicken"+"'");
    chicken.next();
    int chi = chicken.getInt(1);
    ResultSet drinks = st.executeQuery("select sum(Product_quantity) from products where category = '"+"drinks"+"'");
    drinks.next();
    int dri = drinks.getInt(1);
    // queries for Quantity sold for each product
    ResultSet pizzaSold = st.executeQuery("select sum(Product_Quantity) from sales where category = '"+"pizza"+"'");
    pizzaSold.next();
    int P= pizzaSold.getInt(1);
    ResultSet chickenSold = st.executeQuery("select sum(Product_Quantity) from sales where category = '"+"chicken"+"'");
    chickenSold.next();
    int C= chickenSold.getInt(1);
    ResultSet burgerSold = st.executeQuery("select sum(Product_Quantity) from sales where category = '"+"burger"+"'");
    burgerSold.next();
    int B= burgerSold.getInt(1);
    ResultSet drinksSold = st.executeQuery("select sum(Product_Quantity) from sales where category = '"+"drinks"+"'");
    drinksSold.next();
    int D= drinksSold.getInt(1);
    //queries for totalSales for each product
    ResultSet Res = st.executeQuery("select sum(Amount) from sales where category = '"+"pizza"+"'");
    Res.next();
    int Pizza= Res.getInt(1);
    ResultSet Result = st.executeQuery("select sum(Amount) from sales where category = '"+"chicken"+"'");
    Result.next();
    int Chicken= Result.getInt(1);
    ResultSet Result1 = st.executeQuery("select sum(Amount) from sales where category = '"+"burger"+"'");
    Result1.next();
    int Burgers= Result1.getInt(1);
    ResultSet Result2 = st.executeQuery("select sum(Amount) from sales where category = '"+"drinks"+"'");
    Result2.next();
    int Drinks= Result2.getInt(1);
    
        
        

%>

<!doctype html>
<html lang="en">

 
<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title></title>
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
    <<link rel="stylesheet" href="css/style.css"/>
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
                    <a class="d-xl-none d-lg-none" href="#">Dashboard</a>
                    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                        <span class="navbar-toggler-icon"></span>
                    </button>
                    <div class="collapse navbar-collapse" id="navbarNav">
                        <ul class="navbar-nav flex-column">
                            <li class="nav-divider">
                                Menu
                            </li>
                            <li class="nav-item ">
                                <a class="nav-link active" href="AdminDashboard.jsp" data-toggle="collapse" aria-expanded="false" data-target="#submenu-1" aria-controls="submenu-1"><i class="fa fa-fw fa-user-circle"></i>Dashboard <span class="badge badge-success">6</span></a>
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
                                <a class="nav-link" href="Customers.jsp" data-toggle="collapse" aria-expanded="false" data-target="#submenu-2" aria-controls="submenu-2"><i class="fa fa-fw fa-rocket"></i>Customer Tracking</a>
                                <div id="submenu-2" class="collapse submenu" >
                                    
                                </div>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="HRManagement.jsp" data-toggle="collapse" aria-expanded="false" data-target="#submenu-3" aria-controls="submenu-3"><i class="fas fa-fw fa-chart-pie"></i>Human Resource</a>
                                <div id="submenu-3" class="collapse submenu" >
                                   
                                </div>
                            </li>
                            <li class="nav-item ">
                                <a class="nav-link" href="Sales.jsp" data-toggle="collapse" aria-expanded="false" data-target="#submenu-4" aria-controls="submenu-4"><i class="fab fa-fw fa-wpforms"></i>Sales</a>
                                <div id="submenu-4" class="collapse submenu" >
                                   
                                </div>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="Products.jsp" data-toggle="collapse" aria-expanded="false" data-target="#submenu-5" aria-controls="submenu-5"><i class="fas fa-fw fa-table"></i>Products</a>
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
                            <h2 class="pageheader-title">Reports </h2>
                            <p class="pageheader-text">Proin placerat ante duiullam scelerisque a velit ac porta, fusce sit amet vestibulum mi. Morbi lobortis pulvinar quam.</p>
                            <div class="page-breadcrumb">
                                <nav aria-label="breadcrumb">
                                    <ol class="breadcrumb">
                                         <li class="breadcrumb-item"><a href="#" class="breadcrumb-link">Dashboard</a></li>
                                         <li class="breadcrumb-item"><a href="#" class="breadcrumb-link">Pages</a></li>
                                         <li class="breadcrumb-item active" aria-current="page">Reports</li>                                    </ol>
                                </nav>
                            </div>
                              
                        </div>
                    </div>
                </div>
                <!-- ============================================================== -->
                <!-- end pageheader -->
                <!-- ============================================================== -->
                
                <div class ="row">
                    
                     <div class="col-xl-10 col-lg-10 col-md-12 col-sm-12 col-12" style="margin: 0 auto;" >
                            <div class="card">
                                <h5 class="card-header text-center">General Report</h5>
                                <div class="card-body">
                                    <table class="table table-bordered">
                                        <thead>
                                            <tr>
                                                <th scope="col" colspan="5" class ="text-center" >Human Resource</th>
                                               
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                             
                                                <td scope="row">Product Line</td>
                                                <td colspan = "4">Number of employees</td>
                                                
                                            </tr>
                                            <tr>
                                                <td>Long Term</td>
                                                <td colspan = "4"><% out.print(l); %></td>
                                            </tr>
                                            <tr>
                                                <td>Short Term</td>
                                               <td colspan = "4"><% out.print(s); %></td>
                                            </tr>
                                            <tr>
                                                <td>Medium Term</td>
                                               <td colspan = "4"><% out.print(m); %></td>
                                            </tr>
                                             <tr>
                                                <th scope="col" colspan="5" class ="text-center" >Customer Tracking</th>
                                               
                                            </tr>
                                            
                                            <tr>
                                                <td>category</td>
                                                <td>Pizza</td>
                                                <td>Chicken</td>
                                                <td>Burger</td>
                                                <td>Drinks</td>
                                            </tr>
                                            <tr>
                                                 <td>Female</td>
                                                <td><% out.print(p1); %></td>
                                                <td><% out.print(c1); %></td>
                                                <td><% out.print(b1); %></td>
                                                <td><% out.print(d1); %></td>
                                            </tr>
                                             <tr>
                                                 <td>Male</td>
                                                <td><% out.print(p); %></td>
                                                <td><% out.print(c); %></td>
                                                <td><% out.print(b); %></td>
                                                <td><% out.print(d); %></td>
                                            </tr>
                                             <tr>
                                                 <td>Western Region</td>
                                                <td><% out.print(w1); %></td>
                                                <td><% out.print(w3); %></td>
                                                <td><% out.print(w2); %></td>
                                                <td><% out.print(w4); %></td>
                                            </tr>
                                             <tr>
                                                 <td>Northern Region</td>
                                                <td><% out.print(n1); %></td>
                                                <td><% out.print(n3); %></td>
                                                <td><% out.print(n2); %></td>
                                                <td><% out.print(n4); %></td>
                                            </tr>
                                             <tr>
                                                 <td>Central Region</td>
                                                <td><% out.print(central); %></td>
                                                <td><% out.print(central2); %></td>
                                                <td><% out.print(central1); %></td>
                                                <td><% out.print(central3); %></td>
                                            </tr>
                                             <tr>
                                                 <td>Eastern Region</td>
                                                <td><% out.print(e1); %></td>
                                                <td><% out.print(e3); %></td>
                                                <td><% out.print(e2); %></td>
                                                <td><% out.print(e4); %></td>
                                            </tr>
                                            <tr>
                                                <th scope="col" colspan="5" class ="text-center" >Product And Sales Management</th>
                                               
                                            </tr>
                                            <tr>
                                                <td>Food</td>
                                                <td>Quantity Available</td>
                                                <td>Quantity Sold</td>
                                                <td colspan = "2">Revenue</td>
                                            </tr>
                                            <tr>
                                                <td>Pizza</td>
                                                <td><% out.print(piz); %></td>
                                                <td><% out.print(P); %></td>
                                                <td colspan = "2"><% out.print(Pizza); %></td>
                                            </tr>
                                              <tr>
                                                <td>Chicken</td>
                                                <td><% out.print(chi); %></td>
                                                <td><% out.print(C); %></td>
                                                <td colspan = "2"><% out.print(Chicken); %></td>
                                            </tr>
                                              <tr>
                                                <td>Burgers</td>
                                                <td><% out.print(bur); %></td>
                                                <td><% out.print(B); %></td>
                                                <td colspan = "2"><% out.print(Burgers); %></td>
                                            </tr>
                                              <tr>
                                                <td>Drinks</td>
                                                <td><% out.print(dri); %></td>
                                                <td><% out.print(D); %></td>
                                                <td colspan = "2"><% out.print(Drinks); %></td>
                                            </tr>
                                          
                                        </tbody>
                                    </table>
                                </div>
                            </div>
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
    <script src="js/functionality.js"></script>
</body>
 
</html>


   
    
