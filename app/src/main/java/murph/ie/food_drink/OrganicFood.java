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

import murph.ie.keepitlocal.R;

public class OrganicFood extends AppCompatActivity implements View.OnClickListener{

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_organic_food);
        Toolbar toolbar = (Toolbar) findViewById(R.id.toolbar);
        setSupportActionBar(toolbar);

        //Previous button to go back to Main activity page
        Button m_btnPreviousOrganicFood = (Button) findViewById(R.id.btnPreviousOrganicFood);
        m_btnPreviousOrganicFood.setOnClickListener(this);
    }

    @Override
    public void onClick(View v) {
        Intent i;
        switch (v.getId()) {
            case R.id.btnPreviousOrganicFood:
                // do your code
                Log.i("clicks", "You Clicked previous");
                i = new Intent(OrganicFood.this, FruitNVeg.class);
                startActivity(i);
                break;
            default:
                break;
        }
    }

}
