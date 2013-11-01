<%@page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/common/taglibs.jsp" %>
<div class="pageContent">
	<form method="post" action="${ctx}/user/user!save.action" class="pageForm required-validate" onsubmit="return validateCallback(this,dialogAjaxDone)">
		<input type="hidden" name="id" value="${user.userId}"/>
		<div class="pageFormContent nowrap" layoutH="56">
			<p>
				<label>用户名：</label>
				<input type="text" name="user.userEname" value="${user.userEname}" class="required"  maxlength="20" size="30" <c:if test="${user == null}">remote="user!checkUsername.action"</c:if>/>
			</p>
			<p>
				<label>姓名：</label>
				<input type="text" name="user.userCname" value="${user.userCname}" class="textInput required" size="30"/>
			</p>
			<p class="unit">
				<label>密码：</label>
				<input type="password" name="user.userPass" value="${user.userPass}" class="required alphanumeric"  id="w_validation_pwd" alt="字母、数字、下划线 6-20位" maxlength="20" minlength="6" size="30"/>
			</p>
			<p>
				<label>确认密码：</label>
				<input type="password" value="${user.userPass}" equalto="#w_validation_pwd" class="required textInput" size="30"/>
			</p>
			<p>
			<label>用户类型：</label>
				<select name="user.userType">
			        <option value="0" <c:if test="${user.userType == '0'}">selected="selected"</c:if>>机构用户</option>
			        <option value="1" <c:if test="${user.userType == '1'}">selected="selected"</c:if>>会员用户</option>
			        <option value="2" <c:if test="${user.userType == '2'}">selected="selected"</c:if>>监督方</option>
				</select>
			</p>
			<p class="unit">
				<label>生日：</label>
				<input type="text" name="user.birthday" value="${user.birthday}" class="date  textInput " size="30"/>
				<a href="javascript:;" class="inputDateButton">选择</a>
			</p>
			<p class="unit">
				<label>性别：</label>
				<input type="radio" name="user.userSex" value="0"  <c:if test="${user == null || user.userSex == '0'}"> checked="checked"</c:if>/>男
				<input type="radio" name="user.userSex" value="1"  <c:if test="${user.userSex == '1'}"> checked="checked"</c:if>/>女
			</p>
			<p class="unit">
				<label>联系电话：</label>
				<input type="text" name="user.phone" value="${user.phone}" class="phone" size="30"/>
			</p>
			<p class="unit">
				<label>手机：</label>
				<input type="text" name="user.mobile" value="${user.mobile}" class="mobile" size="30"/>
			</p>
			<p class="unit">
				<label>邮箱：</label>
				<input type="text" name="user.email" value="${user.email}" class="email" size="30"/>
			</p>
			<p class="unit">
				<label>地址：</label>
				<input type="text" name="user.address" value="${user.address}" size="30"/>
			</p>
			<p class="unit">
				<label>公司：</label>
				<input type="text" name="user.company" value="${user.company}"  size="30"/>
			</p>
			<%--
			<dl>
				<dt>
					<label>管理角色：</label>
				</dt>
				<dd>
					<c:forEach items="${allRole }" var="role">
						<c:set var="checked" value="${false}"/>
						<c:forEach items="${user.roleSet}" var="userRole">
							<c:if test="${role.id == userRole.id }">
								<c:set var="checked" value="${true}"/>
							</c:if>
						</c:forEach>
							<input type="checkbox" name="roleList.id" value="${role.id}" <c:if test="${checked}">checked="checked"</c:if>/>
							${role.name}
					</c:forEach>
				</dd>
			</dl>
			<dl>
				<dt>
					<label>编号：</label>
				</dt>
				<dd>
					<input type="text" name="user.code" value="${user.code}" class="required" size="30" <c:if test="${user == null}">remote="user!checkCode.action"</c:if>/>
				</dd>
			</dl>
			<dl>
				<dt>
				<label>是否可用：</label>
				</dt>
				<dd>
					<input type="radio" name="user.isEnabled" value="true" class="required" <c:if test="${user == null || user.isEnabled == true}"> checked="checked"</c:if>/>是&nbsp;&nbsp;&nbsp;&nbsp;
					<input type="radio" name="user.isEnabled" value="false" class="required" <c:if test="${user.isEnabled == false}"> checked="checked"</c:if>/>否
				</dd>
			</dl>
			 --%>
		</div>
		<div class="formBar">
			<ul>
				<li><div class="buttonActive"><div class="buttonContent"><button type="submit">保存</button></div></div></li>
				<li><div class="button"><div class="buttonContent"><button type="button" class="close">取消</button></div></div></li>
			</ul>
		</div>
	</form>
</div>