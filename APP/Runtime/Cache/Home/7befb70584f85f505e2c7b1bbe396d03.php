<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE html>
<!-- saved from url=(0029)http://103.200.29.54/reg.html -->
<html><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    
    <meta name="viewport" content="width=device-width,initial-scale=1,minimum-scale=1,maximum-scale=1,user-scalable=no">
    <title></title>
    <link href="/Public/home/wap/css/mui.min.css" rel="stylesheet">
	<script src="/Public/home/wap/js/mui.min.js"></script>
	 <script type="text/javascript" src="/Public/home/common/js/jquery-1.9.1.min.js" ></script>
    <script type="text/javascript" charset="utf-8">
      	mui.init();
    </script>
	<style>
		.mui-input-group:before{
			height:0px
		}
		.mui-input-group:after{
			height: 0px;
		}
		
	</style>
</head>
<body style="background: #1a1d2e;" class="mui-ios mui-ios-11 mui-ios-11-0">
	<header class="mui-bar mui-bar-nav" style="background: #1f253d; top:0;box-shadow:0 0px 0px #ccc;-webkit-box-shadow:0 0px 0px #ccc;">
			<a class="mui-action-back mui-icon mui-icon-left-nav mui-pull-left"></a>
			<h1 class="mui-title" style="font-family: &#39;微软雅黑&#39;; color: #fff;">添加银行卡</h1>
		</header>
	<form class="mui-input-group" name="AddUser" action="<?php echo U('User/set_addcard');?>" id="registerForm"  style="position: absolute;  top: 12%; height: 0px; width: 80%; left: 0px; right: 0px; margin: auto; ">
		<div class="mui-input-row" style="height: 2.5em; border-radius:30px;background-color:#fff; margin-bottom: 30px;">
			<img src="../Public/home/wap/images/nubmer.png" style="position: absolute; width: 35px; margin-left: 15px; margin-top: 4px;">
			<input type="text" id="index_username" name="bankname" value=""  style="color: #0062CC; margin-top: 2px;margin-left: 18%; font-size: 0.9em; font-family: &#39;微软雅黑&#39;;" placeholder="所属银行">
		</div>
		<div class="mui-input-row" style="height: 2.5em; border-radius:30px;background-color:#fff; margin-bottom: 30px;">
			<img src="../Public/home/wap/images/shouji.png" style="position: absolute; width: 35px; margin-left: 15px; margin-top: 5px;">
			<input type="text" name="name"   value=""    style=" color: #0062CC; margin-top: 2px;margin-left: 18%; font-size: 0.9em; font-family: &#39;微软雅黑&#39;;" placeholder="持卡人">
		</div>

		<div class="mui-input-row" style="height: 2.5em; border-radius:30px;background-color:#fff; margin-bottom: 30px;">
			<img src="../Public/home/wap/images/mima.png" style="position: absolute; width: 35px; margin-left: 15px; margin-top: 4px;">
			<input type="text" id="confirm_password"  name="banknum"    style=" color: #0062CC; margin-top: 2px;margin-left: 18%; font-size: 0.9em; font-family: &#39;微软雅黑&#39;;" placeholder="银行卡号">
		</div>

		<div class="mui-button-row">
			<button type="button" id="submit"  onclick="addnow()"  <?php if($list['rz_st']==1){echo "disabled='disabled'";}?>  class="mui-btn mui-btn-danger" style="line-height: 2em; font-size: 0.9em; width: 90%; font-family: &#39;微软雅黑&#39;; border-radius: 30px; border: 0px solid; background: linear-gradient(45deg,BLUE,purple);" >确认</button>
		</div>

	</form>
<script>
	mui.init({
		swipeBack: true //启用右滑关闭功能
	});
</script>
 <script type="text/javascript" src="/Public/home/common/js/jquery-1.9.1.min.js" ></script>
 <script type="text/javascript" src="/Public/home/common/layer/layer.js" ></script>
<script type="text/javascript">

    function addnow(){
        var thisform=document.forms['AddUser'];
		var   bankname=thisform.bankname.value;
        var   name=thisform.name.value;       
        var   banknum=thisform.banknum.value;

        if(bankname=='' || bankname==null){
            layer.msg('请输入所属银行');
            return false;
        }
		if(name=='' || name==null){
            layer.msg('请输入持卡人');
            return false;
        }
		if(banknum=='' || banknum==null){
            layer.msg('请输入银行卡号');
            return false;
        }
		
        var post_url = $("form[name='AddUser']").attr('action');
        var post_data= $("form[name='AddUser']").serialize();
		$("#submit").attr('disabled',true)
        $.ajax({
            type: "POST",
            url: post_url,
            data:post_data,
            dataType: "json",
            success: function(data){
                if(data.status==1){
                    layer.msg(data.msg);  //,data.url);
					setTimeout(function (args) {
						window.location.href = "<?php echo U('User/yinhangka');?>";
					}, 3000); 
                }else{
                    layer.msg(data.msg);
                }
            }
        });
    }

</script>			
</body>
</html>