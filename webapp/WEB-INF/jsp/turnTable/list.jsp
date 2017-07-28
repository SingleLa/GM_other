<%@ page language="java" import="java.util.*,java.util.ResourceBundle" pageEncoding="utf-8"%>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>

<html lang="en">
    <meta name='apple-itunes-app' content='app-id=1191701886'>

    <head>
    	<base href="<%=basePath%>">
       <meta charset="utf-8" />
        <title></title>
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta content="width=device-width, initial-scale=1" name="viewport" />       
        <meta content="" name="author" />  
        <link href="../../assets/global/plugins/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
        <link href="../../assets/global/plugins/simple-line-icons/simple-line-icons.min.css" rel="stylesheet" type="text/css" />
        <link href="../../assets/global/plugins/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
        <link href="../../assets/global/plugins/bootstrap-switch/css/bootstrap-switch.min.css" rel="stylesheet" type="text/css" />
        <link href="../../assets/global/plugins/datatables/datatables.min.css" rel="stylesheet" type="text/css" />
        <link href="../../assets/global/plugins/datatables/plugins/bootstrap/datatables.bootstrap.css" rel="stylesheet" type="text/css" />
        <link href="../../assets/global/css/components.min.css" rel="stylesheet" id="style_components" type="text/css" />
        <link href="../../assets/global/css/plugins.min.css" rel="stylesheet" type="text/css" />
        <link href="../../assets/charisma.js" rel="stylesheet" type="text/css" />
    </head>
    <!-- END HEAD -->
    <body class="page-container-bg-solid">
        <div class="page-wrapper">
            <div class="page-wrapper-row">
                <div class="page-wrapper-top">
                   
                    <div class="page-header">
                       
                        <div class="page-header-top">
                            <div class="container">
                               
                                <div class="page-logo">
                                    <a href="">
                                       <%-- <img src="../../assets/layouts/layout/img/logo.png" alt="logo" class="logo-default">--%>
                                    </a>
                                </div>                               
                                </div>
                                
                            </div>
                        </div>                     
                        </div>
                        
                    </div>                            
                </div>
            </div>
            
                <div class="page-wrapper-middle">
                    <!-- BEGIN CONTAINER -->
                    <div class="page-container">
                        <!-- BEGIN CONTENT -->
                        <div class="page-content-wrapper">                          
                            <div class="page-content">

                                   
                                    
                                    <div class="page-content-inner">
                                        <div class="row">
                                            <div class="col-md-12">
                                                <!--                            BEGIN SAMPLE FORM PORTLET -->
                                                <div class="portlet box default">
                                                    <div class="portlet-body form">
                                                        <form class="form-horizontal" role="form">
                                                            <div class="form-body">

                                                                    <div class="form-group">
                                                                        <label class="control-label col-md-2" style="padding: 12px;">抽奖时间：</label>

                                                                        <div class="col-md-2" style="padding: 7px;">
                                                                            <div class="input-group date-picker input-daterange" data-date="10/11/2012" data-date-format="yyyy-mm-dd">
                                                                                <input type="text" class="form-control" name="from" id="startDrawtime">
                                                                                <span class="input-group-addon">  到 </span>
                                                                                <input type="text" class="form-control" name="to" id="endDrawtime">
                                                                            </div>
                                                                        </div>

                                                                        <label class="control-label col-md-1" style="padding: 12px;">领奖时间：</label>

                                                                        <div class="col-md-2" style="padding: 7px;">
                                                                            <div class="input-group date-picker input-daterange" data-date="10/11/2012" data-date-format="yyyy-mm-dd">
                                                                                <input type="text" class="form-control" name="from" id="startReceivetime">
                                                                                <span class="input-group-addon">  到 </span>
                                                                                <input type="text" class="form-control" name="to" id="endReceivetime">
                                                                            </div>
                                                                        </div>
                                                                    </div>



                                                                <div class="form-group">
                                                                    <label class="control-label col-md-2"
                                                                           style="padding: 12px;">奖品：</label>

                                                                    <div class="col-md-2" style="padding: 7px;">
                                                                        <select id="awardid" class="form-control">
                                                                            <option value="">全部</option>
                                                                            <option value="1">金豆</option>
                                                                            <option value="2">房卡</option>
                                                                            <option value="3">红包</option>
                                                                        </select>
                                                                    </div>
                                                                    <label class="control-label col-md-1"
                                                                           style="padding: 12px;">是否完成任务：</label>

                                                                    <div class="col-md-1" style="padding: 7px;">
                                                                        <select id="taskdone" class="form-control">
                                                                            <option value="">全部</option>
                                                                            <option value="1">是</option>
                                                                            <option value="0">否</option>
                                                                        </select>
                                                                    </div>
                                                                    <label class="control-label col-md-1"
                                                                           style="padding: 12px;">是否领奖：</label>

                                                                    <div class="col-md-1" style="padding: 7px;">
                                                                        <select id="receive" class="form-control">
                                                                            <option value="">全部</option>
                                                                            <option value="1">是</option>
                                                                            <option value="0">否</option>
                                                                        </select>
                                                                    </div>
                                                                </div>
                                                                <div class="form-group">
                                                                    <label class="control-label col-md-2"
                                                                           style="padding: 12px;">红包码：</label>

                                                                    <div class="col-md-1" style="padding: 7px;">
                                                                        <input id="id" class="form-control">  </input>
                                                                    </div>
                                                                    <div class="col-md-1" style="padding: 7px;">

                                                                    </div>
                                                                    <label class="control-label col-md-1"
                                                                           style="padding: 12px;">玩家id：</label>

                                                                    <div class="col-md-1" style="padding: 7px;">
                                                                        <input id="playerid" class="form-control">  </input>
                                                                    </div>
                                                                    <div class="col-md-5"></div>
                                                                    <div class="col-md-4" style="padding: 7px;">
                                                                        <button id="query" type="button" class="btn default " onclick="searchTable()">
                                                                            查询 <i class="fa fa-search"></i>
                                                                        </button>
                                                                    </div>
                                                                </div>

                                                            </div>

                                                        </form>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="row">
                                           
                                            <div class="col-md-12">
                                              
                                                <div class="portlet light ">
                                                    <%--<jsp:include page="../../footer.jsp"></jsp:include>--%>
                                                    <div class="portlet-body">
                                                        <table class="table table-striped table-bordered bootstrap-datatable datatable" id="ex">
                                                            <thead>
                                                                <tr>
                                                                    <th>红包码</th>
                                                                    <th >玩家I</th>
                                                                    <th >奖品id</th>
                                                                    <th >奖品数量</th>
                                                                    <th >是否完成任务</th>
                                                                    <th>是否领取奖品</th>
                                                                    <th>抽奖时间</th>
                                                                    <th>领奖时间</th>
                                                                    <th>操作</th>
                                                                </tr>
                                                            </thead>


                                                        </table>
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
           
                
            </div>
           
        </div>
        <!-- BEGIN QUICK NAV -->
        
        <div class="quick-nav-overlay"></div>
		<script src="../../assets/global/plugins/jquery.min.js" type="text/javascript"></script>
        <script src="../../assets/global/plugins/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
        <script src="../../assets/global/plugins/js.cookie.min.js" type="text/javascript"></script>
        <script src="../../assets/global/plugins/jquery-slimscroll/jquery.slimscroll.min.js" type="text/javascript"></script>
        <script src="../../assets/global/plugins/jquery.blockui.min.js" type="text/javascript"></script>
        <script src="../../assets/global/plugins/bootstrap-switch/js/bootstrap-switch.min.js" type="text/javascript"></script>
        <script src="../../assets/global/scripts/datatable.js" type="text/javascript"></script>
        <script src="../../assets/global/plugins/datatables/datatables.min.js" type="text/javascript"></script>
        <script src="../../assets/global/plugins/datatables/plugins/bootstrap/datatables.bootstrap.js" type="text/javascript"></script>
        <script src="../../assets/global/scripts/app.min.js" type="text/javascript"></script>    
        <script src="../../assets/layouts/global/scripts/quick-sidebar.min.js" type="text/javascript"></script>
        <script src="../../assets/global/plugins/bootstrap-datepicker/js/bootstrap-datepicker.min.js" type="text/javascript"></script>
        <script src="../assets/global/plugins/bootstrap-datepicker/locales/bootstrap-datepicker.zh-CN.min.js"
                type="text/javascript"></script>
    <script src="http://res.wx.qq.com/open/js/jweixin-1.0.0.js"></script>
<script type="text/javascript">
    $(function () {
        ComponentsDateTimePickers.init();
        var data = getDate();
        loadTable(data)
    })
    function searchTable() {
        var data = getDate();
        $('#ex').dataTable().fnDestroy();
        loadTable(data)
    }
    function getDate() {
        var id = $("#id").val();
        var playerid = $("#playerid").val();
        var awardid = $("#awardid").val();
        var taskdone = $("#taskdone").val();
        var receive = $("#receive").val();
        var startDrawtime = $("#startDrawtime").val();
        var endDrawtime = $("#endDrawtime").val();
        var startReceivetime = $("#startReceivetime").val();
        var endReceivetime = $("#endReceivetime").val();
        var data = {
            id:id,
            playerid:playerid,
            awardid:awardid,

            taskdone:taskdone,
            receive:receive,

            startDrawtime:startDrawtime,
            endDrawtime:endDrawtime,
            startReceivetime:startReceivetime,
            endReceivetime:endReceivetime,
        };
        return data;
    }
    function loadTable(data) {
        $('#ex').DataTable({
            "processing" : true,
            "serverSide" : true,
            "bAutoWidth": true, //自适应宽度
            "sPaginationType" : "full_numbers",
            "scrollY": '500px', //支持垂直滚动
            "scrollCollapse": true,
            //"bFilter" : false, //过滤功能
            "oLanguage": {
                "sLengthMenu": "每页显示 _MENU_ 条记录",
                "sZeroRecords": "抱歉， 没有找到",
                "sInfo": "从 _START_ 到 _END_ /共 _TOTAL_ 条数据",
                "sInfoEmpty": "没有数据",
                "sInfoFiltered": "(从 _MAX_ 条数据中检索)",
                "sZeroRecords": "没有检索到数据",
                "sSearch": "红包码:",
                "oPaginate": {
                    "sFirst": "首页",
                    "sPrevious": "前一页",
                    "sNext": "后一页",
                    "sLast": "尾页"
                }
            },

            //第si列倒叙排列
            "aaSorting": [
                [ 6, "desc" ]
            ],
            "paginationType":"full_numbers",
            "ajax": {
                "url": "turnTable.do",
                "data":  data
            },
            "columns": [
                {"data": "id"},
                {"data": "playerid"},
                {"data": "awardid"},
                {"data": "awardnum"},
                {"data": "taskdone"},
                {"data": "receive"},
                {"data": "drawtime"},
                {"data": "receivetime"},
                {"data": "receivetime"},

            ],
            "createdRow": function ( row, data, index ) {
                var taskdone;
                var receive;
                var award;
                if(data.taskdone == 0){
                    taskdone = "否"
                }else{
                    taskdone = "是"
                }
                if(data.receive == 0){
                    receive = "否"
                }else{
                    receive = "是"
                }
                if(data.awardid == 1){
                    award = "金豆"
                }else if(data.awardid == 2){
                    award = "房卡"
                }else {
                    award = "红包"
                }
                $('td', row).eq(2).html(award);
                $('td', row).eq(4).html(taskdone);
                $('td', row).eq(5).html(receive);
                $('td', row).eq(6).html(getLocalTime(data.drawtime));
                $('td', row).eq(7).html(getLocalTime(data.receivetime));
                var opera = ""
                if(data.receive == 1){
                    opera = ""+ "已领奖"+"</a>";
                }else{
                    opera = "<a class='btn btn-info' href='JavaScript:void(0)' onclick='updateReceive(\""+data.id+"\")'>"+ "领奖"+"</a>";
                }


               $('td', row).eq(8).html(
                       opera
                );
            }

        });
    }
    function getLocalTime(nS) {
        //shijianchuo是整数，否则要parseInt转换
        if(nS == null){
            return null;
        }
        var time = new Date(nS);
        var y = time.getFullYear();
        var m = time.getMonth()+1;
        var d = time.getDate();
        var h = time.getHours();
        var mm = time.getMinutes();
        var s = time.getSeconds();
        return y+'-'+add0(m)+'-'+add0(d)+' '+add0(h)+':'+add0(mm)+':'+add0(s);
    }
    function add0(m){return m<10?'0'+m:m }

    function  updateReceive(id) {
        $.ajax({
            url: "updateReceive.do",
            type: "post",
            data: {
                id:id
            },
            cache: false,
            dataType: 'json',
            contentType: "application/x-www-form-urlencoded;charset=utf-8",
            success: function (data) {
                if (data.success) {
                    alert(data.msg);
                    searchTable()
                } else {
                    alert(data.msg);

                }
            }
        })
    }
    var ComponentsDateTimePickers = function ()
    {
        var handleDatePickers = function ()
        {
            if (jQuery().datepicker)
            {
                $('.date-picker').datepicker({
                    orientation: "auto",
                    autoclose: true,
                    language: 'zh-CN',
                });
            }
        }
        return {
            init: function ()
            {
                handleDatePickers();
            }
        };
    }();

</script>
    </body>

</html>