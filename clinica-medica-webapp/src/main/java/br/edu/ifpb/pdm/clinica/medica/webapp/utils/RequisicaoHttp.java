package br.edu.ifpb.pdm.clinica.medica.webapp.utils;

import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.List;
import java.util.Scanner;
import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;
import org.apache.http.NameValuePair;
import org.apache.http.client.HttpClient;
import org.apache.http.client.entity.UrlEncodedFormEntity;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.impl.client.HttpClients;

/**
 *
 * @author douglasgabriel
 * @version 0.1
 */
public class RequisicaoHttp {

    public static HttpEntity post(String url, List<NameValuePair> params) throws UnsupportedEncodingException, IOException {
        HttpClient httpclient = HttpClients.createDefault();
        HttpPost httppost = new HttpPost(url);
        httppost.setEntity(new UrlEncodedFormEntity(params, "UTF-8"));
        HttpResponse response = httpclient.execute(httppost);
        return response.getEntity();
    }

    public static String getJson(String urlPath) {
        try {
            URL url = new URL(urlPath);
            HttpURLConnection con = (HttpURLConnection) url.openConnection();
            String response = new Scanner(con.getInputStream()).nextLine();
            return response;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }

}
