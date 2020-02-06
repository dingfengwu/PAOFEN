<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE html>
<!-- saved from url=(0051)http://103.200.29.54/index.html#tabbar-with-contact -->
<html><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

    <meta name="viewport" content="width=device-width,initial-scale=1,minimum-scale=1,maximum-scale=1,user-scalable=no">
    <title></title>

    <link href="/Public/home/wap/css/mui.min.css" rel="stylesheet">
    <link href="/Public/home/wap/css/app.css" rel="stylesheet">
    <link href="/Public/home/wap/css/userindex.css" rel="stylesheet">

</head>
<body  class="mui-ios mui-ios-11 mui-ios-11-0">
<link href="/Public/home/wap/css/app.css" rel="stylesheet">
<!--我的-->
<div id="tabbar-with-contact" class="mui-control-content mui-active">
    <header class="mui-bar mui-bar-nav header">
        <h1 class="mui-title h1">会员须知</h1>
    </header>

    <ul class="mui-table-view ullist" style="margin-top: 20px;">
        <?php if(is_array($list)): $i = 0; $__LIST__ = $list;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?><li class="mui-table-view-cell mui-collapse-content" style="    padding: 11px 0px;">
                <a href="/User/hyxzinfo/id/<?php echo ($vo["id"]); ?>.html" class="mui-navigate-right" style=" margin-left: 10%;font-size: 0.9em; bottom: 4px;margin: -11px 21px; ">
                    <?php echo ($vo["title"]); ?>
                </a>
            </li><?php endforeach; endif; else: echo "" ;endif; ?>
    </ul>

</div>


<nav class="mui-bar mui-bar-tab" style="background:#1f253d;">
    <a class="mui-tab-item" href="<?php echo U('Index/index');?>">
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
    <a class="mui-tab-item mui-active" href="<?php echo U('User/index');?>">
        <span class="mui-icon mui-icon-contact"></span>
        <span class="mui-tab-label">我的</span>
    </a>
</nav>
</body>
<script type="text/javascript" src="/Public/home/common/js/jquery-1.9.1.min.js" ></script>
<script type="text/javascript" src="/Public/home/common/layer/layer.js" ></script>
<script type="text/javascript">
    function loginout(){
        window.location.href="<?php echo U('User/Loginout');?>";
    }
</script>
</html>