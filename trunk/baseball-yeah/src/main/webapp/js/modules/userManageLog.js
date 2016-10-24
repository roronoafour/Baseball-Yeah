define(['base'], function (base) {
    /**
     * 私有成员定义区域
     */
    var detailData = [];

    return {
        init: function (args) {
            // / <summary>
            // / 模块初始化方法
            // / </summary>
            // / <param name="args">初始化时传入的参数</param>
            var self = this;

            //开始时间
            $('#starttimePicker').datetimepicker({
                format: 'yyyy-mm-dd',
                autoclose: true,
                pickTime: false,
                minView: 2
            })

            $('#detail_distinction').bootstrapTable({
                data: detailData,
                striped: true, // 是否显示行间隔色
                pagination: true, // 是否显示分页（*）
                sidePagination: "client",
                pageList: [10, 25, 50, 100], // 可供选择的每页的行数（*）
                columns: [
                    {
                        field: 'detailProperty',
                        title: '属性',
                        width: 150
                    },
                    {
                        field: 'detailOldValue',
                        title: '旧值',
                        width: 150
                    },
                    {
                        field: 'detailNewValue',
                        title: '新值',
                        width: 150
                    }]
            });
            $('#detailModal').css('width', '800px');
            $('#detailModal').css('margin', '100px auto 100px auto');
            $('#endtimePicker').datetimepicker(
                {
                    format: 'yyyy-mm-dd',
                    autoclose: true,
                    pickTime: false,
                    minView: 2
                });

            $("#startdate").val((new Date((new Date()).getTime() - 30 * 24 * 3600 * 1000)).Format("yyyy-MM-dd"));
            $("#enddate").val((new Date()).Format("yyyy-MM-dd"));


            datatable = base.datagrid({
                url: '/user/managers/getLogs',
                queryParams: function (params) {
                    return $.extend(params,
                        {
                            userName: $("#userName").val(),
                            tableName: $("#tableName").val(),
                            startDate: $('#startdate').val(),
                            endDate: $('#enddate').val() + " 23:59:59",
                            menuId: $("#selmenu").val(),
                            operationType: $("#seloperationType").val()
                        });
                },
                columns: [
                    {
                        field: 'userName',
                        title: '用户名',
                        sortable: true,
                        width: 150
                    },
                    {
                        field: 'caption',
                        title: '菜单',
                        sortable: true,
                        width: 150
                    },
                    {
                        field: 'operationType',
                        title: '操作类型',
                        sortable: true,
                        width: 150
                    },
                    {
                        field: 'userIp',
                        title: '用户IP',
                        sortable: true,
                        width: 150
                    },
                    {
                        field: 'operationTime',
                        title: '操作时间',
                        sortable: true,
                        width: 150
                    },
                    {
                        field: 'remark',
                        title: '备注'
                    },
                    {
                        field: 'operate',
                        title: '查看',
                        align: 'center',
                        width: 80,
                        events: {
                            'click .detail': function (e, value, row, index) {
                                self.getLogInfo(row);
                            }
                        },
                        formatter: function (value, row, index) {
                            return [
                                '<a class="detail" href="javascript:void(0)" title="明细">',
                                '<i class="glyphicon glyphicon-zoom-in"></i>',
                                '</a>  ']
                                .join('');
                        }
                    },
                    {
                        field: 'userId',
                        title: 'userId',
                        visible: false
                    }]
            }, '#userTable');


            $("#btn_query").click(function () {
                $("#userTable").bootstrapTable('refresh');
            });

            $.ajax({
                type: "POST",
                url: "/manage/menu/getAllParent",
                dataType: "json",
                success: function (data) {
                    $("#selmenu").select2({
                        placeholder: '请选择',
                        allowClear: true,
                        data: data
                    });
                    $('#selmenu').select2("val", null);
                }
            });


            $.ajax({
                type: "POST",
                url: "/manage/menu/getEnumPermission",
                dataType: "json",
                success: function (data) {
                    $("#seloperationType").select2({
                        placeholder: '请选择',
                        allowClear: true,
                        data: data
                    });
                    $('#seloperationType').select2("val", null);
                }
            });
        },
        getLogInfo: function (model) {
            var self = this;
            detailData = [];
            if (model.newValue && model.oldValue) {
                var newValue = json_parse(model.newValue);
                var oldValue = json_parse(model.oldValue);
                //遍历属性
                for (var item in newValue) {
                    if (newValue[item] != oldValue[item]) {
                        //添加对象
                        (function () {
                            var detailRow = {}
                            detailRow.detailProperty = item;
                            detailRow.detailOldValue = oldValue[item];
                            detailRow.detailNewValue = newValue[item];
                            detailData.push(detailRow);
                        })()
                    }
                }
            } else {
                if (model.oldValue == "" && model.newValue == "") {

                } else if (model.oldValue == "") {
                    var newValue = json_parse(model.newValue);
                    for (var item in newValue) {
                        (function () {
                            var detailRow = {}
                            detailRow.detailProperty = item;
                            detailRow.detailNewValue = newValue[item];
                            detailRow.detailOldValue = "";
                            detailData.push(detailRow);
                        })()
                    }
                } else if (model.newValue == "") {
                    var oldValue = json_parse(model.oldValue);
                    //删除时候存的可能是数组
                    if (oldValue instanceof Array) {
                        for (var i = 0; i < oldValue.length; i++) {
                            if (typeof(oldValue[i]) == "number") {
                                var detailRow = {}
                                detailRow.detailProperty = "id";
                                detailRow.detailOldValue = oldValue[i];
                                detailRow.detailNewValue = "";
                                detailData.push(detailRow);
                            } else {
                                for (var detail in oldValue[i]) {
                                    (function () {
                                        var detailRow = {}
                                        detailRow.detailProperty = detail;
                                        detailRow.detailOldValue = oldValue[i][detail];
                                        detailRow.detailNewValue = "";
                                        detailData.push(detailRow);
                                    })()
                                }
                            }

                        }
                    } else {
                        for (var item in oldValue) {
                            (function () {
                                var detailRow = {}
                                detailRow.detailProperty = item;
                                detailRow.detailOldValue = oldValue[item];
                                detailRow.detailNewValue = "";
                                detailData.push(detailRow);
                            })()
                        }
                    }
                }
            }

            $('#detail_distinction').bootstrapTable('load', detailData);
            $('#detail_distinction').bootstrapTable('resetView', {"height": 483});
            $('#detailModal').modal();
        }
    };
});