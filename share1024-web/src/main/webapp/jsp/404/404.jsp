<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="basePath" value="${pageContext.request.contextPath}" /> 
<!DOCTYPE html>
<html>
<head>
<title>404</title>
<meta charset="utf-8"/>
<meta http-equiv="Content-Language" content="ro"/>

<link rel="stylesheet" type="text/css" media="all" href="${basePath}/jsp/404/style.css" />
<link rel="stylesheet" type="text/css" media="all" href="${basePath}/jsp/404/backgrounds.css" />
<link rel="stylesheet" type="text/css" media="all" href="${basePath}/jsp/404/themes/blue/css/style.css" />
<link rel="stylesheet" type="text/css" media="all" href="${basePath}/jsp/404/themes/green/css/style.css" />
<link rel="stylesheet" type="text/css" media="all" href="${basePath}/jsp/404/themes/gray/css/style.css" />


 <script src="${basePath}/js/jquery.js"></script>
 <script type="text/javascript" src="${basePath}/jsp/404/js/jquery-global.js"></script>

<!--[if IE]>
<script type="text/javascript" src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script>
<![endif]-->

</head>

<body>


<div class="wrapper">
	<div class="mainWrapper">
        <div class="leftHolder">
        	<div class="logo">
				<a href="${basePath}/index.jsp"><img alt="" src="${basePath}/images/logo.jpg"></a> 
			</div>
            <div class="errorNumber">404</div> 
        </div>
        <div class="rightHolder">
            <div class="message"><p>The page you are looking for might have been removed, had its name changed, or is temporarily unavailable.</p></div>
            <div class="robotik"><img src="${basePath}/jsp/404/images/robotik.png" alt="Oooops....we can’t find that page." title="Oooops....we can’t find that page." id="robot"></div>
            <div class="tryToMessage">
                Try to:
                <ul>
                    <li>Use the search form</li>
                    <li>Visit the <a href="${basePath}/index.jsp" title="Robotik Sitemap">main index</a></li>
                </ul>
            </div>
            <!-- Search Form -->
            <div class="search">
            <span class="errorSearch">Please fill the search field</span>
            <form action="" method="post">
              <div class="searchInput">
                <input type="text" name="search_term" value="Search" />
              </div>
              <div class="searchButton">
                <input type="submit" name="submit" value="Go" />
              </div>
            </form>
            </div>
            <!-- end .search -->
          </div>
        <footer>
        </footer>
        <!-- end footer -->
	</div>
</div>
<!-- end .wrapper -->
</body>
</html>