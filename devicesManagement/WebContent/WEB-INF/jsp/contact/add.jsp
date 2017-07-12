

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
			<span class="fa fa-arrow-circle-o-left"></span> Add Contact
		</h2>
	</div>
	<!-- END PAGE TITLE -->

	<!-- PAGE CONTENT WRAPPER -->
	<div class="page-content-wrap">

		<div class="row">
			<div class="col-md-12">
				<div class="panel panel-default" style="padding: 10px;">
					<form
						action="${pageContext.request.contextPath}/contact/add"
						method="post" class="form-horizontal" role="form">
						<div class="col-md-12">
							<div class="form-group">
								<label class="col-md-3 col-xs-12 control-label">description</label>
								<div class="col-md-6 col-xs-12">
									<div class="input-group">
										<span class="input-group-addon"><span
											class="fa fa-pencil"></span></span> 
											<input type="text"
											name="description" class="form-control" />
									</div>
									<span class="help-block">Ex: My PC was destroyed by
										Torres.</span>
								</div>
							</div>
						</div>
						<div class="panel-footer">
							<button type="reset" class="btn btn-default">Clear Form</button>
							<button type="submit" class="btn btn-primary pull-right">Submit</button>
						</div>
					</form>
				</div>
			</div>

		</div>