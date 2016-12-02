<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8" %>
<%@ include file="../jstl/base.inc"%>
<!DOCTYPE html>
<html lang="en">
    <head>
		<title>Share1024</title>
        <!-- ALL STYLESHEET -->
		<link href="${basePath}/fileinput/css/fileinput.css" rel="stylesheet"/>
		<!--link href="css/blog-single.css" rel="stylesheet">
		<link href="css/responsive.css" rel="stylesheet"-->
<style>
.error{
	color:red;
}
</style>
    </head>   
	<body>
		<!-- header -->
		<!-- header -->
		<header class="header">
			<!-- logo and adds -->
			<div class="logo-add">
				<div class="container">
					<div class="row">
						<div class="col-sm-4">
							<div class="logo"><i class="fa fa-diamond"></i>Share1024</div>
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
										<li class="active"><a href="admin.jsp">系统管理</a></li>
									</ul>
								</div>
							</div>
						</nav>
					</div>	
				</div>	
			</div>	
		</header>	
		<!-- recommented products -->
		<section class="featured-product recommented-product">
			<div class="container">
				<div class="row">
					<div class="col-sm-3">
						<div class="sidebar">
							<div class="well wedget">
							 	<strong  id="test">分类</strong>
							 	<div class="heading-border b-color-6"></div>
								<div class="list-group">
								  <a href="#" class="list-group-item active">
								    毕业设计
								  </a>
								  <a href="#" class="list-group-item">Java资料</a>
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
										<div class="col-sm-10">
											<span class="t-color-1" style="font-size:20px">新增毕设</span>
											<div class="heading-border b-color-6"  style="margin-bottom:10px"></div>
										</div>
									</div>
								</div>
							</div>
							<div class="row">
								<div class="col-sm-9">
									<form role="form" name="addBisheFrom" enctype="multipart/form-data" id="addBisheFrom" method="post" action="${basePath}/project/save">
										  <div class="form-group">
										    <label for="projectName">名称</label>
										    <input  class="form-control" id="projectName" name="projectName" placeholder="请输入项目名称" required>
										  </div>
										  <div class="form-group">
										    <label for="projectDesc">说明</label>
										     <textarea class="form-control" name="projectDesc" id="projectDesc" rows="3" placeholder="简单的说些项目内容" required></textarea>
										  </div>
										  <div class="form-group">
										    <label for="exampleInputFile">级别</label>
											<select class="form-control" name="projectType" id="projectType">
												  <option value="0">初级</option>
												  <option value="1">中级</option>
												  <option value="2">高级</option>
												</select>
										  </div>
										  <div class="form-group">
										    <label for="projectMoney">价格</label>
										    <input  class="form-control" id="projectMoney" name="projectMoney" placeholder="请输入价格" required>
										  </div>
										  <div class="form-group">
										    <label for="projectFile">上传附件<span style="color:red;">(只支持markdown文件)</span></label>
												<input id="projectFile"  name="projectFile" type="file" placeholder="只支持markdown文件" /> <br>	
												 <input type="hidden" name="contentUuid" id="contentUuid" value=""/>
											</div>
											<div class="form-group">
										    <label for="projectPic">项目图片</label>
										     <input class="form-control" name="projectPic" id="" placeholder="先上传好图片，然后链接拷贝过来" required></input>
										  	</div>
										  	<div>
										    <label for="projectPic">是否推荐</label>
										      <div>
										     <label class="radio-inline">
										     <input type="radio" name="recommend" id="recommend" value="0" checked> 否
													</label>
													<label class="radio-inline">
													  <input type="radio" name="recommend" id="notRecommend" value="1"> 是
													</label>
										     </div>
										  	</div>
										  <button type="button" id="saveBtn"  style="margin-top:10px;" class="btn btn-primary">提交</button>
									</form>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>
		<%@ include file="footerCommon.jsp"%>
        <!-- ALL JAVASCRIPT -->  
        <%@ include file="../jstl/footerbase.inc"%>      
          <script type="text/javascript" src="${basePath}/fileinput/js/fileinput.js"></script>
		<script type="text/javascript" src="${basePath}/fileinput/js/fileinput_locale_zh.js"></script>
		<script type="text/javascript" src="${basePath}/js/fileLoad.js"></script>
		<script type="text/javascript" src="${basePath}/js/jquery.validate.min.js"></script>
		<script type="text/javascript" src="${basePath}/js/messages_zh.js"></script>
		<script type="text/javascript" src="${basePath}/js/addBishe.js"></script> 
    </body>
</html>