<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8" %>
<%@ include file="/jsp/inc/base.inc"%>
<c:set var="PAGE_TITLE" value="增加工具"></c:set>
<%@ include file="/jsp/inc/bodybase.inc"%>
<script type="text/javascript">
	seajs.use('app',function(app){
		app.load('admin/learnData/addDataTool');
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
										<div class="col-sm-10">
											<span class="t-color-1" style="font-size:20px">新增工具</span>
											<div class="heading-border b-color-6"  style="margin-bottom:10px"></div>
										</div>
									</div>
								</div>
							</div>
							<div class="row">
								<div class="col-sm-9">
									<form role="form" name="addDataToolFrom" enctype="multipart/form-data" id="addDataToolFrom" method="post" action="${basePath}/dataTool/save">
										  <div class="form-group">
										    <label for="name">名称</label>
										    <input  class="form-control" id="name" name="name" placeholder="请输入项目名称" required>
										  </div>
										  <div class="form-group">
										    <label for="panUrl">网盘链接</label>
										    <input  class="form-control" id="panUrl" name="panUrl" placeholder="网盘链接" required>
										  </div>
										  <div class="form-group">
										    <label for="officialWebsiteName">官网链接</label>
										    <input  class="form-control" id="officialWebsiteName" name="officeWebSiteUrl" placeholder="官网链接" required>
										  </div>
										  <div class="form-group">
										    <label for="toolType">类别</label>
											<select class="form-control" name="toolType" id="toolType">
												  <option value="0">文本编辑器</option>
												  <option value="1">IDE</option>
											</select>
										  </div>
										  <div class="form-group">
										    <label for="projectPicLoad">项目图片</label>
												<input id="projectPicLoad" name="projectPicLoad" type="file" /><br>	
												<input type="hidden" name="toolPic" id="projectPic" value=""/>
											</div>
										  	<div>
										    <label>是否推荐</label>
										      <div>
										     <label class="radio-inline">
										     <input type="radio" name="recommendStatus" id="recommend" value="0" checked> 否
													</label>
													<label class="radio-inline">
													  <input type="radio" name="recommendStatus" id="notRecommend" value="1"> 是
													</label>
										     </div>
										  	</div>
										  <button type="submit" id="saveBtn"  style="margin-top:10px;" class="btn btn-primary">提交</button>
									</form>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>
<%@ include file="/jsp/common/footerCommon.jsp"%>
<%@ include file="/jsp/inc/footerbase.inc"%>