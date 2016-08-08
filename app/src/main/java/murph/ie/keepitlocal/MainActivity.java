package murph.ie.keepitlocal;

import android.content.Intent;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.util.Log;
import android.view.Menu;
import android.view.View;
import android.widget.Button;

import murph.ie.food_drink.FoodNDrink;

public class MainActivity extends AppCompatActivity implements View.OnClickListener {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        Button m_btnFoodNDrink = (Button) findViewById(R.id.btnFoodNDrink);
        m_btnFoodNDrink.setOnClickListener(this);
    }

    @Override
    public void onClick(View v) {
        Intent i;
        switch (v.getId()) {
            case R.id.btnFoodNDrink:
                // do your code
                Log.i("clicks", "You Clicked Food & Drink");
                i=new Intent(MainActivity.this, FoodNDrink.class);
                startActivity(i);
                break;
            case R.id.btnHealthNFitness:
                // do your code
                Log.i("clicks", "You Clicked Health & Fitness");
                break;
            case R.id.btnEntertainment:
                // do your code
                Log.i("clicks", "You Clicked Entertainment");
                break;
            default:
                break;
        }
    }
}
