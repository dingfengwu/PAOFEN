<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width,initial-scale=1,minimum-scale=1,maximum-scale=1,user-scalable=no" />
    <title></title>
	<link href="/Public/home/wap/css/mui.min.css" rel="stylesheet">
	<script type="text/javascript" src="/Public/home/common/js/jquery-1.9.1.min.js"></script>
	<script type="text/javascript" src="/Public/home/common/layer/layer.js"></script>
	<script type="text/javascript" src="/Public/home/common/js/index.js" ></script>
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
		.mui-input-group:before{
			height:0px
		}
		.mui-input-group:after{
			height: 0px;
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
		.div{
			background:#1f253d;
			height:160px;
			width:175px;
			top:80px;
			margin:auto;
			left:0px;
			right:0px;
			border-radius:10px;
			box-shadow:2px 0px 20px 0px #007AFF;
		}
		.img{
			width:120px;
			margin-left:26px;
			margin-top:20px;
		}
		.ul{
			margin-top:30%;
			background:#1a1d2e;
			line-height:2em;
		}
		.li{
			margin-left:10%;
			font-family:'微软雅黑';
			color:aquamarine;
		}
		.p{
			position:absolute;
			right:35px;
			bottom:12px;
			font-family:'微软雅黑';
			color:#fff;
		}
	</style>
</head>
<body style="background:#1a1d2e;">
	<header class="mui-bar mui-bar-nav header">
			<a class="mui-action-back mui-icon mui-icon-left-nav mui-pull-left" href="javascript:history.go(-1)"></a>
			<h1 class="mui-title h1">收单详情</h1>
	</header>	
		<div class="mui-card-content div">
			<img src="<?php echo ($ewmlist["ewm_url"]); ?>" class="img"/>
		</div>
		<ul class="mui-table-view ul">
			<li class="mui-table-view-cell mui-collapse-content"><p class="li">订单号</p><p class="p"><?php echo ($olist["ordernum"]); ?></p> </li>
			<li class="mui-table-view-cell mui-collapse-content"><p class="li">收款类型</p><p class="p"><?php echo getclass($olist['class']);?></p> </li>
			<li class="mui-table-view-cell mui-collapse-content"><p class="li">收款金额</p><p class="p"><?php echo ($olist["price"]); ?></p> </li>
			<li class="mui-table-view-cell mui-collapse-content"><p class="li">提交时间</p><p class="p"><?php echo date("Y-m-d H:i",$olist['addtime']);?></p> </li>
			<li class="mui-table-view-cell mui-collapse-content"><p class="li">更新时间</p><p class="p"><?php echo date("Y-m-d H:i",$olist['pipeitime']);?></p> </li>
			<li class="mui-table-view-cell mui-collapse-content"><p class="li">状态</p><p class="p"><?php echo getstatus($olist['status']);?></p> </li>				
		</ul>	
</body>
</html>