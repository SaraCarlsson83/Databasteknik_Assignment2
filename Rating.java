package Assignment2_java;

public class Rating {

    protected int id;
    protected String comment;
    protected Rating_alternatives ratingAlternativesId;
    protected Shoe shoeId;
    protected Customer customerId;

    public Rating(int id, String comment, Rating_alternatives ratingAlternativesId, Shoe shoeId, Customer customerId) {
        this.id = id;
        this.comment = comment;
        this.ratingAlternativesId = ratingAlternativesId;
        this.shoeId = shoeId;
        this.customerId = customerId;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getComment() {
        return comment;
    }

    public void setComment(String comment) {
        this.comment = comment;
    }

    public Rating_alternatives getRatingAlternativesId() {
        return ratingAlternativesId;
    }

    public void setRatingAlternativesId(Rating_alternatives ratingAlternativesId) {
        this.ratingAlternativesId = ratingAlternativesId;
    }

    public Shoe getShoeId() {
        return shoeId;
    }

    public void setShoeId(Shoe shoeId) {
        this.shoeId = shoeId;
    }

    public Customer getCustomerId() {
        return customerId;
    }

    public void setCustomerId(Customer customerId) {
        this.customerId = customerId;
    }
}
