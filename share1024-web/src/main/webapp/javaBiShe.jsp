<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8" %>
<!DOCTYPE html>
<html lang="en">
    <head>
		<title>ChinaZ</title>
        <!-- ALL STYLESHEET -->
        <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet">
		<link href="css/font-awesome.min.css" rel="stylesheet">
		<link href="css/style.css" rel="stylesheet">
		<!--link href="css/blog-single.css" rel="stylesheet">
		<link href="css/responsive.css" rel="stylesheet"-->
    </head>   
	<body>
		
		<!-- header -->
		<%@ include file="headerCommon.jsp"%>
		<!-- recommented products -->
		<section class="featured-product recommented-product">
			<div class="container">
				<div class="row">
					<div class="col-sm-3">
						<div class="sidebar">
							<div class="well wedget">
							 	<strong>分类</strong>
							 	<div class="heading-border b-color-6"></div>
								<div class="list-group">
								  <a href="#" class="list-group-item active">
								  	<span class="badge">14</span>
								    初级JAVA毕设
								  </a>
								  <a href="#" class="list-group-item"><span class="badge">12</span>中级JAVA毕设</a>
								  <a href="#" class="list-group-item"><span class="badge">10</span>高级JAVA毕设</a>
								  <a href="#" class="list-group-item"><span class="badge">8</span>高级就业系统</a>
								</div>
							</div>
						</div> <!-- sidebar -->
					</div>
					<div class="col-sm-9">
						<div class="row">
							<div class="col-sm-12">
								<div class="">
									<h1><span class="t-color-1">推荐</span> </h1>
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
										<div class="col-sm-4">
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
													<div class="category"> 初级
														<div class="pull-right">
															<i class="fa fa-star"></i>
															<i class="fa fa-star"></i>
															<i class="fa fa-star"></i>
															<i class="fa fa-star"></i>
															<i class="fa fa-star-o"></i>
														</div>
													</div>
													<h3>Lorem ipsum dolor sit amet dolorem molestie</h3>
													<strong>￥50</strong>
													<div><a href="projectDetail.jsp" class="btn btn-default" role="button">购买</a></div>
												</div>
											</div>
										</div>
										<div class="col-sm-4">
											<div class="thumbnail">
												<span class="service-link text-center">
													<img class="img-responsive" src="images/f-pro-1.jpg" alt="">
													<div class="list-inline">
														<a href=""><i class="fa fa-eye"></i></a>
														<a href=""><i class="fa fa-link"></i></a>
													</div>
												</span>
												<div class="caption">
													<div class="category"> 初级
														<div class="pull-right">
															<i class="fa fa-star"></i>
															<i class="fa fa-star"></i>
															<i class="fa fa-star"></i>
															<i class="fa fa-star"></i>
															<i class="fa fa-star-o"></i>
														</div>
													</div>
													<h3>Lorem ipsum dolor sit amet dolorem molestie</h3>
													<strong>￥50</strong>
													<div><a href="#" class="btn btn-default" role="button">购买</a></div>
												</div>
											</div>
										</div>
										<div class="col-sm-4">
											<div class="thumbnail">
												<span class="service-link text-center">
													<img class="img-responsive" src="images/f-pro-1.jpg" alt="">
													<div class="list-inline">
														<a href=""><i class="fa fa-eye"></i></a>
														<a href=""><i class="fa fa-link"></i></a>
													</div>
												</span>
												<div class="caption">
													<div class="category"> 初级
														<div class="pull-right">
															<i class="fa fa-star"></i>
															<i class="fa fa-star"></i>
															<i class="fa fa-star"></i>
															<i class="fa fa-star"></i>
															<i class="fa fa-star-o"></i>
														</div>
													</div>
													<h3>Lorem ipsum dolor sit amet dolorem molestie</h3>
													<strong>￥50</strong>
													<div>
														<a href="#" class="btn btn-default" role="button">购买</a></div>
												</div>
											</div>
										</div>
									</div>
								</div>
								<div class="item">
									<div class="row">
										<div class="col-sm-4">
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
													<div class="category"> 购买
														<div class="pull-right">
															<i class="fa fa-star"></i>
															<i class="fa fa-star"></i>
															<i class="fa fa-star"></i>
															<i class="fa fa-star"></i>
															<i class="fa fa-star-o"></i>
														</div>
													</div>
													<h3>Lorem ipsum dolor sit amet dolorem molestie</h3>
													<strong>￥50</strong>
													<div><a href="#" class="btn btn-default" role="button">购买</a></div>
												</div>
											</div>
										</div>
										<div class="col-sm-4">
											<div class="thumbnail">
												<span class="service-link text-center">
													<img class="img-responsive" src="images/f-pro-1.jpg" alt="">
													<div class="list-inline">
														<a href=""><i class="fa fa-eye"></i></a>
														<a href=""><i class="fa fa-link"></i></a>
													</div>
												</span>
												<div class="caption">
													<div class="category"> 初级
														<div class="pull-right">
															<i class="fa fa-star"></i>
															<i class="fa fa-star"></i>
															<i class="fa fa-star"></i>
															<i class="fa fa-star"></i>
															<i class="fa fa-star-o"></i>
														</div>
													</div>
													<h3>Lorem ipsum dolor sit amet dolorem molestie</h3>
													<strong>￥50</strong>
													<div><a href="#" class="btn btn-default" role="button">购买</a></div>
												</div>
											</div>
										</div>
										<div class="col-sm-4">
											<div class="thumbnail">
												<span class="service-link text-center">
													<img class="img-responsive" src="images/f-pro-1.jpg" alt="">
													<div class="list-inline">
														<a href=""><i class="fa fa-eye"></i></a>
														<a href=""><i class="fa fa-link"></i></a>
													</div>
												</span>
												<div class="caption">
													<div class="category"> 初级
														<div class="pull-right">
															<i class="fa fa-star"></i>
															<i class="fa fa-star"></i>
															<i class="fa fa-star"></i>
															<i class="fa fa-star"></i>
															<i class="fa fa-star-o"></i>
														</div>
													</div>
													<h3>Lorem ipsum dolor sit amet dolorem molestie</h3>
													<strong>￥50</strong>
													<div>
														<a href="#" class="btn btn-default" role="button">购买</a></div>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
						<!-- desktop -->
						<div class="featured-product desktop">
							<div class="row">
								<div class="col-sm-12">
									<div class="row">
										<div class="col-sm-12">
											<h1><span class="t-color-1">全部</span></h1>
											<div class="heading-border b-color-6"></div>
										</div>
									</div> <!-- section title -->
									<div class="row">
										<div class="col-sm-4">
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
										<div class="col-sm-4">
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
										<div class="col-sm-4">
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
									<div class="row">
										<div class="col-sm-4">
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
										<div class="col-sm-4">
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
										<div class="col-sm-4">
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
									<div class="row">
										<div class="col-sm-4">
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
										<div class="col-sm-4">
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
										<div class="col-sm-4">
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
						</div> <!-- desktop -->
						<!-- pagination -->
						<nav>
							<ul class="pagination">
								<li><a href="#" aria-label="Previous"><span aria-hidden="true">&laquo;</span></a></li>
								<li><a href="#">1</a></li>
								<li class="active"><a href="#">2</a></li>
								<li><a href="#">3</a></li>
								<li><a href="#">4</a></li>
								<li><a href="#">5</a></li>
								<li><a href="#" aria-label="Next"><span aria-hidden="true">&raquo;</span></a>
							</li>
							</ul>
						</nav>
					</div><!--div 9 -->
				</div>
			</div>
		</section>
		<footer>
			<div class="footer-bottom">
				<div class="container">		
					<div class="row">	
						<div class="col-sm-12 text-center">
							<p>Copyright &copy; 2016.Company name All rights reserved.<a target="_blank" href="http://sc.chinaz.com/moban/">&#x7F51;&#x9875;&#x6A21;&#x677F;</a></p>
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