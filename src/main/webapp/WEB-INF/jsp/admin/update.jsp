<%--
  Created by IntelliJ IDEA.
  User: ies69
  Date: 2022-11-19
  Time: PM 9:13
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
--%>
<%@ include file="../common/IncludeTop.jsp"%>

<div id="BackLink"><stripes:link
        beanclass="org.mybatis.jpetstore.web.actions.ProductListActionBean">
    Return to Main Menu</stripes:link></div>

<div id="ProductList">

    <div id="item">

        <h2>Shopping Cart</h2>
        <stripes:form
                beanclass="org.mybatis.jpetstore.web.actions.ProductListActionBean">
            <table>
                <tr
                    <th><b>Product ID</b></th>
                    <th><b>Description</b></th>
                    <th><b>List Price</b></th>
                    <th><b>Quantity</b></th>
                    <th>&nbsp;</th>
                </tr>


                <c:forEach var="ProductList" items="${actionBean.ProductList.item}">
                    <tr>
                        <td><stripes:link
                                beanclass="org.mybatis.jpetstore.web.actions.ProductListActionBean"
                                event="update">
                            <stripes:param name="itemId" value="${ProductList.item.itemId}" />
                            ${ProductItem.item.itemId}
                        </stripes:link></td>
                        <td>${ProductItem.item.product.productId}</td>
                        <td>${ProductItem.item.attribute1} ${ProductItem.item.attribute2}
                                ${ProductItem.item.attribute3} ${ProductItem.item.attribute4}
                               </td>
                        <td>${cartItem.inStock}</td>
                        <td><stripes:text size="3" name="${ProductItem.item.itemId}"
                                          value="${ProductItem.ProductID}"
                                          value="${ProductItem.Description}"
                                          value="${ProductItem.ListPrice}"
                                          value="${ProductItem.quantity}" /></td>
                        <td><stripes:link class="Button"
                                          beanclass="org.mybatis.jpetstore.web.actions.ProductListActionBean"
                                          event="updateItemFromProductList">
                            <stripes:param name="ProductItemId" value="${ProductItem.item.itemId}" />
                            update
                        </stripes:link></td>
                    </tr>
                </c:forEach>
            </table>
    </div>
    <div id="Separator">&nbsp;</div>
</div>

<%@ include file="../common/IncludeBottom.jsp"%>