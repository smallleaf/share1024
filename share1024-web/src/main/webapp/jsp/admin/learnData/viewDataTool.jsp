<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8" %>
<%@ include file="/jsp/inc/base.inc"%>
<c:set var="PAGE_TITLE" value="查看工具"></c:set>
<%@ include file="/jsp/inc/bodybase.inc"%>
<script type="text/javascript">
	seajs.use('app',function(app){
	})
</script>	
		<!-- header -->
		<%@ include file="/jsp/common/editHeaderCommon.jsp"%>
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
								<a href="#" class="list-group-item active"><span class="badge">12</span>工具大全</a>
								  <a href="#" class="list-group-item ">
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
											<div class="col-sm-10">
												<span class="t-color-1" style="font-size:20px">全部</span>
												<div class="heading-border b-color-6"  style="margin-bottom:10px"></div>
											</div>
										<div class="col-sm-1 col-sm-offset-1">
											<a href="${basePath}/admin/addDataTool" class="btn btn-primary" style="font-size:12px" role="button"><span  class="text-default glyphicon glyphicon-plus"></span> 添加</a>
										</div>
										</div>
									</div> <!-- section title -->
									<div class="row">
										<div class="col-sm-4">
											<div class="thumbnail">
												<!--span class="e-label"><div>Sale</div></span-->
												<span class="service-link text-center">
													<img class="img-responsive" src="${basePath}/images/f-pro-1.jpg" alt="">
													<div class="list-inline">
														<a href=""><i class="fa fa-eye"></i></a>
														<a href=""><i class="fa fa-link"></i></a>
													</div>
												</span>
												<div class="caption">
													<h3>Lorem ipsum dolor sit amet dolorem molestie</h3>
													<div>
													<a href="projectDetail.jsp" class="btn btn-default" role="button">网盘下载</a>
													<a href="projectDetail.jsp" class="btn btn-default" role="button">官网下载</a>
													</div>
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
<%@ include file="/jsp/common/footerCommon.jsp"%>
<%@ include file="/jsp/inc/footerbase.inc"%>