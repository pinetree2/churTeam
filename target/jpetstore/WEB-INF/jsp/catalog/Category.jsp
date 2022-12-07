<%--

       Copyright 2010-2022 the original author or authors.

       Licensed under the Apache License, Version 2.0 (the "License");
       you may not use this file except in compliance with the License.
       You may obtain a copy of the License at

          https://www.apache.org/licenses/LICENSE-2.0

       Unless required by applicable law or agreed to in writing, software
       distributed under the License is distributed on an "AS IS" BASIS,
       WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
       See the License for the specific language governing permissions and
       limitations under the License.

--%>
<%@ include file="../common/IncludeTop.jsp"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<div id="BackLink"><stripes:link
		beanclass="org.mybatis.jpetstore.web.actions.CatalogActionBean">
	Return to Main Menu</stripes:link></div>

<div id="Catalog">

	<h2>${actionBean.category.name}</h2>
	<c:if test="${actionBean.category.name=='Dogs'}">
		<div style="text-align: center">
			<stripes:link
					beanclass="org.mybatis.jpetstore.web.actions.EducationActionBean"
					event="DogEducation">
				<img src="../images/dog_btn.png" style="margin-left: auto; margin-right: auto; display: block;"/>
			</stripes:link>
		</div>
	</c:if>
	<c:if test="${actionBean.category.name=='Cats'}">
		<div style="text-align: center">
			<stripes:link
					beanclass="org.mybatis.jpetstore.web.actions.EducationActionBean"
					event="CatEducation">
				<img src="../images/cat_btn.png" style="margin-left: auto; margin-right: auto; display: block;"/>
			</stripes:link>
		</div>
	</c:if>
	<c:if test="${actionBean.category.name=='Fish'}">
		<div style="text-align: center">
			<stripes:link
					beanclass="org.mybatis.jpetstore.web.actions.EducationActionBean"
					event="FishEducation">
				<img src="../images/fish_btn.png" style="margin-left: auto; margin-right: auto; display: block;"/>
			</stripes:link>
		</div>
	</c:if>
	<c:if test="${actionBean.category.name=='Birds'}">
		<div style="text-align: center">
			<stripes:link
					beanclass="org.mybatis.jpetstore.web.actions.EducationActionBean"
					event="BirdEducation">
				<img src="../images/bird_btn.png" style="margin-left: auto; margin-right: auto; display: block;"/>
			</stripes:link>
		</div>
	</c:if>

	<c:if test="${actionBean.category.name=='Reptiles'}">
		<div style="text-align: center">
			<stripes:link
					beanclass="org.mybatis.jpetstore.web.actions.EducationActionBean"
					event="ReptileEducation">
				<img src="../images/reptile_btn.png" style="margin-left: auto; margin-right: auto; display: block;"/>
			</stripes:link>
		</div>
	</c:if>


	<table>
		<tr>
			<th>Product ID</th>
			<th>Name</th>
		</tr>
		<c:forEach var="product" items="${actionBean.productList}">
			<tr>
				<td><stripes:link
						beanclass="org.mybatis.jpetstore.web.actions.CatalogActionBean"
						event="viewProduct">
					<stripes:param name="productId" value="${product.productId}" />
					${product.productId}
				</stripes:link></td>
				<td>${product.name}</td>
			</tr>
		</c:forEach>
	</table>
</div>

<%@ include file="../common/IncludeBottom.jsp"%>