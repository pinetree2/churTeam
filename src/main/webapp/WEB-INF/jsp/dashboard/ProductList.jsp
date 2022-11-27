<%--
  Created by IntelliJ IDEA.
  User: dlgot
  Date: 2022-11-25
  Time: 오후 7:42
  To change this template use File | Settings | File Templates.
--%>
<%@ include file="../common/IncludeTop.jsp"%>

<div id="BackLink"><stripes:link
        beanclass="org.mybatis.jpetstore.web.actions.CatalogActionBean">
    Return to Main Menu</stripes:link></div>

<html>
<head>
    <title>Title</title>
</head>
<body>
<table>
<tr>
    <th>Product ID</th>
    <th>Name</th>
</tr>
<c:forEach var="product" items="${actionBean.allProductList}">
    <tr>
        <td><stripes:link beanclass="org.mybatis.jpetstore.web.actions.CatalogActionBean"
                          event="viewAllProduct">
            <stripes:param name="productId" value="${product.productId}" />
            ${product.productId}
        </stripes:link></td>
        <td>${product.name}</td>
        <!--내 페이지 연결해봄 -->
        <td>
        <stripes:link class="Button" beanclass="org.mybatis.jpetstore.web.actions.CatalogActionBean" event="viewEditItem">
            <stripes:param name="productId" value="${product.productId}" />
            EDIT
        </stripes:link>
        </td>
    </tr>
</c:forEach>

</table>
</body>
</html>
<%@ include file="../common/IncludeBottom.jsp"%>
