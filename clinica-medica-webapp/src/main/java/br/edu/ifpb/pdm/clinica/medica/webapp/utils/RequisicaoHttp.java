package br.edu.ifpb.pdm.clinica.medica.webapp.utils;

import java.io.IOException;
import java.io.InputStream;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.List;
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

    public static HttpEntity post (String url, List<NameValuePair> params) throws UnsupportedEncodingException, IOException{
        HttpClient httpclient = HttpClients.createDefault();
        HttpPost httppost = new HttpPost(url);
        httppost.setEntity(new UrlEncodedFormEntity(params, "UTF-8"));
        HttpResponse response = httpclient.execute(httppost);
        return response.getEntity();
    }
    
}
