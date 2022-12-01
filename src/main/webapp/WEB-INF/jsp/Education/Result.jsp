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
    <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
    <title>테스트 통과</title>

</head>
<body>
<h2>결과 페이지</h2>
<stripes:link
        class="Button"
        beanclass="org.mybatis.jpetstore.web.actions.EducationActionBean"
        event="Choice">
    동물 선택
</stripes:link>
<stripes:link
        class="Button"
        beanclass="org.mybatis.jpetstore.web.actions.EducationActionBean"
        event="LifeEducation">
    생명윤리 재교육
</stripes:link>
<stripes:link
        class="Button"
        beanclass="org.mybatis.jpetstore.web.actions.EducationActionBean"
        event="Choice">
    동물 지식 재교육
</stripes:link>
<stripes:link
        class="Button"
        beanclass="org.mybatis.jpetstore.web.actions.CatalogActionBean"
        event="viewMain">
    메인페이지
</stripes:link>
</body>
</html>
<%@ include file="../common/IncludeBottom.jsp"%>

