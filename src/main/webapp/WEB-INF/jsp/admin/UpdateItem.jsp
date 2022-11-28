<%--
  Created by IntelliJ IDEA.
  User: dlgot
  Date: 2022-11-25
  Time: 오후 11:09
  To change this template use File | Settings | File Templates.
--%>
<%@ include file="../common/IncludeTop.jsp"%>

<jsp:useBean id="catalog"
             class="org.mybatis.jpetstore.web.actions.CatalogActionBean" />

<div id="BackLink"><stripes:link
        beanclass="org.mybatis.jpetstore.web.actions.CatalogActionBean"
        event="viewProduct">
    <stripes:param name="productId" value="${actionBean.product.productId}" />
    Return to ${actionBean.product.productId}
</stripes:link></div>

<div id="Catalog"><stripes:form
        beanclass="org.mybatis.jpetstore.web.actions.CatalogActionBean"
        focus="">

    <h2>${actionBean.product.name}</h2>

    <table>
        <tr>
            <th>Item ID</th>
            <th>Description</th>
            <th>List Price</th>
            <th>Quantity</th>
        </tr>

        <td><stripes:link
                beanclass="org.mybatis.jpetstore.web.actions.CatalogActionBean"
                event="viewItem">
            <stripes:param name="itemId" value="${actionBean.item.itemId}" />
            ${actionBean.item.itemId}
        </stripes:link></td>
        <td><stripes:text name="item.attribute1" /></td>
        <td><stripes:text name="item.listPrice" /></td>
        <td><stripes:text name="item.quantity" /></td>
    </tr>

    </table>
    <stripes:submit name="Submit" value="updateItem" /></stripes:form></div>

<%@ include file="../common/IncludeBottom.jsp"%>