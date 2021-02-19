package Assignment2_java;

import java.util.ArrayList;
import java.util.List;

public class Shoe_color {

    protected int id;
    protected Shoe shoeId;
    protected List<Color> colorList;

    public Shoe_color(int id, Shoe shoeId, List<Color> colorList) {
        this.id = id;
        this.shoeId = shoeId;
        colorList = new ArrayList<>();
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

    public List<Color> getColorList() {
        return colorList;
    }

    public void addColor (Color color){
        colorList.add(color);
    }
}
