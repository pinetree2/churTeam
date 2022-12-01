<%@ include file="../common/IncludeTop.jsp"%>

<html>
<head>
    <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
    <title>테스트 페이지</title>

</head>
<body>

<h2>테스트 페이지</h2>
<form action="">

    <table>
        <tr>
            <td>문제 1 </td>
            <td> 버튼 </td>
        </tr>
        <tr>
            <td>문제 2 </td>
            <td> </td>
        </tr>
        <tr>
            <td>문제 3 </td>
            <td> </td>
        </tr>
        <tr>
            <td>문제 4 </td>
            <td> </td>
        </tr>
        <tr>
            <td>문제 5 </td>
            <td> </td>
        </tr>
        <tr>
            <td>문제 6 </td>
            <td> </td>
        </tr>
        <tr>
            <td>문제 7 </td>
            <td> </td>
        </tr>

    <%--

        <c:forEach var="myEducation" items="${actionBean.myEducation}">
            <tr>
                <td>
                        ${}
                </td>
                <td>
                        ${}
                </td>

            </tr>
        </c:forEach>
        <tr>
            */
            <td>
            </td>
        </tr>
         --%>
    </table>


<%--    권한에 따라서 생명윤리 페이지로 돌아갈지 동물선택 페이지로 갈지 정해야 함--%>

    <stripes:link
            class="Button"
            beanclass="org.mybatis.jpetstore.web.actions.EducationActionBean"
            event="PASS">
        문제 제출
    </stripes:link>
</form>
    </div>
</body>
</html>
<%@ include file="../common/IncludeBottom.jsp"%>

