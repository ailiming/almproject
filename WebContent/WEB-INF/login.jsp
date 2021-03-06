<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/common/taglibs.jsp" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>${systemConfig.productName}</title>
<link href="style/themes/css/login.css" rel="stylesheet" type="text/css" />
<script src="style/js/jquery-1.7.2.min.js" type="text/javascript"></script>
<script type="text/javascript">
$().ready( function() {
	
	//刷新验证码
	$("#captchaImage").click( function() {
		var timestamp = (new Date()).valueOf();
		var imageSrc = $("#captchaImage").attr("src");
		if(imageSrc.indexOf("?") >= 0) {
			imageSrc = imageSrc.substring(0, imageSrc.indexOf("?"));
		}
		imageSrc = imageSrc + "?timestamp=" + timestamp;
		$("#captchaImage").attr("src", imageSrc);
	});
	
});
</script>
</head>
<body>
	<div id="login">
		<div id="login_header">
			<h1 class="login_logo">
				<a href="http://${systemConfig.productWebsite}"><img src="style/themes/default/images/login_logo.gif" /></a>
			</h1>
			<div class="login_headerContent">
				<div class="navList">
					<ul>
						<li><a href="#">设为首页</a></li>
						<li><a href="http://steel.thethinksoft.com">反馈</a></li>
						<li><a href="doc/dwz-user-guide.pdf" target="_blank">帮助</a></li>
					</ul>
				</div>
				<h2 class="login_title"><img src="style/themes/default/images/login_title.png" /></h2>
			</div>
		</div>
		<div id="login_content">
			<div class="loginForm">
				<form action="login!verify.action" method="post">
					<p style="color:red">${actionErrors[0]}</p>
						<p>
						<label>账套：</label>
						<select name="book.id">
							<c:forEach items="${bookList}" var="book">
								<option value="${book.id}" <c:if test="${book.isDefault}">selected="selected"</c:if>>${book.name}</option>
							</c:forEach>
							<option value="">超级用户</option>
						</select>
					</p>
					<p>
						<label>账号：</label>
						<input type="text" name="username" size="20" class="login_input" />
					</p>
					<p>
						<label>密码：</label>
						<input type="password" name="password" size="20" class="login_input" />
					</p>
					<p>
						<label>验证码：</label>
						<input type="text" name="captcha" class="code" size="5" />
						<img id="captchaImage" src="captcha.jpg" title="换一张" />
					</p>
					<div class="login_bar">
						<input class="sub" type="submit" value=" " />
					</div>
				</form>
			</div>
			<div class="login_banner"><img src="style/themes/default/images/login_banner.jpg" /></div>
			<div class="login_main">
				<ul class="helpList">
					<li><a href="#">下载驱动程序</a></li>
					<li><a href="#">如何安装密钥驱动程序？</a></li>
					<li><a href="#">忘记密码怎么办？</a></li>
					<li><a href="#">为什么登录失败？</a></li>
				</ul>
				<div class="login_inner">
					<p>您可以使用 网易网盘 ，随时存，随地取</p>
					<p>您还可以使用 闪电邮 在桌面随时提醒邮件到达，快速收发邮件。</p>
					<p>在 百宝箱 里您可以查星座，订机票，看小说，学做菜…</p>
				</div>
			</div>
		</div>
		<div id="login_footer">
			Copyright &copy; 2012 steel.thethinksoft.com Inc. All Rights Reserved.
		</div>
	</div>
</body>
</html>