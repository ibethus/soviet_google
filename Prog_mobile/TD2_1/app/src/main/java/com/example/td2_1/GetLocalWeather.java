package com.example.td2_1;

import android.os.AsyncTask;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;

public class GetData extends AsyncTask<String, String, String> {
    @Override
    protected String doInBackground(String... strings) {
        String baseRequest = "https://api.worldweatheronline.com/premium/v1/weather.ashx";
        String responseString = "";
        URL url = null;
        StringBuilder response = new StringBuilder();
        try {
            url = new URL(strings[0]);
            HttpURLConnection httpConn = (HttpURLConnection) url.openConnection();
            if (httpConn.getResponseCode() == HttpURLConnection.HTTP_OK){
                BufferedReader input = new BufferedReader(new InputStreamReader(httpConn.getInputStream()), 8192);
                String strLine = null;
                while ((strLine = input.readLine()) != null){
                    response.append(strLine);
                }
                input.close();
            }
        } catch (IOException e) {
            e.printStackTrace();
        }

        return response.toString();
    }
}
