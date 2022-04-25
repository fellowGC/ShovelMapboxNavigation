package com.shovelapp.devfellow.mapboxnavi;

import com.getcapacitor.JSObject;
import com.getcapacitor.Plugin;
import com.getcapacitor.PluginCall;
import com.getcapacitor.PluginMethod;
import com.getcapacitor.annotation.CapacitorPlugin;

@CapacitorPlugin(name = "MapboxNavigationPlugin")
public class MapboxNavigationPluginPlugin extends Plugin {

    private MapboxNavigationPlugin implementation = new MapboxNavigationPlugin();

    @PluginMethod
    public void echo(PluginCall call) {
        String value = call.getString("value");

        JSObject ret = new JSObject();
        ret.put("value", implementation.echo(value));
        call.resolve(ret);
    }


    @PluginMethod void navigateToDestination(PluginCall call){
      String userId = call.getString("userId");
      double latitude = call.getDouble("latitude");
      double longitude = call.getDouble("longitude");

      implementation.navigateToDestination(latitude, longitude, userId);

      call.resolve();
    }
}
