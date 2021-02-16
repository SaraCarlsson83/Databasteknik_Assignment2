package Assignment2_java;

public class Shoe_color {

    protected int id;
    protected Shoe shoeId;
    protected Color colorId;

    public Shoe_color(int id, Shoe shoeId, Color colorId) {
        this.id = id;
        this.shoeId = shoeId;
        this.colorId = colorId;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public Shoe getShoeId() {
        return shoeId;
    }

    public void setShoeId(Shoe shoeId) {
        this.shoeId = shoeId;
    }

    public Color getColorId() {
        return colorId;
    }

    public void setColorId(Color colorId) {
        this.colorId = colorId;
    }
}
