<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xml:lang="zh-CN" xmlns="http://www.w3.org/1999/xhtml" lang="zh-CN">
<head>
    <meta http-equiv="content-type" content="text/html; charset=UTF-8"/>
    <link href="/css/manage.css" media="screen" rel="stylesheet" type="text/css"/>
    <script src="/js/jquery-1.4.4.min.js" type="text/javascript"></script>
</head>
<body>
<div class="manage_container">
    <div class="manage_head">
        <div class="manage_logo"><a href="http://www.jfinal.com">JFinal web framework</a></div>
        <div id="nav">
            <ul>
                <li><a href="/"><b>首页</b></a></li>
                <li><a href="/blog"><b>Blog管理</b></a></li>
            </ul>
        </div>
    </div>
    <div class="main">
        <h1>User管理&nbsp;&nbsp;
            <a href="/user/add">创建User</a>
        </h1>

        <div class="table_box">
            <table class="list">
                <tbody>
                <tr>
                    <th width="20%">用户名</th>
                    <th width="30%">年龄</th>
                    <th >地址</th>
                    <th width="12%">操作</th>
                </tr>
                <c:forEach items="${page.list}" var="user">
                    <tr>
                            <%--<td style="text-align:left;"><c:out value="${blog.id}" default=""/></td>--%>
                        <td style="text-align:left;">${user.username}</td>
                        <td style="text-align:left;">${user.age}</td>
                        <td style="text-align:left;">${user.address}</td>
                        <td style="text-align:left;">
                            &nbsp;&nbsp;<a href="/user/delete/${user.id}">删除</a>
                            &nbsp;&nbsp;<a href="/user/edit/${user.id}">修改</a>
                        </td>
                    </tr>
                </c:forEach>
                <div>
                    <c:set var="pageNumber" scope="request" value="${salaryList.pageNumber}"/>
                    <c:set var="pageSize" scope="request" value="${salaryList.pageSize}"/>
                    <c:set var="totalPage" scope="request" value="${salaryList.totalPage}"/>
                    <c:set var="totalRow" scope="request" value="${salaryList.totalRow}"/>
                    <c:set var="pageUrl" scope="request" value="${contxt}/user/?pageNum="/>
                    <jsp:include page="/common/page.jsp"/>

                </div>
                </tbody>
            </table>
        </div>
    </div>
</div>
</body>
</html>