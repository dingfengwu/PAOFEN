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
			<h1 class="mui-title" style="font-family: &#39;微软雅黑&#39;; color: #fff;">注册</h1>
		</header>
	<form class="mui-input-group" name="AddUser" action="<?php echo U('Login/register');?>" id="registerForm"  style="position: absolute;  top: 15%; height: 0px; width: 80%; left: 0px; right: 0px; margin: auto; ">
		<div class="mui-input-row" style="height: 2.5em; border-radius:30px;background-color:#fff; margin-bottom: 30px;">
			<img src="/Public/home/wap/images/nubmer.png" style="position: absolute; width: 35px; margin-left: 15px; margin-top: 4px;">
			<input type="text" id="index_username" name="username" maxlength="20" style="color: #0062CC; margin-top: 2px;margin-left: 18%; font-size: 0.9em; font-family: &#39;微软雅黑&#39;;" placeholder="请输入用户名">
		</div>
		<div class="mui-input-row" style="height: 2.5em; border-radius:30px;background-color:#fff; margin-bottom: 30px;">
			<img src="/Public/home/wap/images/shouji.png" style="position: absolute; width: 35px; margin-left: 15px; margin-top: 5px;">
			<input type="number" name="mobile" maxlength="11" style=" color: #0062CC; margin-top: 2px;margin-left: 18%; font-size: 0.9em; font-family: &#39;微软雅黑&#39;;" placeholder="请输入手机号">
		</div>
		<!-- <div class="mui-input-row" style="height: 2.5em; border-radius:30px;background-color:#fff; margin-bottom: 30px;">
			<img src="../Public/home/wap/images/yanzheng.png" style="position: absolute; width: 35px; margin-left: 15px; margin-top: 5px;">
			<input type="number" id="sms_code" name="sms_code" style=" color: #0062CC; margin-top: 2px;margin-left: 18%; font-size: 0.9em; font-family: &#39;微软雅黑&#39;;" placeholder="请输入验证码">
			<button type="input" class="mui-btn mui-btn-danger" style="position: absolute;background: #fff; font-family: &#39;微软雅黑&#39;; left: 60%; top: 5px; font-size: 0.9em; color: #242424; width: 35%; border: 0px solid;" id="code">| 获取验证码</button>
			
		</div> -->
		<div class="mui-input-row" style="height: 2.5em; border-radius:30px;background-color:#fff; margin-bottom: 30px;">
			<img src="/Public/home/wap/images/mima.png" style="position: absolute; width: 35px; margin-left: 15px; margin-top: 4px;">
			<input type="password"  name="login_pwd" maxlength="20"  style=" color: #0062CC; margin-top: 2px;margin-left: 18%; font-size: 0.9em; font-family: &#39;微软雅黑&#39;;" placeholder="请输入密码">
		</div>
		<div class="mui-input-row" style="height: 2.5em; border-radius:30px;background-color:#fff; margin-bottom: 30px;">
			<img src="/Public/home/wap/images/mima.png" style="position: absolute; width: 35px; margin-left: 15px; margin-top: 4px;">
			<input type="password" id="confirm_password"  name="relogin_pwd" maxlength="20" style=" color: #0062CC; margin-top: 2px;margin-left: 18%; font-size: 0.9em; font-family: &#39;微软雅黑&#39;;" placeholder="请确认密码">
		</div>
		<div class="mui-input-row" style="height: 2.5em; border-radius:30px;background-color:#fff; margin-bottom: 30px;">
			<img src="/Public/home/wap/images/yaoqing.png" style="position: absolute; width: 35px; margin-left: 15px; margin-top: 5px;">
			<input type="text"  name="pid" value="<?php echo ($mobile); ?>" style=" color: #0062CC; margin-top: 2px;margin-left: 18%; font-size: 0.9em; font-family: &#39;微软雅黑&#39;;" placeholder="请输入邀请码">
		</div>
		<br>
		<div class="mui-button-row">
			<button type="button" id="submit"  onclick="adduser()" class="mui-btn mui-btn-danger" style="line-height: 2em; font-size: 0.9em; width: 90%; font-family: &#39;微软雅黑&#39;; border-radius: 30px; border: 0px solid; background: linear-gradient(45deg,BLUE,purple);" >注册</button>
		</div>
		<br>
		<div class="mui-card-content">
		
			<div class="mui-card-content-inner">
				<p style="position: absolute; left: 28%;  font-family: &#39;微软雅黑&#39;; color:linear-gradient(45deg,BLUE,purple);">已有账号？<a href="<?php echo U('Login/login');?>"> 立即登录</a></p> 
			</div>
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

    function adduser(){
        //验证注册
        var thisform=document.forms['AddUser'];
        var   reg = /^[0-9a-zA-Z]{6,20}$/;
        var   mobile_rex=/^1[3456789]\d{9}$/;
        var   pid=thisform.pid.value;//推荐人
        var   username=thisform.username.value;//昵称
        var   mobile=thisform.mobile.value;
        var   login_pwd=thisform.login_pwd.value;
        var   relogin_pwd=thisform.relogin_pwd.value;


        if(username=='' || username==null){
            layer.msg('请输入用户名');
            return false;
        }

        if(mobile=='' || mobile==null){
            layer.msg('请输入手机号');
            return false;
        }
        if(!mobile_rex.test(mobile)){
            layer.msg('手机号码错误');
            return false;
        }

        if(login_pwd=='' || login_pwd==null){
            layer.msg('请输入密码');
            return false;
        }
        if(!reg.test(login_pwd)){
            layer.msg("登录密码只能为6-20位数字或字母");
            return false;
        }
        if(login_pwd!=relogin_pwd){
            layer.msg("两次输入登录密码不一致");
            return false;
        }
		if(pid=='' || pid==null){
            layer.msg('请输入邀请码');
            return false;
        }
		
        var post_url = $("form[name='AddUser']").attr('action');
        var post_data= $("form[name='AddUser']").serialize();
        $.ajax({
            type: "POST",
            url: post_url,
            data:post_data,
            dataType: "json",
            success: function(re_data){
                //layer.close(index);//关闭加载
                if(re_data.status==1){
                    layer.msg(re_data.message);  //,data.url);
					setTimeout(function (args) {
						window.location.href = "<?php echo U('Login/login');?>";
					}, 3000);
 
                }
                else{
                    layer.msg(re_data.message);
                }
            }
        });
    }


</script>			
</body>
</html>