<%@include file="/templates/taglib.jsp" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
                    <h2><span class="fa fa-arrow-circle-o-left"></span> Add Equipment</h2>
                </div>
                <!-- END PAGE TITLE -->                

                <!-- PAGE CONTENT WRAPPER -->
                <div class="page-content-wrap">                
                
                    <div class="row">
                        <div class="col-md-12">
							<div class="panel panel-default" style="padding:10px;">
                                <form class="form-horizontal" action="${pageContext.request.contextPath}/device/add" method="post" enctype="multipart/form-data">
                                    <div class="col-md-6">
                                        <div class="form-group">
                                        <label class="col-md-3 col-xs-12 control-label">ID Equipment</label>
                                        <div class="col-md-6 col-xs-12">                                            
                                            <div class="input-group">
                                                <span class="input-group-addon"><span class="fa fa-pencil"></span></span>
                                                <input name="id" type="text" class="form-control"/>
                                            </div>                                            
                                            <span class="help-block"></span>
                                        </div>
                                    </div>
                                        <div class="form-group">
                                        <label class="col-md-3 col-xs-12 control-label">Seri Number</label>
                                        <div class="col-md-6 col-xs-12">                                            
                                            <div class="input-group">
                                                <span class="input-group-addon"><span class="fa fa-pencil"></span></span>
                                                <input name="seri_number" type="text" class="form-control"/>
                                            </div>                                            
                                            <span class="help-block"></span>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-md-3 col-xs-12 control-label">Name</label>
                                        <div class="col-md-6 col-xs-12">                                            
                                            <div class="input-group">
                                                <span class="input-group-addon"><span class="fa fa-pencil"></span></span>
                                                <input name="name" type="text" class="form-control"/>
                                            </div>                                            
                                            <span class="help-block"></span>
                                        </div>
                                    </div>
                                     <div class="form-group">
                                        <label class="col-md-3 col-xs-12 control-label">Made in</label>
                                        <div class="col-md-6 col-xs-12">                                            
                                            <div class="input-group">
                                                <span class="input-group-addon"><span class="fa fa-pencil"></span></span>
                                                <input name="made_in" type="text" class="form-control"/>
                                            </div>                                            
                                            <span class="help-block"></span>
                                        </div>
                                    </div>
                                      <div class="form-group">
                                        <label class="col-md-3 col-xs-12 control-label">Account</label>
                                        <div class="col-md-6 col-xs-12">                                                                                            
                                           <select name="idAccount" class="form-control select">
	                                            <option value="-1">--Choose account--</option>
	                                            <c:forEach items="${listAccounts }" var="objAccount">
	                                                <option value="${objAccount.id }">${objAccount.username }</option>
	                                            </c:forEach>
                                            </select>
                                            <span class="help-block"></span>
                                        </div>
                                    </div>
                                      <div class="form-group">
                                        <label class="col-md-3 col-xs-12 control-label">Price</label>
                                        <div class="col-md-6 col-xs-12">                                            
                                            <div class="input-group">
                                                <span class="input-group-addon"><span class="fa fa-pencil"></span></span>
                                                <input name="price" type="text" class="form-control"/>
                                            </div>                                            
                                            <span class="help-block"></span>
                                        </div>
                                    </div>
                                    </div>
                                    <div class="col-md-6">                   
                                      <div class="form-group">
                                        <label class="col-md-3 col-xs-12 control-label">Warranty</label>
                                        <div class="col-md-6 col-xs-12">                                            
                                            <div class="input-group">
                                                <span class="input-group-addon"><span class="fa fa-pencil"></span></span>
                                                <input name="warranty" type="text" class="form-control"/>
                                            </div>                                            
                                            <span class="help-block"></span>
                                        </div>
                                    </div>
                                        <div class="form-group">
                                        <label class="col-md-3 col-xs-12 control-label">Is New</label>
                                        <div class="col-md-6 col-xs-12">                                                                                            
                                            <input type="radio" name="isnew" value="1"> New
  											<input type="radio" name="isnew" value="0" style="margin-left:30px"> Old
                                            <span class="help-block"></span>
                                        </div>
                                    </div>
                                     <div class="form-group">
                                        <label class="col-md-3 col-xs-12 control-label">Status</label>
                                        <div class="col-md-6 col-xs-12">                                                                                            
                                            <select name="status" class="form-control select">
                                                <option value="-1">--Choose status--</option>
                                                <option value="inuse">In use</option>
                                                <option value="break">Break</option>
                                            </select>
                                            <span class="help-block"></span>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-md-3 col-xs-12 control-label">Category</label>
                                        <div class="col-md-6 col-xs-12">                                                                                            
                                            <select name="idCat" class="form-control select">
	                                            <option value="-1">--Choose category--</option>
	                                            <c:forEach items="${listCats }" var="objCat">
	                                                <option value="${objCat.id }">${objCat.name }</option>
	                                            </c:forEach>
                                            </select>
                                            <span class="help-block"></span>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-md-3 col-xs-12 control-label">Picture</label>
                                        <div class="col-md-6 col-xs-12">                                                                                                                                        
                                            <input type="file" class="fileinput btn-primary" name="filename" id="filename" title="Browse file"/>
                                            <span class="help-block"></span>
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

    



                