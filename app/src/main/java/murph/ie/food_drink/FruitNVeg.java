package murph.ie.food_drink;

import android.content.Intent;
import android.os.Bundle;
import android.support.design.widget.FloatingActionButton;
import android.support.design.widget.Snackbar;
import android.support.v7.app.AppCompatActivity;
import android.support.v7.widget.Toolbar;
import android.util.Log;
import android.view.View;
import android.widget.Button;

import murph.ie.keepitlocal.MainActivity;
import murph.ie.keepitlocal.R;

public class FruitNVeg extends AppCompatActivity implements View.OnClickListener {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_fruit_nveg);
        Toolbar toolbar = (Toolbar) findViewById(R.id.toolbar);
        setSupportActionBar(toolbar);

        Button m_btnPreviousFruitNVeg = (Button) findViewById(R.id.btnPreviousFruitNVeg);
        m_btnPreviousFruitNVeg.setOnClickListener(this);

        Button m_btnOrganicFood = (Button) findViewById(R.id.btnOrganicFood);
        m_btnOrganicFood.setOnClickListener(this);
    }

    @Override
    public void onClick(View v) {
        Intent i;
        switch (v.getId()) {
            case R.id.btnPreviousFruitNVeg:
                // do your code
                Log.i("clicks", "You Clicked previous");
                i = new Intent(FruitNVeg.this, FoodNDrink.class);
                startActivity(i);
                break;
            case R.id.btnOrganicFood:
                // do your code
                Log.i("clicks", "You Clicked organic foods.");
                i = new Intent(FruitNVeg.this, OrganicFood.class);
                startActivity(i);
                break;

            default:
                break;
        }
    }

}
