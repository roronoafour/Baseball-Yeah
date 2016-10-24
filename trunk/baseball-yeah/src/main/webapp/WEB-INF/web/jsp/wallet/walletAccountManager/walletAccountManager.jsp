<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ include file="/common/comm.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>钱包帐号管理</title>
    <link rel="stylesheet"
          href="<%=request.getContextPath()%>/css/libs/select2.min.css">
    <script type="text/javascript"
            src="<%=request.getContextPath()%>/js/select2/select2.full.min.js"></script>
    <script type="text/javascript"
            src="<%=request.getContextPath()%>/js/select2/i18n/zh-CN.js"></script>
    <link rel="stylesheet"
          href="<%=request.getContextPath()%>/css/libs/bootstrap-table.min.css">
    <script type="text/javascript"
            src="<%=request.getContextPath()%>/js/bootstrap-table.min.js"></script>
    <script type="text/javascript"
            src="<%=request.getContextPath()%>/js/locale/bootstrap-table-zh-CN.min.js"></script>
    <script type="text/javascript"
            src="<%=request.getContextPath()%>/plugs/blockui-master/jquery.blockUI.js"></script>
    <link
            href="<%=request.getContextPath()%>/plugs/sweet-alert/css/sweet-alert.css"
            rel="stylesheet">
    <script
            src="<%=request.getContextPath()%>/plugs/sweet-alert/js/sweet-alert.min.js"></script>
    <script
            src="<%=request.getContextPath()%>/js/validator/bootstrapValidator.min.js"></script>
    <script type="text/javascript"
            src="<%=request.getContextPath()%>/js/moment.min.js"></script>
    <link
            href="<%=request.getContextPath()%>/plugs/bootstrap-datetimepicker/bootstrap-datetimepicker.min.css"
            rel="stylesheet">
    <script type="text/javascript"
            src="<%=request.getContextPath()%>/plugs/bootstrap-datetimepicker/bootstrap-datetimepicker.min.js"></script>
    <script type="text/javascript"
            src="<%=request.getContextPath()%>/plugs/bootstrap-datetimepicker/bootstrap-datetimepicker.zh-CN.js"></script>
    <script
            src="<%=request.getContextPath()%>/js/extensions/export/bootstrap-table-export.min.js"></script>
    <script
            src="<%=request.getContextPath()%>/js/extensions/export/tableExport.js"></script>
    <script src="<%=request.getContextPath()%>/js/require.js"
            data-main="<%=request.getContextPath()%>/js/modules/main"></script>
    <script type="text/javascript">
        $(function () {
            //开始时间
            $('#starttimePicker,#starttimePicker2').datetimepicker({
                format: 'yyyy-mm-dd hh:ii:ss',
                autoclose: true,
                startView: 2,
                minView: 0,
                todayHighlight: true,
                endDate: new Date()
            }).on('changeDate', function (e) {
                var startTime = e.date;
                $('#endtimePicker,#endtimePicker2').datetimepicker('setStartDate', startTime);
            });

            //结束时间
            $('#endtimePicker,#endtimePicker2').datetimepicker({
                format: 'yyyy-mm-dd hh:ii:ss',
                autoclose: true,
                startView: 2,
                minView: 1,
                todayHighlight: true,
                endDate: new Date()
            }).on('changeDate', function (e) {
                var endTime = e.date;
                $('#starttimePicker,#starttimePicker2').datetimepicker('setEndDate', endTime);
            });

            require(['walletAccountManagerModules'], function (wallet) {
                wallet.init();
            });
        });
    </script>
    <style type="text/css">
        #formSearch label {
            margin-top: 2px;
        }
    </style>
</head>
<body>
<div id="page-wrapper" class="container">
    <div class="row">
        <div class="row">
            <div class="col-lg-12">
                <div class="main-box clearfix">
                    <header class="main-box-header clearfix">
                        <div class="row">
                            <div class="col-lg-12">
                                <ol class="breadcrumb">
                                    <li><a
                                            href="<%=request.getContextPath()%>/user/gotoIndex">首页</a></li>
                                    <li class="active"><span>钱包</span></li>
                                </ol>
                                <h1>钱包帐号管理</h1>
                            </div>
                        </div>
                        <div class="panel-group" style="margin-bottom: 0px;"
                             id="accordion">
                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    <h4 class="panel-title">
                                        <a class="a-clear-search" id="clearSearch">
                                            <span class="glyphicon glyphicon-refresh" aria-hidden="true"></span>
                                        </a>
                                        <a class="accordion-toggle a-search" data-toggle="collapse"
                                           data-parent="#accordion" href="#collapseOne"> 查询条件
                                        </a>
                                    </h4>
                                </div>
                                <div id="collapseOne" class="panel-collapse collapse in">
                                    <div class="panel-body">
                                        <form id="formSearch" class="form-horizontal" role="form">
                                            <div class="row">
                                                <div class="form-group col-xs-6">
                                                    <label for="userName" class="control-label col-xs-2">钱包帐号：</label>
                                                    <div class="col-xs-10">
                                                        <input type="text" id="userName" style="width: 240px"
                                                               class="form-control" placeholder="钱包帐号"/>
                                                    </div>
                                                </div>
                                                <div class="form-group col-xs-6">

                                                    <label for="activeState" class="control-label col-xs-2">帐号状态:</label>
                                                    <div class="col-xs-10">
                                                        <select id='activeState' style="width: 240px"
                                                                class="form-control" placeholder="帐号状态">
                                                            <option value="">全部</option>
                                                            <option value="1">激活</option>
                                                            <option value="0">未激活</option>
                                                        </select>

                                                    </div>
                                                </div>
                                            </div>

                                            <div class="row">

                                                <div class="form-group col-xs-6">
                                                    <div class="input-daterange">
                                                        <label class="control-label col-xs-2" for="startDate">激活时间:</label>
                                                        <div class="col-xs-4">
                                                            <div class="input-group date" id="starttimePicker">
                                                                <input type="text" class="form-control" id="startdate"
                                                                       placeholder="开始日期" name="start" ></input><span
                                                                    class="input-group-addon"><span
                                                                    class="glyphicon-calendar glyphicon"></span> </span>
                                                            </div>
                                                        </div>
                                                        <label class="control-label col-xs-1" for="endDate">至</label>
                                                        <div class="col-xs-4">
                                                            <div class="input-group date" id="endtimePicker">
                                                                <input type="text" class="form-control" name="end"
                                                                       id="enddate" placeholder="结束日期" ></input><span
                                                                    class="input-group-addon"><span
                                                                    class="glyphicon-calendar glyphicon"></span> </span>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="form-group col-xs-6">

                                                    <label for="state" class="control-label col-xs-2">锁定状态:</label>
                                                    <div class="col-xs-10">
                                                        <select id='state' style="width: 240px"
                                                                class="form-control" placeholder="锁定状态">
                                                            <option value="">全部</option>
                                                            <option value="1">已解锁</option>
                                                            <option value="0">已锁定</option>
                                                        </select>

                                                    </div>
                                                </div>
                                            </div>
                                        </form>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </header>
                    <div id="toolbar" class="btn-group">


                        <!--  <button id="btn_unlock" type="button"
                                 class="btn btn-default">
                                 <span class="glyphicon glyphicon-ok-circle"
                                       aria-hidden="true"></span>帐号解锁
                         </button> -->
                        <shiro:hasPermission name="147_ACCOUNTFREZE">
                            <button id="btn_lock" type="button"
                                    class="btn btn-default">
													<span class="glyphicon glyphicon-remove-circle"
                                                          aria-hidden="true"></span>帐号冻结
                            </button>
                        </shiro:hasPermission>
                        <shiro:hasPermission name="147_QUERY">
                            <button type="button" id="btn_query" class="btn btn-default">
                                <span class="glyphicon glyphicon-search" aria-hidden="true"></span>查询
                            </button>
								<%--<button id="btn_reset" type="button" class="btn btn-default">--%>
									<%--<span class="glyphicon glyphicon-refresh" aria-hidden="true"></span>重置--%>
								<%--</button>--%>
							</shiro:hasPermission>
                    </div>
                    <div class="main-box-body clearfix">
                        <div class="row">
                            <table id="walletAccountTable" class="table">

                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<jsp:include page="walletAccount.jsp"></jsp:include>
<jsp:include page="capitalChange.jsp"></jsp:include>
<script src="<%=request.getContextPath()%>/js/demo-skin-changer.js"></script>
</body>
</html>
