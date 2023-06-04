<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: coli
  Date: 2023/5/28
  Time: 上午 1:15
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <title>凌云快递Faster</title>


  <!-- core dependcies css -->
  <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/bootstrap.css">
  <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/pace-theme-minimal.css">
  <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/perfect-scrollbar.min.css">

  <!-- page css -->

  <!-- core css -->
  <link href="${pageContext.request.contextPath}/static/css/font-awesome.min.css" rel="stylesheet">
  <link href="${pageContext.request.contextPath}/static/css/themify-icons.css" rel="stylesheet">
  <link href="${pageContext.request.contextPath}/static/css/materialdesignicons.min.css" rel="stylesheet">
  <link href="${pageContext.request.contextPath}/static/css/animate.min.css" rel="stylesheet">
  <link href="${pageContext.request.contextPath}/static/css/app.css" rel="stylesheet">
  <script type="text/javascript">
    function SetIFrameHeight() {
      var iframeid = document.getElementById("iframe");
      if (document.getElementById) {
        /*设置 内容展示区的高度等于页面可视区的高度*/
        iframeid.height = document.documentElement.clientHeight;
      }
    }
  </script>
</head>

<body>


<div class="app header-default side-nav-dark">
  <div class="layout">
    <!-- Header START -->
    <div class="header navbar">
      <div class="header-container">
        <div class="nav-logo">
          <a href="">
            <div class="logo logo-dark" style="background-size: cover;background-image: url('${pageContext.request.contextPath}/static/image/logo.png')"></div>
            <div class="logo logo-white" style="background-image: url('${pageContext.request.contextPath}/static/image/logo-white.png')"></div>
          </a>
        </div>
        <ul class="nav-left">
          <li>
            <a class="sidenav-fold-toggler" href="javascript:void(0);">
              <i class="mdi mdi-menu"></i>
            </a>
            <a class="sidenav-expand-toggler" href="javascript:void(0);">
              <i class="mdi mdi-menu"></i>
            </a>
          </li>
          <li class="search-input">
            <input class="form-control" type="text" placeholder="Type to search...">
          </li>
        </ul>
        <ul class="nav-right">
          <li class="dropdown dropdown-animated scale-left">
            <a href="" class="dropdown-toggle" data-toggle="dropdown">
              <i class="mdi mdi-apps"></i>
            </a>
            <ul class="dropdown-menu dropdown-grid col-3 dropdown-lg">
              <li>
                <a href="">
                  <div class="text-center">
                    <i class="mdi mdi-email-outline font-size-30 icon-gradient-success"></i>
                    <p class="m-b-0">邮箱</p>
                  </div>
                </a>
              </li>
              <li>
                <a href="">
                  <div class="text-center">
                    <i class="mdi mdi-folder-outline font-size-30 icon-gradient-success"></i>
                    <p class="m-b-0">文件夹</p>
                  </div>
                </a>
              </li>
              <li>
                <a href="">
                  <div class="text-center">
                    <i class="mdi mdi mdi-gauge font-size-30 icon-gradient-success"></i>
                    <p class="m-b-0">仪表盘</p>
                  </div>
                </a>
              </li>
              <li>
                <a href="">
                  <div class="text-center">
                    <i class="mdi mdi-play-circle-outline font-size-30 icon-gradient-success"></i>
                    <p class="m-b-0">视频</p>
                  </div>
                </a>
              </li>
              <li>
                <a href="">
                  <div class="text-center">
                    <i class="mdi mdi-image-filter font-size-30 icon-gradient-success"></i>
                    <p class="m-b-0">图片</p>
                  </div>
                </a>
              </li>
              <li>
                <a href="">
                  <div class="text-center">
                    <i class="mdi mdi-image-filter-drama font-size-30 icon-gradient-success"></i>
                    <p class="m-b-0">云端</p>
                  </div>
                </a>
              </li>
            </ul>
          </li>
          <li class="notifications dropdown dropdown-animated scale-left">
            <span class="counter">2</span>
            <a href="" class="dropdown-toggle" data-toggle="dropdown">
              <i class="mdi mdi-bell-ring-outline"></i>
            </a>
            <ul class="dropdown-menu dropdown-lg p-v-0">
              <li class="p-v-15 p-h-20 border bottom text-dark">
                <h5 class="m-b-0">
                  <i class="mdi mdi-bell-ring-outline p-r-10"></i>
                  <span>通知</span>
                </h5>
              </li>
              <li>
                <ul class="list-media overflow-y-auto relative scrollable" style="max-height: 300px">
                  <li class="list-item border bottom">
                    <a href="javascript:void(0);" class="media-hover p-15">
                      <div class="media-img">
                        <div class="icon-avatar bg-primary">
                          <i class="ti-settings"></i>
                        </div>
                      </div>
                      <div class="info">
                                                    <span class="title">
                                                        系统关闭
                                                    </span>
                        <span class="sub-title">8 min ago</span>
                      </div>
                    </a>
                  </li>
                  <li class="list-item border bottom">
                    <a href="javascript:void(0);" class="media-hover p-15">
                      <div class="media-img">
                        <div class="icon-avatar bg-success">
                          <i class="ti-user"></i>
                        </div>
                      </div>
                      <div class="info">
                                                    <span class="title">
                                                        新用户注册
                                                    </span>
                        <span class="sub-title">12 min ago</span>
                      </div>
                    </a>
                  </li>
                  <li class="list-item border bottom">
                    <a href="javascript:void(0);" class="media-hover p-15">
                      <div class="media-img">
                        <div class="icon-avatar bg-warning">
                          <i class="ti-file"></i>
                        </div>
                      </div>
                      <div class="info">
                                                    <span class="title">
                                                        新闻周刊
                                                    </span>
                        <span class="sub-title">12 min ago</span>
                      </div>
                    </a>
                  </li>
                  <li class="list-item border bottom">
                    <a href="javascript:void(0);" class="media-hover p-15">
                      <div class="media-img">
                        <div class="icon-avatar bg-info">
                          <i class="ti-shopping-cart"></i>
                        </div>
                      </div>
                      <div class="info">
                                                    <span class="title">
                                                        收到新的订单
                                                    </span>
                        <span class="sub-title">12 min ago</span>
                      </div>
                    </a>
                  </li>
                </ul>
              </li>
              <li class="p-v-15 p-h-20 text-center">
                                    <span>
                                        <a href="" class="text-gray">查看所有通知<i class="ei-right-chevron p-l-5 font-size-10"></i></a>
                                    </span>
              </li>
            </ul>
          </li>
          <li class="user-profile dropdown dropdown-animated scale-left">
            <a href="" class="dropdown-toggle" data-toggle="dropdown">
              <c:if test="${USER_SESSION != null}">
                <img class="profile-img img-fluid" src="${pageContext.request.contextPath}/static/picture/thumb-13.png" alt="">
              </c:if>
            </a>
            <ul class="dropdown-menu dropdown-md p-v-0">
              <li>
                <ul class="list-media">
                  <li class="list-item p-15">
                    <div class="media-img">
                      <img src="${pageContext.request.contextPath}/static/picture/thumb-13.png" alt="">
                    </div>
                    <div class="info">
                      <span class="title text-semibold">
                        <c:if test="${USER_SESSION.username == 1234}">张三</c:if>
                        <c:if test="${USER_SESSION.username == 123}">赵六</c:if>
                        <c:if test="${USER_SESSION.username == 12}">李四</c:if>
                        <c:if test="${USER_SESSION.username == 11}">钱九</c:if>
                        <c:if test="${USER_SESSION.username == 1}">客户5</c:if>
                      </span>
                      <span class="sub-title">${USER_SESSION.role}</span>
                    </div>
                  </li>
                </ul>
              </li>
              <li role="separator" class="divider"></li>
              <li>
                <a href="">
                  <i class="ti-settings p-r-10"></i>
                  <span>设置</span>
                </a>
              </li>
              <li>
                <a href="">
                  <i class="ti-user p-r-10"></i>
                  <span>个人信息</span>
                </a>
              </li>
              <li>
                <a href="${pageContext.request.contextPath}/logout">
                  <i class="ti-power-off p-r-10"></i>
                  <span>Logout</span>
                </a>
              </li>
            </ul>
          </li>
        </ul>
      </div>
    </div>
    <!-- Header END -->

    <!-- Side Nav START -->
    <div class="side-nav expand-lg">
      <div class="side-nav-inner">
        <ul class="side-nav-menu scrollable">
          <li class="side-nav-header">
            <span>Navigation</span>
          </li>
          <c:if test="${USER_SESSION.role == '经理'}">
          <li class="nav-item dropdown open">
            <a class="dropdown-toggle" href="javascript:void(0);">
                                <span class="icon-holder">
                                    <i class="mdi mdi-gauge"></i>
                                </span>
              <span class="title">Dashboard</span>
              <span class="arrow">
                                    <i class="mdi mdi-chevron-right"></i>
                                </span>
            </a>
            <ul class="dropdown-menu">
              <li class="active">
                <a href="">首页</a>
              </li>
              <li>
                <a href="${pageContext.request.contextPath}/branches/list" target="iframe">分公司信息</a>
              </li>
              <li>
                <a href="${pageContext.request.contextPath}/emp/list" target="iframe">员工信息</a>
              </li>
              <li>
                <a href="${pageContext.request.contextPath}/customers/list" target="iframe">客户信息</a>
              </li>
              <li>
                <a href="${pageContext.request.contextPath}/parcel-applications/list" target="iframe">快件申请信息</a>
              </li>
            </ul>
          </li>
          </c:if>
          <c:if test="${USER_SESSION.role == '业务员'}">
          <li class="nav-item dropdown">
            <a class="dropdown-toggle" href="javascript:void(0);">
                                <span class="icon-holder">
                                    <i class="mdi mdi-image-filter-drama"></i>
                                </span>
              <span class="title">业务员功能</span>
              <span class="arrow">
                                    <i class="mdi mdi-chevron-right"></i>
                                </span>
            </a>
            <ul class="dropdown-menu">
              <li>
                <a href="${pageContext.request.contextPath}/parcel-applications/slist" target="iframe">受理快件</a>
              </li>
            </ul>
          </li>
          </c:if>
          <c:if test="${USER_SESSION.role == '调度员'}">
          <li class="nav-item dropdown">
            <a class="dropdown-toggle" href="javascript:void(0);">
                                <span class="icon-holder">
                                    <i class="mdi mdi-file-outline"></i>
                                </span>
              <span class="title">调度员功能</span>
              <span class="arrow">
                                    <i class="mdi mdi-chevron-right"></i>
                                </span>
            </a>
            <ul class="dropdown-menu">
              <li>
                <a href="${pageContext.request.contextPath}/parcel-applications/dlist" target="iframe">安排承运</a>
              </li>
            </ul>
          </li>
          </c:if>
          <c:if test="${USER_SESSION.role == '客户'}">
          <li class="nav-item dropdown">
            <a class="dropdown-toggle" href="javascript:void(0);">
                                <span class="icon-holder">
                                    <i class="mdi mdi-tune-vertical"></i>
                                </span>
              <span class="title">客户功能</span>
              <span class="arrow">
                                    <i class="mdi mdi-chevron-right"></i>
                                </span>
            </a>
            <ul class="dropdown-menu">
              <li>
                <a href="${pageContext.request.contextPath}/pages/addparcelApplication.jsp" target="iframe">我要寄件</a>
              </li>
              <li>
                <a href="${pageContext.request.contextPath}/parcel-applications/myys" target="iframe">我的寄件</a>
              </li>
            </ul>
          </li>
          <li class="side-nav-header">
            <span>Others</span>
          </li>
          </c:if>
          <li class="nav-item dropdown">
            <a class="dropdown-toggle" href="javascript:void(0);">
                                <span class="icon-holder">
                                    <i class="mdi mdi-image-filter-tilt-shift"></i>
                                </span>
              <span class="title">Extra</span>
              <span class="arrow">
                                    <i class="mdi mdi-chevron-right"></i>
                                </span>
            </a>
            <ul class="dropdown-menu">
              <li>
                <a href="${pageContext.request.contextPath}/pages/404.jsp">404</a>
              </li>
              <li>
                <a href="${pageContext.request.contextPath}/pages/404.jsp">404</a>
              </li>
              <li>
                <a href="${pageContext.request.contextPath}/pages/404.jsp">404</a>
              </li>
              <li>
                <a href="${pageContext.request.contextPath}/pages/404.jsp">404</a>
              </li>
              <li>
                <a href="${pageContext.request.contextPath}/pages/404.jsp">404</a>
              </li>
            </ul>
          </li>
        </ul>
      </div>
    </div>
    <!-- Side Nav END -->
    <!-- Content Wrapper START -->
    <div class="if_main">
      <%--iframe--%>
      <iframe width="100%" id="iframe" name="iframe" onload="SetIFrameHeight()"  frameborder="0"
              scrolling="auto" style="height: 100vh;overflow: hidden"
              src="${pageContext.request.contextPath}/pages/index-analytical.jsp"></iframe>
    </div>



  </div>
</div>

<script src="${pageContext.request.contextPath}/static/js/vendor.js"></script>

<script src="${pageContext.request.contextPath}/static/js/app.min.js"></script>

<!-- page js -->
<script src="${pageContext.request.contextPath}/static/js/Chart.min.js"></script>
<script src="${pageContext.request.contextPath}/static/js/jquery.sparkline.min.js"></script>
<script src="${pageContext.request.contextPath}/static/js/default.js"></script>

</body>
</html>