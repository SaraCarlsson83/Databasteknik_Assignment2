package Assignment2_java;

public class Color {

    protected int id;
    protected String colorName;

    public Color(int id, String col_name) {
        this.id = id;
        this.colorName = col_name;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getColorName() {
        return colorName;
    }

    public void setColorName(String colorName) {
        this.colorName = colorName;
    }
}
