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
    private static MainActivity app = null;
    String url = "https://zhaoyangkun66.github.io/test/";
    //String url = "https://www.brabet.com/?f=UIHall";
    @SuppressLint("JavascriptInterface")
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        app=this;
        setContentView(R.layout.activity_main);
        getSupportActionBar().hide();
        webView = (WebView) findViewById(R.id.webview);
        webView.addJavascriptInterface( this, "androidOther");
        webView.getSettings().setJavaScriptEnabled(true);
        webView.getSettings().setSupportZoom(false);
        webView.getSettings().setDomStorageEnabled(true);
        webView.setWebViewClient(new WebViewClient() {
            @Override
            public boolean shouldOverrideUrlLoading(WebView view, String url) {
                view.loadUrl(url);
                return true;
            }
        });
        webView.loadUrl(url);
       // FacebookSdk.sdkInitialize(getApplicationContext());
       // AppEventsLogger.activateApp(this);
        callbackManager = CallbackManager.Factory.create();
        profileTracker = new ProfileTracker() {
            @Override
            protected void onCurrentProfileChanged(
                    Profile oldProfile,
                    Profile currentProfile) {
                webView.loadUrl("javascript:cc.loginResult(\"" + "onSuccess22"+ "\")");
                // App code
            }
        };
        LoginManager.getInstance().registerCallback(callbackManager,
                new FacebookCallback<LoginResult>() {
                    @Override
                    public void onSuccess(LoginResult loginResult) {
                        Profile profile = Profile.getCurrentProfile();

                        webView.loadUrl("javascript:cc.loginResult(\"" + "onSuccess"+ "\")");
                    }

                    @Override
                    public void onCancel() {
                        webView.loadUrl("javascript:cc.loginResult(\"" + "onCancel"+ "\")");
                    }

                    @Override
                    public void onError(FacebookException exception) {
                        webView.loadUrl("javascript:cc.loginResult(\"" + "onError"+ "\")");
                    }
                });
    }
    @JavascriptInterface
    public void callJava(String keyCode, String event) {

        webView.post(new Runnable() {
            @Override
            public void run() {
               // LoginManager.getInstance().logInWithReadPermissions(app, Arrays.asList("public_profile,email"));
                LoginManager.getInstance().logInWithReadPermissions(app, Arrays.asList("gaming_profile,email"));
               // webView.loadUrl("javascript:cc.loginResult(\"" + keyCode+ "\")");
            }
        });
        runOnUiThread(new Runnable() {
            @Override
            public void run() {
                webView.loadUrl("javascript:cc.loginResult(\"" + event+ "\")");
            }
        });
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
