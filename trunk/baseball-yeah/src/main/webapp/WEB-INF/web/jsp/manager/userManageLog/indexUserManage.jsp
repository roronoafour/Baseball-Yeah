<%@ page contentType="text/html;charset=UTF-8" language="java"%> 
<%@ taglib prefix="shiro" uri="http://shiro.apache.org/tags" %> 
<input type="hidden" class="inmodule" value="userManageLog" />  
		<div class="row"> 
				<div class="row">
					<div class="row">
						<div class="col-lg-12">
							<div class="main-box clearfix">
								<div class="main-box-body clearfix">

									<header class="main-box-header clearfix">
										<%--<div class="row">--%>
											<%--<div class="col-lg-12">--%>
												<%--<ol class="breadcrumb">--%>
													<%--<li><a--%>
														<%--href="<%=request.getContextPath()%>/user/gotoIndex">首页</a></li>--%>
													<%--<li class="active"><span>系统设置</span></li>--%>
												<%--</ol>--%>
												<%--<h1>系统操作日志</h1>--%>
											<%--</div>--%>
										<%--</div>--%>
										<div class="panel-group" style="margin-bottom: 0px;">
											<div class="panel panel-default">
												<div class="panel-heading">
													<h4 class="panel-title">
														<a class="a-clear-search" id="clearSearch">
															<span class="glyphicon glyphicon-refresh" aria-hidden="true"></span>
														</a>
														<a class="accordion-toggle a-search" data-toggle="collapse"
														   data-parent="#accordion" href="#userManageLogcollapseOne"> 查询条件
														</a>
													</h4>
												</div>
												<div id="userManageLogcollapseOne" class="panel-collapse collapse in">
													<div class="panel-body">
														<div class="row">
															<div class="form-group col-xs-6">
																<label for="userName" class="control-label col-xs-2">用户名:</label>
																<div class="col-xs-10">
																	<input type="text" class="form-control" name="userName"
																		style="width: 240px" id="userName" />
																</div>
															</div>
															<div class="form-group col-xs-6">
																<label for="selmenu" class="control-label col-xs-2">菜单:</label>
																<div class="col-xs-10">
																	<select id='selmenu' class="js-example-data-array"
																		style="width: 250px"></select>
																</div>
															</div>
														</div>
														<div class="row">
															<div class="form-group col-xs-6">
																<div class="input-daterange">
																	<label class="control-label col-xs-2" for="startDate">操作日期:</label>
																	<div class="col-xs-4">
																		<div class="input-group date" id="starttimePicker">
																			<input type="text" class="form-control"
																				id="startdate"  ></input> <span
																				class="input-group-addon"><span
																				class="glyphicon-calendar glyphicon"></span> </span>
																		</div>
																	</div>
																	<label class="control-label col-xs-1" for="endDate">至</label>
																	<div class="col-xs-4">
																		<div class="input-group date" id="endtimePicker">
																			<input type="text" class="form-control" id="enddate"
																				 ></input><span class="input-group-addon"><span
																				class="glyphicon-calendar glyphicon"></span> </span>
																		</div>
																	</div>
																</div>
															</div>
															<div class="form-group col-xs-6">
																<label for="seloperationType"
																	class="control-label col-xs-2">操作类型:</label>
																<div class="col-xs-10">
																	<select id='seloperationType'
																		class="js-example-data-array" style="width: 250px"></select>
																</div>
															</div>
														</div>
													</div>
												</div>
											</div>
										</div>
									</header>
									<div class="table-responsive">

										<div class="panel-body" style="padding-bottom: 0px;">


											<div id="toolbar" class="btn-group">
												<shiro:hasPermission name="141_QUERY">
													<button type="button" id="btn_query"
														class="btn btn-default">
														<span class="glyphicon glyphicon-search"
															aria-hidden="true"></span>查询
													</button>
												</shiro:hasPermission>
											</div>
											<table id="userTable" class="table">

											</table>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div> 
		</div>
	 
	<jsp:include page="detailLog.jsp"></jsp:include> 
