
<!DOCTYPE html>
<html lang="zh-cmn-Hans"><head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width,initial-scale=1,user-scalable=0">
    <title>购买成功</title>
    <link href="../../dist/style/weui.min.css" rel="stylesheet" type="text/css" />
    <link rel="stylesheet" href="../../dist/example/example.css">
</head>
<body ontouchstart="">
<jsp:include page="../conf.jsp"></jsp:include>
    <div class="weui-toptips weui-toptips_warn js_tooltips"></div>

    <div class="container" id="container">
<div class="page msg_success js_show">
    <div class="weui-msg">
        <div class="weui-msg__icon-area"><i class="weui-icon-success weui-icon_msg"></i></div>
        <div class="weui-msg__text-area">
            <h2 class="weui-msg__title">购买成功</h2>
            <p class="weui-msg__desc">购买成功，请登录游戏核对您的购买信息！如果出现购买错误或者购买加卡失败，请联系客服。<a href="javascript:void(0);"></a></p>
        </div>
        <div class="weui-msg__opr-area">
            <p class="weui-btn-area">
                <a href="${sessionScope.url}" class="weui-btn weui-btn_primary">返回</a>
            </p>
        </div>
        <div class="weui-msg__extra-area">
            <div class="weui-footer">
                <p class="weui-footer__links">
                    <a href="javascript:void(0);" class="weui-footer__link"></a>
                </p>
                <p cla ss="weui-footer__text"> ${sessionScope.foot} </p>
            </div>
        </div>
    </div>
</div></div>

    

    
    
    

    


    

    

    
    
    
    
    

    

    
    

    
    

    

    
    
    
    
    

    

    
    
    
    

    <script src="./zepto.min.js"></script>
    <script src="./example.js"></script>


</body></html>