<%@include file="/templates/taglib.jsp" %>

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
                    <h2><span class="fa fa-arrow-circle-o-left"></span> Sortable Tables</h2>
                </div>
                <!-- END PAGE TITLE -->                

                <!-- PAGE CONTENT WRAPPER -->
                <div class="page-content-wrap">                
                
                    <div class="row">
                        <div class="col-md-12">

                            <!-- START DEFAULT DATATABLE -->
                            <div class="panel panel-default">
                                <div class="panel-heading">                                
                                    <a href="${pageContext.request.contextPath }/device/add" type="button" class="btn btn-info">Add</a>
                                    <ul class="panel-controls">
                                        <li><a href="#" class="panel-collapse"><span class="fa fa-angle-down"></span></a></li>
                                        <li><a href="#" class="panel-refresh"><span class="fa fa-refresh"></span></a></li>
                                        <li><a href="#" class="panel-remove"><span class="fa fa-times"></span></a></li>
                                    </ul>                                
                                </div>
                                <div class="panel-body">
                                    <table class="table datatable">
                                        <thead>
                                            <tr>
                                                <th>ID</th>
                                                <th>Name</th>
                                                <th>Category</th>
                                                <th>Made</th>
                                                <th>Price</th>
                                                <th>Warranty</th>
                                                <th>Picture</th>
                                                <th>Detail</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                        <c:forEach var="objItem" items="${listItems}">
                                            <tr>
                                                <td><a href="${pageContext.request.contextPath }/device/detail/${objItem.id}">${objItem.getId()}</a></td>
                                                <td><a href="${pageContext.request.contextPath }/device/detail/${objItem.id}">${objItem.name}</a></td>
                                                <td>${objItem.cname}</td>
                                                <td>${objItem.made_in}</td>
                                                <td>${objItem.price}</td>
                                                <td>${objItem.warranty}</td>
                                                <td>
                                                    <img style="width:60px;height:60px" alt="${objItem.picture }" src="${pageContext.request.contextPath }/files/${objItem.picture }" />
                                                </td>
                                                <td>
                                                   <a href="${pageContext.request.contextPath }/device/detail/${objItem.id}" style="background-color:#A9F5F2" class="btn btn-default btn-rounded btn-sm">Click here</a>
                                                </td>
                                            </tr>
                                          </c:forEach>  
                                            
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                            <!-- END DEFAULT DATATABLE -->

                           

                        </div>
                         
                    </div>                                

    



                