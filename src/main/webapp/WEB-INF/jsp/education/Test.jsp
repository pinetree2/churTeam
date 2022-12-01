<%@ include file="../common/IncludeTop.jsp"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<jsp:useBean id="catalog"
             class="org.mybatis.jpetstore.web.actions.EducationActionBean" />
<div id="Catalog"><stripes:form
        beanclass="org.mybatis.jpetstore.web.actions.EducationActionBean"
        focus="">
  <html>
  <head>
    <title>테스트 페이지</title>

  </head>
  <body>

  <h2>테스트 페이지</h2>
  <form action="">
    <table>
      <tr>
        <th width="10%" style=" text-align: center; color: black">문제</th>
        <th width="30%"  style=" text-align: center; color:black">문제 내용</th>


      </tr >
    </table>

      <%--<c:forEach var="" items="${}">
      </c:forEach>--%>

    <title> 정답 입력 </title>
    <table>
      <c:forEach var="question" items="${actionBean.questionList}">

        <td>${question.contents}</td>

      <td>
        <c:forEach var="example" items="${actionBean.exampleList}">
          <label><stripes:radio name="point"  value="${example.point}"/>${example.exContents}</label>
        </c:forEach>

      </td>
      </c:forEach>

    </table>


  <%--    권한에 따라서 생명윤리 페이지로 돌아갈지 동물선택 페이지로 갈지 정해야 함--%>
    <stripes:link
            class="Button"
            beanclass="org.mybatis.jpetstore.web.actions.EducationActionBean"
            event="Result">
      문제제출
    </stripes:link></stripes:form>
  </form>
  </body>
  </html>
</div>

<%@ include file="../common/IncludeBottom.jsp"%>