<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<form id="addForm" method="post" class="form-horizontal" action="">
	<div class="modal fade" id="addModal" role="dialog"
		aria-labelledby="myModalLabel">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
					<h4 class="modal-title" id="myModalLabel">增加</h4>
				</div>
				<div class="modal-body">
					<div class="form-group">
						<label class="col-lg-3 control-label label-operation">指标ID</label>
						<div class="col-lg-7 div-operation ">
							<input type="text" class="form-control" name="add_quotaid"
								id="add_quotaid" placeholder="指标ID" />
						</div>
					</div>
					<div class="form-group">
						<label class="col-lg-3 control-label label-operation">指标名称</label>
						<div class="col-lg-7 div-operation ">
							<input type="text" class="form-control" name="add_quotaname"
								id="add_quotaname" placeholder="指标名称" />
						</div>
					</div>
					<div class="form-group">
						<label class="col-lg-3 control-label label-operation">对应字段</label>
						<div class="col-lg-7 div-operation ">
							<input type="text" class="form-control" name="add_fieldname"
								id="add_fieldname" placeholder="对应字段" />
						</div>
					</div>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">
						<span class="glyphicon glyphicon-remove" aria-hidden="true"></span>关闭
					</button>
					<button type="submit" class="btn btn-primary">
						<span class="glyphicon glyphicon-floppy-disk" aria-hidden="true"></span>保存
					</button>
				</div>
			</div>
		</div>
	</div>
</form>

<!-- <input type="hidden" id="sysNoticeId"> -->