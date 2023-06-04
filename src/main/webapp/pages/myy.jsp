<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: coli
  Date: 2023/5/21
  Time: 下午 11:24
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html>
<head>
    <title>Employee List</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/bootstrap.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/AdminLTE.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/pagination.css">
    <script src="${pageContext.request.contextPath}/static/js/jquery.min.js"></script>
    <script src="${pageContext.request.contextPath}/static/js/bootstrap.js"></script>
    <script src="${pageContext.request.contextPath}/static/js/pagination.js"></script>
    <script src="${pageContext.request.contextPath}/static/js/my.js"></script>
    <style>
        h3{
            text-align: center;
        }
    </style>
    <script>
        function goToPage(page) {
            document.getElementById("pageInput").value = page;
            document.getElementById("searchForm").submit();
        }
    </script>
    <style>
        body{
            overflow: hidden;
            font-size: 13px;
        }
    </style>
</head>
<body>
<div class="row" style="overflow: hidden">
    <a href="${pageContext.request.contextPath}/parcel-applications/myy">aaaaa</a>
    <div class="col-md-10" style="left: 13%;margin-top: 5%;overflow: hidden">
        <h3>我的快件申请单信息</h3>
        <table id="dataList" class="table table-bordered table-striped table-hover dataTable text-center">
            <tr>
                <th>快件申请号</th>
                <th>客户编号</th>
                <th>发件人</th>
                <th>发件人电话</th>
                <th>快件名</th>
                <th>运费</th>
                <th>发出地</th>
                <th>收件人</th>
                <th>收件人电话</th>
                <th>收货地址</th>
                <th>状态</th>
                <th>送达时间</th>
                <th>受理业务员</th>
                <th>承运业务员</th>
            </tr>
            <c:forEach items="${parcelApplications}" var="parcelApplication">
                <tr>
                    <td>${parcelApplication.applicationId}</td>
                    <td>${parcelApplication.customerId}</td>
                    <td>${parcelApplication.sender}</td>
                    <td>${parcelApplication.senderPhone}</td>
                    <td>${parcelApplication.parcelName}</td>
                    <td>${parcelApplication.freight}</td>
                    <td>${parcelApplication.origin}</td>
                    <td>${parcelApplication.recipient}</td>
                    <td>${parcelApplication.recipientPhone}</td>
                    <td>${parcelApplication.deliveryAddress}</td>
                    <td>
                        <c:if test="${parcelApplication.status == 0}">待受理</c:if>
                        <c:if test="${parcelApplication.status == 1}">已受理</c:if>
                        <c:if test="${parcelApplication.status == 2}">已送达</c:if>
                    </td>
                        <%--送达时间--%>
                    <td>
                        <c:if test="${parcelApplication.status == 2}">${parcelApplication.date}</c:if>
                    </td>
                        <%--受理业务员--%>
                    <td>
                        <c:if test="${parcelApplication.status == 1}">赵六</c:if>
                        <c:if test="${parcelApplication.status == 2}">赵六</c:if>
                    </td>
                        <%--承运业务员--%>
                    <td>
                        <c:if test="${parcelApplication.status == 2}">赵六</c:if>
                    </td>
                </tr>
            </c:forEach>
        </table>
    </div>
</div>
</body>
</html>

