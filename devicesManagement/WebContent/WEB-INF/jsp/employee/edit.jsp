<%@include file="/templates/taglib.jsp"%>

<!-- PAGE CONTENT -->
<div class="page-content">

	<!-- START X-NAVIGATION VERTICAL -->
	<ul class="x-navigation x-navigation-horizontal x-navigation-panel">
		<!-- TOGGLE NAVIGATION -->
		<li class="xn-icon-button"><a href="#"
			class="x-navigation-minimize"><span class="fa fa-dedent"></span></a>
		</li>
		<!-- END TOGGLE NAVIGATION -->

		<!-- SIGN OUT -->
		<li class="xn-icon-button pull-right"><a href="#"
			class="mb-control" data-box="#mb-signout"><span
				class="fa fa-sign-out"></span></a></li>
		<!-- END SIGN OUT -->


	</ul>
	<!-- END X-NAVIGATION VERTICAL -->

	<!-- START BREADCRUMB -->
	<ul class="breadcrumb">
		<li><a href="#">Home</a></li>
		<li><a href="#">Tables</a></li>
		<li class="active">Data Tables</li>
	</ul>
	<!-- END BREADCRUMB -->

	<!-- PAGE TITLE -->
	<div class="page-title">
		<h2>
			<span class="fa fa-arrow-circle-o-left"></span> Edit Employee
		</h2>
	</div>
	<!-- END PAGE TITLE -->

	<!-- PAGE CONTENT WRAPPER -->
	<div class="page-content-wrap">

		<div class="row">
			<div class="col-md-12">
				<div class="panel panel-default" style="padding: 10px;">

					<form class="form-horizontal"
						action="${pageContext.request.contextPath }/employee/edit/${objEmployee.id}"
						method="POST" enctype="multipart/form-data" role="form">
						<div class="col-md-6">
							<div class="form-group">
								<label class="col-md-3 col-xs-12 control-label">Id
									Employee</label>
								<div class="col-md-6 col-xs-12">
									<div class="input-group">
										<span class="input-group-addon"><span
											class="fa fa-pencil"></span></span> <input disabled="disabled"
											type="text" value="${objEmployee.id}" name="id"
											class="form-control" />
									</div>
									<span class="help-block">This is sample of text field</span>
								</div>
							</div>

							<div class="form-group">
								<label class="col-md-3 col-xs-12 control-label">Name</label>
								<div class="col-md-6 col-xs-12">
									<div class="input-group">
										<span class="input-group-addon"><span
											class="fa fa-pencil"></span></span> <input type="text"
											value="${objEmployee.name}" name="name" class="form-control" />
									</div>
									<span class="help-block"><form:errors path = "objEmployee.name" style="color:red"></form:errors></span>
								</div>
							</div>

							<div class="form-group">
								<label class="col-md-3 col-xs-12 control-label">Postion</label>
								<div class="col-md-6 col-xs-12">
									 <select name = "id_Position" class="form-control select">
                                            <c:forEach items="${listPosition}" var="objItemPos">
                                            	<option value = "${objItemPos.id}" >${objItemPos.namePos}</option>
                                            </c:forEach>
                                            </select> <span class="help-block">Select box example</span>
								</div>
							</div>

							<div class="form-group">
								<label class="col-md-3 col-xs-12 control-label">Datebirth</label>
								<div class="col-md-6 col-xs-12">
									<div class="input-group">
										<span class="input-group-addon"><span
											class="fa fa-calendar"></span></span>
											<fmt:formatDate pattern="yyyy-MM-dd" value="${objEmployee.birthday}" var = "birthday" />
											 <input type="text"
											class="form-control datepicker"
											value="${birthday}" name="birthday">
									</div>
									<span class="help-block"><form:errors path = "objEmployee.birthday" style="color:red"></form:errors></span>
								</div>
							</div>
							<div class="form-group">
								<label class="col-md-3 col-xs-12 control-label">Email</label>
								<div class="col-md-6 col-xs-12">
									<div class="input-group">
										<span class="input-group-addon"><span
											class="fa fa-pencil"></span></span> <input type="text"
											value="${objEmployee.email}" name="email"
											class="form-control" />
									</div>
									<span class="help-block"><form:errors path = "objEmployee.address" style="color:red"></form:errors></span>
								</div>
							</div>
						</div>
						<div class="col-md-6">
							<div class="form-group">
								<label class="col-md-3 col-xs-12 control-label">Address</label>
								<div class="col-md-6 col-xs-12">
									<div class="input-group">
										<span class="input-group-addon"><span
											class="fa fa-pencil"></span></span> <input type="text"
											value="${objEmployee.address}" name="address"
											class="form-control" />
									</div>
									<span class="help-block"><form:errors path = "objEmployee.address" style="color:red"></form:errors></span>
								</div>
							</div>

							<div class="form-group">
								<label class="col-md-3 col-xs-12 control-label">Id team</label>
								<div class="col-md-6 col-xs-12">
									 <select name = "id_Team" class="form-control select">
                                            <c:forEach items="${listTeam}" var="objItemTeam">
                                            	<option value = "${objItemTeam.id}" >${objItemTeam.name}</option>	
                                            </c:forEach>
                                            </select>
                                            <span class="help-block">Select box example</span>
								</div>
							</div>

							<div class="form-group">
								<label class="col-md-3 col-xs-12 control-label">Phone</label>
								<div class="col-md-6 col-xs-12">
									<div class="input-group">
										<span class="input-group-addon"><span
											class="fa fa-pencil"></span></span> <input type="text"
											value="${objEmployee.phone}" name="phone"
											class="form-control" />
									</div>
									<span class="help-block"><form:errors path = "objEmployee.phone" style="color:red"></form:errors></span>
								</div>
							</div>


							<div class="form-group">
								<label class="col-md-3 col-xs-12 control-label">Avatar</label>
								<div class="col-md-6 col-xs-12">
									<c:if
										test="${objEmployee.picture ne '' or objEmployee.picture ne null}">
										<img style="width: 150px; height: 125px;" alt=""
											src="${pageContext.request.contextPath }/files/${objEmployee.picture}">
									</c:if>
									<input type="file" class="fileinput btn-primary" value=""
										name="filename" id="filename" title="Browse file" /> <span
										class="help-block">Input type file</span>
								</div>
							</div>

						</div>
						<div class="panel-footer">
							<button class="btn btn-default">Clear Form</button>
							<button class="btn btn-primary pull-right">Submit</button>
						</div>
					</form>
				</div>
			</div>

		</div>