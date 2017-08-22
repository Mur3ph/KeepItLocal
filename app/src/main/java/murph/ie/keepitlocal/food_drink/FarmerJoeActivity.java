package murph.ie.keepitlocal.food_drink;

import android.os.Bundle;
import android.support.v7.app.AppCompatActivity;
import android.support.v7.widget.Toolbar;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.widget.Toast;

import java.util.ArrayList;
import java.util.List;

import android.widget.AdapterView;
import android.widget.ListView;

import murph.ie.keepitlocal.R;
import murph.ie.keepitlocal.android_object.MyListAdapter;
import murph.ie.keepitlocal.domain.product.Fruit;
import murph.ie.keepitlocal.domain.product.Product;
import murph.ie.keepitlocal.domain.product.Vegetable;

public class FarmerJoeActivity extends AppCompatActivity implements View.OnClickListener{

    private List<String> listOfProducts = new ArrayList<String>();
    private ListView userInterfaceListView;
    private List<Product> farmBasket;

    @Override
    protected void onCreate(Bundle savedInstanceState){
        super.onCreate(savedInstanceState);

        setContentView(R.layout.activity_farmer_joe_produce);
        Toolbar toolbar = (Toolbar) findViewById(R.id.toolbar);
        setSupportActionBar(toolbar);

        createBasket();
        populateListWithVegetable();
        populateListWithFruit();
        generateProductsForOrganicShopList();
        userInterfaceListView = (ListView) findViewById(R.id.listview);
        setListOfProductsAdapter();
        whenUserClicksOnProduct();
    }

    private void createBasket(){
        farmBasket = new ArrayList<>();
    }

    private void populateListWithVegetable(){
        farmBasket.add(new Vegetable("Cabbage", 5, "FR"));
        farmBasket.add(new Vegetable("Spuds", 1, "IRE"));
        farmBasket.add(new Vegetable("Carrot", 3, "IRE"));
        farmBasket.add(new Vegetable("Beet", 7, "FR"));
        farmBasket.add(new Vegetable("Chilli", 8, "IRE"));
        farmBasket.add(new Vegetable("Peas", 2, "IRE"));
    }

    private void populateListWithFruit(){
        farmBasket.add(new Fruit("Mellon", 5, "FR"));
        farmBasket.add(new Fruit("Apple", 1, "IRE"));
        farmBasket.add(new Fruit("Raspberry", 3, "IRE"));
        farmBasket.add(new Fruit("Pineapple", 7, "FR"));
        farmBasket.add(new Fruit("Pumpkin", 8, "IRE"));
        farmBasket.add(new Fruit("Kiwi", 2, "IRE"));
    }

    private void generateProductsForOrganicShopList() {
        for(Product products : farmBasket){
            listOfProducts.add(products.getName() + " €" + products.getPrice() + " Origin: " + products.getOrigin());
        }
    }

    private void setListOfProductsAdapter(){
        userInterfaceListView.setAdapter(new MyListAdapter(this, R.layout.list_of_farmer_joe_produce, listOfProducts));
    }

    private void whenUserClicksOnProduct(){
        userInterfaceListView.setOnItemClickListener(new AdapterView.OnItemClickListener() {
            @Override
            public void onItemClick(AdapterView<?> parent, View view, int position, long id) {
                Toast.makeText(FarmerJoeActivity.this, "List item was clicked at " + position, Toast.LENGTH_SHORT).show();
            }
        });
    }

    @Override
    public void onClick(View v)
    {

    }

    @Override
    public boolean onCreateOptionsMenu(Menu menu)
    {
        // Inflate the menu; this adds items to the action bar if it is present.
        getMenuInflater().inflate(R.menu.menu_main, menu);
        return true;
    }

    @Override
    public boolean onOptionsItemSelected(MenuItem item) {
        // Handle action bar item clicks here. The action bar will
        // automatically handle clicks on the Home/Up button, so long
        // as you specify a parent activity in AndroidManifest.xml.
        int id = item.getItemId();

        //noinspection SimplifiableIfStatement
        if (id == R.id.action_settings)
        {
            return true;
        }
        return super.onOptionsItemSelected(item);
    }
}
