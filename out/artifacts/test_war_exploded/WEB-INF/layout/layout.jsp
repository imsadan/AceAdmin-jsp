<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="sitemesh" uri="http://www.opensymphony.com/sitemesh/decorator" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<c:set var="static_version" value="${1041}"/>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="X-UA-Compatible" content="IE=9"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
        <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
        <title><sitemesh:title/></title>
        <link rel="stylesheet" type="text/css" href="${ctx}/css/bootstrap.min.css?${static_version}"/>
        <link rel="stylesheet" type="text/css" href="${ctx}/css/font-awesome.min.css?${static_version}"/>
        <link rel="stylesheet" type="text/css" href="${ctx}/css/ace.min.css?${static_version}"/>
        <script type="text/javascript" src="${ctx}/js/jquery-2.1.4.min.js?${static_version}"></script>
        <script type="text/javascript" src="${ctx}/js/bootstrap.min.js?${static_version}"></script>
        <script type="text/javascript" src="${ctx}/js/ace-elements.min.js?${static_version}"></script>
        <script type="text/javascript" src="${ctx}/js/ace.min.js?${static_version}"></script>
        <script type="text/javascript" src="${ctx}/js/contabs.js?${static_version}"></script>
        <sitemesh:head/>
    </head>
    <body class="no-skin">
        <sitemesh:body/>

    </body>
</html>
