<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page isELIgnored="false" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html class="x-admin-sm">

<head>
    <script>
        if ("${error}"!=""){
            alert('${error}')
        }


    </script>
    <meta charset="UTF-8">
    <title>欢迎页面-X-admin2.1</title>
    <meta name="renderer" content="webkit">
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width,user-scalable=yes, minimum-scale=0.4, initial-scale=0.8,target-densitydpi=low-dpi" />
    <link rel="stylesheet" href="<%=request.getContextPath()%>/css/font.css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/css/xadmin.css">
    <script type="text/javascript" src="https://cdn.bootcss.com/jquery/3.2.1/jquery.min.js"></script>
    <script type="text/javascript" src="<%=request.getContextPath()%>/lib/layui/layui.js" charset="utf-8"></script>
    <script type="text/javascript" src="<%=request.getContextPath()%>/js/xadmin.js"></script>
    <script type="text/javascript" src="<%=request.getContextPath()%>/js/cookie.js"></script>
    <!-- 让IE8/9支持媒体查询，从而兼容栅格 -->
    <!--[if lt IE 9]>
    <script src="https://cdn.staticfile.org/html5shiv/r29/html5.min.js"></script>
    <script src="https://cdn.staticfile.org/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>

<body>
<div class="x-body">
    <form action="<%=request.getContextPath()%>/account/upCK" class="layui-form">
        <div class="layui-form-item">

            <label  class="layui-form-label">
                <span class="x-red">*</span>超市名
            </label>
            <div class="layui-input-inline">
                <input   type="text"  name="cangkuming"  required="" lay-verify="required"
                         autocomplete="off" class="layui-input"  value="<%=request.getParameter("cangkuming")%>">
            </div>
            <div class="layui-form-mid layui-word-aux">
                <span class="x-red">*</span>
            </div>
        </div>
        <div class="layui-form-item">

            <label  class="layui-form-label">
                <span class="x-red">*</span>负责人
            </label>
            <div class="layui-input-inline">
                <input  type="text" name="fuzeren"  required="" lay-verify="required"
                        autocomplete="off" class="layui-input"  value="<%=request.getParameter("fuzeren")%>">
            </div>
            <div class="layui-form-mid layui-word-aux">
                <span class="x-red">*</span>
            </div>
        </div>
        <div class="layui-form-item">

            <label class="layui-form-label">
                <span class="x-red">*</span>商品名
            </label>
            <div class="layui-input-inline">
                <input  type="text" name="uname"  required="" lay-verify="required"
                        autocomplete="off" class="layui-input"  value="<%=request.getParameter("uname")%>">
            </div>
            <div class="layui-form-mid layui-word-aux">
                <span class="x-red">*</span>
            </div>
        </div>
        <div class="layui-form-item">

            <label class="layui-form-label">
                <span class="x-red">*</span>商品数量
            </label>
            <div class="layui-input-inline">
                <input  type="text"  name="shuliang" required="" lay-verify="required"
                        autocomplete="off" class="layui-input"  value="<%=request.getParameter("shuliang")%>">
            </div>
            <div class="layui-form-mid layui-word-aux">
                <span class="x-red">*</span>
            </div>
        </div>
        <div class="layui-form-item">
            <label  class="layui-form-label">
                <span class="x-red">*</span>单价
            </label>
            <div class="layui-input-inline">
                <input type="text" id="shuliang" name="danjia" required="" lay-verify="danjia"
                       autocomplete="off" class="layui-input">
            </div>
            <div class="layui-form-mid layui-word-aux">
                <span class="x-red">*</span>
            </div>
        </div>
        <div class="layui-form-item">
            <label  class="layui-form-label">
            </label>
            <input type="submit" lay-filter="add" lay-submit="" class="layui-btn" value="修改">
        </div>
    </form>

</div>


</body>

</html>