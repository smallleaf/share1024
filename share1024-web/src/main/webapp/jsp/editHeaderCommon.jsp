<%@ page pageEncoding="utf-8"%>
	<!-- header -->
		<header class="header">
			<!-- logo and adds -->
			<div class="logo-add">
				<div class="container">
					<div class="row">
						<div class="col-sm-4">
							<div class="logo">
								<img alt="" src="${basePath}/images/logo.jpg">
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
										<li class="active"><a >编辑</a></li>
										<li><a href="${basePath}/admin/editTool">Java毕业设计</a></li>
										<li><a href="${basePath}/jsp/learning.jsp">Java资料</a></li>
										<li><a href="${basePath}/jsp/learnPath.jsp">学习路线</a></li>
										<li><a href="${basePath}/jsp/software.jsp">软件</a></li>
										<li><a href="${basePath}/jsp/contact-us.html">Contac Us</a></li>
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