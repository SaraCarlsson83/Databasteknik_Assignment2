package Assignment2_java;

public class Rating {

    protected int id;
    protected String comment;
    protected Rating_alternatives ratingAlternatives;
    protected Shoe shoe;
    protected Customer customer;

    public Rating(int id, String comment, Rating_alternatives ratingAlternatives, Shoe shoe, Customer customer) {
        this.id = id;
        this.comment = comment;
        this.ratingAlternatives = ratingAlternatives;
        this.shoe = shoe;
        this.customer = customer;
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

    public Rating_alternatives getRatingAlternatives() {
        return ratingAlternatives;
    }

    public void setRatingAlternatives(Rating_alternatives ratingAlternatives) {
        this.ratingAlternatives = ratingAlternatives;
    }

    public Shoe getShoe() {
        return shoe;
    }

    public void setShoe(Shoe shoe) {
        this.shoe = shoe;
    }

    public Customer getCustomer() {
        return customer;
    }

    public void setCustomer(Customer customer) {
        this.customer = customer;
    }
}
