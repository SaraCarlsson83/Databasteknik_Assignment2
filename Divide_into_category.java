package Assignment2_java;

public class Divide_into_category {

    protected int id;
    protected Shoe shoeId;
    protected Category categoryId;

    public Divide_into_category(int id, Shoe shoeId, Category categoryId) {
        this.id = id;
        this.shoeId = shoeId;
        this.categoryId = categoryId;
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

    public Category getCategoryId() {
        return categoryId;
    }

    public void setCategoryId(Category categoryId) {
        this.categoryId = categoryId;
    }
}
