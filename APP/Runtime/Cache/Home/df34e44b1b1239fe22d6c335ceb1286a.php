<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE html>
<!-- saved from url=(0038)http://103.200.29.54/index.html#tabbar -->
<html><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

	<meta name="viewport" content="width=device-width,initial-scale=1,minimum-scale=1,maximum-scale=1,user-scalable=no">
	<title></title>

	<link href="/Public/home/wap/css/mui.min.css" rel="stylesheet">
	<link href="/Public/home/wap/css/app.css" rel="stylesheet">
	<link href="/Public/home/wap/css/indexindex.css" rel="stylesheet">

	<style>
		.bgcolor10{background: #8A6DE9;}
		.bgcolor9{background:grey;}
		.bgcolor8{background: darkslateblue;}
		.bgcolor7{background: darkgray;}
		.bgcolor6{background: #EC971F;}
		.bgcolor5{background: #007aff;}
		.bgcolor4{background: orange;}
		.bgcolor3{background: burlywood;}
		.bgcolor2{background:  blue;}
		.bgcolor1{background: red;}
		.mui-card-content{margin-top: 140px;}

	</style>
</head>
<!--//style="background:#1a1d2e;"-->
<body  class="mui-ios mui-ios-11 mui-ios-11-0">
<div id="tabbar" class="mui-control-content mui-active">
	<header class="mui-bar mui-bar-nav header">
		<h1 class="mui-title h1">排行榜</h1>
	</header>
	<!--<img src="../Public/home/wap/images/phbbg.png" class="img">-->
	<div class="mui-card-content">
		<ul class="mui-table-view ul">
			<li class="mui-table-view-cell mui-collapse mui-collapse-content">
						<span class="phblist">
							<span class="phbaacs">&nbsp;</span>
							<span class="phbacc" style="bottom: -10px;margin-left: 36px;">游戏名称</span>
							<span class="phbaac" style="bottom: -8px;margin-left: 47%;">金额</span>
						</span>
			</li>
			<!--<?php for($i=1;$i<=$num;$i++){?>


                <li class="mui-table-view-cell mui-collapse mui-collapse-content">
                    <span class="phblist">
                        <img src="../Public/home/wap/images/logoer.png" style="width: 40px;/">
                        <span class="phbacc"><?php echo $ulist[$i-1]['username'];?></span>
                        <span class="phbaac"><?php echo $ulist[$i-1]['zsy'];?></span>
                    </span>
                    <span class="mui-badge mui-badge-primary <?php echo 'bgcolor'.$i;?>"><?php echo $i;?></span>
                </li>
                <?php }?>-->

			<?php if(is_array($list)): $i = 0; $__LIST__ = $list;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?><li class="mui-table-view-cell mui-collapse mui-collapse-content">
						<span class="phblist">
							<img src="<?php echo ($vo["img"]); ?>" style="width: 40px;/">
							<span class="phbacc"><?php echo ($vo["name"]); ?></span>
							<span class="phbaac"><?php echo ($vo["price"]); ?></span>
						</span>
					<span class="mui-badge mui-badge-primary <?php echo 'bgcolor'.$i;?>"><?php echo $key+1;?></span>
				</li><?php endforeach; endif; else: echo "" ;endif; ?>

		</ul>
	</div>
</div>


<nav class="mui-bar mui-bar-tab" style="background:#1f253d;">
	<a class="mui-tab-item mui-active" href="<?php echo U('Index/index');?>">
		<span class="mui-icon mui-icon-home"></span>
		<span class="mui-tab-label">首页</span>
	</a>
	<a class="mui-tab-item" href="<?php echo U('Index/qdgame');?>">
		<span class="mui-icon mui-icon-email"></span>
		<span class="mui-tab-label">抢单</span>
	</a>

	<!--<a class="mui-tab-item" href="<?php echo U('Index/shoudan');?>">
        <span class="mui-icon mui-icon-gear"></span>
        <span class="mui-tab-label">收单</span>
    </a>-->
	<a class="mui-tab-item" href="<?php echo U('User/index');?>">
		<span class="mui-icon mui-icon-contact"></span>
		<span class="mui-tab-label">我的</span>
	</a>
</nav>

</body>
</html>