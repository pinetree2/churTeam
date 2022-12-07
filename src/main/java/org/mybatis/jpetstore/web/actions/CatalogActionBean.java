/*
 *    Copyright 2010-2022 the original author or authors.
 *
 *    Licensed under the Apache License, Version 2.0 (the "License");
 *    you may not use this file except in compliance with the License.
 *    You may obtain a copy of the License at
 *
 *       https://www.apache.org/licenses/LICENSE-2.0
 *
 *    Unless required by applicable law or agreed to in writing, software
 *    distributed under the License is distributed on an "AS IS" BASIS,
 *    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 *    See the License for the specific language governing permissions and
 *    limitations under the License.
 */
package org.mybatis.jpetstore.web.actions;

import java.util.List;

import com.google.gson.Gson;
import net.sourceforge.stripes.action.*;
import net.sourceforge.stripes.integration.spring.SpringBean;

import org.mybatis.jpetstore.domain.Category;
import org.mybatis.jpetstore.domain.Item;
import org.mybatis.jpetstore.domain.Product;
import org.mybatis.jpetstore.service.CatalogService;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * The Class CatalogActionBean.
 *
 * @author Eduardo Macarron
 */
@SessionScope
public class CatalogActionBean extends AbstractActionBean {

  private static final long serialVersionUID = 5849523372175050635L;

  private static final String MAIN = "/WEB-INF/jsp/catalog/Main.jsp";
  private static final String VIEW_CATEGORY = "/WEB-INF/jsp/catalog/Category.jsp";
  private static final String VIEW_PRODUCT = "/WEB-INF/jsp/catalog/Product.jsp";
  private static final String VIEW_ITEM = "/WEB-INF/jsp/catalog/Item.jsp";
  private static final String VIEW_EDIT = "/WEB-INF/jsp/catalog/EditItem.jsp";
  private static final String VIEW_LIST = "/WEB-INF/jsp/admin/ProductList.jsp";
  private static final String EDIT_ITEM ="/WEB-INF/jsp/admin/EditItem.jsp";
  private static final String VIEW_ADDFORM ="/WEB-INF/jsp/admin/AddItem.jsp";
  private static final String UPDATE_ITEM="/WEB-INF/jsp/admin/UpdateItem.jsp";
  private static final String SEARCH_PRODUCTS = "/WEB-INF/jsp/catalog/SearchProducts.jsp";

  @SpringBean
  private transient CatalogService catalogService;

  private String keyword;

  private String categoryId;
  private Category category;
  private List<Category> categoryList;

  private String productId;
  private Product product;
  private List<Product> productList;
  private List<Product> allProductList;

  private String itemId;
  private Item item;
  private List<Item> itemList;

  public String getKeyword() {
    return keyword;
  }

  public void setKeyword(String keyword) {
    this.keyword = keyword;
  }

  public String getCategoryId() {
    return categoryId;
  }

  public void setCategoryId(String categoryId) {
    this.categoryId = categoryId;
  }

  public String getProductId() {
    return productId;
  }

  public void setProductId(String productId) {
    this.productId = productId;
  }

  public String getItemId() {
    return itemId;
  }

  public void setItemId(String itemId) {
    this.itemId = itemId;
  }

  public Category getCategory() {
    return category;
  }

  public void setCategory(Category category) {
    this.category = category;
  }

  public Product getProduct() {
    return product;
  }

  public void setProduct(Product product) {
    this.product = product;
  }

  public List<Product> getAllProductList(){return allProductList;}
  public Item getItem() {
    return item;
  }

  public void setItem(Item item) {
    this.item = item;
  }

  public List<Category> getCategoryList() {
    return categoryList;
  }

  public void setCategoryList(List<Category> categoryList) {
    this.categoryList = categoryList;
  }

  public List<Product> getProductList() {
    return productList;
  }

  public void setProductList(List<Product> productList) {
    this.productList = productList;
  }

  public List<Item> getItemList() {
    return itemList;
  }

  public void setItemList(List<Item> itemList) {
    this.itemList = itemList;
  }

  @DefaultHandler
  public ForwardResolution viewMain() {
    return new ForwardResolution(MAIN);
  }

  /**
   * View category.
   *
   * @return the forward resolution
   */
  public ForwardResolution viewCategory() {
    if (categoryId != null) {
      productList = catalogService.getProductListByCategory(categoryId);
      category = catalogService.getCategory(categoryId);
    }
    return new ForwardResolution(VIEW_CATEGORY);
  }

  /**
   * View product.
   *
   * @return the forward resolution
   */
  public ForwardResolution viewProduct() {
    if (productId != null) {
      itemList = catalogService.getItemListByProduct(productId);
      product = catalogService.getProduct(productId);
    }
    return new ForwardResolution(VIEW_PRODUCT);
  }
  public ForwardResolution viewAllProduct() {
    allProductList = catalogService.getProductList();
    return new ForwardResolution(VIEW_LIST);
  }
  /**
   * View item.
   *
   * @return the forward resolution
   */
  public ForwardResolution viewItem() {


    item = catalogService.getItem(itemId);
    product = item.getProduct();
    if(item==null || product==null) return new ForwardResolution(UPDATE_ITEM);
    return new ForwardResolution(VIEW_ITEM);

  }

  /**
   * Update Item 버튼 클릭시 해당 페이지로 이동
   * @return the forward resolution
   *
   */
  public ForwardResolution updateItemPage(){
    HttpSession s = context.getRequest().getSession();
    String auth = (String)s.getAttribute("principalAuth");

    if(auth == null || auth.equals("0")){
      return new ForwardResolution(CatalogActionBean.class);
    }else{
      if (productId != null) {
        itemList = catalogService.getItemListByProduct(productId);
        product = catalogService.getProduct(productId);
        item = catalogService.getItem(itemId);

      }
      return new ForwardResolution(UPDATE_ITEM);
    }

  }


  /**
   * Insert Item
   * @return the resolution
   *
   */
  public Resolution addItem(){
    HttpSession s = context.getRequest().getSession();
    String auth = (String)s.getAttribute("principalAuth");

    if(auth == null || auth.equals("0")){
      return new RedirectResolution(CatalogActionBean.class);
    }else{
      catalogService.insertItem(item);
      return new RedirectResolution("/actions/Cart.action?editItem").addParameter("productId",productId);
    }

  }

  /**
   * Update Item
   * @return the resolution
   *
   */
  public Resolution updateItem(){
    HttpSession s = context.getRequest().getSession();
    String auth = (String)s.getAttribute("principalAuth");

    if(auth == null || auth.equals("0")){
      return new RedirectResolution(CatalogActionBean.class);
    }else {
      if (productId != null) {
        catalogService.updateItem(item);
        item = catalogService.getItem(item.getItemId());
        itemList = catalogService.getItemListByProduct(productId);
        product = catalogService.getProduct(productId);
      }

      return new RedirectResolution("/actions/Cart.action?editItem").addParameter("productId",productId);
    }
  }

  /**
   * Delete Item
   * @return the resolution
   *
   */
  public Resolution deleteItem() {
    HttpSession s = context.getRequest().getSession();
    String auth = (String)s.getAttribute("principalAuth");

    if(auth == null || auth.equals("0")){
      return new RedirectResolution(CatalogActionBean.class);
    }else{
      catalogService.deleteItem(itemId);

      if (productId != null) {
        itemList = catalogService.getItemListByProduct(productId);
        product = catalogService.getProduct(productId);
      }
      return new RedirectResolution("/actions/Cart.action?editItem").addParameter("productId",productId);
    }
  }

  public ForwardResolution goAddForm(){
    HttpSession s = context.getRequest().getSession();
    String auth = (String)s.getAttribute("principalAuth");

    if(auth == null || auth.equals("0")){
      return new ForwardResolution(CatalogActionBean.class);
    }else{
      if(productId != null){
        itemList = catalogService.getItemListByProduct(productId);
        product = catalogService.getProduct(productId);
      }
      return new ForwardResolution(VIEW_ADDFORM);
    }

  }

  /**
   * Search products.
   *
   * @return the forward resolution
   */
  public ForwardResolution searchProducts() {
    if (keyword == null || keyword.length() < 1) {
      setMessage("Please enter a keyword to search for, then press the search button.");
      return new ForwardResolution(ERROR);
    } else {
      productList = catalogService.searchProductList(keyword.toLowerCase());
      return new ForwardResolution(SEARCH_PRODUCTS);
    }
  }

  public Resolution categoryAPI() {
    return new Resolution() {
      @Override
      public void execute(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse) throws Exception {
        String categoryId = httpServletRequest.getParameter("categoryId");
        List<Product> prodectList;
        if(categoryId!=null)
           prodectList = catalogService.getProductListByCategory(categoryId);

        Gson gson = new Gson();
        String categoryJson = gson.toJson(productList);
        httpServletResponse.setCharacterEncoding(("utf-8"));
        httpServletResponse.setContentType("application/json");
        httpServletResponse.getWriter().write(categoryJson);
      }
    };
  }
  /**
   * Clear.
   */
  public void clear() {
    keyword = null;

    categoryId = null;
    category = null;
    categoryList = null;

    productId = null;
    product = null;
    productList = null;

    itemId = null;
    item = null;
    itemList = null;
  }

}
