<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8" %>
<%@ include file="/jsp/inc/base.inc"%>
<c:set var="PAGE_TITLE" value="share1024"></c:set>
<%@ include file="/jsp/inc/bodybase.inc"%>
<script type="text/javascript">
	seajs.use('app',function(app){
		app.load("index");
	})
</script>
		<!-- header -->
			<header class="header">
			<!-- logo and adds -->
			<div class="logo-add">
				<div class="container">
					<div class="row">
						<div class="col-sm-4">
							<div class="logo">
								<img alt="" src="images/logo.jpg">
							</div>
						</div>
					</div>
				</div>
			</div>
			
			<!-- header bottom -->
			<div class="header-bottom">
				<div class="row">
					<div class="col-sm-12">
						<nav class="navbar navbar-default">
							<div class="container">
								<!-- Brand and toggle get grouped for better mobile display -->
								<div class="navbar-header">
									<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#header-bottom" aria-expanded="false">
										<span class="sr-only">Toggle navigation</span>
										<span class="icon-bar"></span>
										<span class="icon-bar"></span>
										<span class="icon-bar"></span>
									</button>
								</div>
								<!-- Collect the nav links, forms, and other content for toggling -->
								<div class="collapse navbar-collapse" id="header-bottom">
									<ul class="nav navbar-nav">
										<li class="active"><a href="index.jsp">首页</a></li>
										<li><a href="project/get/0/1">Java项目</a></li>
										<li><a href="dataTool/findAll">Java资料</a></li>
										<li><a href="jsp/learnPath.jsp">学习路线</a></li>
										<li><a href="jsp/software.jsp">软件</a></li>
										<li><a href="jsp/contact-us.html">Contac Us</a></li>
									</ul>
									<form class="navbar-form navbar-right" role="search">
										<div class="form-group">
											<input type="text" class="form-control" placeholder="Search...">
											<span class="nav-search"><a href="#"><i class="fa fa-search"></i></a></span>
										</div>	
									</form>
								</div>
							</div>
						</nav>
					</div>	
				</div>	
			</div>	
		</header>	
		<!-- home -->
		<section class="home">
			<div class="flipster">
				<ul>
					<li>
						<img class="banner" alt="" src="http://www.5itjob.com/itjob/uploads/160515/2-160515234130G1.jpg">
					</li>
					<li>
						<img class="banner" alt="" src="http://www.5itjob.com/itjob/uploads/160515/2-160515234130G1.jpg">
					</li>
					<li>
						<img class="banner" alt="" src="http://www.5itjob.com/itjob/uploads/160515/2-160515234130G1.jpg">
					</li>
					<li>
						<img class="banner" alt="" src="http://www.5itjob.com/itjob/uploads/160515/2-160515234130G1.jpg">
					</li>
					<li>
						<img class="banner" alt="" src="http://www.5itjob.com/itjob/uploads/160515/2-160515234130G1.jpg">
					</li>
			  	</ul>
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
							<p>Copyright &copy; 2016.Company name All rights reserved. <a href="jsp/login.jsp">站长管理</a><a target="_blank" href="http://www.miitbeian.gov.cn"> [鄂ICP备16022718号]</a></p>
						</div>
					</div>
				</div>	
			</div>
		</footer>
<%@ include file="/jsp/inc/footerbase.inc"%>