<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<fieldset class="solid">
	<legend>添加用户</legend>
	<input type="hidden" name="user.id" value="${user.id}" />
	<div>
		<label>用户名</label>
		<input type="text" name="user.username" value="${user.username}" />${usernameMsg}
	</div>
	<div>
		<label>年龄</label>
		<textarea name="user.age" cols="80" rows="10">${user.age}</textarea>${ageMsg}
	</div>
    <div>
		<label>地址</label>
		<textarea name="user.address" cols="80" rows="10">${user.address}</textarea>${addressMsg}
	</div>
	<div>
		<label>&nbsp;</label>
		<input value="提交" type="submit">
	</div>
</fieldset>