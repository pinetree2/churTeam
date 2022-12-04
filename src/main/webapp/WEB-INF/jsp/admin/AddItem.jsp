<%@ include file="../common/IncludeTop.jsp"%>

<jsp:useBean id="catalog"
             class="org.mybatis.jpetstore.web.actions.CatalogActionBean" />

<div id="BackLink"><stripes:link
        beanclass="org.mybatis.jpetstore.web.actions.CatalogActionBean"
        event="viewProduct">
  <stripes:param name="productId" value="${actionBean.product.productId}" />
  Return to Product
</stripes:link></div>

<div id="Catalog"><stripes:form
        beanclass="org.mybatis.jpetstore.web.actions.CatalogActionBean"
        focus="">

  <h2>${actionBean.product.name}</h2>
  <table>
    <tr>
      <th>Product ID</th>
      <th>Item ID</th>
      <th>Description</th>
      <th>List Price</th>
      <th>Quantity</th>
    </tr>
    <td>
      <stripes:param name="item.product.productId" value="${actionBean.product.productId}" />
        ${actionBean.product.productId}
    </td>
    <td><stripes:text name="item.itemId"  /> </td>
    <td><stripes:text name="item.attribute1" /></td>
    <td><stripes:text name="item.listPrice" /></td>
    <td><stripes:text name="item.quantity" /></td>
    </tr>

  </table>
  <stripes:submit name="addItem" value="Submit" />
</stripes:form>
</div>

<%@ include file="../common/IncludeBottom.jsp"%>
