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

import java.util.Iterator;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import com.mysql.cj.Session;
import net.sourceforge.stripes.action.ForwardResolution;
import net.sourceforge.stripes.action.Resolution;
import net.sourceforge.stripes.action.SessionScope;
import net.sourceforge.stripes.integration.spring.SpringBean;

import net.sourceforge.stripes.mock.MockHttpSession;
import org.mybatis.jpetstore.domain.*;
import org.mybatis.jpetstore.service.CatalogService;
import org.mybatis.jpetstore.service.EducationService;

/**
 * The Class CartActionBean.
 *
 * @author Eduardo Macarron
 */
@SessionScope
public class CartActionBean extends AbstractActionBean {

  private static final long serialVersionUID = -4038684592582714235L;
  private static final String VIEW_CART = "/WEB-INF/jsp/cart/Cart.jsp";
  private static final String VIEW_EDIT = "/WEB-INF/jsp/admin/EditItem.jsp";
  private static final String CHECK_OUT = "/WEB-INF/jsp/cart/Checkout.jsp";
  private static final String EDU_PAGE = "/WEB-INF/jsp/education/LifeEducation.jsp";
  private static final String VIEW_FISH = "/WEB-INF/jsp/education/FishEducation.jsp";
  private static final String VIEW_DOG = "/WEB-INF/jsp/education/DogEducation.jsp";
  private static final String VIEW_CAT = "/WEB-INF/jsp/education/CatEducation.jsp";
  private static final String VIEW_REPTILE = "/WEB-INF/jsp/education/ReptileEducation.jsp";
  private static final String VIEW_BIRD = "/WEB-INF/jsp/education/BirdEducation.jsp";
  private static final String SIGNON = "/WEB-INF/jsp/account/SignonForm.jsp";


  @SpringBean
  private transient CatalogService catalogService;
  @SpringBean
  private transient EducationService educationService;

  private Cart cart = new Cart();
  private String workingItemId;
  private String productId;
  private List<Item> itemList;
  private Product product;
  private String CategoryId;
  private TestResult testResult= new TestResult();
  private String Username;
  public List<Item> getItemList() {
    return itemList;
  }


  public void setCategoryId(String CategoryId){
    this.CategoryId = CategoryId;
  }
  public String getCategoryId(){
    return CategoryId;
  }
  public void setUsername(String Username){
    this.Username = Username;
  }
  public String getUsername(){
    return Username;
  }
  public Product getProduct() {
    return product;
  }

  public void setProduct(Product product) {
    this.product = product;
  }
  public void setItemList(List<Item> itemList) {
    this.itemList = itemList;
  }
  public String getProductId() {
    return productId;
  }

  public void setProductId(String productId) {
    this.productId = productId;
  }
  public Cart getCart() {
    return cart;
  }

  public void setCart(Cart cart) {
    this.cart = cart;
  }

  public void setWorkingItemId(String workingItemId) {
    this.workingItemId = workingItemId;
  }

  /**
   * Adds the item to cart.
   *
   * @return the resolution
   */
  public Resolution addItemToCart() { //System.out.println(Username);
    HttpSession s = context.getRequest().getSession();
    if(s.getAttribute("accountBean")==null) return new ForwardResolution(SIGNON);
    CategoryId = catalogService.getType(productId);
    System.out.println(CategoryId);
    Username = (String)s.getAttribute("UserId");
    System.out.println(Username);
    testResult = educationService.getTestResult(Username);

    System.out.println(testResult.getET());
    System.out.println(testResult.getDG());
    System.out.println(testResult.getCT());
    System.out.println(testResult.getRT());
    System.out.println(testResult.getFI());
    System.out.println(testResult.getBD());



    if(testResult.getET()!=1){
      return new ForwardResolution(EDU_PAGE);
    }
    else {
    switch (CategoryId) {
      case "FISH":
        if(testResult.getFI()!=1)
          return new ForwardResolution(VIEW_FISH);
        break;
      case "DOGS":
        if(testResult.getDG()!=1)
          return new ForwardResolution(VIEW_DOG);
        break;
      case "CATS":
        if(testResult.getCT()!=1)
          return new ForwardResolution(VIEW_CAT);
        break;
      case "BIRD":
        if(testResult.getBD()!=1)
          return new ForwardResolution(VIEW_BIRD);
        break;
      case "REPTILES":
        if(testResult.getRT()!=1)
          return new ForwardResolution(VIEW_REPTILE);
        break;
    }

    if (cart.containsItemId(workingItemId)) {
      cart.incrementQuantityByItemId(workingItemId);
    } else {
      // isInStock is a "real-time" property that must be updated
      // every time an item is added to the cart, even if other
      // item details are cached.
      boolean isInStock = catalogService.isItemInStock(workingItemId);
      Item item = catalogService.getItem(workingItemId);
      cart.addItem(item, isInStock);
    }
    return new ForwardResolution(VIEW_CART);
    }
  }

  /**
   * Removes the item from cart.
   *
   * @return the resolution
   */
  public Resolution removeItemFromCart() {

    Item item = cart.removeItemById(workingItemId);

    if (item == null) {
      setMessage("Attempted to remove null CartItem from Cart.");
      return new ForwardResolution(ERROR);
    } else {
      return new ForwardResolution(VIEW_CART);
    }
  }

  /**
   * Update cart quantities.
   *
   * @return the resolution
   */
  public Resolution updateCartQuantities() {
    HttpServletRequest request = context.getRequest();

    Iterator<CartItem> cartItems = getCart().getAllCartItems();
    while (cartItems.hasNext()) {
      CartItem cartItem = cartItems.next();
      String itemId = cartItem.getItem().getItemId();
      try {
        int quantity = Integer.parseInt(request.getParameter(itemId));
        getCart().setQuantityByItemId(itemId, quantity);
        if (quantity < 1) {
          cartItems.remove();
        }
      } catch (Exception e) {
        // ignore parse exceptions on purpose
      }
    }

    return new ForwardResolution(VIEW_CART);
  }

  public ForwardResolution viewCart() {
    return new ForwardResolution(VIEW_CART);
  }

  public ForwardResolution checkOut() {
    return new ForwardResolution(CHECK_OUT);
  }

  public ForwardResolution editItem() {
    if (productId != null) {
      itemList = null;
      product = null;
      itemList = catalogService.getItemListByProduct(productId);
      product = catalogService.getProduct(productId);
    }
    return new ForwardResolution(VIEW_EDIT);
  }


  public void clear() {
    cart = new Cart();
    workingItemId = null;
    itemList = null;
    product = null;
  }

}
