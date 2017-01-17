<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8" %>
<%@ include file="/jsp/inc/base.inc"%>
<c:set var="PAGE_TITLE" value="学习路线"></c:set>
<%@ include file="/jsp/inc/bodybase.inc"%>
<script type="text/javascript">
	seajs.use('app',function(app){
	})
</script>
		<div class="hide">
			<input type="text" id="type" value="${type}"/>
		</div>
		<!-- header -->
		<%@ include file="/jsp/common/headerCommon.jsp"%>
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
								  <a href="" id="project0" class="list-group-item">
								    	JavaWeb工程师
								  </a>
								  <a href="#" id="" class="list-group-item">产品经理</a>
								</div>
							</div>
						</div> <!-- sidebar -->
					</div>
					<div class="col-sm-9">
						<div class="row">
							<div class="center-block" style="width:150px"><h4>JavaWeb工程师</h4></div>
							<div class="center-block" style="color:gray;text-indent:2em;">Java语言在Web开发领域的实现，作为Java工程师的你，再也不用劳烦Php的兄弟了。对了，BAT 都是Java体系核心，点击进入每一章节标题，会有详细视频，教程，书籍推荐.</div>
							<div class="divider-line"></div>
						</div>
						
					</div><!--div 9 -->
				</div>
			</div>
		</section>
	<%@ include file="/jsp/common/footerCommon.jsp"%>
	
        <!-- ALL JAVASCRIPT -->         
    <script src="${basePath}/js/javaBiShe.js"></script>
    </body>
</html>