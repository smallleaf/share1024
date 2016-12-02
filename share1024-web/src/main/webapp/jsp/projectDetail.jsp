<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8" %>
<%@ include file="../jstl/base.inc"%>
<!DOCTYPE html>
<html lang="en">
    <head>
		<title>ChinaZ</title>
        <!-- ALL STYLESHEET -->
		<link href="${basePath }/css/style2.css" rel="stylesheet">
		<!--link href="css/blog-single.css" rel="stylesheet">
		<link href="css/responsive.css" rel="stylesheet"-->
    </head>   
	<body>
		<div class="hide">
			<input type="text" id="uuid" value="${uuid}"/>
		</div>
		<!-- header -->
		<%@ include file="headerCommon.jsp"%>
		<section class="blog-detail">
			<div class="container">
				<div class="row">
					<div class="col-sm-3">
						<div class="sidebar">
							<div class="well wedget">
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
							<div class="well wedget">
							 	<strong>分类</strong>
								<div class="heading-border b-color-6"></div>
								 <ul class="category-2">
									<li>Wordpress Themes <span class="pull-right">446</span></li>
									<li>PSD Templates <span class="pull-right">126</span></li>
									<li>Site Temapltes <span class="pull-right">346</span></li>
									<li>Joomla Themes <span class="pull-right">656</span></li>
									<li>Technology <span class="pull-right">87</span></li>
									<li>Design <span class="pull-right">56</span></li>
								</ul>
							</div>
							<div class="well wedget footer-top">
							 	<strong>推荐</strong>
								<div class="heading-border b-color-6"></div>
								<ul class="media-list recent-post">
									<li class="media">
										<div class="media-left"><img src="images/featured-1.jpg" alt=""></div>
										<div class="media-body">
											<p class="media-heading">Lorem ipsum dolor sit amet mea aeterno</p>
											<small> March 14, 2015</small>
										</div>
									</li>
									<li class="media">
										<div class="media-left"><img src="images/featured-1.jpg" alt=""></div>
										<div class="media-body">
											<p class="media-heading">Lorem ipsum dolor sit amet mea aeterno</p>
											<small> March 14, 2015</small>
										</div>
									</li>
									<li class="media">
										<div class="media-left"><img src="images/featured-1.jpg" alt=""></div>
										<div class="media-body">
											<p class="media-heading">Lorem ipsum dolor sit amet mea aeterno</p>
											<small> March 14, 2015</small>
										</div>
									</li>
									<li class="media">
										<div class="media-left"><img src="images/featured-1.jpg" alt=""></div>
										<div class="media-body">
											<p class="media-heading">Lorem ipsum dolor sit amet mea aeterno</p>
											<small> March 14, 2015</small>
										</div>
									</li>
								</ul>
							</div>
							<div class="single-add">
								<h4>Get <span>50%</span> Discount</h4>
								<a href="#" class="btn btn-default" role="button">Learn More</a>
								<span class="img-add"><img class="img-responsive" src="images/red-tablet.png" width="120px" alt="" /></span>
							</div>
							<div class="well wedget">
								<strong>Tags Widget</strong>
								<div class="heading-border b-color-6"></div>
								
								<a class="btn btn-default" href="#" role="button">Joomla</a>
								<a class="btn btn-default" href="#" role="button">Wordpress</a>
								<a class="btn btn-default" href="#" role="button">Art</a>
								<a class="btn btn-default" href="#" role="button">Ui</a>
								<a class="btn btn-default" href="#" role="button">Print</a>
								<a class="btn btn-default" href="#" role="button">PhotoShop</a>
								<a class="btn btn-default" href="#" role="button">Megento</a>
								<a class="btn btn-default" href="#" role="button">Icons</a>
							</div>
							<div class="well text-widget wedget">
								<strong>Text Widget</strong>
								<div class="heading-border b-color-6"></div>
								<p>Lorem ipsum dolor sit amet, no mea aeterno indoctum percipitur. Homero quaerendum ius ei. In pro decore tamquam 									appetere, ea mentitum mediocrem efficiantur quo.</p>
							</div>
						</div>
					</div>
					<div class="col-sm-9 blog-detail-wrap">
						<div class="row post-bottom">
							<div class="col-sm-12" id="content">
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
		<%@ include file="../jstl/footerbase.inc"%>
		<script type="text/javascript" src="${basePath}/js/showdown.min.js"></script>
		<script type="text/javascript">
			$(function(){
						/* var data=$("#contentHide").val();
						var converter = new showdown.Converter();
						var html      = converter.makeHtml(data);
						document.getElementById("content").innerHTML = html; */
					$.post("../getContent/content",{'uuid':$("#uuid").val()},function(data){
						var converter = new showdown.Converter();
						var html      = converter.makeHtml(data);
						document.getElementById("content").innerHTML = html;
					})
			})
		</script>
    </body>
</html>