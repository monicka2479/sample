<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
 <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
 <%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<!--[if IE 8]> <html lang="en" class="ie8"> <![endif]-->
<!--[if IE 9]> <html lang="en" class="ie9"> <![endif]-->
<!--[if !IE]><!--> <html lang="en"> <!--<![endif]-->
<!-- BEGIN HEAD -->
<head>
	<meta charset="utf-8" />
	<title>Time Table</title>
	<meta content="width=device-width, initial-scale=1.0" name="viewport" />
	<meta content="" name="description" />
	<meta content="" name="author" />
	<link href="assets/bootstrap/css/bootstrap.min.css" rel="stylesheet" />
	<link href="assets/css/subject.css" rel="stylesheet" />
	<link href="assets/css/metro.css" rel="stylesheet" />
	<link href="assets/bootstrap/css/bootstrap-responsive.min.css" rel="stylesheet" />
	<link href="assets/font-awesome/css/font-awesome.css" rel="stylesheet" />
	<link href="assets/fullcalendar/fullcalendar/bootstrap-fullcalendar.css" rel="stylesheet" />
	<link href="assets/css/style.css" rel="stylesheet" />
	<link href="assets/css/style_responsive.css" rel="stylesheet" />
	<link href="assets/css/style_default.css" rel="stylesheet" id="style_color" />
	<link rel="stylesheet" type="text/css" href="assets/chosen-bootstrap/chosen/chosen.css" />
	<link rel="stylesheet" type="text/css" href="assets/uniform/css/uniform.default.css" />
	<link rel="shortcut icon" href="favicon.ico" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" /></head>

	
		
<body class="fixed-top">
<%-- <form:form action="/displayTT.htm" method="GET" > --%>
	<!-- BEGIN HEADER -->
	<div class="header navbar navbar-inverse navbar-fixed-top">
	
		<!-- BEGIN TOP NAVIGATION BAR -->
		<div class="navbar-inner">
			<div class="container-fluid">
				<!-- BEGIN LOGO -->
				
				<!-- END LOGO -->
				<!-- BEGIN RESPONSIVE MENU TOGGLER -->
				<a href="javascript:;" class="btn-navbar collapsed" data-toggle="collapse" data-target=".nav-collapse">
				<img src="assets/img/menu-toggler.png" alt="" />
				</a>          
				<!-- END RESPONSIVE MENU TOGGLER -->
				<h3 class="enkalvi-logo"><span>EN</span>KALVI</h3>				
				<!-- BEGIN TOP NAVIGATION MENU -->					
				<ul class="nav pull-right">
					
					<!-- BEGIN USER LOGIN DROPDOWN -->
					<li class="dropdown user">
						<a href="#" class="dropdown-toggle" data-toggle="dropdown">
						<img alt="" src="assets/img/avatar1_small.jpg" />
						<span class="username">Bipin Yadav</span>
						<i class="icon-angle-down"></i>
						</a>
						<ul class="dropdown-menu">
						<li style="float:left;"><a href="#"><img style=" margin-right: 10px;" src="assets/img/avatar.jpg" alt=""></li>
							<li><a href="#"><i class="icon-user"></i> Edit Profile</a></li>
							<li><a href="#"><i class="icon-asterisk"></i> Change Password</a></li>
							
							<li class="divider"></li>
							<li><a href="login.html"><i class="icon-key"></i> Log Out</a></li>
						</ul>
					</li>
					<!-- END USER LOGIN DROPDOWN -->
				</ul>
				<!-- END TOP NAVIGATION MENU -->	
			</div>
		</div>
		<!-- END TOP NAVIGATION BAR -->
	</div>
	<!-- END HEADER -->
	<!-- BEGIN CONTAINER -->	
	<div class="page-container row-fluid">
		<!-- BEGIN SIDEBAR -->
		<div class="page-sidebar nav-collapse collapse">
			<!-- BEGIN RESPONSIVE QUICK SEARCH FORM -->
			<div class="slide hide">
				<i class="icon-angle-left"></i>
			</div>
			
			<div class="clearfix"></div>
			<!-- END RESPONSIVE QUICK SEARCH FORM -->
			<!-- BEGIN SIDEBAR MENU -->
			<ul>
				<li>
					<a href="timeTableInput.htm">
					<i class="icon-inbox"></i> Time Table setup<span class="selected"></span>
					
					</a>					
				</li>
				<li>
					<a href="generate.htm">
					<i class="icon-tasks"></i> Generate Time Table<span class="selected"></span>
					
					</a>					
				</li><li>
					<a href="dispTTPage.htm">
					<i class="icon-group"></i> Teacher Time Table<span class="selected"></span>
					
					</a>					
				</li><li>
					<a href="dispTTPage.htm">
					<i class="icon-book"></i> Class Time Table<span class="selected"></span>
					
					</a>					
				</li>
			</ul>
			<!-- END SIDEBAR MENU -->
		</div>
		<!-- END SIDEBAR -->
		<!-- BEGIN PAGE -->
		<div class="page-content">
			<!-- BEGIN SAMPLE PORTLET CONFIGURATION MODAL FORM-->
			<div id="portlet-config" class="modal hide">
				<div class="modal-header">
					<button data-dismiss="modal" class="close" type="button"></button>
					<h3>portlet Settings</h3>
				</div>
				<div class="modal-body">
					<p>Here will be a configuration form</p>
				</div>
			</div>
			<!-- END SAMPLE PORTLET CONFIGURATION MODAL FORM-->
			<!-- BEGIN PAGE CONTAINER-->
			<div class="container-fluid">
				<!-- BEGIN PAGE HEADER-->
				<div class="row-fluid">
					<div class="span12">
						
						<!-- BEGIN PAGE TITLE & BREADCRUMB-->		
						<h3 class="page-title">
							Time Table
							<small></small>
						</h3>
						<ul class="breadcrumb">
								<li>
									<i class="icon-home"></i>
									
									</li>
							<li>
								
								<a href="index.html">Dashboard</a> 
								<i class="icon-angle-right"></i>
							</li>
							<li>
								
								<a href="timetable.html">Time Table</a> 
								
							</li>
							
						</ul>
						<!-- END PAGE TITLE & BREADCRUMB-->
					</div>
				</div>
				<!-- END PAGE HEADER-->
				
				 <div class="row-fluid">
               <div class="span12">
                  <!-- BEGIN SAMPLE FORM PORTLET-->   
                  <div class="portlet box yellow">
                     <div class="portlet-title">
                        <h4><i class="icon-reorder"></i>Time Table - Setup</h4>
                       
                     </div>
                     </div>
                     </div>
                     </div>
                     
<form:form commandName="inputTT" action="addDetails.htm" method="POST" >
							Student Group 
                              <div class="control-group">
                               <div class="controls">
                             
                              <form:select path="studentGroup.id" size="20" >
                              <c:forEach items="${applicationScope.group}" var="data1" >
                              <form:option value="${data1.id}">${data1.std}-${data1.sec}${data1.combination}</form:option>
                              </c:forEach>	
                              </form:select>    
                              <form:select path="course.id" size="20"  >                              
                              <c:forEach items="${applicationScope.course}" var="data2" >
                              <form:option value="${data2.id}">${data2.standard}-${data2.subject_name}</form:option>
                              </c:forEach>                             
                              </form:select>  
                              
                              <form:select path="prof.id" size="20" >                              
                              <c:forEach items="${applicationScope.prof}" var="data3" >
                              <form:option value="${data3.id}">${data3.prof_name}</form:option>
                              </c:forEach>                             
                              </form:select>
                                 <br>
                                 Duration  :&nbsp; <form:input path="durationOfeachCourse"/>
                                 <br>
 							     Required Lab :&nbsp; <form:input path="requiredLabOrNot"/>
 							     <br> 							     
 								 No. of classes in a week :&nbsp; <form:input path="noOfClassesPerWeek"/> 
 								 <br>
 								 <input type="submit" name="action" value="Add"/>
 								 ${display}
 								 
 								 
 								 
                              </div>
</div>


</form:form>
                              
<div  class="control-group" style="text-align:right;">
					
					
					
					<div class="controls">
					<button class="btn blue" type="button">Update</button>&nbsp;&nbsp;&nbsp;<button class="btn yellow" type="button">Freeze</button>
					</div>
				</div>
				
				<!-- END PAGE CONTENT-->
			</div>
			<!-- END PAGE CONTAINER-->	
		</div>
		</div>
		</div>
		
		<!-- END PAGE -->	 	
	<!-- </div> -->
	<!-- END CONTAINER -->
	<!-- BEGIN FOOTER -->
	<div class="footer">
		2015 &copy; MySchool
		<div class="span pull-right">
			<span class="go-top"><i class="icon-angle-up"></i></span>
		</div>
	</div>
	<!-- END FOOTER -->
	<!-- BEGIN JAVASCRIPTS -->
	<!-- Load javascripts at bottom, this will reduce page load time -->
	<script src="assets/js/jquery-1.8.3.min.js"></script>			
	<script src="assets/breakpoints/breakpoints.js"></script>			
	<script src="assets/jquery-slimscroll/jquery-ui-1.9.2.custom.min.js"></script>	
	<script src="assets/bootstrap/js/bootstrap.min.js"></script>
	<script src="assets/js/jquery.blockui.js"></script>
	<script src="assets/fullcalendar/fullcalendar/fullcalendar.min.js"></script>	
	<script type="text/javascript" src="assets/uniform/jquery.uniform.min.js"></script>
	<script type="text/javascript" src="assets/chosen-bootstrap/chosen/chosen.jquery.min.js"></script>
	<script type="text/javascript" src="assets/uniform/jquery.uniform.min.js"></script>	
	<script type="text/javascript" src="assets/data-tables/DT_bootstrap.js"></script>	
	<script src="assets/js/app.js"></script>		
	<script>
		jQuery(document).ready(function() {			
			
			App.init();
		});
	</script>
		
		
	<!-- END JAVASCRIPTS -->
	
	<%-- </form:form> --%>
</body>
<!-- END BODY -->
</html>