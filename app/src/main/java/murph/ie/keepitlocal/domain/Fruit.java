package murph.ie.keepitlocal.domain;

/**
 * Created by PC on 15/08/2017.
 */

public class Fruit {

    private String name;
    private int price;

    //TODO: Create a builder class
    public Fruit(String name, int price){
        this.name = name;
        this.price = price;
    }

    public String getName(){
        return this.name;
    }

    public int getPrice(){
        return this.price;
    }
}
