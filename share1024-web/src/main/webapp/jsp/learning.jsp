<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8" %>
<%@ include file="../jstl/base.inc"%>
<!DOCTYPE html>
<html lang="en">
    <head>
		<title>工具</title>
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
								<a href="#" class="list-group-item"><span class="badge">12</span>配置大全</a>
								<a href="#" class="list-group-item"><span class="badge">12</span>文档大全</a>
								<a href="#" class="list-group-item  active	"><span class="badge">12</span>工具大全</a>
								  <a href="#" class="list-group-item">
								  	<span class="badge">14</span>
								    学习网站
								  </a>
								  <a href="#" class="list-group-item"><span class="badge">12</span>学习视频</a>
								  <a href="#" class="list-group-item"><span class="badge">10</span>书籍</a>
								  <a href="#" class="list-group-item"><span class="badge">8</span>优秀博客</a>
								</div>
							</div>
						</div> <!-- sidebar -->
					</div>
					<div class="col-sm-9">
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
										<c:forEach var="itemAll" items="${dataTools}" begin="0" end="2">
											<div class="col-sm-4">
												<div class="thumbnail">
													<!--span class="e-label"><div>Sale</div></span-->
													<span class="service-link text-center">
														<img class="img-responsive bishe-img" src="${itemAll.toolPic }" alt="">
													</span>
													<div class="caption">
														<h3>${itemAll.name }</h3>
														<div>
														<a href="${itemAll.panUrl }" target="_blank" class="btn btn-default" role="button">网盘下载</a>
														<a href="${itemAll.officeWebSiteUrl }" target="_blank" class="btn btn-default" role="button">官网下载</a>
														</div>
													</div>
												</div>
											</div>
											</c:forEach>
										</div>
									<div class="row">
										<c:forEach var="itemAll" items="${dataTools}" begin="3" end="5">
											<div class="col-sm-4">
												<div class="thumbnail">
													<!--span class="e-label"><div>Sale</div></span-->
													<span class="service-link text-center">
														<img class="img-responsive bishe-img" src="${itemAll.toolPic }" alt="">
													</span>
													<div class="caption">
														<h3>${itemAll.name }</h3>
														<div>
														<a href="${itemAll.panUrl }" target="_blank" class="btn btn-default" role="button">网盘下载</a>
														<a href="${itemAll.officeWebSiteUrl }" target="_blank" class="btn btn-default" role="button">官网下载</a>
														</div>
													</div>
												</div>
											</div>
											</c:forEach>
										</div>
									<div class="row">
										<c:forEach var="itemAll" items="${dataTools}" begin="6" end="8">
											<div class="col-sm-4">
												<div class="thumbnail">
													<!--span class="e-label"><div>Sale</div></span-->
													<span class="service-link text-center">
														<img class="img-responsive bishe-img" src="${itemAll.toolPic }" alt="">
													</span>
													<div class="caption">
														<h3>${itemAll.name }</h3>
														<div>
														<a href="${itemAll.panUrl}" target="_blank" class="btn btn-default" role="button">网盘下载</a>
														<a href="${itemAll.officeWebSiteUrl }" target="_blank" class="btn btn-default" role="button">官网下载</a>
														</div>
													</div>
												</div>
											</div>
											</c:forEach>
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
	<%@ include file="footerCommon.jsp"%>
		<%@ include file="../jstl/footerbase.inc"%>
    </body>
</html>