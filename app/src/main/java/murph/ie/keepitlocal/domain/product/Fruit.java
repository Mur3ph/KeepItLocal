package murph.ie.keepitlocal.domain.product;

import murph.ie.keepitlocal.domain.product.Product;

/**
 * Created by PC on 15/08/2017.
 */

public class Fruit implements Product {

    private String name;
    private int price;
    private String origin;

    //TODO: Create a builder class
    public Fruit(String name, int price, String origin){
        this.name = name;
        this.price = price;
        this.origin = origin;
    }

    @Override
    public String getName(){
        return this.name;
    }

    @Override
    public int getPrice(){
        return this.price;
    }

    @Override
    public String getOrigin(){
        return this.origin;
    }
}
