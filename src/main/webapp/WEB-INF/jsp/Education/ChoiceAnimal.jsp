<%@ include file="../common/IncludeTop.jsp"%>

<form action="">
    <head>
        <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
        <title>동물선택</title>
    </head>
    <div>
        <strong>알고 싶은 동물을 선택해주세요</strong>
        <stripes:link
                class="Button"
                beanclass="org.mybatis.jpetstore.web.actions.EducationActionBean"
                event="DogEducation">
            개
        </stripes:link>
        <stripes:link
                class="Button"
                beanclass="org.mybatis.jpetstore.web.actions.EducationActionBean"
                event="CatEducation">
            고양이
        </stripes:link>
        <stripes:link
                class="Button"
                beanclass="org.mybatis.jpetstore.web.actions.EducationActionBean"
                event="FishEducation">
            물고기
        </stripes:link>
        <stripes:link
                class="Button"
                beanclass="org.mybatis.jpetstore.web.actions.EducationActionBean"
                event="BirdEducation">
            새
        </stripes:link>
    </div>
    <div>
        <strong>테스트를 할 동물을 선택해주세요</strong>
        <input type = "radio" id="RDO_Animal" name = "RDO_Animal" value = "1" CHECKED > Dog
        <input type = "radio" id="RDO_Animal" name = "RDO_Animal" value = "2"> Cat
        <input type = "radio" id="RDO_Animal" name = "RDO_Animal" value = "3"> Bird
        <input type = "radio" id="RDO_Animal" name = "RDO_Animal" value = "4"> Fish
    </div>
    <div>

        <stripes:link
                class="Button"
                beanclass="org.mybatis.jpetstore.web.actions.EducationActionBean"
                event="AfterChoice">
            <stripes:param name="categoryId" value="${actionBean.category.name}" />
            제출
        </stripes:link>
   </div>
</form>
<%--  <button type = "submit">Submit</button> --%>
<%@ include file="../common/IncludeBottom.jsp"%>

