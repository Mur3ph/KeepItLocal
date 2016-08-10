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

public class FoodNDrink extends AppCompatActivity implements View.OnClickListener{

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_food_ndrink);

        Button m_btnFoodNDrink = (Button) findViewById(R.id.btnPreviousFoodNDrink);
        m_btnFoodNDrink.setOnClickListener(this);
    }

    @Override
    public void onClick(View v) {
        Intent i;
        switch (v.getId()) {
            case R.id.btnPreviousFoodNDrink:
                // do your code
                Log.i("clicks", "You Clicked previous");
                i = new Intent(FoodNDrink.this, MainActivity.class);
                startActivity(i);
                break;

            default:
                break;
        }
    }

}
