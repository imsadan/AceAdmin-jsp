<%--
  Created by IntelliJ IDEA.
  User: imsadan
  Date: 2019-11-05
  Time: 15:41
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Form</title>
</head>
<body>
<div class="col-xs-12">
    <form class="form-horizontal" role="form" style="margin: 10px 10px;padding-top: 10px;border: 2px solid #ddd;">
        <div class="form-group">
            <label class="col-sm-2 control-label no-padding-right" for="productName"> 产品名称</label>
            <div class="col-sm-2">
               <input type="text" id="productName" placeholder="产品名.." />
            </div>
            <label class="col-sm-2 control-label no-padding-right" for="company"> 附属单位</label>
            <div class="col-sm-2">
                <select class="form-control" id="company">
                    <option value="0" selected>请选择</option>
                    <option value="1">1</option>
                    <option value="2">2</option>
                </select>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-2 control-label no-padding-right" for="productModel"> 产品型号</label>
            <div class="col-sm-2">
                <input type="text" id="productModel" placeholder="产品型号.."/>
            </div>
            <label class="col-sm-2 control-label no-padding-right" for="recoder"> 记录人</label>
            <div class="col-sm-2">
                <input type="text" id="recoder" placeholder="记录人员.."/>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-2 control-label no-padding-right">描述</label>
            <div class="col-sm-2">
                <textarea id="form-field-11" class="autosize-transition form-control" style="overflow: hidden; overflow-wrap: break-word; resize: horizontal; height: 80px; margin-left: 0px; margin-right: -3.8125px; width: 300px;"></textarea>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-2 control-label no-padding-right" for="recodeTime">时间</label>
            <div class="col-sm-2">
                <div class="input-group">
                    <input class="form-control date-picker" id="recodeTime" type="text" data-date-format="yyyy-mm-dd">
                    <span class="input-group-addon">
                        <i class="fa fa-calendar bigger-110"></i>
                    </span>
                </div>
            </div>
        </div>

        <div class="form-group">
            <label class="col-sm-3 control-label no-padding-right"></label>
            <button class="btn btn-info" type="button">
                <i class="ace-icon fa fa-check bigger-110"></i>
                Submit
            </button>
            &nbsp; &nbsp; &nbsp;
            <button class="btn" type="reset">
                <i class="ace-icon fa fa-undo bigger-110"></i>
                Reset
            </button>
        </div>
    </form>
</div>
<script type="text/javascript" src="${ctx}/js/bootstrap-datepicker.min.js"></script>
<script type="text/javascript" src="${ctx}/js/locales/bootstrap-datepicker.zh-CN.js"></script>
<script>
    $('.date-picker').datepicker({
        autoclose: true,
        todayHighlight: true,
        language: 'zh-CN'
    })
        .next().on(ace.click_event, function(){
        $(this).prev().focus();
    });
</script>
</body>
</html>
