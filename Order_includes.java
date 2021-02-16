package Assignment2_java;

public class Order_includes {

    protected int id;
    protected Orders ordersId;
    protected Shoe shoeId;

    public Order_includes(int id, Orders ordersId, Shoe shoeId) {
        this.id = id;
        this.ordersId = ordersId;
        this.shoeId = shoeId;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public Orders getOrdersId() {
        return ordersId;
    }

    public void setOrdersId(Orders ordersId) {
        this.ordersId = ordersId;
    }

    public Shoe getShoeId() {
        return shoeId;
    }

    public void setShoeId(Shoe shoeId) {
        this.shoeId = shoeId;
    }
}
