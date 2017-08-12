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

public class MyListAdaper extends ArrayAdapter<String> {
    private int layout;
    private List<String> mObjects;

    public MyListAdaper(Context context, int resource, List<String> objects)
    {
        super(context, resource, objects);
        mObjects = objects;
        layout = resource;
    }

    @Override
    public View getView(final int position, View convertView, ViewGroup parent) {
        if(convertView == null) {
            LayoutInflater inflater = LayoutInflater.from(getContext());
            convertView = inflater.inflate(layout, parent, false);
            ViewHolder viewHolder = new ViewHolder();
            viewHolder.thumbnail = (ImageView) convertView.findViewById(R.id.list_item_thumbnail);
            viewHolder.title = (TextView) convertView.findViewById(R.id.list_item_text);
            viewHolder.button = (Button) convertView.findViewById(R.id.list_item_btn);
            convertView.setTag(viewHolder);
        }
        setViewHolder(position, convertView);

        return convertView;
    }

    private void setViewHolder(final int position, View convertView){
        ViewHolder mainViewholder = null;
        mainViewholder = (ViewHolder) convertView.getTag();
        mainViewholder.button.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                Toast.makeText(getContext(), "Button was clicked for list item " + position, Toast.LENGTH_SHORT).show();
            }
        });
        mainViewholder.title.setText(getItem(position));
    }
}
