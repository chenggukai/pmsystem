// JavaScript代码区域
layui.use('element', function() {
	var element = layui.element;
});

layui.use([ 'table', 'form' ], function() {
	var table = layui.table;
	layui.$.post("dept/findAll", function(data) {
		for (var i = 1; i < data.length; i++) {
			var op = new Option(data[i].dname, data[i].id);
			layui.$("#tidSearch,#tidSel1").append(op);
		}
		// 不调用看不到select
		layui.form.render('select');
	});
	// 监听条件查询提交事件
	layui.form.on('submit(peopleSearch1)', function(data) {
		// 重新加载表格
		table.reload("test", {
			url : 'emp/list',
			where : data.field
		// 就是表单数据
			,page: {
			    curr: 1 //重新从第 1 页开始
			  }
		})
		return false; // 阻止表单跳转。如果需要表单跳转，去掉这段即可。
	});
	
	table.render({
		elem : '#test',
		url : 'emp/list',
		toolbar : '#toolbarDemo' // 开启头部工具栏，并为其绑定左侧模板
		,
		defaultToolbar : [ 'filter', 'exports', 'print', { // 自定义头部工具栏右侧图标。

			title : '提示',
			layEvent : 'LAYTABLE_TIPS',
			icon : 'layui-icon-tips'
		} ],
		title : '人事资源表',
		cols : [ [ {
			type : 'checkbox',
			fixed : 'left'
		}, {
			field : 'id',
			title : '员工编号',
			width : 120,
			fixed : 'left',
			unresize : true,
			sort : true
		}, {
			field : 'ename',
			title : '员工姓名',
			width : 120,
			unresize : true,
			edit : 'text'
		}, {
			field : 'tid',
			title : '部门名称',
			unresize : true,
			width : 120

		}, {
			field : 'job',
			title : '职位',
			unresize : true,
			width : 120

		}, {
			field : 'salary',
			title : '工资',
			unresize : true,
			width : 120
		}, {
			field : 'photo',
			title : '照片',
			unresize : true,
			width : 120,
			templet : function(res) {
				return '<img src="upload/' + res.photo + '">'
			}
		}, {
			field : 'hiredate',
			title : '入职日期',
			unresize : true,
			width : 120
		}, {
			fixed : 'right',
			title : '操作',
			unresize : true,
			toolbar : '#barDemo',
			width : 244
		} ] ],
		page : true,
		parseData : function(res) { // res 即为原始返回的数据
			return {
				"code" : 0, // 解析接口状态
				// "msg": res.message, //解析提示文本
				"count" : res.total, // 解析数据长度
				"data" : res.records
			// 解析数据列表
			};
		},
		limits :[4, 6, 8 ]// 修改分页大小值
		,
		limit : 6
	});
	

	// 头工具栏事件
	table.on('toolbar(test)', function(obj) {
		var checkStatus = table.checkStatus(obj.config.id);
		switch (obj.event) {
		case 'getCheckData':
			var data = checkStatus.data;
			layer.alert(JSON.stringify(data));
			break;
		case 'getCheckLength':
			var data = checkStatus.data;
			layer.msg('选中了： ' + data.length + ' 个');
		case 'isAll':
			layer.msg(checkStatus.isAll ? '全选' : '未全选');
			break;
		// 自定义头工具栏右侧图标 - 提示
		case 'LAYTABLE_TIPS':
			layer.alert('这是工具栏右侧自定义的一个图标按钮');
			break;
		case 'addPeople':
			// 员工添加,代码优化
			openPeopleForm({
				"id" : "",
				"ename" : "",
				"job" : " ",
				"tid" : "-1",
				"salary" : "",
				"hiredate" : "",
				"photo" : ""	
			});
			break;
		};
		layui.form.on('submit(peopleSubmit)', function(data) {
			layui.$.post("emp/update", data.field, function(res) {
				layer.closeAll();
				if (res.code == 0) {
					// 重新加载表格
					table.reload("test", {
						url : 'emp/list'
					});
				} else {
					layer.msg(res.msg, {
						icon : 1,
						time : 2000
					// 2秒关闭（如果不配置，默认是3秒）
					}, function() {
						// do something
					});
				}
			});
			return false; // 阻止表单跳转。如果需要表单跳转，去掉这段即可。
		});

	});
	
	// 监听行工具事件
	table.on('tool(test)', function(obj) {
		var data = obj.data;
		// console.log(obj)
		if (obj.event === 'del') {
			layer.confirm('你确定要删除' + data.ename + '这个人吗？', function(index) {
				layui.$.post("emp/deleteEmp", {
					id : data.id
				}, function(data) {
					if (data.code == 1) {// 删除成功
						// 关闭弹框
						layer.close(index);
						// 重新加载表格
						table.reload("test", {
							url : 'emp/list'
							,page: {
								    curr: 1 //重新从第 1 页开始
								  }
						});
					} else {// 失败的情况
						// 关闭弹框
						layer.close(index);
						layer.msg(data.msg, {
							icon : 1,
							time : 2000
						// 2秒关闭（如果不配置，默认是3秒）
						}, function() {
							// do something
						});
					}
				});
			});

		} else if (obj.event === 'edit') {
			openPeopleForm(data, data.tid);
		}
		
		// 监听员工修改提交事件
		layui.form.on('submit(peopleSubmit)', function(data) {
			layui.$.post("emp/update", data.field, function(res) {
				layer.closeAll();
				if (res.code == 0) {
					// 重新加载表格
					table.reload("test", {
						url : 'emp/list'
					});
				} else {
					layer.msg(res.msg, {
						icon : 1,
						time : 2000
					// 2秒关闭（如果不配置，默认是3秒）
					}, function() {
						// do something
					});
				}
			});
			return false; // 阻止表单跳转。如果需要表单跳转，去掉这段即可。
		});
	});
	
	// 定义表单打开方法
	function openPeopleForm(peopleData, tid) {	
		layer.open({		
			title : "员工信息维护",
			type : 1,
			content : layui.$('#peopleEditDiv'),
			area : [ '50%', '75%' ],
			success : function(layero, index) {
				layui.form.val("editForm", peopleData);
				// 如果有图片，显示出来
				if (peopleData.photo) {
					layui.$("#previewImg").attr("src",
							"upload/" + peopleData.photo);
				} else {
					layui.$("#previewImg").attr("src", "");
				}
			}
		});
	}
});
// <!-- 日历控件 -->
layui.use('laydate', function() {

	var laydate = layui.laydate;
	// 执行一个laydate实例
	laydate.render({
		elem : '#hiredateInput' // 指定元素
	});
});
//文件上传
layui.use('upload', function() {
	var upload = layui.upload;

	// 执行实例
	var uploadInst = upload.render({
		elem : '#photoxInput' // 绑定元素
		,
		url : 'emp/upload' // 上传接口
		,
		field : "photox"// 修改图片默认file
		,
		size : 1024*5,
		choose : function(obj) {
			obj.preview(function(index, file, result) {
				layui.$("#previewImg").attr("src", result);
			})

		},
		done : function(res) {
			// 上传完成后新闻见面赋值给photo
			layui.$("#photoInput").val(res.newFileName);

		},
		error : function() {
			// 请求异常回调
		}
	});
});

