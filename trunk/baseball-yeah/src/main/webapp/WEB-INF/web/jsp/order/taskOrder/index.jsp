<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="shiro" uri="http://shiro.apache.org/tags" %>

<input type="hidden" class="inmodule" value="taskOrderModules">
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
                                    <%--<li class="active"><span>订单管理</span></li>--%>
                                <%--</ol>--%>
                                <%--<h1>任务管理</h1>--%>
                            <%--</div>--%>
                        <%--</div>--%>
                        <div class="panel-group" style="margin-bottom: 0px;"
                             id="accordion">
                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    <h4 class="panel-title">
                                        <a class="a-clear-search" id="clearSearch">
                                            <span class="glyphicon glyphicon-refresh" aria-hidden="true"></span>
                                        </a>
                                        <a class="accordion-toggle a-search" data-toggle="collapse"
                                           data-parent="#accordion" href="#taskOrdercollapseThree"> 查询条件
                                        </a>
                                    </h4>
                                </div>
                                <div id="taskOrdercollapseThree" class="panel-collapse collapse in">
                                    <div class="panel-body">
                                        <form id="formSearch" class="form-horizontal" role="form">
                                            <div class="row">
                                                <div class="form-group col-xs-6">
                                                    <label class="control-label col-xs-2">任务主题：</label>
                                                    <div class="col-xs-10">
                                                        <input type="text" class="form-control" id="theme"
                                                               style="width: 250px">
                                                    </div>
                                                </div>

                                                <div class="form-group col-xs-6">
                                                    <label class="control-label col-xs-2">部门：</label>
                                                    <div class="col-xs-10">
                                                        <input type="text" class="form-control" id="dutyId"
                                                               style="width: 250px">
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="form-group col-xs-6">
                                                    <label class="control-label col-xs-2">级别：</label>
                                                    <div class="col-xs-2">
                                                        <select class="col-lg-4 form-control " id="taskLevel" style="width: 250px">
                                                            <option value="" selected="selected">请选择</option>
                                                            <option value="1">绿色</option>
                                                            <option value="2">蓝色</option>
                                                            <option value="3">紫色</option>
                                                            <option value="4">金色</option>
                                                        </select>
                                                    </div>
                                                </div>
                                                <div class="form-group col-xs-6">
                                                    <label class="control-label col-xs-2">校区：</label>
                                                    <div class="col-xs-10">
                                                        <input type="text" class="form-control" id="selcollage"
                                                               style="width: 250px">
                                                    </div>
                                                </div>

                                            </div>
                                            <div class="row">
                                                <div class="form-group col-xs-6">
                                                    <label class="control-label col-xs-2">状态：</label>
                                                    <div class="col-xs-2">
                                                        <select class="col-lg-4 form-control " id="taskState" style="width: 250px">
                                                            <option value="" selected="selected">请选择</option>
                                                            <option value="0">新建</option>
                                                            <option value="1">已发布</option>
                                                            <option value="2">已生成</option>
                                                            <option value="3">已终止</option>
                                                            <option value="4">已结束</option>
                                                        </select>
                                                    </div>
                                                </div>
                                                <div class="form-group col-xs-6">
                                                    <div class="input-daterange">
                                                        <label for="submit_startdate" class="control-label col-xs-2">创建日期：</label>
                                                        <div class="col-xs-4">
                                                            <div class="input-group date" id="starttimePicker">
                                                                <input type="text" class="form-control"
                                                                       id="submit_startdate" placeholder="开始日期"></input>

                                                                </span> <span class="input-group-addon"> <span
                                                                    class="glyphicon-calendar glyphicon"></span>
																				</span>
                                                            </div>
                                                        </div>
                                                        <div class="col-xs-4">
                                                            <div class="input-group date" id="endtimePicker">
                                                                <input type="text" class="form-control"
                                                                       id="submit_enddate" placeholder="结束日期"></input>

                                                                </span> <span class="input-group-addon"><span
                                                                    class="glyphicon-calendar glyphicon"></span> </span>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="form-group col-xs-6">
                                                    <label class="control-label col-xs-2">任务单号：</label>
                                                    <div class="col-xs-10">
                                                        <input type="text" class="form-control" id="taskNo"
                                                               style="width: 250px">
                                                    </div>
                                                </div>


                                            </div>
                                        </form>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </header>

                    <div class="table-responsive">

                        <div class="panel-body" style="padding-bottom: 0px;">

                            <div id="toolbar" class="btn-group">
                                <shiro:hasPermission name="171_ADD">
                                    <%--<a id="btn_add" type="button" href="/order/gotoAddTask" class="btn btn-default">
                                        <span class="glyphicon glyphicon-plus" aria-hidden="true"></span>新增
                                    </a>--%>
                                    <button id="btn_add" type="button" class="btn btn-default">
                                        <span class="glyphicon glyphicon-plus" aria-hidden="true"></span>新增
                                    </button>
                                </shiro:hasPermission>
                                <shiro:hasPermission name="171_EDIT">
                                    <button id="btn_edit" type="button" class="btn btn-default">

                                        <span class="glyphicon glyphicon-pencil" aria-hidden="true"></span>修改
                                    </button>
                                </shiro:hasPermission>
                                <shiro:hasPermission name="171_DELETE">
                                    <button id="btn_delete" type="button"
                                            class="btn btn-default">
														<span class="glyphicon glyphicon-remove"
                                                              aria-hidden="true"></span>删除
                                    </button>
                                </shiro:hasPermission>


                                <shiro:hasPermission name="171_QUERY">
                                    <button type="button" id="btn_query"
                                            class="btn btn-default">
														<span class="glyphicon glyphicon-search"
                                                              aria-hidden="true"></span>查询
                                    </button>
                                </shiro:hasPermission>
                                <button id="btn_pub" type="button" class="btn btn-default">
                                    <span class="glyphicon glyphicon-ok-circle" aria-hidden="true"></span>发布
                                </button>
                                <button id="btn_stop" type="button" class="btn btn-default">
                                    <span class="glyphicon glyphicon-remove-sign" aria-hidden="true"></span>任务停止
                                </button>
                            </div>
                            <table id="areaTable" class="table">

                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<jsp:include page="editModal.jsp"></jsp:include>
<jsp:include page="pictures.jsp"></jsp:include>
