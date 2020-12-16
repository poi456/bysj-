<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" isELIgnored="false" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html class="x-admin-sm">
  
  <head>

    <meta charset="UTF-8">
    <title>欢迎页面-X-admin2.1</title>
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <link rel="stylesheet" href="<%=request.getContextPath()%>//css/font.css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>//css/xadmin.css">
    <script type="text/javascript" src="https://cdn.bootcss.com/jquery/3.2.1/jquery.min.js"></script>
    <script type="text/javascript" src="<%=request.getContextPath()%>//lib/layui/layui.js" charset="utf-8"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/xadmin.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-3.4.1.js"></script>
    <script type="text/javascript" src="<%=request.getContextPath()%>//js/cookie.js"></script>
    <!-- 让IE8/9支持媒体查询，从而兼容栅格 -->
    <!--[if lt IE 9]>
      <script src="https://cdn.staticfile.org/html5shiv/r29/html5.min.js"></script>
      <script src="https://cdn.staticfile.org/respond.js/1.4.2/respond.min.js"></script>

    <![endif]-->
    <script>
      if ("${error}"!=""){
        alert('${error}');
      }

    </script>
  </head>
  
  <body>
    <div class="x-nav">
      <span class="layui-breadcrumb">
        <a href="">首页</a>
        <a href="">演示</a>
        <a>
          <cite>导航元素</cite></a>
      </span>
      <a class="layui-btn layui-btn-small" style="line-height:1.6em;margin-top:3px;float:right" href="javascript:location.replace(location.href);" title="刷新">
        <i class="layui-icon" style="line-height:30px">ဂ</i></a>
    </div>
    <div class="x-body">
      <div class="layui-row">
        <form class="layui-form layui-col-md12 x-so layui-form-pane" action="<%=request.getContextPath()%>/account/FuzzyQueryGYS">
          <input class="layui-input" placeholder="分类名" name="uname">
          <button class="layui-btn"  lay-submit="" lay-filter="sreach"><i class="icon iconfont"></i>增加</button>
        </form>
      </div>
      <xblock>
        <button class="layui-btn" onclick="x_admin_show('添加供应商','<%=request.getContextPath()%>/pages/Gysadd.jsp',600,400)"><i class="layui-icon"></i>添加</button>

      </xblock>
      <table class="layui-table layui-form">
        <thead>
          <tr>
            <th width="20">
              <div class="layui-unselect header layui-form-checkbox" lay-skin="primary"><i class="layui-icon">&#xe605;</i></div>
            </th>
            <th width="70">ID</th>
            <th>供应商公司</th>
            <th>供应商公司电话</th>
            <th>供应商</th>
            <th>电话</th>
            <th>住址</th>
            <th>负责人</th>

            <th width="250">操作</th>
        </thead>
        <c:forEach items="${findAll}" var="account">
          <tbody class="x-cate">
          <tr cate-id='1' fid='0' >
            <td>
              <div class="layui-unselect layui-form-checkbox" lay-skin="primary" data-id='2'><i class="layui-icon">&#xe605;</i></div>
            </td>

            <td>${account.gysid}</td>
            <td>${account.gongsi}</td>
            <td>${account.gongsigongying}</td>
            <td>${account.uname}</td>
            <td>${account.telephone}</td>
            <td>${account.address}</td>
            <td>${account.username}</td>

            <td class="td-manage">
              <a class="layui-btn layui-btn layui-btn-xs" href="<%=request.getContextPath()%>/pages/GysUpda.jsp?gysid=${account.gysid}&gongsi=${account.gongsi}&gongsigongying=${account.gongsigongying}&uname=${account.uname}&telephone=${account.telephone}&address=${account.address}&username=${account.username}"><i class="layui-icon">&#xe640;</i>编辑</a>

              <a class="layui-btn-danger layui-btn layui-btn-xs" href="<%=request.getContextPath()%>/account/delGYS?id=${account.gysid}" ><i class="layui-icon">&#xe640;</i>删除</a>

            </td>
          </tr>
          </tbody>
        </c:forEach>

      </table>
    </div>
    <style type="text/css">
      
    </style>
    <script>
      layui.use(['form'], function(){
        form = layui.form;
        
      });




      function delAll (argument) {

        var data = tableCheck.getData();
  
        layer.confirm('确认要删除吗？'+data,function(index){
            //捉到所有被选中的，发异步进行删除
            layer.msg('删除成功', {icon: 1});
            $(".layui-form-checked").not('.header').parents('tr').remove();
        });
      }
    </script>
    <script>var _hmt = _hmt || []; (function() {
        var hm = document.createElement("script");
        hm.src = "https://hm.baidu.com/hm.js?b393d153aeb26b46e9431fabaf0f6190";
        var s = document.getElementsByTagName("script")[0];
        s.parentNode.insertBefore(hm, s);
      })();</script>
  </body>

</html>