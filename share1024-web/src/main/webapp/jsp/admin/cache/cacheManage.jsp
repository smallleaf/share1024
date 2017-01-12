<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8" %>
<%@ include file="/jstl/base.inc"%>
<!DOCTYPE html>
<html lang="en">
    <head>
		<title>缓存管理</title>
		<!--link href="css/blog-single.css" rel="stylesheet">
		<link href="css/responsive.css" rel="stylesheet"-->
    </head>   
	<body>
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
								<a href="#" class="list-group-item"><span class="badge">12</span>工具大全</a>
								  <a href="#" class="list-group-item active">
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
											<div class="col-sm-7">
											
												<span class="t-color-1" style="font-size:20px">全部</span>
												<div class="heading-border b-color-6"  style="margin-bottom:10px"></div>
												</div>
												<div class="col-sm-1 col-sm-offset-1">
													<button type="button" id="clearAll" class="btn btn-danger btn-sm"><span  class="text-default glyphicon glyphicon-trash"></span> 全部清除</button>
												</div>
											
									</div> <!-- section title -->
									<div class="row">
										<div class="col-sm-10">
											<table class="cache-table table table-bordered">
												  <thead>
												    <tr>
												      <th>缓存名称</th>
												      <th>操作</th>
												    </tr>
												  </thead>
												  <tbody>
												    <tr class="danger">
												      <td>projectCache</td>
												      <td>
												      	<button id="projectCache" type="button" class="btn btn-primary btn-sm"><span  class="text-default glyphicon glyphicon-trash"></span> 清除缓存</button>
												      </td>
												    </tr>
												  </tbody>
										</table>
										</div>
									</div>
								</div>
							</div>
						</div> <!-- desktop -->
						<!-- pagination -->
					</div><!--div 9 -->
				</div>
			</div>
		</section>
	<%@ include file="/jsp/common/footerCommon.jsp"%>
	<%@ include file="/jstl/footerbase.inc"%>
	<script type="text/javascript" src="${basePath}/js/admin/cache/cacheManage.js"></script>
    </body>
</html>