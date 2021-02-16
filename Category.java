package Assignment2_java;

import java.time.LocalDate;


public class Category {

    protected int id;
    protected String categoryName;
    protected LocalDate created;
    protected LocalDate lastUpdate;

    public Category(int id, String categoryName, LocalDate created, LocalDate lastUpdate) {
        this.id = id;
        this.categoryName = categoryName;
        this.created = created;
        this.lastUpdate = LocalDate.now();
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getCategoryName() {
        return categoryName;
    }

    public void setCategoryName(String categoryName) {
        this.categoryName = categoryName;
    }

    public LocalDate getCreated() {
        return created;
    }

    public void setCreated(LocalDate created) {
        this.created = created;
    }

    public LocalDate getLastUpdate() {
        return lastUpdate;
    }

    public void setLastUpdate(LocalDate lastUpdate) {
        this.lastUpdate = lastUpdate;
    }
}
