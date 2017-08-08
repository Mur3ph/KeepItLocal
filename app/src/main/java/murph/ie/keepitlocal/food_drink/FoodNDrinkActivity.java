package murph.ie.keepitlocal.food_drink;

import android.content.Intent;
import android.os.Bundle;
import android.support.v7.app.AppCompatActivity;
import android.util.Log;
import android.view.View;
import android.widget.Button;

import murph.ie.keepitlocal.MainActivity;
import murph.ie.keepitlocal.R;

public class FoodNDrinkActivity extends AppCompatActivity implements View.OnClickListener{

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_food_ndrink);

        //Previous button to go back to Main activity page
        Button m_btnPreviousFoodNDrink = (Button) findViewById(R.id.btnPreviousFoodNDrink);
        m_btnPreviousFoodNDrink.setOnClickListener(this);

        // Fruit and veg. button to drill down to LocalFarmersActivity activity page
        Button m_btnFruitNVeg = (Button) findViewById(R.id.btnFruitNVeg);
        m_btnFruitNVeg.setOnClickListener(this);
    }

    @Override
    public void onClick(View v) {
        Intent i;
        switch (v.getId()) {
            case R.id.btnPreviousFoodNDrink:
                // do your code
                Log.i("clicks", "You Clicked previous");
                i = new Intent(FoodNDrinkActivity.this, MainActivity.class);
                startActivity(i);
                break;
            case R.id.btnFruitNVeg:
                // do your code
                Log.i("clicks", "You Clicked fruit and veg.");
                i = new Intent(FoodNDrinkActivity.this, LocalFarmersActivity.class);
                startActivity(i);
                break;

            default:
                break;
        }
    }

}
