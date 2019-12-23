define(['jquery', 'bootstrap', 'backend', 'table', 'form'], function ($, undefined, Backend, Table, Form) {

    var Controller = {
        index: function () {
            // 初始化表格参数配置
            Table.api.init({
                extend: {
                    index_url: 'order/rent/index' + location.search,
                    add_url: 'order/rent/add',
                    edit_url: 'order/rent/edit',
                    del_url: 'order/rent/del',
                    multi_url: 'order/rent/multi',
                    table: 'order',
                }
            });

            var table = $("#table");

            // 初始化表格
            table.bootstrapTable({
                url: $.fn.bootstrapTable.defaults.extend.index_url,
                pk: 'id',
                sortName: 'id',
                columns: [
                    [
                        {checkbox: true},
                        {field: 'id', title: __('Id')},
                        {field: 'order_no', title: __('Order_no')},
                        {field: 'order_type', title: __('Order_type')},
                        {field: 'salesman', title: __('Salesman')},
                        {field: 'confirmman', title: __('Confirmman')},
                        {field: 'status', title: __('Status')},
                        {field: 'customer_id', title: __('Customer_id')},
                        {field: 'mobile', title: __('Mobile')},
                        {field: 'source_id', title: __('Source_id')},
                        {field: 'zone', title: __('Zone')},
                        {field: 'dress_id', title: __('Dress_id')},
                        {field: 'dress_package_id', title: __('Dress_package_id')},
                        {field: 'dress_set_id', title: __('Dress_set_id')},
                        {field: 'is_express', title: __('Is_express')},
                        {field: 'is_wash', title: __('Is_wash')},
                        {field: 'create_time', title: __('Create_time'), operate:'RANGE', addclass:'datetimerange', formatter: Table.api.formatter.datetime},
                        {field: 'update_time', title: __('Update_time'), operate:'RANGE', addclass:'datetimerange', formatter: Table.api.formatter.datetime},
                        {field: 'confirm_time', title: __('Confirm_time'), operate:'RANGE', addclass:'datetimerange', formatter: Table.api.formatter.datetime},
                        {field: 'delete_time', title: __('Delete_time'), operate:'RANGE', addclass:'datetimerange', formatter: Table.api.formatter.datetime},
                        {field: 'operate', title: __('Operate'), table: table, events: Table.api.events.operate, formatter: Table.api.formatter.operate}
                    ]
                ]
            });

            // 为表格绑定事件
            Table.api.bindevent(table);
        },
        add: function () {
            Controller.api.bindevent();
        },
        edit: function () {
            Controller.api.bindevent();
        },
        api: {
            bindevent: function () {
                Form.api.bindevent($("form[role=form]"));
            }
        }
    };
    return Controller;
});