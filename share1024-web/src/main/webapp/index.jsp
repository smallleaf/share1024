<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8" %>
<!DOCTYPE html>
<html lang="en">
    <head>
		<title>Share1024</title>
        <!-- ALL STYLESHEET -->
   	 	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />  
        <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet">
		<link href="css/font-awesome.min.css" rel="stylesheet">
		<link href="css/style.css" rel="stylesheet">
		<link href="css/responsive.css" rel="stylesheet">
		<!--link href="css/blog-single.css" rel="stylesheet">
		<link href="css/responsive.css" rel="stylesheet"-->
    </head>   
	<body>
		<!-- header -->
		<%@ include file="headerCommon.jsp"%>
		<!-- home -->
		<section class="home">
			<div class="intro">
				<div id="home" class="carousel slide" data-ride="carousel">
					<ol class="carousel-indicators">
						<li data-target="#home" data-slide-to="0" class="active"></li>
						<li data-target="#home" data-slide-to="1"></li>
						<li data-target="#home" data-slide-to="2"></li>
						<li data-target="#home" data-slide-to="3"></li>
						<li data-target="#home" data-slide-to="4"></li>
						<li data-target="#home" data-slide-to="5"></li>
					</ol>
					<div class="carousel-inner" role="listbox">
						<div class="item active">
							<div class="container">
										<img class="img-responsive" src="images/person.png"  alt="" />
							</div>	
						</div>
						<div class="item">
							<div class="container">
										<img class="img-responsive" src="images/option.png" alt="" />
							</div>	
						</div>
						<div class="item">
							<div class="container">
										<img class="img-responsive" src="images/option.png" alt="" />
							</div>	
						</div>
						<div class="item">
							<div class="container">
										<img class="img-responsive" src="images/person.png" alt="" />
							</div>	
						</div>
						<div class="item">
							<div class="container">
										<img class="img-responsive" src="images/option.png" alt="" />
							</div>	
						</div>
						<div class="item">
							<div class="container">
										<img class="img-responsive" src="images/person.png" alt="" />
							</div>	
						</div>
					</div>
					<!-- Controls -->
					<a class="left carousel-control" href="#home" role="button" data-slide="prev"><i class="fa fa-angle-left"></i></a>
					<a class="right carousel-control" href="#home" role="button" data-slide="next"><i class="fa fa-angle-right"></i></a>
				</div>
			</div>
		</section>	
		
		<!-- service -->
		<section class="service">
			<div class="container">
				<div class="row">
					<div class="col-sm-3 text-center">
						<div class="service-detail">
							<img alt="" src="images/java_chuji.png">
							<h3>初级毕设</h3>
							<p>Cicero famously orated against his political opponent Lucius Sergius Catilina type. </p>
						</div>
					</div>
					<div class="col-sm-3 text-center">
						<div class="service-detail">
							<img alt="" src="images/java_zhongji.png">
							<h3>中级毕设</h3>
							<p>Cicero famously orated against his political opponent Lucius Sergius Catilina type. </p>
						</div>
					</div>
					<div class="col-sm-3 text-center">
						<div class="service-detail">
							<img alt="" src="images/java_gaoji.png">
							<h3>高级毕设</h3>
							<p>Cicero famously orated against his political opponent Lucius Sergius Catilina type. </p>
						</div>
					</div>
					<div class="col-sm-3 text-center">
						<div class="service-detail">
							<img alt="" src="images/java_biye.png">
							<!--span><i class="fa fa-folder-o s-icon"></i></span-->
							<h3>就业系统</h3>
							<p>Cicero famously orated against his political opponent Lucius Sergius Catilina type. </p>
						</div>
					</div>
				</div>
			</div>
		</section>
        <div class="copyrights">Collect from <a href="http://www.cssmoban.com/" title="Ä£°åÖ®¼Ò">Ä£°åÖ®¼Ò</a></div>
		
		<!-- featured product -->
		<section class="featured-product">
			<div class="container">
				<div class="row">
					<div class="col-sm-12">
						<div class="">
							<h1><span class="t-color-1">热门</span>
							</h1>
							<div class="heading-border b-color-1"></div>
						</div>
					</div>
				</div> <!-- section title -->
				<div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
					<ol class="carousel-indicators">
						<li data-target="#carousel-example-generic" data-slide-to="0" class="active"><i class="fa fa-angle-left"></i></li>
						<li data-target="#carousel-example-generic" data-slide-to="1"><i class="fa fa-angle-right"></i></li>
					</ol>
					<div class="carousel-inner" role="listbox">
						<div class="item active">
							<div class="row">
								<div class="col-sm-3">
									<div class="thumbnail">
										<!--span class="e-label"><div>Sale</div></span-->
										<span class="service-link text-center">
											<img class="img-responsive" src="images/f-pro-1.jpg" alt="">
											<div class="list-inline">
												<a href=""><i class="fa fa-eye"></i></a>
												<a href=""><i class="fa fa-link"></i></a>
											</div>
										</span>
										<div class="caption">
											<div class="category"> category
												<div class="pull-right">
													<i class="fa fa-star"></i>
													<i class="fa fa-star"></i>
													<i class="fa fa-star"></i>
													<i class="fa fa-star"></i>
													<i class="fa fa-star-o"></i>
												</div>
											</div>
											<h3>Lorem ipsum dolor sit amet dolorem molestie</h3>
											<strong>$899.00</strong>
											<div><a href="#" class="btn btn-default" role="button">Add to Cart</a><span class="pull-right"><i class="fa fa-heart-o"></i> Add to Wishlist</span></div>
										</div>
									</div>
								</div>
								<div class="col-sm-3">
									<div class="thumbnail">
										<span class="service-link text-center">
											<img class="img-responsive" src="images/f-pro-1.jpg" alt="">
											<div class="list-inline">
												<a href=""><i class="fa fa-eye"></i></a>
												<a href=""><i class="fa fa-link"></i></a>
											</div>
										</span>
										<div class="caption">
											<div class="category"> category
												<div class="pull-right">
													<i class="fa fa-star"></i>
													<i class="fa fa-star"></i>
													<i class="fa fa-star"></i>
													<i class="fa fa-star"></i>
													<i class="fa fa-star-o"></i>
												</div>
											</div>
											<h3>Lorem ipsum dolor sit amet dolorem molestie</h3>
											<strong>$899.00</strong>
											<div><a href="#" class="btn btn-default" role="button">Add to Cart</a><span class="pull-right"><i class="fa fa-heart-o"></i> Add to Wishlist</span></div>
										</div>
									</div>
								</div>
								<div class="col-sm-3">
									<div class="thumbnail">
										<span class="service-link text-center">
											<img class="img-responsive" src="images/f-pro-1.jpg" alt="">
											<div class="list-inline">
												<a href=""><i class="fa fa-eye"></i></a>
												<a href=""><i class="fa fa-link"></i></a>
											</div>
										</span>
										<div class="caption">
											<div class="category"> category
												<div class="pull-right">
													<i class="fa fa-star"></i>
													<i class="fa fa-star"></i>
													<i class="fa fa-star"></i>
													<i class="fa fa-star"></i>
													<i class="fa fa-star-o"></i>
												</div>
											</div>
											<h3>Lorem ipsum dolor sit amet dolorem molestie</h3>
											<strong>$899.00</strong>
											<div><a href="#" class="btn btn-default" role="button">Add to Cart</a><span class="pull-right"><i class="fa fa-heart-o"></i> Add to Wishlist</span></div>
										</div>
									</div>
								</div>
								<div class="col-sm-3">
									<div class="thumbnail">
										<span class="service-link text-center">
											<img class="img-responsive" src="images/f-pro-1.jpg" alt="">
											<div class="list-inline">
												<a href=""><i class="fa fa-eye"></i></a>
												<a href=""><i class="fa fa-link"></i></a>
											</div>
										</span>
										<div class="caption">
											<div class="category"> category
												<div class="pull-right">
													<i class="fa fa-star"></i>
													<i class="fa fa-star"></i>
													<i class="fa fa-star"></i>
													<i class="fa fa-star"></i>
													<i class="fa fa-star-o"></i>
												</div>
											</div>
											<h3>Lorem ipsum dolor sit amet dolorem molestie</h3>
											<strong>$899.00</strong>
											<div>
												<a href="#" class="btn btn-default" role="button">Add to Cart</a><span class="pull-right"><i class="fa fa-heart-o"></i> Add to Wishlist</span></div>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="item">
							<div class="row">
								<div class="col-sm-3">
									<div class="thumbnail">
										<!--span class="e-label"><div>Sale</div></span-->
										<span class="service-link text-center">
											<img class="img-responsive" src="images/f-pro-1.jpg" alt="">
											<div class="list-inline">
												<a href=""><i class="fa fa-eye"></i></a>
												<a href=""><i class="fa fa-link"></i></a>
											</div>
										</span>
										<div class="caption">
											<div class="category"> category
												<div class="pull-right">
													<i class="fa fa-star"></i>
													<i class="fa fa-star"></i>
													<i class="fa fa-star"></i>
													<i class="fa fa-star"></i>
													<i class="fa fa-star-o"></i>
												</div>
											</div>
											<h3>Lorem ipsum dolor sit amet dolorem molestie</h3>
											<strong>$899.00</strong>
											<div><a href="#" class="btn btn-default" role="button">Add to Cart</a><span class="pull-right"><i class="fa fa-heart-o"></i> Add to Wishlist</span></div>
										</div>
									</div>
								</div>
								<div class="col-sm-3">
									<div class="thumbnail">
										<span class="service-link text-center">
											<img class="img-responsive" src="images/f-pro-1.jpg" alt="">
											<div class="list-inline">
												<a href=""><i class="fa fa-eye"></i></a>
												<a href=""><i class="fa fa-link"></i></a>
											</div>
										</span>
										<div class="caption">
											<div class="category"> category
												<div class="pull-right">
													<i class="fa fa-star"></i>
													<i class="fa fa-star"></i>
													<i class="fa fa-star"></i>
													<i class="fa fa-star"></i>
													<i class="fa fa-star-o"></i>
												</div>
											</div>
											<h3>Lorem ipsum dolor sit amet dolorem molestie</h3>
											<strong>$899.00</strong>
											<div><a href="#" class="btn btn-default" role="button">Add to Cart</a><span class="pull-right"><i class="fa fa-heart-o"></i> Add to Wishlist</span></div>
										</div>
									</div>
								</div>
								<div class="col-sm-3">
									<div class="thumbnail">
										<span class="service-link text-center">
											<img class="img-responsive" src="images/f-pro-1.jpg" alt="">
											<div class="list-inline">
												<a href=""><i class="fa fa-eye"></i></a>
												<a href=""><i class="fa fa-link"></i></a>
											</div>
										</span>
										<div class="caption">
											<div class="category"> category
												<div class="pull-right">
													<i class="fa fa-star"></i>
													<i class="fa fa-star"></i>
													<i class="fa fa-star"></i>
													<i class="fa fa-star"></i>
													<i class="fa fa-star-o"></i>
												</div>
											</div>
											<h3>Lorem ipsum dolor sit amet dolorem molestie</h3>
											<strong>$899.00</strong>
											<div><a href="#" class="btn btn-default" role="button">Add to Cart</a><span class="pull-right"><i class="fa fa-heart-o"></i> Add to Wishlist</span></div>
										</div>
									</div>
								</div>
								<div class="col-sm-3">
									<div class="thumbnail">
										<span class="service-link text-center">
											<img class="img-responsive" src="images/f-pro-1.jpg" alt="">
											<div class="list-inline">
												<a href=""><i class="fa fa-eye"></i></a>
												<a href=""><i class="fa fa-link"></i></a>
											</div>
										</span>
										<div class="caption">
											<div class="category"> category
												<div class="pull-right">
													<i class="fa fa-star"></i>
													<i class="fa fa-star"></i>
													<i class="fa fa-star"></i>
													<i class="fa fa-star"></i>
													<i class="fa fa-star-o"></i>
												</div>
											</div>
											<h3>Lorem ipsum dolor sit amet dolorem molestie</h3>
											<strong>$899.00</strong>
											<div>
												<a href="#" class="btn btn-default" role="button">Add to Cart</a><span class="pull-right"><i class="fa fa-heart-o"></i> Add to Wishlist</span></div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>		
		
		<!-- best selling -->
		<section class="best-selling">
			<div class="container">
				<div class="row">
					<div class="col-sm-12">
						<h1><span class="t-color-1">推荐</span>
						</h1>
						<div class="heading-border b-color-2"></div>
					</div>
				</div> <!-- section title -->
				<div id="best-selling" class="carousel slide" data-ride="carousel">
					<ol class="carousel-indicators">
						<li data-target="#best-selling" data-slide-to="0" class="active"><i class="fa fa-angle-left"></i></li>
						<li data-target="#best-selling" data-slide-to="1"><i class="fa fa-angle-right"></i></li>
					</ol>
					<div class="carousel-inner" role="listbox">
						<div class="item active">
							<div class="row">
								<div class="col-sm-6">
									<div class="media">
										<div class="media-left"><img class="img-responsive" src="images/e-add-1.jpg" alt=""></div>
										<div class="media-body">
											<div class="category"> category
												<div class="pull-right">
													<i class="fa fa-star"></i>
													<i class="fa fa-star"></i>
													<i class="fa fa-star"></i>
													<i class="fa fa-star"></i>
													<i class="fa fa-star-o"></i>
												</div>
											</div>
											<h3>Lorem ipsum dolor sit amet dolorem molestie</h3>
											<strong>$899.00</strong>
											<div>
												<a href="#" class="btn btn-default" role="button">Add to Cart</a><span class="pull-right"><i class="fa fa-heart-o"></i> Add to Wishlist</span></div>
										</div>
									</div>
								</div>
								<div class="col-sm-6">
									<div class="media">
										<div class="media-left"><img src="images/e-add-1.jpg" alt=""></div>
										<div class="media-body">
											<div class="category"> category
												<div class="pull-right">
													<i class="fa fa-star"></i>
													<i class="fa fa-star"></i>
													<i class="fa fa-star"></i>
													<i class="fa fa-star"></i>
													<i class="fa fa-star-o"></i>
												</div>
											</div>
											<h3>Lorem ipsum dolor sit amet dolorem molestie</h3>
											<strong>$899.00</strong>
											<div>
												<a href="#" class="btn btn-default" role="button">Add to Cart</a><span class="pull-right"><i class="fa fa-heart-o"></i> Add to Wishlist</span></div>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="item">
							<div class="row">
								<div class="col-sm-6">
									<div class="media">
										<div class="media-left"><img src="images/e-add-1.jpg" alt=""></div>
										<div class="media-body">
											<div class="category"> category
												<div class="pull-right">
													<i class="fa fa-star"></i>
													<i class="fa fa-star"></i>
													<i class="fa fa-star"></i>
													<i class="fa fa-star"></i>
													<i class="fa fa-star-o"></i>
												</div>
											</div>
											<h3>Lorem ipsum dolor sit amet dolorem molestie</h3>
											<strong>$899.00</strong>
											<div>
												<a href="#" class="btn btn-default" role="button">Add to Cart</a><span class="pull-right"><i class="fa fa-heart-o"></i> Add to Wishlist</span></div>
										</div>
									</div>
								</div>
								<div class="col-sm-6">
									<div class="media">
										<div class="media-left"><img src="images/e-add-1.jpg" alt=""></div>
										<div class="media-body">
											<div class="category"> category
												<div class="pull-right">
													<i class="fa fa-star"></i>
													<i class="fa fa-star"></i>
													<i class="fa fa-star"></i>
													<i class="fa fa-star"></i>
													<i class="fa fa-star-o"></i>
												</div>
											</div>
											<h3>Lorem ipsum dolor sit amet dolorem molestie</h3>
											<strong>$899.00</strong>
											<div>
												<a href="#" class="btn btn-default" role="button">Add to Cart</a><span class="pull-right"><i class="fa fa-heart-o"></i> Add to Wishlist</span></div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>	
		
			
		<!-- Recent Post -->
		<section class="recent-post">
			<div class="container">
				<div class="row">
					<div class="col-sm-12">
						<h1><span class="t-color-1">最新</span></h1>
						<div class="heading-border b-color-6"></div>
					</div>
				</div> <!-- section title -->
				<div id="recent-post" class="carousel slide" data-ride="carousel">
					<ol class="carousel-indicators">
						<li data-target="#recent-post" data-slide-to="0" class="active"><i class="fa fa-angle-left"></i></li>
						<li data-target="#recent-post" data-slide-to="1"><i class="fa fa-angle-right"></i></li>
					</ol>
					<div class="carousel-inner" role="listbox">
						<div class="item active">
							<div class="row">	
								<div class="col-sm-3">
									<div class="thumbnail">
										<img class="img-responsive" src="images/e-add-1.jpg" alt="">
										<div class="text-center"><i class="fa fa-search"></i></div>
										<div class="caption">
											<h3 class="media-heading">Lorem ipsum dolor sit amet dolorem molestie</h3>
											<span><a href="#"> 5 July 2014</a><a href="#"><i class="fa fa-user"></i> Arif</a></span>
											<p>Nam apeirian assentior ei, utquo eros posse verterem. Cum eu error congue saperet treer eam exerci 												utquo eros posse verterem error.</p>
											<span class="comment"><i class="fa fa-comments"></i> 5 comments</span>	
										</div>
									</div>
							  </div>
								<div class="col-sm-3">
									<div class="thumbnail">
										<img class="img-responsive" src="images/e-add-1.jpg" alt="">
										<div class="text-center"><i class="fa fa-search"></i></div>
										<div class="caption">
											<h3 class="media-heading">Lorem ipsum dolor sit amet dolorem molestie</h3>
											<span><a href="#"> 5 July 2014</a><a href="#"><i class="fa fa-user"></i> Arif</a></span>
											<p>Nam apeirian assentior ei, utquo eros posse verterem. Cum eu error congue saperet treer eam exerci 												utquo eros posse verterem error.</p>
											<span class="comment"><i class="fa fa-comments"></i> 5 comments</span>	
										</div>
									</div>
							  </div>
								<div class="col-sm-3">
									<div class="thumbnail">
										<img class="img-responsive" src="images/e-add-1.jpg" alt="">
										<div class="text-center"><i class="fa fa-search"></i></div>
										<div class="caption">
											<h3 class="media-heading">Lorem ipsum dolor sit amet dolorem molestie</h3>
											<span><a href="#"> 5 July 2014</a><a href="#"><i class="fa fa-user"></i> Arif</a></span>
											<p>Nam apeirian assentior ei, utquo eros posse verterem. Cum eu error congue saperet treer eam exerci 												utquo eros posse verterem error.</p>
											<span class="comment"><i class="fa fa-comments"></i> 5 comments</span>	
										</div>
									</div>
							  </div>
								<div class="col-sm-3">
									<div class="thumbnail">
										<img class="img-responsive" src="images/e-add-1.jpg" alt="">
										<div class="text-center"><i class="fa fa-search"></i></div>
										<div class="caption">
											<h3 class="media-heading">Lorem ipsum dolor sit amet dolorem molestie</h3>
											<span><a href="#"> 5 July 2014</a><a href="#"><i class="fa fa-user"></i> Arif</a></span>
											<p>Nam apeirian assentior ei, utquo eros posse verterem. Cum eu error congue saperet treer eam exerci 												utquo eros posse verterem error.</p>
											<span class="comment"><i class="fa fa-comments"></i> 5 comments</span>	
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="item">
							<div class="row">	
								<div class="col-sm-3">
									<div class="thumbnail">
										<img class="img-responsive" src="images/e-add-1.jpg" alt="">
										<div class="text-center"><i class="fa fa-search"></i></div>
										<div class="caption">
											<h3 class="media-heading">Lorem ipsum dolor sit amet dolorem molestie</h3>
											<span><a href="#"> 5 July 2014</a><a href="#"><i class="fa fa-user"></i> Arif</a></span>
											<p>Nam apeirian assentior ei, utquo eros posse verterem. Cum eu error congue saperet treer eam exerci 												utquo eros posse verterem error.</p>
											<span class="comment"><i class="fa fa-comments"></i> 5 comments</span>	
										</div>
									</div>
							  </div>
								<div class="col-sm-3">
									<div class="thumbnail">
										<img class="img-responsive" src="images/e-add-1.jpg" alt="">
										<div class="text-center"><i class="fa fa-search"></i></div>
										<div class="caption">
											<h3 class="media-heading">Lorem ipsum dolor sit amet dolorem molestie</h3>
											<span><a href="#"> 5 July 2014</a><a href="#"><i class="fa fa-user"></i> Arif</a></span>
											<p>Nam apeirian assentior ei, utquo eros posse verterem. Cum eu error congue saperet treer eam exerci 												utquo eros posse verterem error.</p>
											<span class="comment"><i class="fa fa-comments"></i> 5 comments</span>	
										</div>
									</div>
							  </div>
								<div class="col-sm-3">
									<div class="thumbnail">
										<img class="img-responsive" src="images/e-add-1.jpg" alt="">
										<div class="text-center"><i class="fa fa-search"></i></div>
										<div class="caption">
											<h3 class="media-heading">Lorem ipsum dolor sit amet dolorem molestie</h3>
											<span><a href="#"> 5 July 2014</a><a href="#"><i class="fa fa-user"></i> Arif</a></span>
											<p>Nam apeirian assentior ei, utquo eros posse verterem. Cum eu error congue saperet treer eam exerci 												utquo eros posse verterem error.</p>
											<span class="comment"><i class="fa fa-comments"></i> 5 comments</span>	
										</div>
									</div>
							  </div>
								<div class="col-sm-3">
									<div class="thumbnail">
										<img class="img-responsive" src="images/e-add-1.jpg" alt="">
										<div class="text-center"><i class="fa fa-search"></i></div>
										<div class="caption">
											<h3 class="media-heading">Lorem ipsum dolor sit amet dolorem molestie</h3>
											<span><a href="#"> 5 July 2014</a><a href="#"><i class="fa fa-user"></i> Arif</a></span>
											<p>Nam apeirian assentior ei, utquo eros posse verterem. Cum eu error congue saperet treer eam exerci 												utquo eros posse verterem error.</p>
											<span class="comment"><i class="fa fa-comments"></i> 5 comments</span>	
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>	
			
		<footer>
			<div class="footer-bottom">
				<div class="container">		
					<div class="row">	
						<div class="col-sm-12 text-center">
							<p>Copyright &copy; 2016.Company name All rights reserved.</p>
							<ul class="list-inline center-block">
								<li><a href="#"><img src="images/card-1.png"></a></li>
								<li><a href="#"><img src="images/card-2.png"></a></li>
								<li><a href="#"><img src="images/card-3.png"></a></li>
								<li><a href="#"><img src="images/card-4.png"></a></li>
								<li><a href="#"><img src="images/card-5.png"></a></li>
							</ul>
						</div>
					</div>
				</div>	
			</div>
		</footer>
			
        <!-- ALL JAVASCRIPT -->         
        <script src="js/jquery.js"></script>
        <script src="bootstrap/js/bootstrap.min.js"></script>
        <script src="js/custom.js"></script>
    </body>
</html>