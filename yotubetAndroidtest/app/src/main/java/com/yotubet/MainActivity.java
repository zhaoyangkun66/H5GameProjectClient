package com.yotubet;

import androidx.appcompat.app.AppCompatActivity;
import androidx.constraintlayout.widget.ConstraintLayout;

import android.annotation.SuppressLint;
import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
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
import android.webkit.DownloadListener;
import android.webkit.JsPromptResult;
import android.webkit.JsResult;
import android.webkit.SslErrorHandler;
import android.webkit.WebChromeClient;
import android.webkit.WebResourceRequest;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.RelativeLayout;


public class MainActivity extends AppCompatActivity {

    private WebView webViewPopUp;
    private AlertDialog builder;
    private Context globalContext;
    private String userAgent;
    ConstraintLayout constraintLayout;
    WebView webView;
    //String url = "https://www.brabet.com/?f=UIHall";
   // String url = "https://zhaoyangkun66.github.io/test/indexF.html?appId=3655106758067676";
    String url = "https://www.yotubet.com/?channel_id=apk";
    @SuppressLint({"JavascriptInterface"})
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
       // webView.setWebViewClient(new WebViewClient());
        webView.loadUrl(url);

        WebSettings webSettings = webView.getSettings();
        webView.addJavascriptInterface(new WebAppInterface(this), "androidOther");
        webSettings.setJavaScriptEnabled(true);

        // Set User Agent
        userAgent = System.getProperty("http.agent") + "yotubet";
        webSettings.setUserAgentString(userAgent);

        // Enable Cookies
        CookieManager.getInstance().setAcceptCookie(true);
        if(Build.VERSION.SDK_INT >= 21)
            CookieManager.getInstance().setAcceptThirdPartyCookies(webView, true);

        //webView.setWebViewClient(new myWebViewclient());
        webView.setWebChromeClient(new CustomChromeClient());
        webSettings.setSupportMultipleWindows(true);
        webSettings.setJavaScriptCanOpenWindowsAutomatically(true);
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
            String rrr = request.getUrl().toString();
            if ("zhaoyangkun66.github.io".equals(request.getUrl().getHost())||"www.yotubet.com".equals(request.getUrl().getHost())) {
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
                webViewPopUp.destroy();
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

          //  Uri uri = Uri.parse("https://zhaoyangkun66.github.io/test/indexF.html");
          //  Intent intent = new Intent(Intent.ACTION_VIEW,uri);
          //  startActivity(intent);

            webViewPopUp = new WebView(globalContext);
            webViewPopUp.setVerticalScrollBarEnabled(false);
            webViewPopUp.setHorizontalScrollBarEnabled(false);
            webViewPopUp.setWebViewClient(new myWebViewclient());
            webViewPopUp.setWebChromeClient(new CustomChromeClient());
          //  webViewPopUp.getSettings().setSupportMultipleWindows(true);
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
//            // pop the  webview with alert dialog
//            builder = new AlertDialog.Builder(MainActivity.this).create();
//            builder.setTitle("");
//            builder.setView(webViewPopUp);
//
//            builder.setButton("Close", new DialogInterface.OnClickListener() {
//                @Override
//                public void onClick(DialogInterface dialog, int id) {
//                    webViewPopUp.destroy();
//                    dialog.dismiss();
//                }
//            });
//            builder.show();
//            builder.getWindow().clearFlags(WindowManager.LayoutParams.FLAG_NOT_FOCUSABLE|WindowManager.LayoutParams.FLAG_ALT_FOCUSABLE_IM);

            CookieManager cookieManager = CookieManager.getInstance();
            cookieManager.setAcceptCookie(true);
            if(Build.VERSION.SDK_INT >= 21) {
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
            if (constraintLayout.getChildCount()>1)
            {
                constraintLayout.removeView(webViewPopUp);
                try {
                    webViewPopUp.destroy();
                } catch (Exception e) {
                    Log.d("Destroyed with Error ", e.getStackTrace().toString());
                }
            }

        }
    }

    @Override
    public boolean onKeyDown(int keyCode, KeyEvent event) {
        if ((keyCode == KeyEvent.KEYCODE_BACK)) {
            if (constraintLayout.getChildCount()>1)
            {

                constraintLayout.removeView(webViewPopUp);
                webViewPopUp.destroy();
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
