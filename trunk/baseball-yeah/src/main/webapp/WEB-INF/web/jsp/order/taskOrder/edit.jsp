<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="shiro" uri="http://shiro.apache.org/tags" %>
<%--<%@ include file="/common/comm.jsp" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>爱学派</title>

    <link rel="stylesheet"
          href="<%=request.getContextPath()%>/css/libs/select2.min.css">
    <link href="<%=request.getContextPath()%>/plugs/sweet-alert/css/sweet-alert.css"
          rel="stylesheet">
    <link rel="stylesheet"
          href="<%=request.getContextPath()%>/css/libs/bootstrap-table.min.css">
    <script type="text/javascript"
            src="<%=request.getContextPath()%>/js/select2/select2.full.min.js"></script>
    <script type="text/javascript"
            src="<%=request.getContextPath()%>/js/select2/i18n/zh-CN.js"></script>
    <script
            src="<%=request.getContextPath()%>/plugs/sweet-alert/js/sweet-alert.min.js"></script>
    <script type="text/javascript"
            src="<%=request.getContextPath()%>/js/bootstrap-table.min.js"></script>
    <script
            src="<%=request.getContextPath()%>/js/validator/bootstrapValidator.min.js"></script>
    <link href="<%=request.getContextPath()%>/plugs/compiled/layout.css" rel="stylesheet">
    <link href="<%=request.getContextPath()%>/css/bootstrap-datetimepicker/bootstrap-datetimepicker.min.css" rel="stylesheet">
    <script type="text/javascript" src="<%=request.getContextPath()%>/plugs/bootstrap-datetimepicker/bootstrap-datetimepicker.min.js"></script>
    <script type="text/javascript" src="<%=request.getContextPath()%>/plugs/bootstrap-datetimepicker/bootstrap-datetimepicker.zh-CN.js"></script>
    <link rel="stylesheet"
          href="<%=request.getContextPath()%>/plugs/dropzone/dropzone.min.css">
    <script
            src="<%=request.getContextPath()%>/plugs/dropzone/dropzone.js"></script>
    &lt;%&ndash;<script type="text/javascript" src="<%=request.getContextPath()%>/plugs/knockout/knockout-3.4.0.js"></script>&ndash;%&gt;
    <script src="<%=request.getContextPath()%>/js/require.js"
            data-main="<%=request.getContextPath()%>/js/modules/main"></script>
    <script type="text/javascript">
        $(function () {
            require(['taskOrderModules'], function (acct) {
                acct.editInit('${taskId}');
            });
        });
    </script>
    <style>
        a:hover {
            color: black;
        }
    </style>

</head>
<body style="background-color: #e7ebee;">
<input type="hidden" id="taskId" value='${taskId}'>
<div id="page-wrapper" class="container">
    <div class="row">
        <form action="">--%>
            <input type="hidden" id="taskId" value='${taskId}'>
            <input type="hidden" class="inmodule" value="taskOrderModules">
            <div class="row">
                <div class="row">
                    <div class="col-lg-12">
                        <div class="row">
                            <div class="col-lg-12">
                                <ol class="breadcrumb">
                                    <li><a href="<%=request.getContextPath()%>/user/gotoIndex">首页</a></li>
                                    <li class="active"><span>订单管理</span></li>
                                </ol>
                                <h1>任务管理</h1>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-lg-12">
                                <div class="main-box clearfix">
                                    <div class="form-group col-lg-12 group-activity"></div>
                                    <div class="form-group col-lg-12 group-activity">
                                        <label for="theme" class="col-lg-2 control-label add-activity">主题：</label>
                                        <div class="col-lg-6">
                                            <input type="text" class="form-control" id="theme" placeholder="主题" maxlength="20">
                                        </div>
                                    </div>

                                    <%--<div class="form-group col-lg-12 group-activity">--%>
                                        <%--<label for="description" class="col-lg-2 control-label add-activity">描述：</label>--%>
                                        <%--<div class="col-lg-6  ">--%>
                                            <%--<textarea type="text" class="form-control" id="description" placeholder="描述" maxlength="500"--%>
                                                      <%--data-bv-field="add_content"></textarea>--%>

                                        <%--</div>--%>
                                    <%--</div>--%>
                                    <div class="form-group col-lg-12 group-activity">
                                        <label for="claim" class="col-lg-2 control-label add-activity">要求：</label>
                                        <div class="col-lg-6">
                                            <textarea type="text" class="form-control" id="claim" placeholder="要求" maxlength="500"
                                                      data-bv-field="add_content"></textarea>
                                        </div>
                                    </div>

                                    <div class="form-group col-lg-12 group-activity">
                                        <label for="rule" class="col-lg-2 control-label add-activity">任务规则(评分标准)：</label>
                                        <div class="col-lg-6">
                                            <textarea type="text" class="form-control" id="rule" placeholder="任务规则(评分标准)" maxlength="500"
                                                      data-bv-field="add_content"></textarea>
                                        </div>
                                    </div>

                                    <div class="form-group col-lg-12 group-activity">
                                        <label for="taskLevel" class="col-lg-2 control-label add-activity">任务等级:</label>
                                        <div class="col-xs-6">
                                            <select id='taskLevel' class="form-control" data-bind='value: activityType'>
                                                <option value="1" selected="selected">绿色</option>
                                                <option value="2">蓝色</option>
                                                <option value="3">紫色</option>
                                                <option value="4">金色</option>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="form-group col-lg-12 group-activity">
                                        <label class="col-lg-2 control-label add-activity">封面图片:</label>
                                        <div class="col-lg-6  ">
                                            <div id="cover" class="mydivdrop" action="/manage/focuspic/uploadFile"
                                                 style=" margin-bottom: 10px;">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="form-group col-lg-12 group-activity">
                                        <label class="col-lg-2 control-label add-activity">图片:</label>
                                        <div class="col-lg-6  ">
                                            <div id="myId" class="mydivdrop" action="/manage/focuspic/uploadFile"
                                                 style="margin-bottom: 10px;">
                                            </div>
                                        </div>
                                    </div>


                                    <div class="form-group col-lg-12 group-activity">
                                        <label for="taskLevel" class="col-lg-2 control-label add-activity">是否需要图片:</label>
                                        <div class="radio col-lg-6">
                                            <input type="text" class="form-control" id="editIsImg" placeholder="主题" maxlength="20">

                                        </div>
                                    </div>

                                    <div class="form-group col-lg-12 group-activity">
                                        <label class="col-lg-2 control-label add-activity">是否需要任务报告:</label>
                                        <div class="radio col-lg-6">
                                            <input type="text" class="form-control" id="editIsRemark" placeholder="主题" maxlength="20">

                                        </div>
                                    </div>

                                    <div class="form-group col-lg-12 group-activity">
                                        <div class="col-lg-offset-2 col-lg-10">
                                            <button type="button" data-bind='click: addContact' id="taskSave" class="btn btn-default">
                                                <span class="glyphicon glyphicon-plus" aria-hidden="true"></span>保存
                                            </button>

                                            <button type="button" data-bind="click: save" id="taskPub" class="btn btn-default">
                                                <span class="glyphicon glyphicon-plus" aria-hidden="true"></span>全部发布
                                            </button>
                                        </div>
                                    </div>


                                    <div style="padding:15px">
                                        <div id="toolbar" class="btn-group">

                                            <button id="btn_add" type="button" class="btn btn-default">
                                                <span class="glyphicon glyphicon-plus" aria-hidden="true"></span>新增
                                            </button>
                                            <button id="btn_pub" type="button" class="btn btn-default">
                                                <span class="glyphicon glyphicon-ok-circle" aria-hidden="true"></span>发布
                                            </button>
                                            <button id="btn_delete" type="button" class="btn btn-default">
														<span class="glyphicon glyphicon-remove"
                                                              aria-hidden="true"></span>删除
                                            </button>
                                        </div>
                                        <table id="orderSubTable" class="table">

                                        </table>
                                    </div>

                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        <%--</form>
    </div>
</div>--%>
<jsp:include page="addModal.jsp"></jsp:include>


