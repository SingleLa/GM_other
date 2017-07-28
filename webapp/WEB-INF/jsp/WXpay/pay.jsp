<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<!DOCTYPE html>
<base href="<%=basePath%>">
<html lang="en">
<head>
    <meta charset="utf-8" />
    <title>游戏充值</title>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta content="width=device-width, initial-scale=1" name="viewport" />
    <meta name="viewport" content="width=device-width,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no"/>
    <link href="../assets/global/plugins/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
    <link href="../assets/global/plugins/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <link href="../assets/global/css/components.min.css" rel="stylesheet" id="style_components" type="text/css" />
    <link href="../assets/layouts/layout/css/layout.min.css" rel="stylesheet" type="text/css" />
    <link href="../dist/style/weui.min.css" rel="stylesheet" type="text/css" />

    <link rel="shortcut icon" href="favicon.ico" /> </head>
    <style >
    .bg-font-white {
        color: #6db7f7!important;
    }
    </style>

<body class="page-header-fixed page-sidebar-closed-hide-logo page-content-white">
<div class="page-wrapper">
    <div class="clearfix"> </div>
    <div class="page-container">
        <div class="page-content-wrapper">
            <div class="page-content">

                <div class="row">
                    <div class="col-md-12">
                        <div class="note note-info" style=" border-left-width: 0px;">
                            <h3 class="block" id ="accountShow"></h3>
                            <h6><p> 代理手机号码（豆豆龙江） </p></h6>
                        </div>
                        <div class="row">
                            <div class="container">
                                <hr  style="dotted:#ff0033" width="100%" SIZE=3 />
                            <input type="hidden" id = "code" name = "code" value="${code}">
                            <c:forEach var="product" items="${product}" >

                                <div class="col-md-2 col-sm-2 col-xs-4" style="padding-left: 4px;padding-right: 4px;">
                                    <div class="color-demo tooltips"  >
                                        <!--<div class="color-view bg-white bg-font-white  uppercase green-sharp">
                                        <h3> ${product.price}<span style="font-size: small">元</span></h3>
                                            <h6>可获得${product.basecard+product.rewardcard}颗钻石</h6>
                                        </div>-->
                                        <button href="javascript:;"  class="weui-btn weui-btn_plain-primary" style="color: #6db7f7; border: 1px solid #6db7f7;" onclick="add(${product.id})">
                                            <h3> ${product.price}<span style="font-size: small">元</span></h3>
                                            <h6>可获得${product.basecard+product.rewardcard}颗钻石</h6>
                                        </button>
                                    </div>
                                </div>
                            </c:forEach>
                                <hr  style="dotted:#ff0033" width="100%" SIZE=3 />
                                <div>
                                    <div class="container color-view bg-white bg-font-white  uppercase green-sharp">

                                        <div class="row">
                                            <div class="note note-info" style=" border-left-width: 0px;">
                                                <div class="row">
                                                    <h5 class="block" >提示：</h5>
                                                </div>
                                                <div class="row">
                                                    <h6>1、购买成功后，请登录代理后台核对您的购买信息</h6>
                                                </div>
                                                <div class="row">
                                                    <h6>2、如果出现购买错误或者购买加卡失败，请联系客服</h6>
                                                </div>


                                                <h6></h6>
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
        </div>
    </div>
    <div class="page-footer">
        <div class="page-footer-inner">
            <div class="page-footer-inner"> 2017 &copy; 豆豆龙江棋牌 </div>
        <div class="scroll-to-top">
            <i class="icon-arrow-up"></i>
        </div>
        </div>
    </div>
<div class="quick-nav-overlay"></div>

<script src="../assets/global/plugins/jquery.min.js" type="text/javascript"></script>
<script src="../assets/global/plugins/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
<script src="../assets/global/plugins/jquery.blockui.min.js" type="text/javascript"></script>
<script src="../assets/global/scripts/app.min.js" type="text/javascript"></script>
<script src="../assets/layouts/layout/scripts/layout.min.js" type="text/javascript"></script>
<script src="../js/cookie.js" type="text/javascript"></script>
<script type="text/javascript">
    $(function(){
        $("#accountShow").html(getCookie("account"));
    })

    function add2(id){
        var code = $("#code").val();
        var account = getCookie("account");
        if(account == ""){
        window.location.href="pay/getBoundUrl.do";
        }else {
            $.ajax({
                "dataType": 'json',
                "type": "POST",
                "url": "pay/getOrder.do",
                "data": {
                    productId:id,
                    account:account
                },
                "success": function(data){
                    if(data == null){
                        alert("系统错误")
                    }else{
                        if(data.res == 0){
                            error(data)
                        }else{
                            $("#account").val(data.agency.account)
                            $("#product").val(data.product.basecard);
                            $("#order").val(data.orderNo)
                            appid = data.appid;
                            timeStamp = data.timeStamp;
                            nonceStr = data.nonceStr;
                            packages = data.packages;
                            paySign = data.paySign;
                            $('#demo_modal_purple-soft').modal({
                                keyboard: true
                            });
                        }
                    }
                }
            });
        }


    }
    function add(id){
        var account = getCookie("account");
        if(account == ""){
            window.location.href="pay/getBoundUrl.do";
        }else
        window.location.href="pay/getOrder.do?account="+account+"&productId="+id;
    }
    function error(data){
        if(data.res == 0){
            var errorCode = data.errCode;
            switch(errorCode){
                case 1001:
                    alert("玩家不存在");
                    break;
                case 1008:
                    alert("不是代理不能买卡");
                    break;
                case 1009:
                    alert("代理账号不存在");
                    break;
                case 1002:
                    alert("商品不存在");
                    break;
                case 1007:
                    alert("系统错误");
                    break;
                default:
                    alert("支付错误");
                    break;
            }
        }
    }




</script>
</body>

</html>