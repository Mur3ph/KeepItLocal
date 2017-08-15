package murph.ie.keepitlocal.domain;

import android.media.Image;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.net.MalformedURLException;
import java.net.URL;

/**
 * Created by PC on 10/08/2017.
 */

public interface Product {
    String getName();
    int getPrice();
    String getOrigin();

//    int getQuantity();
//    void setQuantity(int quantity);
//    boolean getChemicalsUsed();
//    boolean IsOrganic();
//    String getFilePathProductImage();

}
