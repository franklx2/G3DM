<!DOCTYPE html>

<head>

    <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Shop Homepage - Start Bootstrap Template</title>
	
	<!-- JavaScript -->
	<script type="text/javascript" src="http://code.jquery.com/jquery-1.7.1.min.js"></script>
	<script type="text/javascript" src="js/bootstrap-tabcollapse.js"></script>
	<script type="text/javascript" src="js/menu.js"></script>
	<script type="text/javascript" src="js/tabcollapse-jquery.js"></script>
	
    <!-- Bootstrap Core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="css/heroic-features.css" rel="stylesheet">
    <link href="css/shop-homepage.css" rel="stylesheet">

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

</head>

<body>

    <!-- Navigation -->
    <nav id="nav" class="navbar navbar-inverse navbar-fixed-top" role="navigation">
        <div class="container">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="#">Home</a>
            </div>
            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav">
                    <li>
                        <a href="#">About</a>
                    </li>
                    <li>
                        <a href="#">Sign In</a>
                    </li>
                    <li>
                        <a href="#">Menu</a>
                    </li>
                    <li>
                        <a href="#">Cart</a>
                    </li>
                </ul>
            </div>
            <!-- /.navbar-collapse -->
        </div>
        <!-- /.container -->
        
    </nav>

	
        
	    <!-- Page Content -->
	    <div class="container">
		<div >
		<div class="row carousel-holder">
	
	                    <div id="product-detail" class="col-sm-12">
	                        <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
	                            <ol class="carousel-indicators">
	                                <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
	                                <li data-target="#carousel-example-generic" data-slide-to="1"></li>
	                                <li data-target="#carousel-example-generic" data-slide-to="2"></li>
	                            </ol>
	                            <div class="carousel-inner" style="height:400px;">
	                                <div class="item active slider-size">
	                                    <img class="slide-image" src="pics/tempbanner.jpg" alt="" style="height:100%;" >
	                                </div>
	                                <div class="item slider-size">
	                                    <img class="slide-image" src="pics/2.jpg" alt="" style="height:100%;">
	                                </div>
	                                <div class="item slider-size">
	                                    <img class="slide-image" src="pics/6.jpg" alt="" style="height:100%;">
	                                </div>
	                            </div>
	                            <a class="left carousel-control" href="#carousel-example-generic" data-slide="prev">
	                                <span class="glyphicon glyphicon-chevron-left"></span>
	                            </a>
	                            <a class="right carousel-control" href="#carousel-example-generic" data-slide="next">
	                                <span class="glyphicon glyphicon-chevron-right"></span>
	                            </a>
	                        </div>
	                    </div>
	
	                </div>
	                </div>
    <hr>
	
        <div class="row">

            <div class="col-sm-4 well" style="background-color:white;">
                <p class="lead">Menu</p>
                <div>
    			
    			
    				
				<ul id="mytab" class="nav nav-tabs content-tabs" role="tablist">
				    <li role="presentation" class="active"><a href="#WoW" aria-controls="WoW" role="tab" data-toggle="tab">WoW PeTs 寵物蛋糕</a></li>
				    <li role="presentation"><a href="#princess" aria-controls="princess" role="tab" data-toggle="tab">Princess Bakery </a></li>
			    </ul>
				  
				  <div class="tab-content">
				    <div role="tabpanel" class="tab-pane active" id="WoW" >
				    	<h3 style="text-align:center;">WoW PeTs 寵物蛋糕 </h3>
		                <div class="col-sm-12" style="text-align:center;">
			                <h4><b>2D 主題蛋糕</b></h4>
			            	<ul class="list-group" >
				                <li class="list-group-item"><a style="color:black;" id="A1a" href="#">八吋糖偶蛋糕</a></li>
				                <li id="A1b" class="list-group-item submenu">
				                	<ul class="list-group ">
					                    <li class="list-group-item">一個糖偶</li>
					                    <li class="list-group-item">兩個糖偶</li>
					                    <li class="list-group-item">三個糖偶</li>
				                    </ul>
				                </li>
			            	</ul>
				            <ul class="list-group">
				                <li class="list-group-item"><a style="color:black;" id="A2a" href="#">十吋糖偶蛋糕</a></li>
				                <li id="A2b" class="list-group-item submenu">
				                	<ul class="list-group ">
					                    <li class="list-group-item">一個糖偶</li>
					                    <li class="list-group-item">兩個糖偶</li>
					                    <li class="list-group-item">三個糖偶</li>
										<li class="list-group-item">四個糖偶</li>
										<li class="list-group-item">五個糖偶</li>
				                    </ul>
				                </li>
			            	</ul>
				                
			                <h4><b>3D 主題蛋糕</b></h4>
			                <ul class="list-group">
				                <li class="list-group-item"><a style="color:black;" id="B1a" href="#">八吋糖偶蛋糕</a></li>
				                <li id="B1b" class="list-group-item submenu">
				                	<ul class="list-group ">
					                    <li class="list-group-item">一個糖偶</li>
					                    <li class="list-group-item">兩個糖偶</li>
					                    <li class="list-group-item">三個糖偶</li>
				                    </ul>
				                </li>
		            		</ul>
			                <ul class="list-group">
				                <li class="list-group-item"><a style="color:black;" id="B2a" href="#">十吋糖偶蛋糕</a></li>
				                <li id="B2b" class="list-group-item submenu">
				                	<ul class="list-group ">
					                    <li class="list-group-item">一個糖偶</li>
					                    <li class="list-group-item">兩個糖偶</li>
					                    <li class="list-group-item">三個糖偶</li>
										<li class="list-group-item">四個糖偶</li>
				                    </ul>
				                </li>
			            	</ul>
				                
			                <h4><b>鮮肉蛋糕 </b></h4>
			                <ul class="list-group">
			                	<li class="list-group-item"><a style="color:black;" id="C1" href="#">鮮肉蛋糕</a></li>
			                </ul>
		                </div>
				    	
				    </div>
				    <div role="tabpanel" class="tab-pane" id="princess" style="text-align:center;">
						<div role="tabpanel" class="tab-pane active" id="WoW">
				    	<h3>Princess Bakery </h3>
		                <div class="col-sm-12">
		                
			                <h4><b>2D 主題蛋糕</b></h4>
			            	<ul class="list-group" >
				                <li class="list-group-item"><a style="color:black;" id="A1a" href="#">八吋糖偶蛋糕</a></li>
				                <li id="A1b" class="list-group-item submenu">
				                	<ul class="list-group ">
					                    <li class="list-group-item">一個糖偶</li>
					                    <li class="list-group-item">兩個糖偶</li>
					                    <li class="list-group-item">三個糖偶</li>
				                    </ul>
				                </li>
			            	</ul>
				            <ul class="list-group">
				                <li class="list-group-item"><a style="color:black;" id="A2a" href="#">十吋糖偶蛋糕</a></li>
				                <li id="A2b" class="list-group-item submenu">
				                	<ul class="list-group ">
					                    <li class="list-group-item">一個糖偶</li>
					                    <li class="list-group-item">兩個糖偶</li>
					                    <li class="list-group-item">三個糖偶</li>
										<li class="list-group-item">四個糖偶</li>
										<li class="list-group-item">五個糖偶</li>
				                    </ul>
				                </li>
			            	</ul>
			                
		                </div>
				    	
				    </div>
					
					</div>
				  </div> 
				  
				</div>
                
            </div>
            <div class="col-sm-8">

                

                <div class="row">

                    <div class="col-sm-4 col-lg-4 col-md-4" style="height:320px;">
                        <div class="thumbnail">
                            <img src="pics/4.jpg" alt="" style="max-width:320px;max-height:150px;">
                            <div class="caption">
                                <h4 class="pull-right">$24.99</h4>
                                <h4><a href="#">First Product</a>
                                </h4>
                                <p>This is a short description. Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
                            </div>
                            <div class="ratings">
                                <p class="pull-right">15 reviews</p>
                                <p>
                                    <span class="glyphicon glyphicon-star"></span>
                                    <span class="glyphicon glyphicon-star"></span>
                                    <span class="glyphicon glyphicon-star"></span>
                                    <span class="glyphicon glyphicon-star"></span>
                                    <span class="glyphicon glyphicon-star"></span>
                                </p>
                            </div>
                        </div>
                    </div>

                    <div class="col-sm-4 col-lg-4 col-md-4" style="height:320px;">
                        <div class="thumbnail">
                            <img src="pics/5.jpg" alt="" style="max-width:320px;max-height:150px;">
                            <div class="caption">
                                <h4 class="pull-right">$64.99</h4>
                                <h4><a href="#">Second Product</a>
                                </h4>
                                <p>This is a short description. Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
                            </div>
                            <div class="ratings">
                                <p class="pull-right">12 reviews</p>
                                <p>
                                    <span class="glyphicon glyphicon-star"></span>
                                    <span class="glyphicon glyphicon-star"></span>
                                    <span class="glyphicon glyphicon-star"></span>
                                    <span class="glyphicon glyphicon-star"></span>
                                    <span class="glyphicon glyphicon-star-empty"></span>
                                </p>
                            </div>
                        </div>
                    </div>

                    <div class="col-sm-4 col-lg-4 col-md-4" style="height:320px;">
                        <div class="thumbnail">
                            <img src="pics/6.jpg" alt="" style="max-width:320px;max-height:150px;">
                            <div class="caption">
                                <h4 class="pull-right">$74.99</h4>
                                <h4><a href="#">Third Product</a>
                                </h4>
                                <p>This is a short description. Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
                            </div>
                            <div class="ratings">
                                <p class="pull-right">31 reviews</p>
                                <p>
                                    <span class="glyphicon glyphicon-star"></span>
                                    <span class="glyphicon glyphicon-star"></span>
                                    <span class="glyphicon glyphicon-star"></span>
                                    <span class="glyphicon glyphicon-star"></span>
                                    <span class="glyphicon glyphicon-star-empty"></span>
                                </p>
                            </div>
                        </div>
                    </div>

                    <div class="col-sm-4 col-lg-4 col-md-4" style="height:320px;">
                        <div class="thumbnail">
                            <img src="pics/7.jpg" alt="" style="max-width:320px;max-height:150px;">
                            <div class="caption">
                                <h4 class="pull-right">$84.99</h4>
                                <h4><a href="#">Fourth Product</a>
                                </h4>
                                <p>This is a short description. Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
                            </div>
                            <div class="ratings">
                                <p class="pull-right">6 reviews</p>
                                <p>
                                    <span class="glyphicon glyphicon-star"></span>
                                    <span class="glyphicon glyphicon-star"></span>
                                    <span class="glyphicon glyphicon-star"></span>
                                    <span class="glyphicon glyphicon-star-empty"></span>
                                    <span class="glyphicon glyphicon-star-empty"></span>
                                </p>
                            </div>
                        </div>
                    </div>

                    <div class="col-sm-4 col-lg-4 col-md-4" style="height:320px;">
                        <div class="thumbnail">
                            <img src="pics/7.jpg" alt="" style="max-width:320px;max-height:150px;"> 
                            <div class="caption">
                                <h4 class="pull-right">$94.99</h4>
                                <h4><a href="#">Fifth Product</a>
                                </h4>
                                <p>This is a short description. Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
                            </div>
                            <div class="ratings">
                                <p class="pull-right">18 reviews</p>
                                <p>
                                    <span class="glyphicon glyphicon-star"></span>
                                    <span class="glyphicon glyphicon-star"></span>
                                    <span class="glyphicon glyphicon-star"></span>
                                    <span class="glyphicon glyphicon-star"></span>
                                    <span class="glyphicon glyphicon-star-empty"></span>
                                </p>
                            </div>
                        </div>
                    </div>

                    <div class="col-sm-4 col-lg-4 col-md-4" style="height:320px;">
                        <div class="thumbnail">
                            <img src="pics/7.jpg" alt="" style="max-width:320px;max-height:150px;">
                            <div class="caption">
                                <h4 class="pull-right">$66.99</h4>
                                <h4><a href="#">Sixth Product</a>
                                </h4>
                                <p>This is a short description. Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
                            </div>
                            <div class="ratings">
                                <p class="pull-right">18 reviews</p>
                                <p>
                                    <span class="glyphicon glyphicon-star"></span>
                                    <span class="glyphicon glyphicon-star"></span>
                                    <span class="glyphicon glyphicon-star"></span>
                                    <span class="glyphicon glyphicon-star"></span>
                                    <span class="glyphicon glyphicon-star-empty"></span>
                                </p>
                            </div>
                        </div>
                    </div>

                </div>

            </div>

        </div>

    </div>
    <!-- /.container -->

    <div class="container">

        <hr>

        <!-- Footer -->
        <footer>
            <div class="row">
                <div class="col-lg-12">
                    <p>Copyright &copy; Your Website 2014</p>
                </div>
            </div>
        </footer>

    </div>
    <!-- /.container -->

    <!-- jQuery -->
    <script src="js/jquery.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="js/bootstrap.min.js"></script>

</body>

</html>
