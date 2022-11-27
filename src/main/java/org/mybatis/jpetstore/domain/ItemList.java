package org.mybatis.jpetstore.domain;

import java.io.Serializable;
import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

public class ItemList implements Serializable {

    private static final long serialVersionUID = -2159121673445254631L; //미정
    private final Map<String, Item> itemMap = Collections.synchronizedMap(new HashMap<>());
    private final List<Item> itemList = new ArrayList<>();

    public Iterator<Item> getItems() {
        return itemList.iterator();
    }

    public List<Item> getItemList() {
        return itemList;
    }

    public int getNumerOfItems() {
        return itemList.size();
    }


    public Iterator<Item> getAllItems() {
        return itemList.iterator();
    }


    public boolean containsItemId(String itemId) {
        return itemMap.containsKey(itemId);
    }


    /**
     * Adds the item.
     *
     * @param item the item
     */
    public void addItem(Item item) {
        Item items = itemMap.get(item.getItemId());
        if (items == null) {
            items = new Item();
            //description ..인데 이게 맞는지는 모르겠음 일단 설정하는..
            items.getProduct().setDescription(item.getProduct().getDescription());
            items.setListPrice(item.getListPrice());
            itemMap.put(items.getItemId(), items);
            itemList.add(items);
        }
    }

    /**
     * Removes the item by id.
     *
     * @param itemId the item id
     * @return the item
     */
    // 이거 Cart.java removeItemById 참고 한건데 Item 클래스에는 Item 객체를 리턴 메소드가 없어서..
    public Item deleteItemById(String itemId) {
        Item items = itemMap.remove(itemId);
        if (items == null) {
            return null;
        } else {
            itemList.remove(items);
            //방법 1
            return items;
            //방법 2 함수 return 형 Product 로 바꾸고 return items.getProducts(); Product 객체 리턴하는거
        }
    }

    /**
     * @param , item
     *                 the item id
     */
    public void Updateitem(Item item) {
        //음 건네받을때 Item 객체를 받아오는걸까 모르겠다.
        //HashMap 의 put 메소드를 이용한다.
        //itemId 에 맞는 컬럼(key) 에 맞게 value 를 update시키려면?
        if (item.getItemId() != null)
       {
                Item items = itemMap.get(item.getItemId());
                items.setAttribute1(item.getAttribute1());
                items.setListPrice(item.getListPrice());
                items.setQuantity(item.getQuantity());
                itemMap.put(items.getItemId(), items);
                itemList.add(items);


            }
        }

}



