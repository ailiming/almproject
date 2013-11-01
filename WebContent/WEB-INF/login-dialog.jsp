<%@page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/common/taglibs.jsp" %>
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
<div class="pageContent">
	<form method="post" action="login!ajaxVerify.action" class="pageForm" onsubmit="return validateCallback(this, dialogAjaxDone)">
		<div class="pageFormContent" layoutH="58">
			<div>
				<label>账套：</label>
				<select name="book.id">
					<c:forEach items="${bookList}" var="book">
						<option value="${book.id}" <c:if test="${book.isDefault}">selected="selected"</c:if>>${book.name}</option>
					</c:forEach>
					<option value="">超级用户</option>
				</select>
			</div>
			<div class="unit">
				<label>用户名：</label>
				<input type="text" name="username" size="30" class="required"/>
			</div>
			<div class="unit">
				<label>密码：</label>
				<input type="password" name="password" size="30" class="required"/>
			</div>
			<div class="unit">
				<label>验证码：</label>
				<input type="text" name="captcha" class="code" size="5" />&nbsp;&nbsp;&nbsp;
				<img id="captchaImage" src="captcha.jpg" title="换一张" />
			</div>
		</div>
		<div class="formBar">
			<ul>
				<li><div class="buttonActive"><div class="buttonContent"><button type="submit">提交</button></div></div></li>
				<li><div class="button"><div class="buttonContent"><button type="button" class="close">取消</button></div></div></li>
			</ul>
		</div>
	</form>
</div>