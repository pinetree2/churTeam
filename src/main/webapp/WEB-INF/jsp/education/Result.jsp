<%--
  Created by IntelliJ IDEA.
  User: ies69
  Date: 2022-11-30
  Time: 오후 10:35
  To change this template use File | Settings | File Templates.
--%>
<%@ include file="../common/IncludeTop.jsp"%>

<html>
<head>
<%--    <link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">--%>
<%--    <script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>--%>
<%--    <script src="//code.jquery.com/jquery-1.11.1.min.js"></script>--%>
    <!------ Include the above in your HEAD tag ---------->
    <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
    <title>테스트 통과</title>

    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=IBM+Plex+Sans+KR:wght@100;200;300;400&family=Jua&display=swap" rel="stylesheet">

    <style>
        .p1{
            font-family: 'Noto Sans KR', sans-serif;
        }
        .p2 {
            font-family: 'Jua', sans-serif;
        }
        .p3{
            font-family: 'IBM Plex Sans KR', sans-serif;
        }
    </style>

    <style>
        .button {
            font-family: 'Jua', sans-serif !important;
            border-top-left-radius: 5px;
            border-top-right-radius: 5px;
            border-color: lightgray;
            padding: 20px;
            text-align: center;
            text-decoration: none;
            display: inline-block;
            font-size: 20px;
            margin: 4px 2px;
            cursor: pointer;
        }
        .green{
            border-radius: 14px;
            font-family: 'Jua', sans-serif !important;
            color: white !important;
            background-color: lightgreen;
        }
        .lemon{
            border-radius: 14px;
            font-family: 'Jua', sans-serif !important;
            color: white !important;
            background-color: lightsalmon;
        }
    </style>

</head>
<body>
<br>
<br>

<c:if test="${sessionScope.educationBean.testResult.getET()==1}">
    <img src="../images/pass.png" style="width: 960px; height: 540px; margin-left: auto; margin-right: auto; display: block;"/>
<stripes:link
        beanclass="org.mybatis.jpetstore.web.actions.EducationActionBean"
        event="viewChoice">
    <img src="../images/choose_ani.png" style="margin-left: auto; margin-right: auto; display: block;"/>
</stripes:link>
</c:if>

<c:if test="${sessionScope.educationBean.testResult.getET()==0}">
    <img src="../images/fail.png" style="width: 960px; height: 540px; margin-left: auto; margin-right: auto; display: block;"/>
    <stripes:link
        beanclass="org.mybatis.jpetstore.web.actions.EducationActionBean"
        event="viewTest">
    <img src="../images/ethic_re_edu.png" style="margin-left: auto; margin-right: auto; display: block;"/>
    <stripes:param name="type" value="ET" />
</stripes:link>
</c:if>
<stripes:link
        beanclass="org.mybatis.jpetstore.web.actions.EducationActionBean"
        event="Choice">
    <img src="../images/ani_re_edu.png" style="margin-left: auto; margin-right: auto; display: block;"/>
</stripes:link>

<stripes:link
        beanclass="org.mybatis.jpetstore.web.actions.CatalogActionBean"
        event="viewMain">
    <img src="../images/main_btn.png" style="margin-left: auto; margin-right: auto; display: block;"/>
</stripes:link>

</body>
</html>
<%@ include file="../common/IncludeBottom.jsp"%>

