<%@ include file="../common/IncludeTop.jsp"%>

<html>
<head>
  <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
  <title>물고기 교육</title>

</head>
<body>

<h2>물고기 교육</h2>
<form action="">
  <%out.println("물고기는 인기있는 반려동물입니다. \n" +
          "\n" +
          "물고기를 입양하기로 결정하였다면 물고기의 습성과 특성을 이해하여야 합니다.  반려물고기와 편안하고 행복한 생활을 하고 싶다면 다음과 같은 사항을 참고하여 반려물고기를 키우는 것이 좋습니다. \n" +
          "\n" +
          "다음 페이지는 위 교육에 대한 테스트 페이지 입니다. 총 5문항으로, 문항 당 배점 기준은 다음과 같습니다.\n" +
          "\n" +
          "1-3번 : 매우그렇다 (5점) 그렇다 (4점) 보통이다 (3점) 그렇지 않다(2점) 전혀 그렇지 않다 (1점)\n" +
          "\n" +
          "4-5번 : 정답을 고를 시에 5점, 오답을 고를 시에 0점\n" +
          "\n" +
          "총점 20점 이상이 되면 테스트 합격으로 입양 절차가 진행됩니다.\n" +
          "\n" +
          "불합격 하신 경우 재교육 이수가 필요합니다.");%>

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