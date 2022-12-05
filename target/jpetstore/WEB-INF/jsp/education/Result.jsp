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

<h2>결과 페이지</h2>
<c:if test="${sessionScope.educationBean.testResult.isEt_result()==1}">

<stripes:link
        class="Button"
        beanclass="org.mybatis.jpetstore.web.actions.EducationActionBean"
        event="viewChoice">

  동물 선택
</stripes:link>
</c:if>
<c:if test="${sessionScope.educationBean.testResult.isEt_result()==0}">
<stripes:link
        class="Button"
        beanclass="org.mybatis.jpetstore.web.actions.EducationActionBean"
        event="viewTest">
  <stripes:param name="type" value="ET" />
  생명윤리 재시험
</stripes:link>
</c:if>
<stripes:link
        class="Button"
        beanclass="org.mybatis.jpetstore.web.actions.EducationActionBean"
        event="Choice">
  생명윤리 안내사항
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

