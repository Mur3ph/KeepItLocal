package murph.ie.keepitlocal.domain;

/**
 * Created by PC on 15/08/2017.
 */

public class Fruit {

    private String name;
    private int price;
    private String origin;

    //TODO: Create a builder class
    public Fruit(String name, int price, String origin){
        this.name = name;
        this.price = price;
        this.origin = origin;
    }

    public String getName(){
        return this.name;
    }

    public int getPrice(){
        return this.price;
    }

    public String getOrigin(){
        return this.origin;
    }
}
