package org.mybatis.jpetstore.domain;

import java.io.Serializable;
import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

public class ItemList implements Serializable{

    private static final long serialVersionUID = -2159121673445254631L; //미정
    private final Map<String, Item> itemMap = Collections.synchronizedMap(new HashMap<>());
    private final List<Item> itemList = new ArrayList<>();

    public Iterator<Item> getItems(){return itemList.iterator();}
    public List<Item> getItemList(){return itemList;}
    public int getNumerOfItems(){return itemList.size();}
    public Iterator<Item> getAllItems(){
        return itemList.iterator();
    }
    public boolean containsItemId(String itemId){
        return itemMap.containsKey(itemId);
    }

    public void addItem(Item item){
        Item items = itemMap.get(item.getItemId());
        if(items == null){
            items = new Item();
            items.setItemId();
        }
    }


}
