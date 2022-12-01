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
      <tr>
        <td  style=color:black>문제 1 </td>
        <td>
          <label><stripes:radio name="example.myRadioValue" value="1"/>1</label>
          <label><stripes:radio name="myRadioValue" value="2"/>2</label>
          <label><stripes:radio name="myRadioValue" value="3"/>3</label>
          <label><stripes:radio name="myRadioValue" value="4"/>4</label>
          <label><stripes:radio name="myRadioValue" value="5"/>5</label>
        </td>
      </tr>
      <tr>
        <td style=color:black>문제 2 </td>
        <td> <input type = "radio" id="RDO_02" name = "RDO_02" value = "5"  > 매우 그렇다
      </tr>
      <tr>
        <td style=color:black>문제 3 </td>
        <td> <input type = "radio" id="RDO_03" name = "RDO_03" value = "5"  > 매우 그렇다
      </tr>
      <tr>
        <td style=color:black>문제 4 </td>
        <td><input type = "radio" id="RDO_04" name = "RDO_04" value = "5"  > 매우 그렇다
      </tr>
      <tr>
        <td style=color:black>문제 5 </td>
        <td> <input type = "radio" id="RDO_05" name = "RDO_05" value = "5"  > 매우 그렇다
      </tr>
      <tr>
        <td style=color:black>문제 6 </td>
        <td><input type = "radio" id="RDO_06" name = "RDO_06" value = "5"  > A
      </tr>
      <tr>
        <td style=color:black>문제 7 </td>
        <td> <input type = "radio" id="RDO_07" name = "RDO_07" value = "5"  > A
      </tr>
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