<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<base href="<%=basePath%>">
<html lang="en">

<head>
    <meta charset="utf-8" />
    <title>游戏订单</title>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta content="width=device-width, initial-scale=1" name="viewport" />
    <meta name="viewport" content="width=device-width,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no"/>
    <!-- BEGIN GLOBAL MANDATORY STYLES -->

    <link href="../assets/global/plugins/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
    <link href="../assets/global/plugins/simple-line-icons/simple-line-icons.min.css" rel="stylesheet" type="text/css" />
    <link href="../assets/global/plugins/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <link href="../assets/global/plugins/bootstrap-switch/css/bootstrap-switch.min.css" rel="stylesheet" type="text/css" />
    <link href="../assets/global/css/components.min.css" rel="stylesheet" id="style_components" type="text/css" />
    <link href="../assets/global/css/plugins.min.css" rel="stylesheet" type="text/css" />
    <link href="../assets/layouts/layout3/css/layout.min.css" rel="stylesheet" type="text/css" />

    <link rel="shortcut icon" href="favicon.ico" /> </head>
<body class="page-container-bg-solid">
<div >

    <div class="page-wrapper-row full-height">
        <div class="page-wrapper-middle">
            <!-- BEGIN CONTAINER -->
            <div class="page-container">
                <!-- BEGIN CONTENT -->
                <div class="page-content-wrapper">
                    <!-- BEGIN CONTENT BODY -->
                    <!-- BEGIN PAGE HEAD-->

                    <div class="page-content" >
                        <div class="container">

                            <div class="page-content-inner">
                                <div class="row">

                                        <div class="portlet light portlet-fit portlet-form ">

                                            <div class="portlet-body">
                                                <form action="#" class="form-horizontal">
                                                    <div class="form-body">

                                                        <div class="form-group form-md-line-input has-success">
                                                            <label class="col-md-3 control-label" for="form_control_1">代理手机号码</label>
                                                            <div class="col-md-9">
                                                                <input type="text" class="form-control" value="${result.agency.account}" placeholder="" disabled>
                                                                <div class="form-control-focus"> </div>
                                                                <span class="help-block">玩家ID.</span>
                                                            </div>
                                                        </div>
                                                        <div class="form-group form-md-line-input has-success">
                                                            <label class="col-md-3 control-label" for="form_control_1">支付订单号</label>
                                                            <div class="col-md-9">
                                                                <input type="text" class="form-control" value="${result.orderNo}" placeholder="" disabled>
                                                                <div class="form-control-focus"> </div>
                                                                <span class="help-block">玩家ID.</span>
                                                            </div>
                                                        </div>


                                                        <div class="form-group form-md-line-input has-success">
                                                            <label class="col-md-3 control-label" for="form_control_1">支付金额</label>
                                                            <div class="col-md-9">
                                                                <div class="input-icon right">
                                                                    <input type="text" class="form-control" placeholder="" value="${product.price}元" disabled>
                                                                    <div class="form-control-focus"> </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="form-group form-md-line-input has-success">
                                                            <label class="col-md-3 control-label" for="form_control_1">购买卡数</label>
                                                            <div class="col-md-9">
                                                                <div class="input-icon right">
                                                                    <input type="text" class="form-control" placeholder="" value="${product.basecard+product.rewardcard}" disabled>
                                                                    <div class="form-control-focus"> </div>
                                                                </div>
                                                            </div>
                                                        </div>

                                                    </div>
                                                    <div class="form-actions">
                                                        <div class="row">
                                                            <input type="button" class="btn green-sharp btn-outline  btn-block sbold uppercase" onclick="pay()" value="购买">
                                                        </div>
                                                    </div>
                                                </form>
                                                <!-- END FORM-->
                                            </div>
                                        </div>
                                        <!-- END VALIDATION STATES-->


                                </div>

                            </div>
                            <!-- END PAGE CONTENT INNER -->
                        </div>
                    </div>
                    <!-- END PAGE CONTENT BODY -->
                    <!-- END CONTENT BODY -->
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

<script src="../assets/global/plugins/jquery.min.js" type="text/javascript"></script>
<script src="../assets/global/plugins/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
<script src="../assets/global/plugins/js.cookie.min.js" type="text/javascript"></script>

<script src="../assets/global/plugins/jquery.blockui.min.js" type="text/javascript"></script>
<script src="../assets/global/plugins/bootstrap-switch/js/bootstrap-switch.min.js" type="text/javascript"></script>
<script type="text/javascript">
    function onBridgeReady(){
        WeixinJSBridge.invoke(
                'getBrandWCPayRequest', {
                    "appId" : "${appId}",     //公众号名称，由商户传入
                    "timeStamp":"${timeStamp}",         //时间戳，自1970年以来的秒数
                    "nonceStr" : "${nonceStr}", //随机串
                    "package" : "${result['package']}",
                    "signType" : "MD5",         //微信签名方式:
                    "paySign" : "${paySign}" //微信签名
                },
                function(res){
                    // 使用以上方式判断前端返回,微信团队郑重提示：res.err_msg将在用户支付成功后返
                    if(res.err_msg=="get_brand_wcpay_request:fail"){
                        alert("支付失败")
                    }else if(res.err_msg=="get_brand_wcpay_request:ok"){
                        //写支付流水
                        window.location.href="pay/success.do?orderNo=${result.orderNo}"
                    }
                }
        );
    }
    function pay(){
        if (typeof WeixinJSBridge == "undefined"){
            if( document.addEventListener ){
                document.addEventListener('WeixinJSBridgeReady', onBridgeReady, false);
            }else if (document.attachEvent){
                document.attachEvent('WeixinJSBridgeReady', onBridgeReady);
                document.attachEvent('onWeixinJSBridgeReady', onBridgeReady);
            }
        }else{
            onBridgeReady();
        }
    }


</script>
</body>

</html>