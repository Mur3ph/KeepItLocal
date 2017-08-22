package murph.ie.keepitlocal.android_object;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ArrayAdapter;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.TextView;
import android.widget.Toast;

import java.util.List;

import murph.ie.keepitlocal.R;

/**
 * Created by PC on 12/08/2017.
 */

public class MyListAdapter extends ArrayAdapter<String> {
    private int imageOfProduct;
    private List<String> listOfProducts;
    private View convertView;

    public MyListAdapter(Context context, int imageOfProduct, List<String> listOfProducts)
    {
        super(context, imageOfProduct, listOfProducts);
        this.listOfProducts = listOfProducts;
        this.imageOfProduct = imageOfProduct;
    }

    @Override
    public View getView(final int position, View convertView, ViewGroup parent) {
        setViewHolder();
        if(isViewEmpty()) {
            this.convertView = setLayoutInflater(parent);
            this.convertView.setTag(setViewHolderValues());
        }
        setMessageForViewHolderOnClick(position);
        return this.convertView;
    }

    private void setViewHolder(){
        this.convertView = convertView;
    }

    private boolean isViewEmpty(){
        return this.convertView == null;
    }

    private View setLayoutInflater(ViewGroup parent){
        return getInflaterContext().inflate(this.imageOfProduct, parent, false);
    }

    private LayoutInflater getInflaterContext(){
        return LayoutInflater.from(getContext());
    }

    private ViewHolder setViewHolderValues(){
        ViewHolder viewHolder = new ViewHolder();
        viewHolder.thumbnail = findThumbnailView();
        viewHolder.title = findTextView();
        viewHolder.button = findButtonView();
        return viewHolder;
    }

    private ImageView findThumbnailView(){
        return (ImageView) this.convertView.findViewById(R.id.list_item_thumbnail);
    }

    private TextView findTextView(){
        return (TextView) this.convertView.findViewById(R.id.list_item_text);
    }

    private Button findButtonView(){
        return (Button) this.convertView.findViewById(R.id.list_item_btn);
    }

    private void setMessageForViewHolderOnClick(final int positionOfUsersClick){
        ViewHolder viewholder = (ViewHolder) this.convertView.getTag();
        viewholder.button.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                Toast.makeText(getContext(), "Button was clicked for list item " + positionOfUsersClick, Toast.LENGTH_SHORT).show();
            }
        });
        viewholder.title.setText(getItem(positionOfUsersClick));
    }
}
