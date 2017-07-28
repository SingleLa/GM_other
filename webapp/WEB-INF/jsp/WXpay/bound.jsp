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
        <title>代理绑定</title>
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta content="width=device-width, initial-scale=1" name="viewport" />
        <meta name="viewport" content="width=device-width,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no"/>
        <link href="../assets/global/plugins/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
        <link href="../assets/global/css/components.min.css" rel="stylesheet" id="style_components" type="text/css" />
        <link href="../assets/layouts/layout/css/layout.min.css" rel="stylesheet" type="text/css" />
        <link href="  ../dist/style/weui.min.css" rel="stylesheet" type="text/css" />

        <link rel="shortcut icon" href="favicon.ico" /> </head>
    <style >
        .bg-font-white {
            color: #6db7f7!important;
        }
    </style>



<body class="page-header-fixed page-sidebar-closed-hide-logo page-content-white">

<div class="page-content-wrapper">
    <div class="page-content" >

        <h1 class="page-title">

        </h1>
        <div class="row" >
            <div class="col-md-12">
                <div class="weui-form-preview">
                    <div class="weui-form-preview__hd">
                        <div class="weui-form-preview__item">
                            <label class="weui-form-preview__label">代理昵称</label>
                            <em class="weui-form-preview__value">${name}</em>
                        </div>
                    </div>
                    <div class="weui-form-preview__bd">
                        <div class="weui-form-preview__item">
                            <label class="weui-form-preview__label">手机号码</label>
                            <span class="weui-form-preview__value">${account}</span>
                        </div>
                        <div class="weui-form-preview__item">
                            <label class="weui-form-preview__label">剩余钻石数</label>
                            <span class="weui-form-preview__value">${card}</span>
                        </div>
                        <div class="weui-form-preview__item">
                            <label class="weui-form-preview__label">是否绑定</label>
                            <span class="weui-form-preview__value">
                                <c:if test="${isBond == true}">已绑定</c:if>
                            </span>
                        </div>
                    </div>

                </div>
                <div class="row" style="height:100px">

                </div>
                <div class="row">
                    <div class="col-md-0 col-sm-0 col-xs-12">
                        <div class="color-demo tooltips"  >
                            <a href="javascript:;" class="weui-btn weui-btn_primary" onclick="showModel()" id="boundButton">代理绑定</a>
                        </div>

                    </div>

                </div>
                <div class="row">
                    <div class="col-md-0 col-sm-0 col-xs-12">
                            <a href="javascript:;" class="weui-btn weui-btn_warn"  onclick="deleteBind()" id="deleteBindButton">解除绑定</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>


        <div class="modal fade" id="demo_modal_purple-soft">
            <div class="modal-dialog modal-lg" id ="blockui_sample_1_portlet_body2">
                <div class="modal-content c-square">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                        <h4 class="modal-title bold uppercase font-purple-soft">绑定</h4>
                    </div>
                    <div class="modal-body">
                        <div class="tabbable-line">

                            <div class="tab-content">
                                <div class="tab-pane active" id="purple-soft_tab_1_content">
                                <div style="margin: 10px 0 30px 0">
                                    <div class="form-group form-md-line-input has-success">
                                        <label class="col-md-3 control-label" for="form_control_1">手机号码</label>
                                        <div class="col-md-9">
                                            <div class="input-icon">
                                                <input type="text"  id = "account" class="form-control" placeholder="手机号码" >
                                                <div class="form-control-focus"> </div>
                                                <span class="help-block"></span>

                                            </div>
                                        </div>
                                    </div>
                                    <div class="form-group form-md-line-input has-success">
                                        <label class="col-md-3 control-label" for="form_control_1">密码</label>
                                        <div class="col-md-9">
                                            <div class="input-icon">
                                                <input type="password"  id = "pwd" class="form-control" placeholder="密码" >
                                                <div class="form-control-focus"> </div>
                                                <span class="help-block"></span>

                                            </div>
                                        </div>
                                    </div>

                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-outline dark sbold uppercase"  onclick="bound()">提交</button>
                        <button type="button" class="btn btn-outline dark sbold uppercase" data-dismiss="modal">关闭</button>
                    </div>
                </div>
            </div>
        </div>

    </div>
    <!-- END CONTENT BODY -->
</div>
</div>
<div class="page-footer">
    <div class="page-footer-inner"> 2017 &copy; 豆豆龙江棋牌

    </div>
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

    function showModel() {
        $("#boundButton").attr("class","weui-btn weui-btn_primary weui-btn_loading")
        $('#demo_modal_purple-soft').modal({
            backdrop: 'static',
            keyboard: false
        });
    }
function bound(){

    var code = "${code}"
    var account = $("#account").val();
    var pwd = $("#pwd").val();
    if(account == ''){
        return
    }
    $.ajax({
        "dataType": 'json',
        "type": "POST",
        "url": "pay/bound.do",
        "data": {
            pwd:pwd,
            account:account,
            code:code
        },
        "success": function(data){
            App.unblockUI('#blockui_sample_1_portlet_body2');
            $('#demo_modal_purple-soft').modal("hide");
            $("#boundButton").attr("class","weui-btn weui-btn_primary")
            if(data.success){
                alert("绑定成功")
                setCookie("account",account,365*10);
                location.reload()

            }else{
                alert(data.errMsg);
            }

        },
        beforeSend:function(){
            App.blockUI({
                target: '#blockui_sample_1_portlet_body2',
                animate: false,
                message: '正在绑定中，请耐心等待。。。'
            });
        }
    });
}

function deleteBind(){
    getCookie("account");
    $.ajax({
        "dataType": 'json',
        "type": "POST",
        "url": "pay/deleteBind.do",
        "data": {
        },
        "success": function(data){
            if(data == null){
                alert(解除绑定失败);
            }else {
                    alert(data.msg)
                     location.reload()
            }
        },
        beforeSend:function(){

        }
    });
}

</script>
</body>

</html>