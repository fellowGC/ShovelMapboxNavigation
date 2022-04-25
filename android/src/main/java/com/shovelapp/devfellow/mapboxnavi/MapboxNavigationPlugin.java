package com.shovelapp.devfellow.mapboxnavi;

import android.util.Log;

public class MapboxNavigationPlugin {

    public String echo(String value) {
        Log.i("Echo", value);
        return value;
    }


    public void navigateToDestination(double latitude, double longitude, String userId){
      Log.i("Latitude: ", latitude);
      Log.i("Longitude: ", longitude);
      Log.i("userId: ", userId);
    }
}
