<%@ page contentType="text/html;charset=UTF-8" language="java" %> 
<%@ taglib prefix="shiro" uri="http://shiro.apache.org/tags" %>

<input type="hidden" class="inmodule" value="pickupOrderModules" /> 
  
    <div class="row"> 

            <div class="row">
                <div class="col-lg-12">
                    <div class="main-box clearfix">
                        <div class="main-box-body clearfix">
                            <%--<div class="row">--%>
                                <%--<div class="row">--%>
                                    <%--<div class="col-lg-12">--%>
                                        <%--<ol class="breadcrumb">--%>
                                            <%--<li><a--%>
                                                    <%--href="<%=request.getContextPath()%>/user/gotoIndex">首页</a></li>--%>
                                            <%--<li class="active"><span>订单管理</span></li>--%>
                                        <%--</ol>--%>
                                        <%--<h1>代取件订单管理</h1>--%>
                                    <%--</div>--%>
                                <%--</div>--%>
                            <%--</div>--%>
                            <div class="table-responsive">

                                <div class="panel-body" style="padding-bottom: 0px;">
                                    <div class="panel panel-default">
                                        <div class="panel-heading">
                                            <h4 class="panel-title">
                                                <a class="a-clear-search" id="clearSearch"> <span
                                                        class="glyphicon glyphicon-refresh" aria-hidden="true"></span>
                                                </a> <a class="accordion-toggle a-search"
                                                        data-toggle="collapse" data-parent="#accordion"
                                                        href="#pickupOrdercollapseOne"> 查询条件 </a>
                                            </h4>
                                        </div>
                                        <div id="pickupOrdercollapseOne" class="panel-collapse collapse in">
                                            <div class="panel-body" style="width: 100%;">

                                                    <div class="row">
                                                        <div class="form-group col-xs-6">
                                                            <label for="orderId"
                                                                   class="control-label col-xs-2">订单号</label>
                                                            <div class="col-xs-10">
                                                                <input type="text" class="form-control" name="orderId"
                                                                       style="width: 240px" id="orderId">
                                                            </div>
                                                        </div>
                                                        <div class="form-group col-xs-6">
                                                            <label for="state"
                                                                   class="control-label col-xs-2">订单状态</label>
                                                            <div class="col-xs-10">
                                                                <select id='state' name="state"
                                                                        class="js-example-data-array form-control"
                                                                        style="width: 240px">
                                                                    <option value="">请选择</option>
                                                                    <option value="1">创建</option>
                                                                    <option value="100">待接单</option>
                                                                    <option value="2">已接单</option>
                                                                    <option value="3">配送中</option>
                                                                    <option value="4">处理中</option>
                                                                    <option value="5">完成</option>
                                                                    <option value="6">取消</option>
                                                                    <option value="7">异常</option>
                                                                </select>
                                                            </div>
                                                        </div>
                                                    </div>

                                                    <div class="row">
                                                        <div class="form-group col-xs-6">
                                                            <label class="control-label col-xs-2">创建时间</label>
                                                            <div class="col-xs-4">
                                                                <div class="input-group date"
                                                                     id="createStartDatePicker">
                                                                    <input type="text" class="form-control"
                                                                           name="createStartDate" id="createStartDate"
                                                                           placeholder="开始日期"/> <span
                                                                        class="input-group-addon"> <span
                                                                        class="glyphicon-calendar glyphicon"></span>
																		</span>
                                                                </div>
                                                            </div>
                                                            <label class="control-label col-xs-1">至</label>
                                                            <div class="col-xs-4">
                                                                <div class="input-group date" id="createEndDatePicker">
                                                                    <input type="text" class="form-control"
                                                                           id="createEndDate" placeholder="结束时间"/><span
                                                                        class="input-group-addon"><span
                                                                        class="glyphicon-calendar glyphicon"></span> </span>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="form-group col-xs-6">
                                                            <label for="deliveryEndDate"
                                                                   class="control-label col-xs-2">签收时间</label>
                                                            <div class="col-xs-4">
                                                                <div class="input-group date"
                                                                     id="deliveryStartDatePicker">
                                                                    <input type="text" class="form-control"
                                                                           name="deliveryStartDate"
                                                                           id="deliveryStartDate"
                                                                           placeholder="开始时间"/> <span
                                                                        class="input-group-addon"><span
                                                                        class="glyphicon-calendar glyphicon"> </span> </span>
                                                                </div>
                                                            </div>
                                                            <label class="control-label col-xs-1">至</label>
                                                            <div class="col-xs-4">
                                                                <div class="input-group date"
                                                                     id="deliveryEndDatePicker">
                                                                    <input type="text" class="form-control"
                                                                           id="deliveryEndDate"
                                                                           placeholder="结束时间"/><span
                                                                        class="input-group-addon"><span
                                                                        class="glyphicon-calendar glyphicon"></span> </span>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>

                                                    <div class="row">
                                                        <div class="form-group col-xs-6">
                                                            <label for="deliveryStartDate"
                                                                   class="control-label col-xs-2">确认取件时间</label>
                                                            <div class="col-xs-4">
                                                                <div class="input-group date"
                                                                     id="deliverySStartDatePicker">
                                                                    <input type="text" class="form-control"
                                                                           name="deliverySStartDate"
                                                                           id="deliverySStartDate"
                                                                           placeholder="开始日期"/> <span
                                                                        class="input-group-addon"> <span
                                                                        class="glyphicon-calendar glyphicon"></span>
																		</span>
                                                                </div>
                                                            </div>
                                                            <label class="control-label col-xs-1">至</label>
                                                            <div class="col-xs-4">
                                                                <div class="input-group date"
                                                                     id="deliverySEndDatePicker">
                                                                    <input type="text" class="form-control"
                                                                           id="deliverySEndDate"
                                                                           placeholder="结束时间"/><span
                                                                        class="input-group-addon"><span
                                                                        class="glyphicon-calendar glyphicon"></span> </span>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="form-group col-xs-6">
                                                            <label for="payId"
                                                                   class="control-label col-xs-2">支付流水号</label>
                                                            <div class="col-xs-10">
                                                                <input type="text" class="form-control" name="payId"
                                                                       style="width: 240px" id="payId">
                                                            </div>
                                                        </div>

                                                    </div>

                                                    <div class="row">
                                                        <div class="form-group col-xs-6">
                                                            <label for="phone"
                                                                   class="control-label col-xs-2">众包人手机号码</label>
                                                            <div class="col-xs-10">
                                                                <input type="text" class="form-control" name="phone"
                                                                       style="width: 240px" id="phone">
                                                            </div>
                                                        </div>
                                                        <div class="form-group col-xs-6">
                                                            <label for="mobile"
                                                                   class="control-label col-xs-2">收件人手机号码</label>
                                                            <div class="col-xs-10">
                                                                <input type="text" class="form-control" name="mobile"
                                                                       style="width: 240px" id="mobile">
                                                            </div>
                                                        </div>

                                                    </div>

                                                    <div class="row">
                                                        <div class="form-group col-xs-6">
                                                            <label for="payType"
                                                                   class="control-label col-xs-2">支付方式</label>
                                                            <div class="col-xs-10">
                                                                <select id='payType' name="payType"
                                                                        class="form-control" style="width: 240px">
                                                                </select>
                                                            </div>
                                                        </div>
                                                        <div class="form-group col-xs-6">
                                                            <label for="payType"
                                                                   class="control-label col-xs-2">学校</label>
                                                            <div class="col-xs-10">
                                                                <select id='collegeId' name="collegeId"
                                                                        class="form-control" style="width: 240px">
                                                                </select>
                                                            </div>
                                                        </div>
                                                    </div> 
                                            </div>
                                        </div>
                                    </div>

                                    <div id="toolbar" class="btn-group">

                                        <shiro:hasPermission name="169_QUERY">
                                            <button type="button" id="btn_query" class="btn btn-default">
                                                <span class="glyphicon glyphicon-search" aria-hidden="true"></span>查询
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
 
<jsp:include page="orderDetail.jsp"></jsp:include> 
