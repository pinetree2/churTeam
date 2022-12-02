<%@ include file="../common/IncludeTop.jsp"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<jsp:useBean id="Education"
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
        <th width="10%" style=" text-align: center; color: black">문제 번호</th>
        <th width="30%"  style=" text-align: center; color:black">문제 내용</th>
        <th>보기</th>


      </tr >
    </table>

      <%--<c:forEach var="" items="${}">
      </c:forEach>--%>
    <title> 정답 입력 </title>
    <table>
      <c:forEach var="question" items="${actionBean.questionList}">
      <tr>
        <td>${question.queNo}</td>
        <td>${question.contents}</td>
        <c:forEach var="example" items="${actionBean.exampleList}">
          <c:set var="queNo" value ="${question.queNo}"/>
          <c:set var="exqueNo" value ="${example.queNo}"/>

          <c:if test="${queNo eq exqueNo}">
            <td><label><stripes:radio name="point${queNo}"  value="${example.point}"/>${example.exContents}</label></td>
          </c:if>
        </c:forEach>
      </tr>
      </c:forEach>

    </table>


  <%--    권한에 따라서 생명윤리 페이지로 돌아갈지 동물선택 페이지로 갈지 정해야 함--%>
    <stripes:submit name="viewResult" value="Submit" /></stripes:form>
  </form>
  </body>
  </html>
</div>

<%@ include file="../common/IncludeBottom.jsp"%>