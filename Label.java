package Assignment2_java;

public class Label {

    protected int id;
    protected String labelName;

    public Label(int id, String labelName) {
        this.id = id;
        this.labelName = labelName;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getLabelName() {
        return labelName;
    }

    public void setLabelName(String labelName) {
        this.labelName = labelName;
    }
}
