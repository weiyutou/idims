<%--
  Created by IntelliJ IDEA.
  User: coli
  Date: 2023/5/18
  Time: 下午 3:53
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/style2.css"/>
    <title>物品运送信息管理系统</title>
    <style>
        nav {
            background-color: #f1f1f1;
        }

        ul {
            list-style-type: none;
            margin: 0;
            padding: 0;
        }

        li {
            display: inline-block;
            margin-right: 10px;
        }

        a {
            display: block;
            padding: 10px;
            text-decoration: none;
            color: #333;
        }

        a:hover {
            background-color: #ddd;
        }

    </style>
</head>
<body>
<nav>
    <ul>
        <li><a href="">主页</a></li>
        <li><a href="${pageContext.request.contextPath}/branch/selectBranch">分公司信息</a></li>
        <li><a href="${pageContext.request.contextPath}/employees/list">员工信息</a></li>
        <li><a href="">客户信息</a></li>
        <li><a href="">快件信息</a></li>
        <li><a href="">调度表</a></li>
        <li><a href=""> 欢迎，${USER_SESSION.username}</a></li>
        <li><a href="${pageContext.request.contextPath}/logout">
            <span class="hidden-xs">注销</span>
        </a></li>
    </ul>
</nav>
<!-- 数据表格 -->
<table id="dataList" class="table table-bordered table-striped table-hover dataTable text-center">

    <c:forEach items="${branchs}" var="branchs">
        <tr>
            <th class="sorting_asc">分公司编号</th>
            <th class="sorting">分公司名</th>
            <th class="sorting">经理</th>
            <th class="sorting">经理编号</th>
            <th class="sorting">办公电话</th>
            <th class="sorting">地址</th>
        </tr>
        <tr>
            <td>${branchs.branchId}</td>
            <td>${branchs.branchName}</td>
            <td>${branchs.managerName}</td>
            <td>${branchs.managerId}</td>
            <td>${branchs.officePhone}</td>
            <td>${branchs.address}</td>
        </tr>
    </c:forEach>
</table>
<%--
    <div class="main">
        <div class="left">
            <div class="navbar">
                <a href="${pageContext.request.contextPath}/branch/selectBranch" style="color: #f0f0f0;">首页</a>
                <div class="dropdown" style="color: #f0f0f0;" onclick="toggleDropdown(0)">
                    <a href="">产品</a>
                    <div class="dropdown-content">
                        <a href="#">产品1</a>
                        <a href="#">产品2</a>
                        <a href="#">产品3</a>
                    </div>
                </div>
                <a href="#">关于我们</a>
                <a href="#">联系我们</a>
            </div>
        </div>
        <div class="right">
            <div class="tit">
                <div class="logot">总公司</div>
                <div class="userif">
                    欢迎，
                    <span style="">${USER_SESSION.username}</span>
                    <a href="${pageContext.request.contextPath}/logout">
                            <span class="hidden-xs">注销</span>
                        </a>
                </div>
            </div>
            <!-- 数据列表 -->
            <div class="table-box">
                <!-- 数据表格 -->
                <table id="dataList" class="table table-bordered table-striped table-hover dataTable text-center">
                    <tr>
                        <th class="sorting_asc">工号</th>
                        <th class="sorting">姓名</th>
                        <th class="sorting">密码</th>
                        <th class="sorting">邮箱</th>
                        <th class="sorting">身份</th>
                    </tr>
                    <c:forEach items="${branchs}" var="branchs">
                        <tr>
                            <td>${branchs.branchId}</td>
                            <td>${branchs.branchName}</td>
                        </tr>
                    </c:forEach>
                </table>
                <!--数据表格/-->
                &lt;%&ndash;分页插件&ndash;%&gt;
                <div id="pagination" class="pagination"></div>
            </div>
        </div>
    </div>--%>
    <script>


        // 点击展开/关闭下拉列表
        function toggleDropdown(index) {
            var dropdowns = document.getElementsByClassName("dropdown");
            dropdowns[index].classList.toggle("active");
        }
    </script>
</body>
</html>
