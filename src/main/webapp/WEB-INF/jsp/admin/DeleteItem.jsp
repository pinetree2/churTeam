<%--
  Created by IntelliJ IDEA.
  User: ies69
  Date: 2022-11-23
  Time: PM 2:39
  To change this template use File | Settings | File Templates.
--%>
<%@ include file="../common/IncludeTop.jsp"%>

<jsp:useBean id="catalog"
             class="org.mybatis.jpetstore.web.actions.CatalogActionBean" />

<div id="BackLink"><stripes:link
        beanclass="org.mybatis.jpetstore.web.actions.CatalogActionBean"
        event="viewCategory">
  <stripes:param name="categoryId"
                 value="${actionBean.product.categoryId}" />
  Return to ${actionBean.product.categoryId}
</stripes:link></div>

<div id="Catalog">

  <h2>${actionBean.product.name}</h2>

  <table>
    <tr>
      <th>Delete Item ID</th>
      <th>Product ID</th>
      <th>Description</th>
      <th>List Price</th>
      <th>&nbsp;</th>
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
          ${item.attribute4} ${actionBean.product.name}</td>

      <td><stripes:link class="Button"
                        beanclass="org.mybatis.jpetstore.web.actions.CartActionBean"
                        event="removeItemFromCart">
        <stripes:param name="workingItemId" value="${cartItem.item.itemId}" />
        UPDATE
      </stripes:link></td>
      <td><stripes:link class="Button"
                        beanclass="org.mybatis.jpetstore.web.actions.CartActionBean"
                        event="removeItemFromCart">
        <stripes:param name="workingItemId" value="${cartItem.item.itemId}" />
        DELETE
      </stripes:link></td>
      </c:forEach>
    <tr>
      <td><stripes:link class="Button"
                        beanclass="org.mybatis.jpetstore.web.actions.CartActionBean"
                        event="addItemToCart">
        <stripes:param name="workingItemId" value="${actionBean.item.itemId}" />
        Add
      </stripes:link></td>
    </tr>
  </table>
</div>

<%@ include file="../common/IncludeBottom.jsp"%>