<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>物品运送信息管理系统</title>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/webbase.css"/>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/style.css"/>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/pages-login-manage.css"/>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.min.js"></script>
</head>
<body>
<div class="loginmain">
    <div class="">
        <h4>知音快递-上市两年半</h4>
        <div class="loginform">
            <ul class="">
                <li class="active">
                    <h3>登录</h3>
                </li>
            </ul>
            <div class="">
                <%--登录提示信息--%>
                <span style="color: red">${msg}</span>
                <div id="profile" class="">
                    <form id="loginform" class="" action="${pageContext.request.contextPath}/login"
                          method="post">
                        <div class=""><span class="add-on loginname"></span>
                            <input type="text" placeholder="请输入邮箱" class="span2 input-xfat" name="email">
                        </div>
                        <div class=""><span class="add-on loginpwd"></span>
                            <input type="text" placeholder="请输入密码" class="span2 input-xfat" name="password">
                        </div>
                        <div class="logined">
                            <a class=""
                               href='javascript:document:loginform.submit();' target="_self">登&nbsp;&nbsp;录</a>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>

</body>
<script type="text/javascript">
    /**
     * 登录超时 展示区跳出iframe
     */
    var _topWin = window;
    while (_topWin != _topWin.parent.window) {
        _topWin = _topWin.parent.window;
    }
    if (window != _topWin)
        _topWin.document.location.href = '${pageContext.request.contextPath}/admin/login.jsp';
</script>
</html>