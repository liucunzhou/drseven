define(['jquery', 'bootstrap', 'backend', 'table', 'form'], function ($, undefined, Backend, Table, Form) {

    var Controller = {
        index: function () {
            // 初始化表格参数配置
            Table.api.init({
                extend: {
                    index_url: 'dress/dress_set/index' + location.search,
                    add_url: 'dress/dress_set/add',
                    edit_url: 'dress/dress_set/edit',
                    del_url: 'dress/dress_set/del',
                    multi_url: 'dress/dress_set/multi',
                    table: 'dress_set',
                }
            });

            var table = $("#table");

            // 初始化表格
            table.bootstrapTable({
                url: $.fn.bootstrapTable.defaults.extend.index_url,
                pk: 'id',
                sortName: 'weigh',
                columns: [
                    [
                        {checkbox: true},
                        {field: 'id', title: __('Id')},
                        {field: 'operate_id', title: __('Operate_id')},
                        {field: 'title', title: __('Title')},
                        {field: 'status', title: __('Status')},
                        {field: 'weigh', title: __('Weigh')},
                        {field: 'createtime', title: __('Createtime')},
                        {field: 'updatetime', title: __('Updatetime')},
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