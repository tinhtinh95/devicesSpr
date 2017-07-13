<%@ include file="/templates/taglib.jsp" %>

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
                    <h2><span class="fa fa-arrow-circle-o-left"></span> Category</h2>
                </div>
                <!-- END PAGE TITLE -->                

                <!-- PAGE CONTENT WRAPPER -->
                <div class="page-content-wrap">                
                
                    <div class="row">
                        <div class="col-md-12">

                            <!-- START DEFAULT DATATABLE -->
                            <div class="panel panel-default">
                                <div class="panel-heading">                                
                                    <a href="${pageContext.request.contextPath }/cat/add" type="button" class="btn btn-info">Add</a>
                                    <c:if test="${param['msg'] eq 'add' }">
                                    <div style="color:blue; font-size:20px;text-align:center">Add Success</div>
                                </c:if>
                                <c:if test="${param['msg'] eq 'edit' }">
                                    <div style="color:blue; font-size:20px;text-align:center">Edit Success</div>
                                </c:if>
                                <c:if test="${param['msg'] eq 'del' }">
                                    <div style="color:blue; font-size:20px;text-align:center">Del Success</div>
                                </c:if>
                                <c:if test="${param['msg'] eq 'err' }">
                                    <div style="color:blue; font-size:20px;text-align:center">Error.Try Again</div>
                                </c:if>
                                </div>
                                <div class="panel-body" id="body"><div class="table-responsive">
                                    <table class="table datatable">
                                        <thead>
                                            <tr>
                                                <th>ID</th>
                                                <th>Name</th>
                                                <td>Detail</td>
                                                <th>Actions</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                        <c:forEach var="objItem" items="${listItems}">
                                            <tr>
                                                <td>${objItem.id }</td>
                                                <td>${objItem.name }</td>
                                                <td><a
											href="${pageContext.request.contextPath }/cat/detail/${objItem.id}"
											style="background-color: #A9F5F2"
											class="btn btn-default btn-rounded btn-sm">Click here</a></td>
                                                <td>
                                                        <a href="${pageContext.request.contextPath }/cat/edit/${objItem.id}" class="btn btn-default btn-rounded btn-sm"><span class="fa fa-pencil"></span></a>
                                                        <a href="${pageContext.request.contextPath }/cat/del/${objItem.id}"  class="btn btn-danger btn-rounded btn-sm" onClick="return confirm('Do you want delete?')"><span class="fa fa-times"></span></a>
                                                    </td>
                                            </tr>
                                       </c:forEach>
                                        </tbody>
                                    </table></div>
                                </div>
                            </div>
                            <!-- END DEFAULT DATATABLE -->

                           

                        </div>
                         
                    </div>                                
<script type="text/javascript">
    function  Confirm(){
    	
    }
</script>
    



                