<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE html>
<!-- saved from url=(0048)http://103.200.29.54/index.html#tabbar-with-chat -->
<html><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    
    <meta name="viewport" content="width=device-width,initial-scale=1,minimum-scale=1,maximum-scale=1,user-scalable=no">
    <title></title>

    <link href="/Public/home/wap/css/mui.min.css" rel="stylesheet">
	<link href="/Public/home/wap/css/app.css" rel="stylesheet">
	<link href="/Public/home/wap/css/qdgame.css" rel="stylesheet">
	<script type="text/javascript" src="/Public/home/common/js/jquery-1.9.1.min.js"></script>
	<script type="text/javascript" src="/Public/home/common/layer/layer.js"></script>
	<script type="text/javascript" src="/Public/home/common/js/index.js" ></script>
	<style>
		
		
	</style>
</head>
<!--//style="background:#1a1d2e;"-->
<body  class="mui-ios mui-ios-11 mui-ios-11-0">

	<div id="tabbar-with-chat" class="mui-control-content mui-active">
		<header class="mui-bar mui-bar-nav header">
				<h1 class="mui-title h1">抢单</h1>
		</header>
		<!--<div class="mui-card-content qd">
			<span class="a">最大抢单金额 : </span>
			<span class="b"><?php echo ($max_pipeinone); ?></span>
			<span class="c">当前抢单难数 : </span>
			<span class="d"><?php echo ($qd_nd); ?></span>
			<span class="e">开启时段整差 : </span>
			<span class="f"><?php foreach($tarr as $v){echo $v.',';}?>时 </span>
			<button type="button" class="but">佣金加成<?php echo $qd_yjjc*10;?>%</button>
		</div>-->
		<span class="span">【请选择收款类型】</span>
		<ul class="mui-table-view mui-table-view-radio ullei">
			<li class="mui-table-view-cell mui-selected "  id="checkedclass_wx">
				<a class="mui-navigate-right">
					微信
				</a>
			</li>
			<li class="mui-table-view-cell"  id="checkedclass_zfb">
				<a class="mui-navigate-right">
					支付宝
				</a>
			</li>
			<!--<li class="mui-table-view-cell"  id="checkedclass_bank">
				<a class="mui-navigate-right">
					支付宝转银行卡
				</a>
			</li>-->
		</ul>
		<input type="hidden" name="qdclass" id="qdclass" value="1">
		<div class="mui-button-row">
			<button type="button" class="mui-btn mui-btn-danger pipei" id="pipeinnow" onclick="start_qd()">开始自动抢单</button>
		</div>
		<!--<div class="mui-button-row">
			<button type="button" class="mui-btn mui-btn-danger zidong" id="autopipei" onclick="start_auto()">开始自动抢单</button>
		</div>   -->
		<div class="mui-button-row">
		<marquee direction=up scrollamount="2" Behaviour="Scroll" style="height:150px; font-size:0.8em; margin-top:10px; margin-left:25%;color:#ccc">
		<?php if(is_array($list)): $i = 0; $__LIST__ = $list;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i; echo ($vo["name"]); ?><br><br><?php endforeach; endif; else: echo "" ;endif; ?>
		<!--当前可抢订单微信金额1000元<br><br>
		当前可抢订单微信金额200元<br><br>
		当前可抢订单支付宝金额500元<br><br>
		当前可抢订单微信金额100元<br><br>
		当前可抢订单支付宝金额1200元<br><br>
		当前可抢订单微信金额800元<br><br>
		当前可抢订单微信金额300元<br><br>
		当前可抢订单支付宝金额1100元<br><br>
		当前可抢订单微信金额1300元<br><br>
		当前可抢订单支付宝金额400元<br><br>
		当前可抢订单支付宝金额100元<br><br>
		当前可抢订单微信金额100元<br><br>
		当前可抢订单微信金额500元<br><br>
		当前可抢订单支付宝金额300元<br><br>
		当前可抢订单微信金额1500元<br><br>
		当前可抢订单微信金额1800元<br><br>
		当前可抢订单支付宝金额700元<br><br>
		当前可抢订单微信金额3000元<br><br>
		当前可抢订单支付宝金额5000元<br><br>
		当前可抢订单微信金额200元<br><br>
		当前可抢订单微信金额100元<br><br>
		当前可抢订单支付宝金额900元<br><br>
		当前可抢订单微信金额500元<br><br>
		当前可抢订单微信金额200元<br><br>-->
		</marquee>

		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		</marquee>
	</div>
	<!--收单列表-->
	<div id="tabbar-with-map" class="mui-control-content">
	</div>
			

<nav class="mui-bar mui-bar-tab" style="background:#1f253d;">
	<a class="mui-tab-item" href="<?php echo U('Index/index');?>">
		<span class="mui-icon mui-icon-home"></span>
		<span class="mui-tab-label">首页</span>
	</a>
	<a class="mui-tab-item mui-active"  href="<?php echo U('Index/qdgame');?>">
		<span class="mui-icon mui-icon-email"></span>
		<span class="mui-tab-label">抢单</span>
	</a>
	
	<!--<a class="mui-tab-item "  href="<?php echo U('Index/shoudan');?>">
		<span class="mui-icon mui-icon-gear"></span>
		<span class="mui-tab-label">收单</span>
	</a>-->
	<a class="mui-tab-item" href="<?php echo U('User/index');?>">
		<span class="mui-icon mui-icon-contact"></span>
		<span class="mui-tab-label">我的</span>
	</a>
</nav>
</body>

<script type="text/javascript">
		$('#checkedclass_wx').click(function(){
			$('#checkedclass_wx').addClass("mui-selected");
			$('#checkedclass_zfb').removeClass("mui-selected");
			$('#checkedclass_bank').removeClass("mui-selected");
			$('#qdclass').val(1);
		});
		$('#checkedclass_zfb').click(function(){
			$('#checkedclass_zfb').addClass("mui-selected");
			$('#checkedclass_wx').removeClass("mui-selected");
			$('#checkedclass_bank').removeClass("mui-selected");
			$('#qdclass').val(2);
		});
		$('#checkedclass_bank').click(function(){
			$('#checkedclass_bank').addClass("mui-selected");
			$('#checkedclass_zfb').removeClass("mui-selected");
			$('#checkedclass_wx').removeClass("mui-selected");
			$('#qdclass').val(3);
		});
	
</script>
<script type="text/javascript">
	function start_qd(){
		var qdclass = $('#qdclass').val();
		$("#pipeinnow").attr('disabled',true);
		$.post("<?php echo U('Index/pipeiorder');?>",
			{'qdclass' : qdclass},
			function(data){
				if(data.status==1){
					layer.msg(data.msg);  //,data.url);
					setTimeout(function (args) {
						window.location.href = "<?php echo U('Index/shoudan');?>";
					}, 3000); 
				}else{
					layer.msg(data.msg);
				}
			});
	}
	
	function start_auto(){
		var qdclass = $('#qdclass').val();
		$("#autopipei").attr('disabled',true);
		$.post("<?php echo U('Index/pipeiauto');?>",
			{'qdclass' : qdclass},
			function(data){
				if(data.status==1){
					layer.msg(data.msg);  //,data.url);
					setTimeout(function (args) {
						window.location.href = "<?php echo U('Index/index');?>";
					}, 3000); 
				}else{
					layer.msg(data.msg);
				}
			});
	}
	
	

</script>


</html>