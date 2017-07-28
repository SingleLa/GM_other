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
<jsp:include page="../conf.jsp"></jsp:include>
<div class="page-wrapper">
    <div class="clearfix"> </div>
    <div class="page-container">
        <div class="page-content-wrapper">
            <div class="page-content">

                <div class="row">
                    <div class="col-md-12">
                        <div id = "idShow">
                            <h4 class="block" >
                                <div class="weui-cell">
                                    <div class="weui-cell__hd"><label class="weui-label">游戏ID</label></div>
                                    <div class="weui-cell__bd">
                                        <input class="weui-input" id="playerId" type="number" pattern="[0-9]*"  placeholder="请输入游戏ID">
                                    </div>
                                    <div>
                                    <a href="javascript:void (0);" class="weui-btn weui-btn_mini weui-btn_default" id = "confirmButton" onclick="queryPlayer()">确认</a>
                                    </div>
                                </div>
                            </h4>
                        </div>
                        <div id = "msgShow">
                            <h4>
                                    <div class="weui-cell">
                                        <div class="weui-cell__hd"><label class="weui-label">游戏昵称</label></div>
                                        <div class="weui-cell__bd">
                                            <input class="weui-input" id="playerName"   readonly="readonly">
                                        </div>
                                        <div>
                                            <a href="javascript:void (0);" class="weui-btn weui-btn_mini weui-btn_default" id = "changeButton" onclick="changePlayer()">切换账号</a>
                                        </div>
                                    </div>
                            </h4>
                            <h5>
                                <div class="weui-cell">
                                    <div class="weui-cell__hd"><label class="weui-label">房卡余额</label></div>
                                    <div class="weui-cell__bd">
                                        <input class="weui-input" id="card" readonly="readonly">
                                    </div>
                                </div>

                            </h5>
                            <h5>
                                        <div class="weui-cell">
                                            <div class="weui-cell__hd"><label class="weui-label">游戏ID</label></div>
                                            <div class="weui-cell__bd">
                                                <input class="weui-input" id="playerIdShow" readonly="readonly">
                                            </div>
                                        </div>
                            </h5>
                        </div>
                        <div class="row">
                            <div class="container">
                                <hr  style="dotted:#ff0033" width="100%" SIZE=3 />
                                <div id = "productDiv" >
                                <input type="hidden" id = "code" name = "code" value="${code}">
                                <c:forEach var="product" items="${product}" >

                                    <div class="col-md-2 col-sm-2 col-xs-4" style="padding-left: 4px;padding-right: 4px;">
                                        <div class="color-demo tooltips"  >
                                            <button href="javascript:;" class="weui-btn weui-btn_plain-primary" onclick="add(${product.id})">
                                                <h3> ${product.price}<span style="font-size: small">元</span></h3>
                                                <h6>可获得${product.basecard+product.rewardcard}${sessionScope.unit}${sessionScope.cardName}</h6>
                                            </button>
                                        </div>
                                    </div>
                                </c:forEach>
                                </div>
                                <div id = "msgDiv">
                                    <div>
                                        <div class="container color-view bg-white bg-font-white  uppercase green-sharp">
                                            <div class="row">
                                                <div class="note note-info" style=" border-left-width: 0px;">
                                                    <div class="row">
                                                        <h5 class="block" >提示：请绑定推荐码</h5>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <hr  style="dotted:#ff0033" width="100%" SIZE=3 />
                                <div>
                                    <div class="container color-view bg-white bg-font-white  uppercase green-sharp">

                                        <div class="row">
                                            <div class="note note-info" style=" border-left-width: 0px;">
                                                <div class="row">
                                                    <h5 class="block" >提示：</h5>
                                                </div>
                                                <div class="row">
                                                    <h6>1、购买成功后，请登录游戏核对您的购买信息</h6>
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
        <div class="page-footer-inner">  ${sessionScope.foot}</div>
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
    $(function () {
        var playerId = getCookie("playerId");
        var name = getCookie("name");

        if(playerId == null || playerId == ''){
            intputId()
        }else {
            queryPlayer();
            $("#playerName").val(name)
            $("#playerIdShow").val(playerId)
            $("#card").val(card)
            showMsg()
        }
        showProduct()
    })
    function add(id){
        var playerId = getCookie("playerId");
        var openid = getCookie("openid");
        if(playerId == null || playerId == ''){
            intputId()
            return
        }
        $.ajax({
            "dataType": 'json',
            "type": "POST",
            "url": "pay/CheckPlayerId.do",
            "data": {
                playerId:playerId,

            },
            "success": function(data){
                if(data.success){
                    window.location.href="pay/getPlayerOrder.do?playerId="+playerId+"&productId="+id+"&code=${code}"+"&openid="+openid;
                }else{
                    alert(data.msg)
                }
            }
        });
    }
    function queryPlayer() {
        var playerId
        if(getCookie("playerId") != null && getCookie("playerId") !='')
        { playerId = getCookie("playerId");}
        else{
            playerId = $("#playerId").val();
        }
        if(playerId == null || playerId == ''){
            alert("请输入游戏ID")
            return
        }
        $.ajax({
            "dataType": 'json',
            "type": "POST",
            "url": "pay/CheckPlayerId.do",
            "data": {
                playerId:playerId,

            },
            "success": function(data){
                if(data.success){
                    $("#playerName").val(data.player.name)
                    $("#playerIdShow").val(data.player.id)
                    $("#card").val(data.player.card);
                    showMsg()
                    setCookie("playerId",data.player.id,365*10);
                    setCookie("name",data.player.name,365*10);
                    setCookie("referrerID",data.player.referrerID,365*10);
                    showProduct()

                }else {
                    alert(data.msg);
                    intputId()
                }
            }
        });
    }
    function changePlayer() {
        setCookie("playerId","",0);
        setCookie("name","",0);
        intputId()
        showProduct()
    }
    function intputId() {
        $("#idShow").show();
        $("#msgShow").hide();
    }
    function showMsg() {
        $("#idShow").hide();
        $("#msgShow").show();
    }
    function showProduct() {
        var onOff = getCookie("onOff");
        if(onOff == 0){
            $("#productDiv").show();
            $("#msgDiv").hide();
        }else{
            var referrerID = getCookie("referrerID");
            if(referrerID == null || referrerID == '0'){
                $("#productDiv").hide();
                $("#msgDiv").show();
            }else{
                $("#productDiv").show();
                $("#msgDiv").hide();
            }
        }
    }

</script>
</body>

</html>