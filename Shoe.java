package Assignment2_java;

public class Shoe {

    protected int id;
    protected Label labelId;
    protected Price priceId;
    protected Name nameId;
    protected Size sizeId;
    protected int shoeStock;

    public Shoe(int id, Label labelId, Price priceId, Name nameId, Size sizeId, int shoeStock) {
        this.id = id;
        this.labelId = labelId;
        this.priceId = priceId;
        this.nameId = nameId;
        this.sizeId = sizeId;
        this.shoeStock = shoeStock;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public Label getLabelId() {
        return labelId;
    }

    public void setLabelId(Label labelId) {
        this.labelId = labelId;
    }

    public Price getPriceId() {
        return priceId;
    }

    public void setPriceId(Price priceId) {
        this.priceId = priceId;
    }

    public Name getNameId() {
        return nameId;
    }

    public void setNameId(Name nameId) {
        this.nameId = nameId;
    }

    public Size getSizeId() {
        return sizeId;
    }

    public void setSizeId(Size sizeId) {
        this.sizeId = sizeId;
    }

    public int getShoeStock() {
        return shoeStock;
    }

    public void setShoeStock(int shoeStock) {
        this.shoeStock = shoeStock;
    }
}
