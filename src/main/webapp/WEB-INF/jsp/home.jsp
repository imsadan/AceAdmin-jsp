<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="sitemesh" uri="http://www.opensymphony.com/sitemesh/decorator" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<html lang="en">
<head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />

    <title> 模板</title>
    <meta name="description" content="" />
    <style>
        nav{
            margin-left: 40px;
            height: 30px;
            overflow: hidden;
            margin-top: 5px;
        }

        .page-tabs a.active {
            background: #fff;
            color: #a7b1c2;
        }

        .page-tabs a {
            color: #999;
            display: block;
            float: left;
            padding: 0 15px;
            outline: none;
        }
        .content-tabs button {
            background: #fff;
            border: 0;
            height: 40px;
            width: 40px;
            outline: 0;
        }

        .content-tabs a:hover{
            text-decoration:none
        }


        .roll-right.btn-group button {
            width: 80px;
        }
        a {
            cursor: pointer;
        }


        .J_mainContent {
            height: calc(100vh - 121px);
        }
        #rightMenu li {
            width: 100px!important;
        }
        #rightMenu i{
            margin-right: 10px;
        }

        #rightMenu ul li {
            border:1px solid #f1f1f1;
            height:25px;
            line-height:22px;
            background-position:right -8px;
            padding: 0 5px;
        }

        #rightMenu ul li.active {
            padding: 0 5px;
            height:25px;
        }

        .sidebar .sidebar-toggle {
            border-style: none;
        }
        .footer  {
            bottom: 0px;
            padding: 0px;
            line-height: 30px;
        }

        .page-content {
            padding: 3px 15px 24px;
        }
        .footer {
            padding-top: 67px;
        }

    </style>
</head>
<body>
<div class="navbar" id="navbar">
    <div class="navbar-container ace-save-state" id="navbar-container">
        <div class="navbar-header pull-left">
            <a href="" class="navbar-brand">
                <small>
                    <i class="fa fa-leaf"></i>
                    Ace Admin
                </small>
            </a>
        </div>
    </div>
</div>
<!--  主容器 -->
<div class="main-container" id="main-container">
    <script type="text/javascript">
        try{ace.settings.loadState('main-container')}catch(e){}
    </script>
    <div class="sidebar responsive ace-save-state" id="sidebar">
        <script type="text/javascript">
            try{ace.settings.loadState('sidebar')}catch(e){}
        </script>
        <ul class="nav nav-list">
            <li class="active open">
                <a href="javascript:;" class="dropdown-toggle">
                    <i class="menu-icon fa fa-list"></i>
                    <span class="menu-text">用户列表</span>
                    <b class="arrow fa fa-angle-down"></b>
                </a>
                <b class="arrow"></b>
                <ul class="submenu">
                    <li class="active">
                        <a href="${ctx}/user/list" class="J_menuItem">
                            <i class="menu-icon fa fa-caret-right"></i>
                           人员信息
                        </a>
                        <b class="arrow"></b>
                    </li>

                    <li class="">
                        <a href="${ctx}/user/list" class="J_menuItem">
                            <i class="menu-icon fa fa-caret-right"></i>
                            账号管理
                        </a>
                        <b class="arrow"></b>
                    </li>
                    <li class="">
                        <a href="${ctx}/user/list" class="J_menuItem">
                            <i class="menu-icon fa fa-caret-right"></i>
                            权限分配
                        </a>
                        <b class="arrow"></b>
                    </li>
                </ul>
            </li>
            <li class="">
                <a href="javascript:;" class="dropdown-toggle">
                    <i class="menu-icon fa fa-list"></i>
                    <span class="menu-text">仓储</span>
                    <b class="arrow fa fa-angle-down"></b>
                </a>
                <b class="arrow"></b>
                <ul class="submenu">
                    <li class="">
                        <a href="${ctx}/bs/information/show/list" class="J_menuItem">
                            <i class="menu-icon fa fa-caret-right"></i>
                            库存列表
                        </a>
                        <b class="arrow"></b>
                    </li>
                    <li class="">
                        <a href="${ctx}/user/list" class="J_menuItem">
                            <i class="menu-icon fa fa-caret-right"></i>
                            出入库日志记录
                        </a>
                        <b class="arrow"></b>
                    </li>
                    <li class="">
                        <a href="${ctx}/user/list" class="J_menuItem">
                            <i class="menu-icon fa fa-caret-right"></i>
                            入库
                        </a>
                        <b class="arrow"></b>
                    </li>
                </ul>
            </li>
            <li class="">
                <a href="${ctx}/user/list" class="dropdown-toggle J_menuItem">
                    <i class="menu-icon fa fa-list"></i>
                    <span class="menu-text">管理</span>
                    <b class="arrow"></b>
                </a>
                <b class="arrow"></b>
            </li>
        </ul>
        <div class="sidebar-toggle sidebar-collapse" id="sidebar-collapse">
            <i id="sidebar-toggle-icon" class="ace-icon fa fa-angle-double-left ace-save-state" data-icon1="ace-icon fa fa-angle-double-left" data-icon2="ace-icon fa fa-angle-double-right"></i>
        </div>
    </div>
    <div class="main-content">
        <script type="text/javascript">
            try{ace.settings.check('breadcrumbs' , 'fixed')}catch(e){}
        </script>
        <ul class="breadcrumb">
            <li>
                <i class="ace-icon fa fa-home home-icon"></i>
                <a href="#">Home</a>
            </li>
        </ul>
        <div class="page-content">
            <div class="row J_mainContent" id="content-main">
                <iframe onload="iframeChange()" id="J_iframe" class="J_iframe" name="iframe0" width="100%" height="100%" src="" frameborder="0" data-id="index_v1.html" seamless></iframe>
            </div>
        </div>
    </div>
    <div class="footer"></div>
    <a href="#" id="btn-scroll-up" class="btn-scroll-up btn btn-sm btn-inverse">
        <i class="ace-icon fa fa-angle-double-up icon-only bigger-110"></i>
    </a>
</div>
<script type="text/javascript">
    $(function(){
        iframeChange();
    });

    function iframeChange(){
        var ifmHeight = document.documentElement.clientHeight - 130;
        $(".main-content").css("height",ifmHeight);

        var height = document.documentElement.clientHeight - 130;
        $(".nav-list").css("height",height);
    }


    $(function() {
        //控制小三角
        $(".nav.nav-list a").click(function(){
            if(!$(this).hasClass("dropdown-toggle")){
                $(".nav.nav-list li").removeClass("active");
                $(this).parent().addClass("active");
            }
        });
    });
</script>
</body>
</html>
