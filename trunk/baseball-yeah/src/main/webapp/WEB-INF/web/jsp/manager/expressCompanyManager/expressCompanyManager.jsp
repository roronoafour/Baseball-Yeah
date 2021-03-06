<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="shiro" uri="http://shiro.apache.org/tags"%>
<div class="row">
	<div class="row">
		<div class="col-lg-12">
			<div class="main-box clearfix">
				<div class="main-box-body clearfix">
					<%--<div class="row">--%>
						<%--<div class="col-lg-12">--%>
							<%--<ol class="breadcrumb">--%>
								<%--<li><a href="<%=request.getContextPath()%>/user/gotoIndex">首页</a></li>--%>
								<%--<li class="active"><span>基础设置</span></li>--%>
							<%--</ol>--%>
							<%--<h1>快递公司维护</h1>--%>
						<%--</div>--%>
					<%--</div>--%>
					<div class="table-responsive">
						<div id="toolbar" class="btn-group">
							<shiro:hasPermission name="21_ADD">
								<button id="btn_add" type="button" class="btn btn-default">
									<span class="glyphicon glyphicon-plus" aria-hidden="true"></span>新增
								</button>
							</shiro:hasPermission>

							<shiro:hasPermission name="21_EDIT">
								<button id="btn_edit" type="button" class="btn btn-default">
									<span class="glyphicon glyphicon-pencil" aria-hidden="true"></span>修改
								</button>
							</shiro:hasPermission>

							<shiro:hasPermission name="21_DELETE">
								<button id="btn_delete" type="button" class="btn btn-default">
									<span class="glyphicon glyphicon-remove" aria-hidden="true"></span>删除
								</button>
							</shiro:hasPermission>
						</div>
						<table id="expressCompanyTable">

						</table>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<input type="hidden" class="inmodule" value="expressCompanyManagerModules">

<!-- Modal -->
<form id="addForm" method="post" class="form-horizontal" action="">
	<div class="modal fade" id="addModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" data-backdrop="static">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<button class="close" type="button" data-dismiss="modal" aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
					<h4 class="modal-title" style="border: none;" id="myModalLabel">新增</h4>
					<input type="hidden" name="expresscompanyid" id="expresscompanyid" />
				</div>
				<div class="modal-body">
					<div class="form-group">
						<label for="fullname" class="col-lg-2 control-label">全称</label>
						<div class="col-lg-9">
							<input type="text" name='fullname' class="form-control" id="fullname" />
						</div>
					</div>
					<div class="form-group">
						<label for="simplename" class="col-lg-2 control-label">简称</label>
						<div class="col-lg-9">
							<input type="text" class="form-control" id="simplename" name="simplename" />
						</div>
					</div>
					<div class="form-group">
						<label for="code" class="col-lg-2 control-label">编码</label>
						<div class="col-lg-9">
							<input type="text" class="form-control" id="code" name="code" />
						</div>
					</div>
					<div class="form-group">
						<label for="ecGcode" class="col-lg-2 control-label">编码(old)</label>
						<div class="col-lg-9">
							<input type="text" class="form-control" id="ecGcode" name="ecGcode" />
						</div>
					</div>
					<div class="form-group">
						<label for="logo" class="col-lg-2 control-label">LOGO</label>
						<div class="col-lg-9">
							<input type="text" class="form-control" id="logo" name="logo" />
						</div>
					</div>
					<div class="form-group">
						<label for="beenabled" class="col-lg-2 control-label">是否启用</label>
						<div class="col-lg-9">
							<div class="checkbox">
								<label> <input type="checkbox" id="beenabled" name="beenabled" /></label>
							</div>
						</div>
					</div>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
					<button type="submit" id="btnSave" class="btn btn-primary">保存</button>
				</div>
			</div>
		</div>
	</div>
</form>