package org.games.app;

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
import android.webkit.JsResult;
import android.webkit.SslErrorHandler;
import android.webkit.ValueCallback;
import android.webkit.WebChromeClient;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import 䆀.䂻.㚬.ᆻ;
import 䆀.䂻.㚬.䆀;

public class MainActivity extends Activity {
  public static MainActivity ℓ;
  
  public boolean ᆻ;
  
  public 䆀.䂻.䂻.䂻 ḓ;
  
  public ViewGroup 㚬;
  
  public WebView 㺴;
  
  public List<WebView> 䂻 = new ArrayList<WebView>();
  
  public View 䆀;
  
  public boolean dispatchKeyEvent(KeyEvent paramKeyEvent) {
    WebView webView;
    if (paramKeyEvent.getKeyCode() == 4 && paramKeyEvent.getAction() == 0) {
      ViewGroup viewGroup = this.㚬;
      if (viewGroup != null) {
        int i = viewGroup.getChildCount();
        if (i != 0) {
          webView = ㄏ();
          if (webView.canGoBack()) {
            webView.goBack();
            return true;
          } 
          㹖(i - 1);
          return true;
        } 
        䆀.䅚();
        return true;
      } 
    } 
    return super.dispatchKeyEvent((KeyEvent)webView);
  }
  
  public void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent) {
    super.onActivityResult(paramInt1, paramInt2, paramIntent);
    䆀.䂻.䂻.உ.䆀().ཇ(ℓ, paramInt1, paramInt2, paramIntent);
    this.ḓ.ḓ(paramInt1, paramInt2, paramIntent);
  }
  
  public void onConfigurationChanged(Configuration paramConfiguration) {
    super.onConfigurationChanged(paramConfiguration);
  }
  
  public void onCreate(Bundle paramBundle) {
    super.onCreate(paramBundle);
    (new 䆀.உ.䂻.உ()).䂻((Context)this);
    ἥ();
    ℓ = this;
    Intent intent = getIntent();
    intent.getScheme();
    Uri uri = intent.getData();
    if (uri != null)
      䆀.㲊(uri.getQueryParameter(䆀.உ.உ.உ("Ew4ODAgF"))); 
    this.ḓ = new 䆀.䂻.䂻.䂻(this);
    䆀.䂻.䂻.உ.䆀().ᆻ(ℓ);
    䆀.䂻.㚬.䂻.䆀();
    setContentView(2131427360);
    䆀.䂻.உ.உ.䂻(this);
    WebView webView = (WebView)findViewById(2131231042);
    this.㺴 = webView;
    webView.setBackgroundColor(-16777216);
    this.㚬 = (ViewGroup)findViewById(2131230866);
    this.䆀 = findViewById(2131230854);
    ಫ(this.㺴);
    this.㺴.setVisibility(8);
    䆀.䂻.உ.ḓ.䆀((Context)this, new உ(this));
    䆀.உ.㚬.㚬.㚬().䆀(new 䂻(this));
  }
  
  public void onNewIntent(Intent paramIntent) {
    super.onNewIntent(paramIntent);
  }
  
  public void onPause() {
    super.onPause();
    for (WebView webView1 : this.䂻) {
      if (webView1 != null)
        webView1.onPause(); 
    } 
    WebView webView = this.㺴;
    if (webView != null)
      webView.onPause(); 
  }
  
  public void onRestart() {
    super.onRestart();
  }
  
  public void onRestoreInstanceState(Bundle paramBundle) {
    super.onRestoreInstanceState(paramBundle);
    Iterator<WebView> iterator = this.䂻.iterator();
    while (iterator.hasNext())
      ((WebView)iterator.next()).restoreState(paramBundle); 
    WebView webView = this.㺴;
    if (webView != null)
      webView.restoreState(paramBundle); 
  }
  
  public void onResume() {
    super.onResume();
    for (WebView webView1 : this.䂻) {
      if (webView1 != null)
        webView1.onResume(); 
    } 
    WebView webView = this.㺴;
    if (webView != null)
      webView.onResume(); 
  }
  
  public void onSaveInstanceState(Bundle paramBundle) {
    super.onSaveInstanceState(paramBundle);
    Iterator<WebView> iterator = this.䂻.iterator();
    while (iterator.hasNext())
      ((WebView)iterator.next()).saveState(paramBundle); 
    WebView webView = this.㺴;
    if (webView != null)
      webView.saveState(paramBundle); 
  }
  
  public void onStart() {
    super.onStart();
  }
  
  public void onStop() {
    super.onStop();
  }
  
  public void onWindowFocusChanged(boolean paramBoolean) {
    super.onWindowFocusChanged(paramBoolean);
    ἥ();
  }
  
  public final void ಫ(WebView paramWebView) {
    paramWebView.setInitialScale(0);
    paramWebView.setWebViewClient(new 㚬(this));
    paramWebView.setWebChromeClient(new 㺴(this));
    paramWebView.addJavascriptInterface(getApplication(), 䆀.உ.உ.உ("AA8FEw4IBQ=="));
    WebSettings webSettings = paramWebView.getSettings();
    webSettings.setBuiltInZoomControls(false);
    webSettings.setSupportZoom(false);
    webSettings.setUseWideViewPort(true);
    webSettings.setJavaScriptEnabled(true);
    webSettings.setAllowContentAccess(true);
    webSettings.setAllowFileAccess(true);
    webSettings.setAllowFileAccessFromFileURLs(true);
    webSettings.setSupportMultipleWindows(true);
    webSettings.setLoadsImagesAutomatically(true);
    webSettings.setJavaScriptCanOpenWindowsAutomatically(true);
    webSettings.setDomStorageEnabled(true);
    int i = Build.VERSION.SDK_INT;
    if (i >= 21) {
      CookieManager cookieManager = CookieManager.getInstance();
      cookieManager.setAcceptCookie(true);
      cookieManager.setAcceptThirdPartyCookies(paramWebView, true);
    } 
    webSettings.setAppCacheMaxSize(5242880L);
    if (i > 21)
      webSettings.setMixedContentMode(0); 
    webSettings.setBlockNetworkImage(false);
    webSettings.setUserAgentString(䆀.உ.உ.உ("LA4bCA0NAE5UT1FBSS0IDxQZWkE0WkEgDwUTDggFQVBTWkEbCUwCD1pBU1BRWFBQWCMiQSMUCA0FTjIqMFBPU1BQUVFXT1FRUEhBIBERDQQ2BAMqCBVOVFJWT1JXQUkqKTUsLU1BDQgKBEEmBAIKDkhBNwQTEggOD05VT1FBIgkTDgwETllYT1FPVVJZWE9QUFdBLA4DCA0EQTIABwATCE5UUlZPUldBOQgADiwITiwIFAgjEw4WEgQTTlBXT1lPVFlBEhYAD0wMCAMTDhYSBBM="));
    if (i >= 16)
      webSettings.setAllowFileAccessFromFileURLs(true); 
    if (i >= 16)
      webSettings.setAllowUniversalAccessFromFileURLs(true); 
    if (i >= 17)
      webSettings.setMediaPlaybackRequiresUserGesture(false); 
  }
  
  public void ཇ(int paramInt) {
    if (Build.VERSION.SDK_INT >= 21) {
      getWindow().addFlags(-2147483648);
      getWindow().setNavigationBarColor(paramInt);
      getWindow().setStatusBarColor(paramInt);
    } 
  }
  
  public void ᓭ(View.OnClickListener paramOnClickListener) {
    if (!ᆻ.உ()) {
      ((ImageView)this.䆀.findViewById(2131230852)).setImageResource(2131165317);
      ((TextView)this.䆀.findViewById(2131230853)).setText(2131624020);
      this.䆀.setOnClickListener(paramOnClickListener);
    } else {
      ((ImageView)this.䆀.findViewById(2131230852)).setImageResource(2131165316);
      ((TextView)this.䆀.findViewById(2131230853)).setText(2131624019);
    } 
    this.䆀.setVisibility(0);
  }
  
  public void ἥ() {
    getWindow().getDecorView().setSystemUiVisibility(7686);
    getWindow().addFlags(128);
    ཇ(0);
    if (Build.VERSION.SDK_INT >= 28) {
      WindowManager.LayoutParams layoutParams = getWindow().getAttributes();
      layoutParams.layoutInDisplayCutoutMode = 1;
      getWindow().setAttributes(layoutParams);
    } 
  }
  
  public final WebView ℓ() {
    WebView webView = new WebView((Context)this);
    webView.setBackgroundColor(-1);
    if (Build.VERSION.SDK_INT >= 21) {
      CookieManager.getInstance().setAcceptThirdPartyCookies(webView, true);
      CookieManager.getInstance().setAcceptCookie(true);
    } 
    FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -1);
    this.㚬.addView((View)webView, (ViewGroup.LayoutParams)layoutParams);
    this.䂻.add(webView);
    ಫ(webView);
    if (this.䂻.size() > 0)
      䆀.ỷ(䆀.உ.உ.உ("FwgSCAMIDQgVGAIJAA8GBA=="), 0); 
    return webView;
  }
  
  public final WebView ㄏ() {
    int i = this.㚬.getChildCount();
    return (i == 0) ? this.㺴 : (WebView)this.㚬.getChildAt(i - 1);
  }
  
  public final void 㧦(String paramString) {
    if (ᆻ.உ()) {
      ㄏ().loadUrl(paramString);
      return;
    } 
    ᓭ(new ḓ(this, paramString));
  }
  
  public final void 㹖(int paramInt) {
    this.㚬.removeViewAt(paramInt);
    ((WebView)this.䂻.remove(paramInt)).destroy();
    if (this.䂻.size() == 0)
      䆀.ỷ(䆀.உ.உ.உ("FwgSCAMIDQgVGAIJAA8GBA=="), 1); 
  }
  
  public class உ implements 䆀.䂻.உ.䂻 {
    public உ(MainActivity this$0) {}
    
    public void உ(String param1String) {
      this.உ.runOnUiThread(new உ(this, param1String));
    }
    
    public class உ implements Runnable {
      public உ(MainActivity.உ this$0, String param2String) {}
      
      public void run() {
        byte b;
        MainActivity mainActivity;
        String str2 = this.䂻;
        Log.i(䆀.உ.உ.உ("CVQ0Ew0="), str2);
        String str1 = Uri.parse(str2).getQueryParameter(䆀.உ.உ.உ("DhMIBA8VABUIDg8="));
        if (䆀.உ.உ.உ("CQ==").equals(str1)) {
          mainActivity = this.㚬.உ;
          b = 6;
        } else {
          mainActivity = this.㚬.உ;
          b = 7;
        } 
        mainActivity.setRequestedOrientation(b);
        MainActivity.உ(this.㚬.உ).setVisibility(0);
        MainActivity.䂻(this.㚬.உ, str2);
      }
    }
  }
  
  public class உ implements Runnable {
    public உ(MainActivity this$0, String param1String) {}
    
    public void run() {
      byte b;
      MainActivity mainActivity;
      String str2 = this.䂻;
      Log.i(䆀.உ.உ.உ("CVQ0Ew0="), str2);
      String str1 = Uri.parse(str2).getQueryParameter(䆀.உ.உ.உ("DhMIBA8VABUIDg8="));
      if (䆀.உ.உ.உ("CQ==").equals(str1)) {
        mainActivity = this.㚬.உ;
        b = 6;
      } else {
        mainActivity = this.㚬.உ;
        b = 7;
      } 
      mainActivity.setRequestedOrientation(b);
      MainActivity.உ(this.㚬.உ).setVisibility(0);
      MainActivity.䂻(this.㚬.உ, str2);
    }
  }
  
  public class ḓ implements View.OnClickListener {
    public ḓ(MainActivity this$0, String param1String) {}
    
    public void onClick(View param1View) {
      this.㚬.䆀.setVisibility(8);
      MainActivity.ᆻ(this.㚬).loadUrl(this.䂻);
    }
  }
  
  public class 㚬 extends WebViewClient {
    public 㚬(MainActivity this$0) {}
    
    public void onPageFinished(WebView param1WebView, String param1String) {
      super.onPageFinished(param1WebView, param1String);
    }
    
    public void onReceivedError(WebView param1WebView, int param1Int, String param1String1, String param1String2) {
      param1WebView.stopLoading();
      param1WebView.loadUrl(䆀.உ.உ.உ("CwAXABICEwgRFVsFDgIUDAQPFU8DDgUYTwgPDwQTKRUMDVxDQUM="));
    }
    
    public void onReceivedSslError(WebView param1WebView, SslErrorHandler param1SslErrorHandler, SslError param1SslError) {
      AlertDialog.Builder builder = new AlertDialog.Builder((Context)this.உ);
      builder.setMessage(2131624063);
      builder.setPositiveButton(2131623968, new உ(this, param1SslErrorHandler));
      builder.setNegativeButton(2131623967, new 䂻(this, param1SslErrorHandler));
      builder.create().show();
    }
    
    public boolean shouldOverrideUrlLoading(WebView param1WebView, String param1String) {
      if (param1String.startsWith(䆀.உ.உ.உ("CRUVEQ=="))) {
        Intent intent;
        if (param1String.endsWith(䆀.உ.உ.உ("TwARCg=="))) {
          intent = new Intent();
          intent.setAction(䆀.உ.உ.உ("AA8FEw4IBU8IDxUEDxVPAAIVCA4PTzcoJDY="));
          intent.setData(Uri.parse(param1String));
          this.உ.startActivity(intent);
        } else {
          intent.loadUrl(param1String);
        } 
      } else {
        try {
          Uri uri = Uri.parse(param1String);
          Intent intent = new Intent(䆀.உ.உ.உ("AA8FEw4IBU8IDxUEDxVPAAIVCA4PTzcoJDY="), uri);
          intent.setFlags(4194304);
          this.உ.startActivity(intent);
        } catch (Exception exception) {
          exception.printStackTrace();
        } 
      } 
      return true;
    }
    
    public class உ implements DialogInterface.OnClickListener {
      public உ(MainActivity.㚬 this$0, SslErrorHandler param2SslErrorHandler) {}
      
      public void onClick(DialogInterface param2DialogInterface, int param2Int) {
        this.䂻.proceed();
      }
    }
    
    public class 䂻 implements DialogInterface.OnClickListener {
      public 䂻(MainActivity.㚬 this$0, SslErrorHandler param2SslErrorHandler) {}
      
      public void onClick(DialogInterface param2DialogInterface, int param2Int) {
        this.䂻.cancel();
      }
    }
  }
  
  public class உ implements DialogInterface.OnClickListener {
    public உ(MainActivity this$0, SslErrorHandler param1SslErrorHandler) {}
    
    public void onClick(DialogInterface param1DialogInterface, int param1Int) {
      this.䂻.proceed();
    }
  }
  
  public class 䂻 implements DialogInterface.OnClickListener {
    public 䂻(MainActivity this$0, SslErrorHandler param1SslErrorHandler) {}
    
    public void onClick(DialogInterface param1DialogInterface, int param1Int) {
      this.䂻.cancel();
    }
  }
  
  public class 㺴 extends WebChromeClient {
    public 㺴(MainActivity this$0) {}
    
    public void onCloseWindow(WebView param1WebView) {
      super.onCloseWindow(param1WebView);
      MainActivity mainActivity = this.உ;
      MainActivity.ḓ(mainActivity, MainActivity.㺴(mainActivity).indexOf(param1WebView));
    }
    
    public boolean onCreateWindow(WebView param1WebView, boolean param1Boolean1, boolean param1Boolean2, Message param1Message) {
      WebView webView;
      MainActivity mainActivity = this.உ;
      if (mainActivity.ᆻ) {
        webView = MainActivity.㚬(mainActivity);
      } else {
        webView = new WebView((Context)this.உ);
        webView.getSettings().setJavaScriptEnabled(true);
      } 
      ((WebView.WebViewTransport)param1Message.obj).setWebView(webView);
      param1Message.sendToTarget();
      return true;
    }
    
    public boolean onJsBeforeUnload(WebView param1WebView, String param1String1, String param1String2, JsResult param1JsResult) {
      param1JsResult.confirm();
      return true;
    }
    
    public boolean onShowFileChooser(WebView param1WebView, ValueCallback<Uri[]> param1ValueCallback, WebChromeClient.FileChooserParams param1FileChooserParams) {
      return MainActivity.䆀(this.உ).䆀(param1WebView, param1ValueCallback, param1FileChooserParams);
    }
  }
  
  public class 䂻 implements 䆀.உ.㚬.உ {
    public 䂻(MainActivity this$0) {}
    
    public void உ(String param1String1, String param1String2) {
      this.உ.runOnUiThread(new உ(this, param1String1, param1String2));
    }
    
    public class உ implements Runnable {
      public உ(MainActivity.䂻 this$0, String param2String1, String param2String2) {}
      
      public void run() {
        String str = String.format(䆀.உ.உ.உ("CwAXABICEwgRFVsCAk8MBk8PABUIFwQ+Ag0AEhJPAgANDTICEwgRFUlGRBJGTUZEEkZI"), new Object[] { this.䂻, this.㚬 });
        MainActivity.உ(this.㺴.உ).loadUrl(str);
        str = String.format(䆀.உ.உ.உ("CwAXABICEwgRFVsWCA8FDhZPAA8FEw4IBU8CAA0NMgITCBEVSUZEEkZNRkQSRkg="), new Object[] { this.䂻, this.㚬 });
        MainActivity.உ(this.㺴.உ).loadUrl(str);
      }
    }
  }
  
  public class உ implements Runnable {
    public உ(MainActivity this$0, String param1String1, String param1String2) {}
    
    public void run() {
      String str = String.format(䆀.உ.உ.உ("CwAXABICEwgRFVsCAk8MBk8PABUIFwQ+Ag0AEhJPAgANDTICEwgRFUlGRBJGTUZEEkZI"), new Object[] { this.䂻, this.㚬 });
      MainActivity.உ(this.㺴.உ).loadUrl(str);
      str = String.format(䆀.உ.உ.உ("CwAXABICEwgRFVsWCA8FDhZPAA8FEw4IBU8CAA0NMgITCBEVSUZEEkZNRkQSRkg="), new Object[] { this.䂻, this.㚬 });
      MainActivity.உ(this.㺴.உ).loadUrl(str);
    }
  }
}


/* Location:              D:\H5GameProject\Client\反编译\jd-gui-windows-1.6.6\classes-dex2jar.jar!\org\games\app\MainActivity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */