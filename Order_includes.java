package Assignment2_java;

import java.util.ArrayList;
import java.util.List;

public class Order_includes {

    protected int id;
    protected Orders order;
    protected List<Shoe> shoeList;

    public Order_includes(int id, Orders order, List<Shoe> shoeList) {
        this.id = id;
        this.order = order;
        shoeList = new ArrayList<>();
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public Orders getOrder() {
        return order;
    }

    public void setOrder(Orders order) {
        this.order = order;
    }

    public List<Shoe> getShoeList() {
        return shoeList;
    }

    public void addShoe (Shoe shoe){
        shoeList.add(shoe);
    }
}
