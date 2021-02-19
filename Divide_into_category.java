package Assignment2_java;

import java.util.ArrayList;
import java.util.List;

public class Divide_into_category {

    protected int id;
    protected Shoe shoe;
    protected List<Category> categoryList;

    public Divide_into_category(int id, Shoe shoe, List<Category> categoryList) {
        this.id = id;
        this.shoe = shoe;
        categoryList = new ArrayList<>();
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public Shoe getShoe() {
        return shoe;
    }

    public void setShoe(Shoe shoe) {
        this.shoe = shoe;
    }

    public List<Category> getCategoryList() {
        return categoryList;
    }

    public void addCategoryId (Category categoryId){
        categoryList.add(categoryId);
    }
}
