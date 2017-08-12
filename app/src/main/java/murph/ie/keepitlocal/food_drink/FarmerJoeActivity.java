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
import murph.ie.keepitlocal.android_object.MyListAdaper;

public class FarmerJoeActivity extends AppCompatActivity implements View.OnClickListener{

    private List<String> listOfProducts = new ArrayList<String>();

    @Override
    protected void onCreate(Bundle savedInstanceState)
    {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_farmer_joe_produce);
        Toolbar toolbar = (Toolbar) findViewById(R.id.toolbar);
        setSupportActionBar(toolbar);

        generateProductsForOrganicShopList();
        ListView userInterfaceListView = (ListView) findViewById(R.id.listview);

        userInterfaceListView.setAdapter(new MyListAdaper(this, R.layout.list_of_farmer_joe_produce, listOfProducts));

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

    //################################################################################################
    //################################################################################################
    //################################################################################################

    private void generateProductsForOrganicShopList()
    {
        for(int i = 0; i < 10; i++) {
            listOfProducts.add("Row number " + i);
        }
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
