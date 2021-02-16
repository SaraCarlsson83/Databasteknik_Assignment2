package Assignment2_java;

public class Community {

    protected int ind;
    protected String communityName;

    public Community(int ind, String communityName) {
        this.ind = ind;
        this.communityName = communityName;
    }

    public int getInd() {
        return ind;
    }

    public void setInd(int ind) {
        this.ind = ind;
    }

    public String getCommunityName() {
        return communityName;
    }

    public void setCommunityName(String communityName) {
        this.communityName = communityName;
    }
}
