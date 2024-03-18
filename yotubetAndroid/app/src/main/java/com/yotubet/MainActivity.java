package com.yotubet;

import androidx.appcompat.app.AppCompatActivity;
import androidx.constraintlayout.widget.ConstraintLayout;

import android.annotation.SuppressLint;
import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
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
import android.webkit.SslErrorHandler;
import android.webkit.WebChromeClient;
import android.webkit.WebResourceRequest;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.RelativeLayout;

import java.util.Arrays;


public class MainActivity extends AppCompatActivity {

    private WebView webViewPopUp;
    private  ConstraintLayout constraintLayout;
    private Context globalContext;
    private String userAgent;
    WebView webView;
    // String url = "https://home.brabet.com/chat/index";
   // String url = "http://192.168.1.100:280/client/web-mobile/?f=UIHall";
   // String url = "https://zhaoyangkun66.github.io/test/indexF.html?appId=3655106758067676";
    String url = "https://www.yotubet.com/?channel_id=apk";
    @SuppressLint("JavascriptInterface")
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        getWindow().addFlags(WindowManager.LayoutParams.FLAG_KEEP_SCREEN_ON);
        setContentView(R.layout.activity_main);
        getSupportActionBar().hide();
      //  webView = (WebView) findViewById(R.id.webview);

      //  webView.addJavascriptInterface(new WebAppInterface(this), "androidOther");
       // webView.getSettings().setJavaScriptEnabled(true);
       // webView.getSettings().setSupportZoom(false);
       // webView.getSettings().setDomStorageEnabled(true);
      //  webView.getSettings().setUserAgentString(System.getProperty("http.agent") + "yotubet");
      //  webView.setWebViewClient(new myWebViewclient());
      //  webView.setWebChromeClient(new CustomChromeClient());
       // webView.loadUrl(url);
        constraintLayout = findViewById(R.id.constraintLayout);
        webView = findViewById(R.id.webview);
      //  webView.setWebViewClient(new WebViewClient());
        webView.loadUrl(url);
        //webView.setInitialScale(0);
        WebSettings webSettings = webView.getSettings();
        webView.addJavascriptInterface(new WebAppInterface(this), "androidOther");
        webSettings.setJavaScriptEnabled(true);
        // Set User Agent
        userAgent = System.getProperty("http.agent") + "userAgent";
        webSettings.setUserAgentString(userAgent);

        // Enable Cookies
        CookieManager.getInstance().setAcceptCookie(true);
        if(Build.VERSION.SDK_INT >= 21)
            CookieManager.getInstance().setAcceptThirdPartyCookies(webView, true);

      //  webView.setWebViewClient(new myWebViewclient());
        webView.setWebChromeClient(new CustomChromeClient());
        webSettings.setJavaScriptCanOpenWindowsAutomatically(true);
        webSettings.setSupportMultipleWindows(true);
        globalContext = this.getApplicationContext();

        // WebView Tweaks
        webSettings.setRenderPriority(WebSettings.RenderPriority.HIGH);
        webSettings.setCacheMode(WebSettings.LOAD_DEFAULT);
        webSettings.setDatabaseEnabled(true);
        webSettings.setDomStorageEnabled(true);
        webSettings.setLayoutAlgorithm(WebSettings.LayoutAlgorithm.NARROW_COLUMNS);
        webSettings.setUseWideViewPort(true);
        webSettings.setSaveFormData(true);
        webSettings.setEnableSmoothTransition(true);
        webView.setScrollBarStyle(View.SCROLLBARS_INSIDE_OVERLAY);

    }
    public class myWebViewclient extends WebViewClient {
        @Override
        public boolean shouldOverrideUrlLoading(WebView view, WebResourceRequest request) {
            if ("zhaoyangkun66.github.io".equals(request.getUrl().getHost())||"www.yotubet.com".equals(request.getUrl().getHost())||"www.bigerwin.com".equals(request.getUrl().getHost())) {
                // This is your website, so don't override. Let your WebView load the
                // page.
                return false;
            }
            if ("m.facebook.com".equals(request.getUrl().getHost())||"accounts.google.com".equals(request.getUrl().getHost())) {
                // This is your website, so don't override. Let your WebView load the
                // webViewPopUp.loadUrl(request.getUrl().toString());
                return false;
            }
            // Otherwise, the link isn't for a page on your site, so launch another
            // Activity that handles URLs.
            if (constraintLayout.getChildCount()>1)
            {
                constraintLayout.removeView(webViewPopUp);
            }
            Intent intent = new Intent(Intent.ACTION_VIEW, request.getUrl());
            startActivity(intent);
            // constraintLayout.removeView(webViewPopUp);
            return true;
        }
    }
    public class CustomChromeClient extends WebChromeClient {
        @Override
        public boolean onCreateWindow(WebView view, boolean isDialog,
                                      boolean isUserGesture, Message resultMsg) {
            webViewPopUp = new WebView(globalContext);
            webViewPopUp.setVerticalScrollBarEnabled(false);
            webViewPopUp.setHorizontalScrollBarEnabled(false);
            webViewPopUp.setWebViewClient(new myWebViewclient());
            webViewPopUp.setWebChromeClient(new CustomChromeClient());
            webViewPopUp.getSettings().setJavaScriptEnabled(true);
            webViewPopUp.getSettings().setSaveFormData(true);
            webViewPopUp.getSettings().setEnableSmoothTransition(true);
            webViewPopUp.getSettings().setUserAgentString(userAgent);

            webViewPopUp.setLayoutParams(new RelativeLayout.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT, ViewGroup.LayoutParams.MATCH_PARENT));

            if (constraintLayout.getChildCount()>1)
            {
                // return true;
                // constraintLayout.removeView(webViewPopUp);
            }
            else
            {
                constraintLayout.addView(webViewPopUp);
            }

            CookieManager cookieManager = CookieManager.getInstance();
            cookieManager.setAcceptCookie(true);
            if(android.os.Build.VERSION.SDK_INT >= 21) {
                cookieManager.setAcceptThirdPartyCookies(webViewPopUp, true);
                cookieManager.setAcceptThirdPartyCookies(webView, true);
            }

            WebView.WebViewTransport transport = (WebView.WebViewTransport) resultMsg.obj;
            transport.setWebView(webViewPopUp);
            resultMsg.sendToTarget();

            return true;
        }

        @Override
        public void onCloseWindow(WebView window) {
            //Toast.makeText(contextPop,"onCloseWindow called",Toast.LENGTH_SHORT).show();
            if (constraintLayout.getChildCount()>1)
            {
                constraintLayout.removeView(webViewPopUp);
            }
            try {
                webViewPopUp.destroy();
            } catch (Exception e) {
                Log.d("Destroyed with Error ", e.getStackTrace().toString());
            }

        }
    }
    @JavascriptInterface
    public int getApkVersion()  {
        return 1200;
    }
    @JavascriptInterface
    public void downloadApp(String android_download_url) {

    }
    @Override
    public boolean onKeyDown(int keyCode, KeyEvent event) {
        if ((keyCode == KeyEvent.KEYCODE_BACK)) {
            if (constraintLayout.getChildCount()>1)
            {
                constraintLayout.removeView(webViewPopUp);
                return true;
            }
            if (webView.canGoBack())
            {
                webView.goBack();
                return true;
            }
        }
        return super.onKeyDown(keyCode, event);
    }
}
