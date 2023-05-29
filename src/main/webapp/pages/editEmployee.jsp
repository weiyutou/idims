<%--
  Created by IntelliJ IDEA.
  User: coli
  Date: 2023/5/28
  Time: 下午 3:19
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/bootstrap.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/AdminLTE.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/pagination.css">
    <script src="${pageContext.request.contextPath}/static/js/jquery.min.js"></script>
    <script src="${pageContext.request.contextPath}/static/js/bootstrap.js"></script>
    <script src="${pageContext.request.contextPath}/static/js/pagination.js"></script>
    <script src="${pageContext.request.contextPath}/static/js/my.js"></script>
    <title>Title</title>
    <style>
        h3{
            text-align: center;
        }
    </style>
</head>
<body>
<div class="card">
    <div class="card-body">
        <div class="row">
            <div class="col-md-9" style="left: 18%;margin-top: 5%;overflow: hidden">
                <h3>编辑员工信息</h3>
                <div class="p-h-10">
                    <form class="m-t-15" action="${pageContext.request.contextPath}/emp/updateEmp" method="post">
                        <div class="form-group row">
                            <label class="col-sm-2 col-form-label control-label">员工姓名</label>
                            <div class="col-sm-10">
                                <input type="text" class="form-control" name="employeeId" value="${employee.employeeId}" hidden>
                                <input type="text" class="form-control" name="name" value="${employee.name}" placeholder="员工姓名">
                            </div>
                        </div>
                        <div class="form-group row">
                            <label class="col-sm-2 col-form-label control-label">岗位</label>
                            <div class="col-sm-10">
                                <input type="text" class="form-control" name="position" value="${employee.position}" placeholder="岗位">
                            </div>
                        </div>
                        <div class="form-group row">
                            <label class="col-sm-2 col-form-label control-label">薪资</label>
                            <div class="col-sm-10">
                                <input type="text" class="form-control" name="salary" value="${employee.salary}" placeholder="薪资">
                            </div>
                        </div>
                        <div class="form-group row">
                            <label class="col-sm-2 col-form-label control-label">电话</label>
                            <div class="col-sm-10">
                                <input type="text" class="form-control" name="phoneNumber" value="${employee.phoneNumber}" placeholder="电话">
                            </div>
                        </div>
                        <div class="form-group row">
                            <label class="col-sm-2 col-form-label control-label">地址</label>
                            <div class="col-sm-10">
                                <input type="text" class="form-control" name="homeAddress" value="${employee.homeAddress}" placeholder="地址">
                                <input type="text" class="form-control" name="branchId" value="${employee.branchId}" placeholder="公司" hidden>
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="col-sm-6">
                                <div class="text-sm-right">
                                    <button class="btn btn-default">关闭</button>
                                    <button class="btn btn-gradient-success">提交</button>
                                </div>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
</body>
</html>
