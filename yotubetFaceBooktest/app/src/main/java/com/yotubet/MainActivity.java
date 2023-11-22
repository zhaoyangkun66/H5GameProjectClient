package com.yotubet;

import androidx.appcompat.app.AppCompatActivity;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.res.Configuration;
import android.net.Uri;
import android.net.http.SslError;
import android.os.Build;
import android.os.Bundle;
import android.os.Message;
import android.util.Log;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.webkit.CookieManager;
import android.webkit.JavascriptInterface;
import android.webkit.JsResult;
import android.webkit.SslErrorHandler;
import android.webkit.ValueCallback;
import android.webkit.WebChromeClient;
import android.webkit.WebResourceRequest;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import android.widget.Toast;

import com.facebook.AccessToken;
import com.facebook.AccessTokenTracker;
import com.facebook.CallbackManager;
import com.facebook.FacebookCallback;
import com.facebook.FacebookException;
import com.facebook.FacebookSdk;
import com.facebook.GraphRequest;
import com.facebook.GraphResponse;
import com.facebook.LoggingBehavior;
import com.facebook.LoginStatusCallback;
import com.facebook.Profile;
import com.facebook.ProfileTracker;
import com.facebook.appevents.AppEventsLogger;
import com.facebook.login.LoginManager;
import com.facebook.login.LoginResult;

import org.json.JSONException;
import org.json.JSONObject;

import java.time.Instant;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;

public class MainActivity extends AppCompatActivity {
    WebView webView;
    CallbackManager callbackManager;
    ProfileTracker profileTracker;
    String url = "https://zhaoyangkun66.github.io/test/";
    //String url = "https://www.brabet.com/?f=UIHall";
    @SuppressLint("JavascriptInterface")
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
        getSupportActionBar().hide();
        webView = (WebView) findViewById(R.id.webview);
        webView.addJavascriptInterface( this, "androidOther");
        webView.getSettings().setJavaScriptEnabled(true);
        webView.getSettings().setSupportZoom(false);
        webView.getSettings().setDomStorageEnabled(true);
        webView.setWebViewClient(new WebViewClient());
        webView.loadUrl(url);
        callbackManager = CallbackManager.Factory.create();
        profileTracker = new ProfileTracker() {
            @Override
            protected void onCurrentProfileChanged(
                    Profile oldProfile,
                    Profile currentProfile) {
             //   webView.loadUrl("javascript:cc.loginResult(\"" + currentProfile.getId()+currentProfile.getName()+ "\")");
                    JSONObject jsonObject = new JSONObject();
                    try {
                        jsonObject.put("uid", currentProfile.getId());
                    } catch (JSONException e) {
                        throw new RuntimeException(e);
                    }
                    try {
                        jsonObject.put("name", currentProfile.getName());
                    } catch (JSONException e) {
                        throw new RuntimeException(e);
                    }

                    webView.loadUrl("javascript:app.NativeMgr.loginFaceBookSuccess(JSON.stringify("+jsonObject.toString()+"))");
            }
        };
        LoginManager.getInstance().registerCallback(callbackManager,
                new FacebookCallback<LoginResult>() {
                    @Override
                    public void onSuccess(LoginResult loginResult) {
                        Profile currentProfile = Profile.getCurrentProfile();
                        if (currentProfile!=null)
                        {
                            JSONObject jsonObject = new JSONObject();
                            try {
                                jsonObject.put("uid", currentProfile.getId());
                            } catch (JSONException e) {
                                throw new RuntimeException(e);
                            }
                            try {
                                jsonObject.put("name", currentProfile.getName());
                            } catch (JSONException e) {
                                throw new RuntimeException(e);
                            }

                            webView.loadUrl("javascript:app.NativeMgr.loginFaceBookSuccess(JSON.stringify("+jsonObject.toString()+"))");
                        }
                    }
                    @Override
                    public void onCancel() {
                    }
                    @Override
                    public void onError(FacebookException exception) {
                    }
                });
    }
    @JavascriptInterface
    public void callJava(String keyCode, String event) {
        webView.post(new Runnable() {
            @Override
            public void run() {
                LoginManager.getInstance().logInWithReadPermissions(MainActivity.this, Arrays.asList("gaming_profile,email"));
            }
        });
        runOnUiThread(new Runnable() {
            @Override
            public void run() {
                webView.loadUrl("javascript:cc.loginResult(\"" + event+ "\")");
            }
        });

    }
    @JavascriptInterface
    public void loginFaceBook()  {
        LoginManager.getInstance().logInWithReadPermissions(MainActivity.this, Arrays.asList("gaming_profile,email"));
    }
    @Override
    public boolean onKeyDown(int keyCode, KeyEvent event) {
        if ((keyCode == KeyEvent.KEYCODE_BACK) && webView.canGoBack()) {
            webView.goBack();
            return true;
        }
        return super.onKeyDown(keyCode, event);
    }
    @Override
    protected void onActivityResult(int requestCode, int resultCode, Intent data) {
        callbackManager.onActivityResult(requestCode, resultCode, data);
        super.onActivityResult(requestCode, resultCode, data);
    }
    @Override
    public void onDestroy() {
        super.onDestroy();
        profileTracker.stopTracking();
    }
}
