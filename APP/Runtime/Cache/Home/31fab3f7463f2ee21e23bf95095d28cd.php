<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width,initial-scale=1,minimum-scale=1,maximum-scale=1,user-scalable=no" />
    <title></title>
    <link href="/Public/home/wap/css/mui.min.css" rel="stylesheet"/>
	<link href="/Public/home/wap/css/app.css" rel="stylesheet">
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
		.header{
			background:#1f253d;
			top:0;
			box-shadow:0 0px 0px #ccc;
			-webkit-box-shadow:0 0px 0px #ccc;
		}
		.headh1{
			font-family:'微软雅黑';
			color: #fff;
		}
		.fangshi{
			margin-left:10%;
			font-family:'微软雅黑';
			color:#fff;
		}
		.ulfangshi{
			margin-top:15%;
			/*background:#1a1d2e;*/
			line-height:2em;
	</style>
</head>
<!--style="background:#1a1d2e;"-->
<body>
	<header class="mui-bar mui-bar-nav header">
			<a class="mui-action-back mui-icon mui-icon-left-nav mui-pull-left"  href="javascript:history.go(-1)"></a>
			<h1 class="mui-title headh1">充值方式</h1>
	</header>	
		<ul class="mui-table-view ulfangshi">
			<li class="mui-table-view-cell mui-collapse-content">
				<!--<a href="zfbcz.html" class="mui-navigate-right">-->
				<a href="<?php echo U('Recharge/zfbcz');?>" class="mui-navigate-right">
					<p class="fangshi">支付宝充值</p>
				</a>
			</li>
			<li class="mui-table-view-cell mui-collapse-content">
		       <!--<a href="wxcz.html" class="mui-navigate-right">-->
				<a href="<?php echo U('Recharge/wxcz');?>" class="mui-navigate-right">
		        	<p class="fangshi">微信充值</p>
		        </a>
		    </li>  
			<li class="mui-table-view-cell mui-collapse-content">
				<!--<a href="yhkcz.html" class="mui-navigate-right">-->
				<a href="<?php echo U('Recharge/yhkcz');?>" class="mui-navigate-right">
					<p class="fangshi">银行卡充值</p>
				</a>
			</li>
			<li class="mui-table-view-cell mui-collapse-content">
			
				<style>
				#ib_iconDiv{display:none}
				</style>
				<div style="display:none">
					<script type="text/javascript" src="http://c.ibangkf.com/i/c-mdy888a.js"></script>
				</div>
				<a href="javascript:;" class="mui-navigate-right" style=" margin-left: 5%;color:#fff; font-size: 0.9em; bottom: 4px; " onClick="ib_wopen();">
					人工客服充值
				</a>
			</li>
		</ul>
			
</body>
</html>