package com.yotubet;

import android.app.Activity;
import android.os.Bundle;
import android.webkit.JavascriptInterface;
import android.webkit.WebView;

import com.facebook.AccessToken;
import com.facebook.CallbackManager;
import com.facebook.FacebookCallback;
import com.facebook.FacebookException;
import com.facebook.GraphRequest;
import com.facebook.GraphResponse;
import com.facebook.login.LoginManager;
import com.facebook.login.LoginResult;

import org.json.JSONObject;

public class WebAppInterface {
    public WebAppInterface() {
    }
    private static WebAppInterface appWebAppInterface = null;
    Activity mActivity;
    WebView mWebView;
    /**
     * 初始化AnySDK
     * @param activity
     * @param webview
     */
    public void initAnySDK(Activity activity, WebView webview) {
        mActivity = activity;
        mWebView = webview;
        appWebAppInterface=this;
        CallbackManager callbackManager = CallbackManager.Factory.create();

        LoginManager.getInstance().registerCallback(callbackManager,
                new FacebookCallback<LoginResult>() {
                    @Override
                    public void onSuccess(LoginResult loginResult) {
                        // App code
                    }

                    @Override
                    public void onCancel() {
                        // App code
                    }

                    @Override
                    public void onError(FacebookException exception) {
                        // App code
                    }
                });
    }
    /**
     * 提供给JS调用的登录接口
     */
    @JavascriptInterface
    public void login() {
        String arg0="434";
        String arg1="434";
        mWebView.loadUrl("javascript:payResult("+arg0+", '"+arg1+"')");
    }
    @JavascriptInterface
    public void callJava(String keyCode, String event) {
        mWebView.post(new Runnable() {
            @Override
            public void run() {
                mWebView.loadUrl("javascript:cc.loginResult(\"" + keyCode+ "\")");
            }
        });


    }
    private void Exit() {
        System.exit(0);
    }
}

