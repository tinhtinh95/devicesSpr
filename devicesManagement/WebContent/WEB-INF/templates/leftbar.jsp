<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    

	<!-- START PAGE SIDEBAR -->
	<div class="page-sidebar">
			<!-- START X-NAVIGATION -->
			<ul class="x-navigation">
				<li class="xn-logo"><a href="index-2.html">Joli Admin</a> <a
					href="#" class="x-navigation-control"></a></li>
				<li class="xn-profile"><a href="#" class="profile-mini"> <img
						src="${pageContext.request.contextPath}/templates/assets/images/users/avatar.jpg"
						alt="John Doe" />
				</a>
					<div class="profile">
						<div class="profile-image">
							<img
								src="${pageContext.request.contextPath}/templates/assets/images/users/avatar.jpg"
								alt="John Doe" />
						</div>
						<div class="profile-data">
							<div class="profile-data-name">John Doe</div>
							<div class="profile-data-title">Web Developer/Designer</div>
						</div>
						<div class="profile-controls">
							<a href="pages-profile.html" class="profile-control-left"><span
								class="fa fa-info"></span></a> <a href="pages-messages.html"
								class="profile-control-right"><span class="fa fa-envelope"></span></a>
						</div>
					</div></li>
				<li class="xn-title">Management</li>
				<li><a href="${pageContext.request.contextPath}/employee"><span class="fa fa-users"></span>Employee</a></li>
				<li>
                    <a href="${pageContext.request.contextPath}/cat"><span class="fa fa-desktop"></span> <span class="xn-text">Category</span></a>                        
                </li>
				<li><a href="${pageContext.request.contextPath}/device"><span class="fa fa-align-justify"></span> Device</a></li>
				<li><a href="${pageContext.request.contextPath}/account"><span class="fa fa-user"></span> Account</a></li>
				<li><a href="${pageContext.request.contextPath}/contact"><span class="fa fa-file-text"></span> Contact</a></li>
				 <li><a href="${pageContext.request.contextPath}/history"><span class="fa fa-calendar"></span> History</a></li>
				 <li><a href="${pageContext.request.contextPath}/position"><span class="fa fa-columns"></span>Position</a></li>
				  <li><a href="${pageContext.request.contextPath}/team"><span class="fa fa-sitemap"></span> Team</a></li>
			</ul>
			<!-- END X-NAVIGATION -->
		</div>
	<!-- END PAGE SIDEBAR -->