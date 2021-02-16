package Assignment2_java;

public class Rating_alternatives {

    protected int id;
    protected String options;
    protected int ratingNumbers;

    public Rating_alternatives(int id, String options, int ratingNumbers) {
        this.id = id;
        this.options = options;
        this.ratingNumbers = ratingNumbers;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getOptions() {
        return options;
    }

    public void setOptions(String options) {
        this.options = options;
    }

    public int getRatingNumbers() {
        return ratingNumbers;
    }

    public void setRatingNumbers(int ratingNumbers) {
        this.ratingNumbers = ratingNumbers;
    }
}
