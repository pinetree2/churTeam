<%@ include file="../common/IncludeTop.jsp"%>

<jsp:useBean id="Education"
             class="org.mybatis.jpetstore.web.actions.EducationActionBean" />
<div id="Education"><stripes:form
        beanclass="org.mybatis.jpetstore.web.actions.EducationActionBean"
        focus="">
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
        event="viewChoice">

  동물 선택
</stripes:link>
<stripes:link
        class="Button"
        beanclass="org.mybatis.jpetstore.web.actions.EducationActionBean"
        event="viewTest">
  <stripes:param name="type" value="ET" />
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
</stripes:form>
</body>
</html>
<%@ include file="../common/IncludeBottom.jsp"%>

