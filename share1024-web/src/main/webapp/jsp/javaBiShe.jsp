<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8" %>
<%@ include file="../jstl/base.inc"%>
<!DOCTYPE html>
<html lang="en">
    <head>
		<title>java毕业设计</title>
        <!-- ALL STYLESHEET -->
		<!--link href="css/blog-single.css" rel="stylesheet">
		<link href="css/responsive.css" rel="stylesheet"-->
    </head>   
	<body>
		<div class="hide">
			<input type="text" id="type" value="${type}"/>
		</div>
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
								<div class="list-group" id="project-type">
								  <a href="${basePath}/project/get/0/1" id="project0" class="list-group-item">
								  	<span class="badge">14</span>
								    初级JAVA毕设
								  </a>
								  <a href="${basePath}/project/get/1/1" id="project1" class="list-group-item"><span class="badge">12</span>中级JAVA毕设</a>
								  <a href="${basePath}/project/get/2/1" id="project2" class="list-group-item"><span class="badge">10</span>高级JAVA毕设</a>
								  <a href="#" id="" class="list-group-item"><span class="badge">8</span>高级就业系统</a>
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
										<c:forEach var="item" items="${projectList}" begin="0" end="2">
											<div class="col-sm-4">
												<div class="thumbnail">
													<span class="service-link text-center">
													<img class="img-responsive bishe-img"  src="${item.projectPic}" title="${item.projectDesc}">
												</span>
												<div class="caption">
													<div class="category"> 
														<c:if test="${item.projectType==0 }">初级</c:if>
														<c:if test="${item.projectType==1 }">中级</c:if>
														<c:if test="${item.projectType==2 }">高级</c:if>
													</div>
													<h3>${item.projectName}</h3>
													<strong>￥${item.money }</strong>
													<div>
														<a href="${basePath}/project/${item.id}/${item.contentUuid}" class="btn btn-default" role="button">购买</a>
													</div>
												</div>
												</div>
											</div>
										</c:forEach>
									</div>
								</div>
								<div class="item">
									<div class="row">
										
											<c:forEach var="item" items="${projectList}" begin="3" end="5">
											<div class="col-sm-4">
												<div class="thumbnail">
													<span class="service-link text-center">
													<img class="img-responsive bishe-img" src="${item.projectPic}" title="${item.projectDesc}">
												</span>
												<div class="caption">
													<div class="category"> 
														<c:if test="${item.projectType==0 }">初级</c:if>
														<c:if test="${item.projectType==1 }">中级</c:if>
														<c:if test="${item.projectType==2 }">高级</c:if>
													</div>
													<h3>${item.projectName}</h3>
													<strong>￥${item.money }</strong>
													<div>
														<a href="${basePath}/project/${item.id}/${item.contentUuid}" class="btn btn-default" role="button">购买</a>
													</div>
												</div>
											</div>
											</div>
										</c:forEach>
										
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
										<div class="item">
										<div class="row">
											<c:forEach var="itemAll" items="${projectsAll}" begin="0" end="2">
											
												<div class="col-sm-4">
													<div class="thumbnail">
														<span class="service-link text-center">
														<img class="img-responsive bishe-img" src="${itemAll.projectPic}" title="${itemAll.projectDesc}">
													</span>
													<div class="caption">
														<div class="category"> 
															<c:if test="${itemAll.projectType==0 }">初级</c:if>
															<c:if test="${itemAll.projectType==1 }">中级</c:if>
															<c:if test="${itemAll.projectType==2 }">高级</c:if>
														</div>
														<h3>${itemAll.projectName}</h3>
														<strong>￥${itemAll.money }</strong>
														<div>
															<a href="${basePath}/project/${itemAll.id}/${itemAll.contentUuid}" class="btn btn-default" role="button">购买</a>
														</div>
													</div>
												</div>
												</div>
												</c:forEach>
											</div>
											<div class="row">
											<c:forEach var="itemAll" items="${projectsAll}" begin="3" end="5">
												<div class="col-sm-4">
													<div class="thumbnail">
														<span class="service-link text-center">
														<img class="img-responsive bishe-img" src="${itemAll.projectPic}" title="${itemAll.projectDesc}">
													</span>
													<div class="caption">
														<div class="category"> 
															<c:if test="${itemAll.projectType==0 }">初级</c:if>
															<c:if test="${itemAll.projectType==1 }">中级</c:if>
															<c:if test="${itemAll.projectType==2 }">高级</c:if>
														</div>
														<h3>${itemAll.projectName}</h3>
														<strong>￥${itemAll.money }</strong>
														<div>
															<a href="${basePath}/project${itemAll.id}/${itemAll.contentUuid}" class="btn btn-default" role="button">购买</a>
														</div>
													</div>
												</div>
												</div>
												</c:forEach>
											</div>
										<div class="row">
											<c:forEach var="itemAll" items="${projectsAll}" begin="6" end="8">
												<div class="col-sm-4">
													<div class="thumbnail">
														<span class="service-link text-center">
														<img class="img-responsive bishe-img" src="${itemAll.projectPic}" title="${itemAll.projectDesc}">
													</span>
													<div class="caption">
														<div class="category"> 
															<c:if test="${itemAll.projectType==0 }">初级</c:if>
															<c:if test="${itemAll.projectType==1 }">中级</c:if>
															<c:if test="${itemAll.projectType==2 }">高级</c:if>
														</div>
														<h3>${itemAll.projectName}</h3>
														<strong>￥${itemAll.money }</strong>
														<div>
															<a href="${basePath}/project/${itemAll.id}/${itemAll.contentUuid}" class="btn btn-default" role="button">购买</a>
														</div>
													</div>
												</div>
												</div>
												</c:forEach>
											</div>
										</div>
								</div>
							</div>
						</div> <!-- desktop -->
						<!-- pagination -->
						<nav>
							<ul class="pagination">
								<li><a href="#" aria-label="Previous"><span aria-hidden="true">&laquo;</span></a></li>
								<c:forEach var="page" begin="${startPage }" end="${endPage}">
									<c:if test="${page==activePage}">
										<li class="active"><a href="${basePath }/project/get/${type}/${page}">${page}</a></li>
									</c:if>
									<c:if test="${page!=activePage}">
										<li><a href="${basePath }/project/get/${type}/${page}">${page}</a></li>
									</c:if>
								</c:forEach>
								<li><a href="#" aria-label="Next"><span aria-hidden="true">&raquo;</span></a>
							</ul>
						</nav>
					</div><!--div 9 -->
				</div>
			</div>
		</section>
	<%@ include file="footerCommon.jsp"%>
	
	<%@ include file="../jstl/footerbase.inc"%>
        <!-- ALL JAVASCRIPT -->         
    <script src="${basePath}/js/javaBiShe.js"></script>
    </body>
</html>