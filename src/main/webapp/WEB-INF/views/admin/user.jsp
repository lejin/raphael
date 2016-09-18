<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html>
<html lang="en">

<head>
<jsp:include page="header.jsp"></jsp:include>
</head>
<body>

	<div id="wrapper">

		<!-- Navigation -->
		<nav class="navbar navbar-default navbar-static-top" role="navigation"
			style="margin-bottom: 0">
			<jsp:include page="topbar.jsp"></jsp:include>

			<jsp:include page="sidebar.jsp"></jsp:include>
			<!-- /.navbar-static-side -->
		</nav>
		<!-- Page Content -->
		<div id="page-wrapper">
			<div class="container-fluid">
				<div class="row">
					<div class="col-lg-12">
						<h1 class="page-header">Users</h1>
					</div>
					<!-- /.col-lg-12 -->
				</div>
				<div class="row">
					<div class="col-lg-12">
						<div class="panel panel-default">
							<div class="panel-heading">User List</div>
							<!-- /.panel-heading -->
							<div class="panel-body">
								<button class="btn btn-success" data-toggle="modal"
									data-target="#myModal">Add User</button>
								<br /> <br />
								<div id="dataTables-example_wrapper"
									class="dataTables_wrapper form-inline dt-bootstrap no-footer">
									<div class="row">
										<div class="col-sm-6"></div>
									</div>
									<div class="row">
										<div class="col-sm-12">
											<table width="100%"
												class="table table-striped table-bordered table-hover dataTable no-footer dtr-inline"
												id="dataTables-example" role="grid"
												aria-describedby="dataTables-example_info"
												style="width: 100%;">
												<thead>
													<tr role="row">
														<th class="sorting_asc" tabindex="0"
															aria-controls="dataTables-example" rowspan="1"
															colspan="1" aria-sort="ascending"
															aria-label="Rendering engine: activate to sort column descending"
															style="width: 171px;">slno</th>
														<th class="sorting" tabindex="0"
															aria-controls="dataTables-example" rowspan="1"
															colspan="1"
															aria-label="Browser: activate to sort column ascending"
															style="width: 207px;">Username</th>
														<th class="sorting" tabindex="0"
															aria-controls="dataTables-example" rowspan="1"
															colspan="1"
															aria-label="Platform(s): activate to sort column ascending"
															style="width: 188px;">Role</th>
														<th class="sorting" tabindex="0"
															aria-controls="dataTables-example" rowspan="1"
															colspan="1"
															aria-label="Platform(s): activate to sort column ascending"
															style="width: 188px;">Edit</th>

													</tr>
												</thead>
												<tbody>
													<c:forEach items="${users}" var="user" varStatus="status">
														<tr class="gradeA odd" role="row">
															<td class="sorting_1">${status.count}</td>
															<td>${user.username}</td>
															<td>${user.role}</td>
															<td><buutton class="btn btn-primary">Edit</buutton> &nbsp;<button class="btn btn-danger">Delete</button></td>
														</tr>
													</c:forEach>
												</tbody>
											</table>
										</div>
									</div>
								</div>
								<!-- /.table-responsive -->
							</div>
							<!-- /.panel-body -->
						</div>
						<!-- /.panel -->
					</div>
					<!-- /.col-lg-12 -->
				</div>
				<!-- /.row -->
			</div>
			<!-- /.container-fluid -->
		</div>
		<!-- /#page-wrapper -->
	</div>
	<!-- /#wrapper -->
	<!-- Modal 1-->
	<div class="modal fade" id="myModal" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel" aria-hidden="true">
		<div class="modal-dialog modal-sm">
			<div class="modal-content">
				<spring:url value="/admin/user/add" var="userActionUrl" />
				<form:form role="form" modelAttribute="userForm"
					action="${userActionUrl}" method="post">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal"
							aria-hidden="true">&times;</button>
						<h4 class="modal-title" id="myModalLabel">Add User</h4>
					</div>
					<div class="modal-body">
						<div class="row">
							<div class="col-md-12">

								<div class="row">
									<div class="col-md-6">
										<div class="form-group">
											<label>Username</label>
										</div>
									</div>
									<div class="col-md-6">
										<form:input type="text" name="username" path="username"
											placehoder="Username" class="form-control" />
									</div>
								</div>
								<div class="row">
									<div class="col-md-6">
										<div class="form-group">
											<label>Password</label>
										</div>
									</div>
									<div class="col-md-6">
										<form:input type="password" name="password" path="password"
											placeholder="Password" class="form-control" />
									</div>
								</div>
								<div class="row">
									<div class="col-md-6">
										<div class="form-group">
											<label>Role</label>
										</div>
									</div>
									<div class="col-md-6">
										<form:select type="password" name="role" path="role"
											class="form-control">
											<form:option value="admin">admin</form:option>
											<form:option value="editor">editor</form:option>
										</form:select>
									</div>
								</div>

							</div>
						</div>
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
						<button type="submit" class="btn btn-primary">Save
							changes</button>
					</div>
				</form:form>
			</div>
			<!-- /.modal-content -->
		</div>
		<!-- /.modal-dialog -->
	</div>
	<!-- /.modal -->
	<!-- Modal 2-->
	<div class="modal fade" id="myModal" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel" aria-hidden="true">
		<div class="modal-dialog modal-sm">
			<div class="modal-content">
				<spring:url value="/admin/user/update" var="userActionUrl" />
				<form:form role="form" modelAttribute="userForm"
					action="${userActionUrl}" method="post">
					<form:hidden path="id" name="id" id="id"/>
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal"
							aria-hidden="true">&times;</button>
						<h4 class="modal-title" id="myModalLabel">Add User</h4>
					</div>
					<div class="modal-body">
						<div class="row">
							<div class="col-md-12">

								<div class="row">
									<div class="col-md-6">
										<div class="form-group">
											<label>Username</label>
										</div>
									</div>
									<div class="col-md-6">
										<form:input type="text" name="username" path="username"
											placehoder="Username" class="form-control" />
									</div>
								</div>
								<div class="row">
									<div class="col-md-6">
										<div class="form-group">
											<label>Password</label>
										</div>
									</div>
									<div class="col-md-6">
										<form:input type="password" name="password" path="password"
											placeholder="Password" class="form-control" />
									</div>
								</div>
								<div class="row">
									<div class="col-md-6">
										<div class="form-group">
											<label>Role</label>
										</div>
									</div>
									<div class="col-md-6">
										<form:select type="password" name="role" path="role"
											class="form-control">
											<form:option value="admin">admin</form:option>
											<form:option value="editor">editor</form:option>
										</form:select>
									</div>
								</div>

							</div>
						</div>
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
						<button type="submit" class="btn btn-primary">Save
							changes</button>
					</div>
				</form:form>
			</div>
			<!-- /.modal-content -->
		</div>
		<!-- /.modal-dialog -->
	</div>
	<!-- /.modal -->
	<script type="text/javascript">
	function getUserById(userID){
		
	}
	</script>
	<jsp:include page="footer.jsp"></jsp:include>

</body>

</html>
