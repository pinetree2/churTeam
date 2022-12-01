<%@ include file="../common/IncludeTop.jsp"%>

<html>
<head>
  <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
  <title>개 교육</title>

</head>
<body>

<h2>"개"를 키울때 알아야 하는 것!</h2>
<form action="">
  <%out.println("개는 인기있는 반려동물입니다.");%>
  <%out.println("\"개를 입양하기로 결정하였다면 개의 습성과 특성을 이해하여야 합니다.  반려견과 편안하고 행복한 생활을 하고 싶다면 다음과 같은 사항을 참고하여 반려견을 키우는 것이 좋습니다.");%>
  <%out.println("다음 페이지는 위 교육에 대한 테스트 페이지 입니다. 총 5문항으로, 문항 당 배점 기준은 다음과 같습니다.\n");%>
  <%out.println("1-3번 : 매우그렇다 (5점) 그렇다 (4점) 보통이다 (3점) 그렇지 않다(2점) 전혀 그렇지 않다 (1점)\n");%>
  <%out.println( "총점 20점 이상이 되면 테스트 합격으로 입양 절차가 진행됩니다.\n");%>
  <%out.println("불합격 하신 경우 재교육 이수가 필요합니다.");%>


  <stripes:link
          class="Button"
          beanclass="org.mybatis.jpetstore.web.actions.EducationActionBean"
          event="TEST">
    테스트 페이지로 이동
  </stripes:link>

</form>
</body>
</html>
<%@ include file="../common/IncludeBottom.jsp"%>