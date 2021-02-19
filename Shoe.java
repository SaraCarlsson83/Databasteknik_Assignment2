package Assignment2_java;

public class Shoe {

    protected int id;
    protected Label label;
    protected Price price;
    protected Name name;
    protected Size size;
    protected int shoeStock;

    public Shoe(int id, Label label, Price price, Name name, Size size, int shoeStock) {
        this.id = id;
        this.label = label;
        this.price = price;
        this.name = name;
        this.size = size;
        this.shoeStock = shoeStock;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public Label getLabel() {
        return label;
    }

    public void setLabel(Label label) {
        this.label = label;
    }

    public Price getPrice() {
        return price;
    }

    public void setPrice(Price price) {
        this.price = price;
    }

    public Name getName() {
        return name;
    }

    public void setName(Name name) {
        this.name = name;
    }

    public Size getSize() {
        return size;
    }

    public void setSize(Size size) {
        this.size = size;
    }

    public int getShoeStock() {
        return shoeStock;
    }

    public void setShoeStock(int shoeStock) {
        this.shoeStock = shoeStock;
    }
}
