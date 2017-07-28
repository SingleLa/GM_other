<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<!DOCTYPE html>


<!--[if IE 8]> <html lang="en" class="ie8 no-js"> <![endif]-->
<!--[if IE 9]> <html lang="en" class="ie9 no-js"> <![endif]-->
<!--[if !IE]><!-->
<html lang="en">

<base href="<%=basePath%>">
<head>
    <meta charset="utf-8" />
    <title>支付结果</title>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta content="width=device-width, initial-scale=1" name="viewport" />
    <meta name="viewport" content="width=device-width,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no"/>
    <link href="../assets/global/plugins/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <link href="../assets/global/css/components.min.css" rel="stylesheet" id="style_components" type="text/css" />
    <link href="../assets/pages/css/profile.min.css" rel="stylesheet" type="text/css" />
    <!-- END THEME LAYOUT STYLES -->
    <link rel="shortcut icon" href="favicon.ico" /> </head>
<!-- END HEAD -->

<body class="page-container-bg-solid">
<div class="page-wrapper">

    <div class="page-wrapper-row full-height">

        <!-- BEGIN CONTAINER -->
        <div class="page-container">
            <!-- BEGIN CONTENT -->
            <div class="page-content-wrapper">

                <div class="page-content">
                    <div class="container">

                        <div class="page-content-inner">
                            <div class="row">
                                <div >

                                    <div class="portlet light profile-sidebar-portlet ">
                                        <!-- SIDEBAR USERPIC -->
                                        <div class="profile-userpic">
                                            <img src="${bind.headimgurl} " class="img-responsive" alt=""> </div>
                                        <!-- END SIDEBAR USERPIC -->
                                        <!-- SIDEBAR USER TITLE -->
                                        <div class="profile-usertitle">
                                            <div class="profile-usertitle-name"> ${bind.nickname} </div>
                                            <div class="profile-usertitle-job">代理ID: ${bind.account} </div>
                                        </div>

                                        <div class="profile-usermenu" style="padding-left: 10%;">
                                            <ul class="nav">
                                                <li>
                                                    <a href="javascript:void(0)">
                                                        商品名称： ${order.body} </a>
                                                </li>
                                                <li>
                                                    <a href="javascript:void(0)">
                                                        订  单  号： ${order.outTradeNo} </a>
                                                </li>
                                                <li>
                                                    <a href="javascript:void(0)">
                                                        加卡结果：
                                                        <c:if test="${order.isaddcard == 1}">加卡成功</c:if>
                                                        <c:if test="${order.isaddcard == 0}">加卡失败，请保存订单号，联系微信：</c:if>

                                                    </a>
                                                </li>
                                                <li>
                                                    <a href="javascript:void(0)">
                                                    </a>
                                                    <div class="form-actions">

                                                    </div>
                                                </li>
                                            </ul>

                                        </div>
                                        <!-- END MENU -->

                                    </div>

                                </div>

                                <div class="row">
                                    <div class="col-md-offset-2 col-md-7" style="padding-left: 43%;">
                                        <a type="button" class="btn green" href = "pay/getPayUrl.do">返回</a>

                                    </div>
                                </div>
                            </div>
                        </div>

                    </div>
                </div>

            </div>

        </div>

    </div>

</div>

<script src="../assets/global/plugins/jquery.min.js" type="text/javascript"></script>
<script src="../assets/global/plugins/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
<script src="../assets/global/plugins/js.cookie.min.js" type="text/javascript"></script>

</body>

</html>