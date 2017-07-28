
<!DOCTYPE html>
<html lang="zh-cmn-Hans"><head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width,initial-scale=1,user-scalable=0">
    <title>支付订单预览</title>
    <link href="../../dist/style/weui.min.css" rel="stylesheet" type="text/css" />
    <link rel="stylesheet" href="../../dist/example/example.css">
</head>
<body ontouchstart="">
<jsp:include page="../conf.jsp"></jsp:include>

    <div class="container" id="container">
<div class="page preview js_show">
    <div class="page__hd">
        <h1 class="page__title">支付</h1>
        <p class="page__desc">支付订单预览</p>
    </div>
    <div class="page__bd page__bd page__bd_spacing">
        
        
        <div class="weui-form-preview">
            <div class="weui-form-preview__hd">
                <label class="weui-form-preview__label">付款金额</label>
                <em class="weui-form-preview__value">¥${product.price}</em>
            </div>
            <div class="weui-form-preview__bd">
                <div class="weui-form-preview__item">
                    <label class="weui-form-preview__label">游戏ID</label>
                    <span class="weui-form-preview__value">${playerId}</span>
                </div>
                <div class="weui-form-preview__item">
                    <label class="weui-form-preview__label">账户余额</label>
                    <span class="weui-form-preview__value">${result.player.card}</span>
                </div>
                <div class="weui-form-preview__item">
                    <label class="weui-form-preview__label">支付订单号</label>
                    <span class="weui-form-preview__value">${result.orderNo}</span>
                </div>
				<div class="weui-form-preview__item">
                    <label class="weui-form-preview__label">可获得${sessionScope.cardName}</label>
                    <span class="weui-form-preview__value">${product.basecard+product.rewardcard}</span>
                </div>
                <div class="weui-form-preview__item">
                    <label class="weui-form-preview__label">商品详情</label>
                    <span class="weui-form-preview__value">${sessionScope.productMsg}</span>
                </div>
                <div class="weui-form-preview__item">
                    <label class="weui-form-preview__label">游戏类型</label>
                    <span class="weui-form-preview__value">${sessionScope.gameType}</span>
                </div>
                <div class="weui-form-preview__item">
                    <label class="weui-form-preview__label">备注</label>
                    <span class="weui-form-preview__value">${sessionScope.other}</span>
                </div>

            </div>
            <div class="weui-form-preview__ft">
                <a class="weui-form-preview__btn weui-form-preview__btn_default"  href="${sessionScope.url}" >返回</a>
                <button type="submit" class="weui-form-preview__btn weui-form-preview__btn_primary" onclick="pay()">确认支付</button>
            </div>
        </div>
    </div>

</div></div>
    <script src="../assets/global/plugins/jquery.min.js" type="text/javascript"></script>
    <script src="../js/cookie.js" type="text/javascript"></script>
    <script type="text/javascript">
        $(function(){
            if("${res}" == -1){
                window.location.href="${sessionScope.url}";
            }
            setCookie("openid","${openid}",365*10);
        })
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
                            window.location.href="playerSuccess.do?playerId=${playerId}"
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


</body></html>