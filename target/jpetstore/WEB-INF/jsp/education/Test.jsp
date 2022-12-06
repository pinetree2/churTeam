<%@ include file="../common/IncludeTop.jsp"%>
<div id="Education"><stripes:form
        beanclass="org.mybatis.jpetstore.web.actions.EducationActionBean"
        focus="">
    <%
        response.setHeader("pragma", "No-cache");
        response.setHeader("Cache-Control", "no-cache");
        response.addHeader("Cache-Control", "no-store");    // 일부파이어폭스버그관련
        response.setDateHeader("Expires", 1L);              //응답결과의만료일지정
    %>
<html>

<%--<link href="https://www.w3schools.com/w3css/4/w3.css" rel="stylesheet" >--%>

<head>
    <meta http-equiv="Pragma" content="no-cache">
    <meta http-equiv="Cache-Control" content="no-cache">

    <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=IBM+Plex+Sans+KR&family=Noto+Sans+KR:wght@300;700&family=Patua+One&display=swap" rel="stylesheet">
<jsp:useBean id="Education"
             class="org.mybatis.jpetstore.web.actions.EducationActionBean" />


    <style>
        @import url('https://fonts.googleapis.com/css2?family=IBM+Plex+Sans+KR&family=Noto+Sans+KR:wght@300;700&family=Patua+One&display=swap');
    </style>
        <style>
            table {
                width: 60%;
                margin:auto;
                text-align: center;
            }
        </style>

    <style>
        div3 { text-align: center; }
    </style>

    <style>
        .p1{
            font-family: 'Patua One', cursive;
        }
        .p2 {
            font-family: 'IBM Plex Sans KR', sans-serif;
        }
        .p3{
            font-family: 'Noto Sans KR', sans-serif;
        }
    </style>
</head>
<body>

<div style="text-align: center; padding-top: 5px" class="p1">
    <h2 style="color:darkgreen;display: block; margin-right: auto; margin-left: auto; border-style: double none double none; width:300px; padding-top:10px; padding-bottom: 10px;">
        TEST
     </h2>
</div>

    <title> 정답 입력 </title>
<div style="text-align: center; padding-top: 5px" class="p1">
<p style="display: block; margin-right: auto; margin-left: auto; padding-top:10px; padding-bottom: 10px;">
    문제를 잘 읽고 정답을 고르십시오
</p>
</div>

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
                    <td><label><stripes:radio name="point${queNo}"  value="${example.point}" checked="checked"/>
                            ${example.exContents}</label></td>
                </c:if>
            </c:forEach>
        </tr>
    </c:forEach>

</table>

<stripes:param name="tName"
               value="${sessionScope.accountBean.username}"/>
    <%--    권한에 따라서 생명윤리 페이지로 돌아갈지 동물선택 페이지로 갈지 정해야 함--%>

<%--    <stripes:link--%>
<%--            beanclass="org.mybatis.jpetstore.web.actions.EducationActionBean"--%>
<%--            event="viewResult">--%>
<%--        <img src="../images/submit_btn.png" style="margin-left: auto; margin-right: auto; display: block;"/>--%>
<%--    </stripes:link--%>
<div style="text-align: center"><stripes:submit name="viewResult" value="Submit"/></div> </stripes:form>


</body>
</html>
    </div>

    <%@ include file="../common/IncludeBottom.jsp"%>
