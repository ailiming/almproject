<%@page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/common/taglibs.jsp" %>
<form action="${ctx}/user/user!list.action" method="post" onsubmit="return navTabSearch(this);" id="pagerForm">
<input type="hidden" name="pager.pageNo" value="${pager.pageNo}"  id="pageNo"/>
<input type="hidden" name="pager.pageSize"  value="${pager.pageSize}" id="pageSize" />
<input type="hidden" id="orderDirection" name="pager.order" value="${pager.order}" />
<input type="hidden" id="orderField" name="pager.orderBy" value="${pager.orderBy}" />
	<div class="pageHeader">
		<div class="searchBar">
			<table  class="searchContent">
				<tbody>
					<tr>
						<td>
							用户Id：
							<input type="text" name="uvo.userId" value="${uvo.userId}"/>
						</td>
						<td>
							用户账号：
							<input type="text" name="uvo.userEname" value="${uvo.userEname}"/>
						</td>
						<td>
							用户姓名：
							<input type="text" name="uvo.userCname" value="${uvo.userCname}"/>
						</td>
					</tr>
				</tbody>
			</table>
			<div class="subBar">
				<ul>
					<li><div class="buttonActive"><div class="buttonContent"><button type="submit">检索</button></div></div></li>
				</ul>
			</div>
		</div>
	</div>
	<div class="pageContent">
		<div class="panelBar">
			<ul class="toolBar">
				<li><a class="add" href="${ctx}/user/user!input.action" target="dialog"  mask="true" title="添加用户" rel="user_add"><span>添加</span></a></li>
				<li><a class="delete" href="${ctx}/user/user!delete.action?id={sid}" target="ajaxTodo" title="确定要删除吗?"><span>删除</span></a></li>
				<li><a class="edit" href="${ctx}/user/user!edit.action?id={sid}" target="dialog" mask="true" title="编辑用户" rel="user_add"><span>修改</span></a></li>
			</ul>
		</div>
		<table class="table" width="100%" layoutH="133">
			<thead>
				<tr>
					<th orderField="userId" class="${pager.order}">用户ID</th>
					<th orderField="userEname" class="${pager.order}">用户名</th>
					<th orderField="userCname" class="${pager.order}">姓名</th>
					<th orderField="userSex" class="${pager.order}">性别</th>
					<th orderField="email" class="${pager.order}">邮箱</th>
					<th orderField="createTime" class="${pager.order}">创建日期</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${pager.result}" var="user">
					<tr target="sid" rel="${user.userId}">
						<td>${user.userId}</td>
						<td>${user.userEname}</td>
						<td>${user.userCname}</td>
						<td><c:if test="${user.userSex == '0'}"> 男</c:if><c:if test="${user.userSex == '1'}"> 女</c:if></td>
						<td>${user.email}</td>
						<td><fmt:formatDate value="${user.createTime}" type="both"/></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
		<div class="panelBar">
			<div class="pages">
				<span>显示</span>
				<select class="combox" name="numPerPage" onchange="navTabPageBreak({numPerPage:this.value})">
					<option value="5">5</option>
					<option value="10">10</option>
					<option value="15">15</option>
				</select>
				<span>条，共${pager.totalCount}条</span>
			</div>
			<div class="pagination" targetType="navTab" totalCount="${pager.totalCount}" numPerPage="${pager.pageSize}" pageNumShown="5" currentPage="${pager.pageNo}"></div>
		</div>
	</div>
</form>