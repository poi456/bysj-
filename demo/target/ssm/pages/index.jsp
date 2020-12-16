<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" isELIgnored="false" %>
<!doctype html>
<html class="x-admin-sm">

<head>
    <meta charset="UTF-8">
    <title>后台登录-X-admin2.1</title>
    <meta name="renderer" content="webkit|ie-comp|ie-stand">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width,user-scalable=yes, minimum-scale=0.4, initial-scale=0.8,target-densitydpi=low-dpi" />
    <meta http-equiv="Cache-Control" content="no-siteapp" />
    <link rel="stylesheet" href="<%=request.getContextPath()%>/css/font.css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/css/xadmin.css">
    <script type="text/javascript" src="https://cdn.bootcss.com/jquery/3.2.1/jquery.min.js"></script>
    <script type="text/javascript" src="https://cdn.bootcss.com/blueimp-md5/2.10.0/js/md5.min.js"></script>
    <script src="<%=request.getContextPath()%>/lib/layui/layui.js" charset="utf-8"></script>

    <script type="text/javascript" src="<%=request.getContextPath()%>/js/xadmin.js"></script>
    <script type="text/javascript" src="<%=request.getContextPath()%>/js/cookie.js"></script>
    <script>
        // 是否开启刷新记忆tab功能
        // var is_remember = false;
    </script>
</head>
<body>
<!-- 顶部开始 -->
<div class="container">
    <div class="logo"><a href="<%=request.getContextPath()%>/pages/index.jsp">邵阳阳光超市管理系统</a></div>
    <div class="left_open">
        <i title="展开左侧栏" class="iconfont">&#xe699;</i>
    </div>

    <ul class="layui-nav right" lay-filter="">
        <li class="layui-nav-item">
            ${error}
            <a href="javascript:;"><%=request.getParameter("error")%></a>
        </li>
        <li class="layui-nav-item to-index"><a href="../login.jsp">退出</a></li>
    </ul>

</div>
<!-- 顶部结束 -->
<!-- 中部开始 -->
<!-- 左侧菜单开始 -->
<div class="left-nav">
    <div id="side-nav">
        <ul id="nav">

            <%  if (request.getParameter("error").equals("管理员")){%>
                <li>
                <a href="javascript:;">
                    <i class="iconfont">&#xe6b8;</i>
                    <cite>管理员管理</cite>
                    <i class="iconfont nav_right">&#xe697;</i>
                </a>
                <ul class="sub-menu">
                    <li date-refresh="1">
                        <a _href="<%=request.getContextPath()%>/account/hueyuanj">
            <i class="iconfont">&#xe6a7;</i>
            <cite>管理员权限管理</cite>
            </a>
            </li>
        </ul>
                    <ul class="sub-menu">
                        <li date-refresh="1">
                            <a _href="<%=request.getContextPath()%>/pages/admin-add.jsp">
                                <i class="iconfont">&#xe6a7;</i>
                                <cite>添加员工</cite>
                            </a>
                        </li>
                    </ul>
                    <ul class="sub-menu">
                        <li date-refresh="1">
                            <a _href="<%=request.getContextPath()%>/pages/member-password.jsp">
                                <i class="iconfont">&#xe6a7;</i>
                                <cite>修改员工</cite>
                            </a>
                        </li>
                    </ul>
        </li>
            <% }%>
            <li>
                <a href="javascript:;">
                    <i class="iconfont">&#xe723;</i>
                    <cite>供应商仓库</cite>
                    <i class="iconfont nav_right">&#xe697;</i>
                </a>
                <ul class="sub-menu">
                    <li date-refresh="1">
                        <a _href="<%=request.getContextPath()%>/account/selectHW">
                            <i class="iconfont">&#xe6a7;</i>
                            <cite>查看供应商仓库</cite>
                        </a>
                    </li>
                </ul>
                <ul class="sub-menu">
                    <li date-refresh="1">
                        <a _href="<%=request.getContextPath()%>/pages/SupplierWarehouseadd.jsp">
                            <i class="iconfont">&#xe6a7;</i>
                            <cite>增加供应商仓库</cite>
                        </a>
                    </li>
                </ul>
            </li>
            <li>
                <a href="javascript:;">
                    <i class="iconfont">&#xe723;</i>
                    <cite>供应商查看</cite>
                    <i class="iconfont nav_right">&#xe697;</i>
                </a>
                <ul class="sub-menu">
                    <li date-refresh="1">
                        <a _href="<%=request.getContextPath()%>/account/selectGYS">
                            <i class="iconfont">&#xe6a7;</i>
                            <cite>查看供应商</cite>
                        </a>
                    </li>
                </ul>
                <ul class="sub-menu">
                    <li date-refresh="1">
                        <a _href="<%=request.getContextPath()%>/pages/Gysadd.jsp">
                            <i class="iconfont">&#xe6a7;</i>
                            <cite>添加供应商</cite>
                        </a>
                    </li>
                </ul>
            </li>
            <li>
                <a href="javascript:;">
                    <i class="iconfont">&#xe723;</i>
                    <cite>超市仓库</cite>
                    <i class="iconfont nav_right">&#xe697;</i>
                </a>
                <ul class="sub-menu">
                    <li date-refresh="1">
                        <a _href="<%=request.getContextPath()%>/account/selectCK">
                            <i class="iconfont">&#xe6a7;</i>
                            <cite>查看超市仓库</cite>
                        </a>
                    </li>
                </ul>
            </li>


        </ul>
    </div>
</div>
<!-- <div class="x-slide_left"></div> -->
<!-- 左侧菜单结束 -->
<!-- 右侧主体开始 -->
<div class="page-content">
    <div class="layui-tab tab" lay-filter="xbs_tab" lay-allowclose="false">
        <ul class="layui-tab-title">
            <li class="home"><i class="layui-icon">&#xe68e;</i>我的桌面</li>
        </ul>
        <div class="layui-unselect layui-form-select layui-form-selected" id="tab_right">
            <dl>
                <dd data-type="this">关闭当前</dd>
                <dd data-type="other">关闭其它</dd>
                <dd data-type="all">关闭全部</dd>
            </dl>
        </div>
        <div class="layui-tab-content">
            <div class="layui-tab-item layui-show">
                <iframe src='<%=request.getContextPath()%>/pages/welcome.jsp' frameborder="0" scrolling="yes" class="x-iframe"></iframe>
            </div>
        </div>
        <div id="tab_show"></div>
    </div>
</div>
<div class="page-content-bg"></div>
<!-- 右侧主体结束 -->
<!-- 中部结束 -->
<!-- 底部开始 -->
<div class="footer">
    <div class="copyright">Copyright ©2017 x-admin v2.3 All Rights Reserved</div>
</div>
</body>

</html>