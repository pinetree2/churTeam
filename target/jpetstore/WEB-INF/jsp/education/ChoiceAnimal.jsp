<%@ include file="../common/IncludeTop.jsp"%>

<form action="">
    <head>
        <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=IBM+Plex+Sans+KR:wght@600;700&family=Noto+Sans+KR:wght@300;700&display=swap" rel="stylesheet">

        <style>
            @import url('https://fonts.googleapis.com/css2?family=IBM+Plex+Sans+KR:wght@600;700&family=Noto+Sans+KR:wght@300;700&display=swap');
        </style>

        <style>
            .p1{
                font-family: 'Noto Sans KR', sans-serif;
            }
            .p2 {
                font-family: 'Jua', sans-serif;
            }
            .p3{
                font-family: 'IBM Plex Sans KR', sans-serif;
            }
        </style>
        <title>동물선택</title>
    </head>
    <style>
        div3 { text-align: center; }
    </style>
    <div>
        <div style="text-align: center; padding-top: 5px" class="p3">

        <p style="display: block; margin-right: auto; margin-left: auto; border-style: double none double none; width:500px; padding-top:10px; padding-bottom: 10px;"> <strong>
            알고 싶은 동물을 선택해주세요
        </strong> </p>
        </div>


        <br>
        <div3>
        <table style="border:1px solid black;margin-left:auto;margin-right:auto;">
            <tr>
            <td>

        <stripes:link
                beanclass="org.mybatis.jpetstore.web.actions.EducationActionBean"
                event="FishEducation">
            <img src="../images/fish_edu_btn.png" style="margin-left: auto; margin-right: auto; display: block;"/>
            <stripes:param name="type" value="FI" />
        </stripes:link>
                </td>
                <td>
        <stripes:link
                beanclass="org.mybatis.jpetstore.web.actions.EducationActionBean"
                event="DogEducation">
            <img src="../images/dog_edu_btn.png"  style="margin-left: auto; margin-right: auto; display: block;" />
            <stripes:param name="type" value="DG" />
        </stripes:link>
                </td>
                <td>
        <stripes:link
                beanclass="org.mybatis.jpetstore.web.actions.EducationActionBean"
                event="CatEducation">
            <img src="../images/cat_edu_btn.png"  style="margin-left: auto; margin-right: auto; display: block;"/>
            <stripes:param name="type" value="CT" />
        </stripes:link>
                </td>
                <td>
        <stripes:link
                beanclass="org.mybatis.jpetstore.web.actions.EducationActionBean"
                event="ReptileEducation">
            <img src="../images/reptile_edu_btn.png"  style="margin-left: auto; margin-right: auto; display: block;"/>


        </stripes:link>
                </td>
                <td>
        <stripes:link
                beanclass="org.mybatis.jpetstore.web.actions.EducationActionBean"
                event="BirdEducation">
            <img src="../images/bird_edu_btn.png"  style="margin-left: auto; margin-right: auto; display: block;"/>
            <stripes:param name="type" value="BD" />
        </stripes:link>
                </td>

            </tr>
        <tr>

            <td>
        <img src="../images/sm_fish.gif" style="margin-left: auto; margin-right: auto; display: block;" />
            </td>
            <td>
        <img src="../images/sm_dogs.gif" style="margin-left: auto; margin-right: auto; display: block;"/>
            </td>
            <td>
        <img src="../images/sm_cats.gif" style="margin-left: auto; margin-right: auto; display: block;"/>
            </td>
            <td>
        <img src="../images/sm_reptiles.gif" style="margin-left: auto; margin-right: auto; display: block;"/>
            </td>
            <td>
        <img src="../images/sm_birds.gif" style="margin-left: auto; margin-right: auto; display: block;"/>
            </td>
            </tr>
        </table>
        </div3>
    </div>
<%--    <div style="text-align: center; padding-top: 5px" class="p3">--%>
<%--    <p style="display: block; margin-right: auto; margin-left: auto; border-style: double none double none; width:600px; padding-top:10px; padding-bottom: 10px;"> <strong>--%>
<%--        테스트를 할 동물을 선택해주세요--%>
<%--    </strong> </p>--%>

<%--    <div>--%>
<%--        <input type = "radio" id="RDO_Animal" name = "RDO_Animal" value = "1" CHECKED > Dog--%>
<%--        <input type = "radio" id="RDO_Animal" name = "RDO_Animal" value = "2"> Cat--%>
<%--        <input type = "radio" id="RDO_Animal" name = "RDO_Animal" value = "3"> Bird--%>
<%--        <input type = "radio" id="RDO_Animal" name = "RDO_Animal" value = "4"> Fish--%>
<%--        <input type = "radio" id="RDO_Animal" name = "RDO_Animal" value = "5"> Reptile--%>
<%--    </div>--%>
<%--    <div>--%>

<%--        <stripes:link--%>
<%--                beanclass="org.mybatis.jpetstore.web.actions.EducationActionBean"--%>
<%--                event="AfterChoice">--%>
<%--&lt;%&ndash;            <stripes:param name="categoryId" value="${actionBean.category.name}" />&ndash;%&gt;--%>
<%--            <img src="../images/test_start.png" style="margin-left: auto; margin-right: auto; display: block;"/>--%>
<%--        </stripes:link>--%>
<%--   </div>--%>
</form>
<%--  <button type = "submit">Submit</button> --%>
<%@ include file="../common/IncludeBottom.jsp"%>

