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
	<script type="text/javascript" src="/Public/home/common/js/public.js" ></script>
	<script type="text/javascript" src="/Public/home/common/js/common.js" ></script>
	<script type="text/javascript" src="/Public/home/common/js/Uploader.swf" ></script>
	<script type="text/javascript" src="/Public/home/common/js/webuploader.js" ></script>
	<style>
		
		.body{
			line-height: px;
		}
		.mui-table-view-cell:after{
			left:0px;
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
		.head{
			background:#1f253d;
			top:0;
			box-shadow:0 0px 0px #ccc;
			-webkit-box-shadow:0 0px 0px #ccc;
		}
		.headh1{
			font-family:'微软雅黑';
			color: #fff;
		}
		.erweima{
			background:#1f253d;
			height: 180px;
			width: 175px;
			top: 80px;
			margin: auto;
			left:0px;
			right:0px;
			border-radius:10px;
			box-shadow:2px 0px 20px 0px #007AFF;
		}
		.img{
			width:120px;
			margin-left:26px;
			margin-top: 20px;
		}
		.spanerweima{
			color:#fff;
			font-family:'微软雅黑';
			font-size: 0.9em;
			margin-left: 42px;
		}
		.spanleixing{
			position:absolute;
			color:#CCCCCC;
			margin-top:25%;
			margin-left:5%;
			font-size:0.9em;
			font-family: '微软雅黑'; 
		}
		.ulleixing{
			background:#1a1d2e;
			color:#0062CC;
			font-size:0.9em;
			box-shadow:2px 0px 20px 0px #007AFF;
			margin-top:130px;
			font-family:'微软雅黑';
			border-radius:15px;
			width:90%;
			left:5%;
		}
		.form{
			top:40px;
			height:0px;
			width:80%;
			left:0px;
			right:0px;
			margin:auto;
		}
		.divinput{
			border-radius:30px;
			background-color:#fff;
			margin-bottom: 30px;
		}
		.formimg{
			position:absolute;
			width:35px;
			margin-left:15px;
			margin-top: 4px;
		}
		.formmoney{
			color:#0062CC;
			margin-top:10px;
			margin-left:22%;
			font-size:0.9em;
			font-family:'微软雅黑';
		}
		.formzh{
			color:#0062CC;
			margin-top:2px;
			margin-left:18%;
			font-size:0.9em;
			font-family: '微软雅黑';
		}
		.buttonadd{
			line-height:2em;
			font-size:0.9em;
			width:80%;
			font-family:'微软雅黑';
			border-radius:30px;
			border:0px solid;
			background:linear-gradient(45deg,BLUE,purple);
		}
	.files{margin-right: 120px;width: 120px;text-align: center;}
	.f1{float: left;}
	.file-btn {display: block;position: relative;margin-right: 120px;width: 120px;height: 120px;overflow: hidden;}
	img {border: 0;vertical-align: middle;display: inline-block;}
	.file-btn3 input, .file-btn input { position: absolute;left: 0;top: 0; width: 100%;height: 100%;border: none; margin: 0;opacity: 0;cursor: pointer;}
	.buttonGeoup .not_next {
		width: 100%;
		margin: 0 auto;
		display: block;
		text-align: center;
		background: #073b6b;
		height: 40px;
		line-height: 40px;
		color: #fff;
		font-size: 12px;
		margin-bottom: 10px;
		border-radius: 10px;
	}
	</style>
</head>
<body style="background:#1a1d2e;">
	<header class="mui-bar mui-bar-nav head">
			<a class="mui-action-back mui-icon mui-icon-left-nav mui-pull-left"  href="javascript:history.go(-1)"></a>
			<h1 class="mui-title headh1">上传二维码</h1>
	</header>	
		<div class="mui-card-content erweima">		
			<div class="opiniontop_d" style=" background: none;width: 80%;margin: 5px auto 0 auto;height:170px; border-radius:5px;">
	         <div class="clear oneimg" style="width:100%;height:100%;color:#000;padding:10px 5px;">
                 <div id="filelist1" class="files fl" style="margin: 15% auto;">
                     <span id="filePicker1" class="file-btn webuploader-container">
						<div class="webuploader-pick">
							<img src="../Public/home/wap/images/tianjia.png"  id="img1" onload="setImgWH(this)"  />
						</div>
						<div id="rt_rt_1cvagj2mr16sv1dg91skisdj1qfr1" style="position: absolute; top: 0px; left: 0px; width: 120px; height: 100%; overflow: hidden; bottom: auto; right: auto;display:none;">
							<input type="file" name="file" class="webuploader-element-invisible" accept="image/jpg,image/gif,image/png,image/jpeg">
							<label style="opacity: 0; width: 100%; height: 100%; display: block; cursor: pointer; background: rgb(255, 255, 255);"></label>
						</div>
					</span>
					 <input type="hidden" name="icon" id="icon" value="">
					 <input type="hidden" name="ewmclass" id="ewmclass" value="1">
                 </div>
                
             </div>
		</div>
			
		</div>
		
		
		
		<span class="spanleixing">【请选择收款类型】</span>
			<ul class="mui-table-view mui-table-view-radio ulleixing">
				<li class="mui-table-view-cell mui-selected " id="checkedclass_wx">
					<a class="mui-navigate-right">微信</a>
					
				</li>
				<li class="mui-table-view-cell"  id="checkedclass_zfb">
					<a class="mui-navigate-right">支付宝</a>
					
				</li>
				<li class="mui-table-view-cell"  id="checkedclass_bank">
					<a class="mui-navigate-right">支付宝转银行卡</a>
					
				</li>
			</ul>
			<form class="mui-input-group form">
				<div class="mui-input-row divinput">
					<img src="../Public/home/wap/images/nubmer.png" class="formimg" />
					<input type="number" class="formmoney" name="price" id="price" placeholder="收款金额">
				</div>
				<div class="mui-input-row divinput">
					<img src="../Public/home/wap/images/mima.png"class="formimg" />
					<input type="text"  class="formzh" name="skaccount" id="skaccount"  placeholder="收款账号">
				</div>
				<br>
				<div class="mui-button-row" style="margin-bottom: 60px;">
					<button type="button" class="mui-btn mui-btn-danger buttonadd"  id="cuanjdd">上传</button>
				</div>
			</form>
</body>

	<script type="text/javascript">
		$('#checkedclass_wx').click(function(){
			$('#checkedclass_wx').addClass("mui-selected");
			$('#checkedclass_zfb').removeClass("mui-selected");
			$('#checkedclass_bank').removeClass("mui-selected");
			$('#ewmclass').val(1);
		});
		$('#checkedclass_zfb').click(function(){
			$('#checkedclass_zfb').addClass("mui-selected");
			$('#checkedclass_wx').removeClass("mui-selected");
			$('#checkedclass_bank').removeClass("mui-selected");
			$('#ewmclass').val(2);
		});
		$('#checkedclass_bank').click(function(){
			$('#checkedclass_bank').addClass("mui-selected");
			$('#checkedclass_zfb').removeClass("mui-selected");
			$('#checkedclass_wx').removeClass("mui-selected");
			$('#ewmclass').val(3);
		});
	
	</script>
    <script type="text/javascript">
		var UPLOAD_URL = "/Home/User/uploadfile.html";
		var SWF_URL = '/Public/js/Uploader.swf';

	
	 $(function () {
		 upload1();
	 });
    </script>

    <style>
        .z_alert{ color: #333;}
        .z_alert span{ color: #0da8f5; }
    </style>


    <script>
        $('#cuanjdd').click(function () {
            var icon = $('#icon').val();
            var ewmclass = $('#ewmclass').val();
            var price = $('#price').val();
            var skaccount = $('#skaccount').val();
			
			if(icon == ''){
                msg_alert('没有上传二维码');
				return false;
            }
            if(price == ''){
                msg_alert('请输入收款金额');
				return false;
            }
			if(skaccount == ''){
                msg_alert('请输入收款账号');
				return false;
            }
			$("#cuanjdd").attr('disabled',true)
            $.ajax({
                url:'/User/ewmup',
                type:'post',
                data:{'icon':icon,'ewmclass':ewmclass,'price':price,'skaccount':skaccount},
                datatype:'json',
                success:function (mes) {
                    if(mes.status == 1){
                        msg_alert(mes.message,mes.url);
                    }else{
                        msg_alert(mes.message);
                    }
                }
            })
        })
    </script>
</html>