<%--
  Created by IntelliJ IDEA.
  User: dlgot
  Date: 2022-11-17
  Time: 오후 4:53
  To change this template use File | Settings | File Templates.
--%>
<%-- --%>
<%@ include file="../common/IncludeTop.jsp"%>

<jsp:useBean id="catalog"
             class="org.mybatis.jpetstore.web.actions.CatalogActionBean" />

<div id="BackLink"><stripes:link
        beanclass="org.mybatis.jpetstore.web.actions.CatalogActionBean"
        event="viewProduct">
    <stripes:param name="productId" value="${actionBean.product.productId}" />
    Return to ${actionBean.product.productId}
</stripes:link></div>
<div id="Catalog">

    <h2>${actionBean.product.name}</h2>

    <table>
        <tr>
            <th>Item ID</th>
            <th>Product ID</th>
            <th>Description</th>
            <th>List Price</th>
            <th> </th>
            <th>&nbsp;</th>
        </tr>
        <c:forEach var="item" items="${actionBean.itemList}">
            <tr>
                <td><stripes:link
                        beanclass="org.mybatis.jpetstore.web.actions.CatalogActionBean"
                        event="viewItem">
                    <stripes:param name="itemId" value="${item.itemId}" />
                    ${item.itemId}
                </stripes:link></td>
                <td>${item.product.productId}</td>
                <td>${item.attribute1} ${item.attribute2} ${item.attribute3}
                        ${item.attribute4} ${item.attribute5} ${actionBean.product.name}</td>
                <td><fmt:formatNumber value="${item.listPrice}"
                                      pattern="$#,##0.00" /></td>
                <td><stripes:link class="Button"
                                  beanclass="org.mybatis.jpetstore.web.actions.CatalogActionBean"
                                  event="updateItemPage">
                    <stripes:param name="itemId" value="${item.itemId}" />
                    UPDATE
                </stripes:link></td>
                <td><stripes:link class="Button"
                                  beanclass="org.mybatis.jpetstore.web.actions.CatalogActionBean"
                                  event="viewItem">
                    <stripes:param name="itemId" value="${item.itemId}" />
                    DELETE
                </stripes:link></td>
            </tr>
        </c:forEach>
        <tr>
            <td>
            </td>
        </tr>
    </table>
    <stripes:link
            class="Button"
            beanclass="org.mybatis.jpetstore.web.actions.CatalogActionBean"
            event="categoryAPI">
        <stripes:param name="categoryId" value="test" />
        ADD
    </stripes:link>
</div>

<%@ include file="../common/IncludeBottom.jsp"%>