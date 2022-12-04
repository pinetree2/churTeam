<%@ include file="../common/IncludeTop.jsp"%>

<jsp:useBean id="Education"
             class="org.mybatis.jpetstore.web.actions.EducationActionBean" />
<div id="Education"><stripes:form
        beanclass="org.mybatis.jpetstore.web.actions.EducationActionBean"
        focus="">
  <html>
  <head>
    <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
    <title>동물선택</title>
  </head>
  <div>
    <strong>교육 동물을 선택</strong>
    <stripes:link
            class="Button"
            beanclass="org.mybatis.jpetstore.web.actions.EducationActionBean"
            event="viewTest">
      <stripes:param name="type" value="DG" />
      개
    </stripes:link>
    <stripes:link
            class="Button"
            beanclass="org.mybatis.jpetstore.web.actions.EducationActionBean"
            event="viewTest">
      <stripes:param name="type" value="CT" />

      고양이
    </stripes:link>
    <stripes:link
            class="Button"
            beanclass="org.mybatis.jpetstore.web.actions.EducationActionBean"
            event="viewTest">
      <stripes:param name="type" value="FI" />

      물고기
    </stripes:link>

    <stripes:link
            class="Button"
            beanclass="org.mybatis.jpetstore.web.actions.EducationActionBean"
            event="viewTest">
      <stripes:param name="type" value="BD" />
      새
    </stripes:link>
    <stripes:link
            class="Button"
            beanclass="org.mybatis.jpetstore.web.actions.EducationActionBean"
            event="viewTest">
      <stripes:param name="type" value="RT" />
      파충류
    </stripes:link>
  </div>
  <div>

      <strong>테스트를 할 동물을 선택해주세요</strong>
      <label><stripes:radio name="type"  value="BD"/>새 </label>
      <label><stripes:radio name="type"  value="DG"/>개 </label>
      <label><stripes:radio name="type"  value="CT"/>고양이 </label>
      <label><stripes:radio name="type"  value="FI"/>물고기 </label>
      <label><stripes:radio name="type"  value="RT"/>파충류 </label>



  </div>
  <div>
    <stripes:submit name="viewTest" value="Submit" /></stripes:form>

  </div>
  </html>
</div>
<%--  <button type = "submit">Submit</button> --%>
<%@ include file="../common/IncludeBottom.jsp"%>

