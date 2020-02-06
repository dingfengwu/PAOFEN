<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width,initial-scale=1,minimum-scale=1,maximum-scale=1,user-scalable=no" />
    <title></title>
    <link href="/Public/home/wap/css/mui.min.css" rel="stylesheet"/>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/vant@1.6/lib/index.css">
	<script type="text/javascript" src="/Public/home/common/js/jquery-1.9.1.min.js"></script>
	<script type="text/javascript" src="/Public/home/common/layer/layer.js"></script>
	<script type="text/javascript" src="/Public/home/common/js/index.js" ></script>
	<script type="text/javascript" src="/Public/home/common/js/public.js" ></script>
	<script type="text/javascript" src="/Public/home/common/js/common.js" ></script>
	<style>
		.body{
			line-height: px;
		}
		.mui-table-view-cell:after{
			left: 0px;
			background-color:#292828;
		}
		.mui-table-view:before{
			background-color:#292828;
		}
		.mui-table-view:after{
			background-color:#292828;
		}
	</style>
	<style>
			/*跨webview需要手动指定位置*/
			
			.mui-plus header.mui-bar {
				display: none!important;
			}
			.mui-plus .mui-bar-nav~.mui-content {
				padding:0!important;
			}
			
			.mui-plus .plus{
				display: inline;
			}
			
			.plus{
				display: none;
			}
			
			#topPopover {
				position:fixed;
				top:16px;
				right:6px;
			}
			#topPopover .mui-popover-arrow {
				left:auto;
				right:6px;
			}
			p {
				text-indent:22px;
			}
			span.mui-icon {
				font-size:14px;
				color:#007aff;
				margin-left:-15px;
				padding-right:10px;
			}
			.mui-popover {
				height:300px;
			}
			.mui-content {
				padding:10px;
			}
			.header{
				background:#1f253d;
				top:0;
				box-shadow:0 0px 0px #ccc;
				-webkit-box-shadow:0 0px 0px #ccc;
			}
			.h1{
				font-family:'微软雅黑';
				color: #fff;
			}
			.ul{
				margin-top:20px;
				background:#1a1d2e;
				line-height:2em;
			}
			.p{
				margin-left:10%;
				font-family:'微软雅黑';
				color:aquamarine;
			}
			.p2{
				position:absolute;
				left:35%;
				bottom:12px;
				font-family:'微软雅黑';
				font-size:1em;
				color: #fff;
			}
			.button{
				position:absolute;
				background:linear-gradient(45deg,BLUE,purple);
				color:#fff;
				top:12px;
				font-size:0.7em;
				right:20px;
				line-height:1.5em;
				width:80px;
				border-radius:8px;
				border:0px solid
			}
		</style>
</head>
<body style="background: #1a1d2e;">
	<header class="mui-bar mui-bar-nav header">
			<a class="mui-action-back mui-icon mui-icon-left-nav mui-pull-left" href="javascript:history.go(-1)"></a>
			<h1 class="mui-title h1"><?php if($ewminfo['ewm_class'] ==1){echo '微信';}elseif($ewminfo['ewm_class'] ==2){echo '支付宝';}elseif($ewminfo['ewm_class'] ==3){echo '转银行';}?>二维码</h1>
		</header>
		<br><br>
		<ul class="mui-table-view ul">
			<li class="mui-table-view-cell mui-collapse-content"><p class="p">收款金额</p><p class="p2"><?php echo $ewminfo['ewm_price'];?></p> </li>
			<li class="mui-table-view-cell mui-collapse-content"><p class="p">账号</p><p class="p2"><?php echo $ewminfo['ewm_acc'];?></p> </li>
			<li class="mui-table-view-cell mui-collapse-content"><p class="p">二维码</p></li>
			<button type="button" class="button" id="delid" onclick="delewm(<?php echo $ewminfo['id'];?>)">删除</button>
		</ul>
		<div class="mui-content-padded">
			<p>
			<a href="javascript:void(0)" id="showewm" class="mui-btn mui-btn-primary mui-btn-block mui-btn-outlined" style="padding: 5px 20px;">查看</a>
			</p>
		</div>
		<div id="middlePopover" class="mui-popover" style="display:none; margin: 0 12%;opacity:1;background:none;">
				  <img src='<?php echo $ewminfo['ewm_url'];?>' style="width:100%;"/>
		</div>		
</body>
<script type="text/javascript">
	$("#showewm").click(function(){
		$("#middlePopover").css('display','block');
	});

</script>
<script type="text/javascript">
	function delewm(id){
		var id = id;
		$("#delid").attr('disabled',true)
		$.post("<?php echo U('User/delewmup');?>",
		{'id':id},
		function(data){
			if(data.code==1){
				layer.msg(data.msg);  //,data.url);
				setTimeout(function (args) {
					window.location.href = "<?php echo U('User/erweima');?>";
				}, 3000); 
			}else{
				layer.msg(data.msg);  //,data.url);
			}
		});
	}

</script>

</html>