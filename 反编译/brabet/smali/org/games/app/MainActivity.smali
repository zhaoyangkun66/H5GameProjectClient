.class public Lorg/games/app/MainActivity;
.super Landroid/app/Activity;
.source ""


# static fields
.field public static ℓ:Lorg/games/app/MainActivity;


# instance fields
.field public ᆻ:Z

.field public ḓ:L䆀/䂻/䂻/䂻;

.field public 㚬:Landroid/view/ViewGroup;

.field public 㺴:Landroid/webkit/WebView;

.field public 䂻:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/webkit/WebView;",
            ">;"
        }
    .end annotation
.end field

.field public 䆀:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/games/app/MainActivity;->䂻:Ljava/util/List;

    return-void
.end method

.method public static synthetic உ(Lorg/games/app/MainActivity;)Landroid/webkit/WebView;
    .locals 0

    iget-object p0, p0, Lorg/games/app/MainActivity;->㺴:Landroid/webkit/WebView;

    return-object p0
.end method

.method public static synthetic ᆻ(Lorg/games/app/MainActivity;)Landroid/webkit/WebView;
    .locals 0

    invoke-virtual {p0}, Lorg/games/app/MainActivity;->ㄏ()Landroid/webkit/WebView;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic ḓ(Lorg/games/app/MainActivity;I)V
    .locals 0

    invoke-virtual {p0, p1}, Lorg/games/app/MainActivity;->㹖(I)V

    return-void
.end method

.method public static synthetic 㚬(Lorg/games/app/MainActivity;)Landroid/webkit/WebView;
    .locals 0

    invoke-virtual {p0}, Lorg/games/app/MainActivity;->ℓ()Landroid/webkit/WebView;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic 㺴(Lorg/games/app/MainActivity;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lorg/games/app/MainActivity;->䂻:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic 䂻(Lorg/games/app/MainActivity;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Lorg/games/app/MainActivity;->㧦(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic 䆀(Lorg/games/app/MainActivity;)L䆀/䂻/䂻/䂻;
    .locals 0

    iget-object p0, p0, Lorg/games/app/MainActivity;->ḓ:L䆀/䂻/䂻/䂻;

    return-object p0
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/games/app/MainActivity;->㚬:Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lorg/games/app/MainActivity;->ㄏ()Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Landroid/webkit/WebView;->goBack()V

    goto :goto_0

    :cond_0
    sub-int/2addr p1, v0

    invoke-virtual {p0, p1}, Lorg/games/app/MainActivity;->㹖(I)V

    goto :goto_0

    :cond_1
    invoke-static {}, L䆀/䂻/㚬/䆀;->䅚()V

    :goto_0
    return v0

    :cond_2
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    invoke-static {}, L䆀/䂻/䂻/உ;->䆀()L䆀/䂻/䂻/உ;

    move-result-object v0

    sget-object v1, Lorg/games/app/MainActivity;->ℓ:Lorg/games/app/MainActivity;

    invoke-virtual {v0, v1, p1, p2, p3}, L䆀/䂻/䂻/உ;->ཇ(Landroid/app/Activity;IILandroid/content/Intent;)V

    iget-object v0, p0, Lorg/games/app/MainActivity;->ḓ:L䆀/䂻/䂻/䂻;

    invoke-virtual {v0, p1, p2, p3}, L䆀/䂻/䂻/䂻;->ḓ(IILandroid/content/Intent;)V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    new-instance p1, L䆀/உ/䂻/உ;

    invoke-direct {p1}, L䆀/உ/䂻/உ;-><init>()V

    invoke-virtual {p1, p0}, L䆀/உ/䂻/உ;->䂻(Landroid/content/Context;)V

    invoke-virtual {p0}, Lorg/games/app/MainActivity;->ἥ()V

    sput-object p0, Lorg/games/app/MainActivity;->ℓ:Lorg/games/app/MainActivity;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getScheme()Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v0, "Ew4ODAgF"

    invoke-static {v0}, L䆀/உ/உ;->உ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, L䆀/䂻/㚬/䆀;->㲊(Ljava/lang/String;)V

    :cond_0
    new-instance p1, L䆀/䂻/䂻/䂻;

    invoke-direct {p1, p0}, L䆀/䂻/䂻/䂻;-><init>(Landroid/app/Activity;)V

    iput-object p1, p0, Lorg/games/app/MainActivity;->ḓ:L䆀/䂻/䂻/䂻;

    invoke-static {}, L䆀/䂻/䂻/உ;->䆀()L䆀/䂻/䂻/உ;

    move-result-object p1

    sget-object v0, Lorg/games/app/MainActivity;->ℓ:Lorg/games/app/MainActivity;

    invoke-virtual {p1, v0}, L䆀/䂻/䂻/உ;->ᆻ(Lorg/games/app/MainActivity;)V

    invoke-static {}, L䆀/䂻/㚬/䂻;->䆀()V

    const p1, 0x7f0b0020

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setContentView(I)V

    invoke-static {p0}, L䆀/䂻/உ/உ;->䂻(Landroid/app/Activity;)V

    const p1, 0x7f080142

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/webkit/WebView;

    iput-object p1, p0, Lorg/games/app/MainActivity;->㺴:Landroid/webkit/WebView;

    const/high16 v0, -0x1000000

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    const p1, 0x7f080092

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lorg/games/app/MainActivity;->㚬:Landroid/view/ViewGroup;

    const p1, 0x7f080086

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lorg/games/app/MainActivity;->䆀:Landroid/view/View;

    iget-object p1, p0, Lorg/games/app/MainActivity;->㺴:Landroid/webkit/WebView;

    invoke-virtual {p0, p1}, Lorg/games/app/MainActivity;->ಫ(Landroid/webkit/WebView;)V

    iget-object p1, p0, Lorg/games/app/MainActivity;->㺴:Landroid/webkit/WebView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setVisibility(I)V

    new-instance p1, Lorg/games/app/MainActivity$உ;

    invoke-direct {p1, p0}, Lorg/games/app/MainActivity$உ;-><init>(Lorg/games/app/MainActivity;)V

    invoke-static {p0, p1}, L䆀/䂻/உ/ḓ;->䆀(Landroid/content/Context;L䆀/䂻/உ/䂻;)V

    invoke-static {}, L䆀/உ/㚬/㚬;->㚬()L䆀/உ/㚬/㚬;

    move-result-object p1

    new-instance v0, Lorg/games/app/MainActivity$䂻;

    invoke-direct {v0, p0}, Lorg/games/app/MainActivity$䂻;-><init>(Lorg/games/app/MainActivity;)V

    invoke-virtual {p1, v0}, L䆀/உ/㚬/㚬;->䆀(L䆀/உ/㚬/உ;)V

    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    return-void
.end method

.method public onPause()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    iget-object v0, p0, Lorg/games/app/MainActivity;->䂻:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/webkit/WebView;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/webkit/WebView;->onPause()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/games/app/MainActivity;->㺴:Landroid/webkit/WebView;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/webkit/WebView;->onPause()V

    :cond_2
    return-void
.end method

.method public onRestart()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onRestart()V

    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    iget-object v0, p0, Lorg/games/app/MainActivity;->䂻:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/webkit/WebView;

    invoke-virtual {v1, p1}, Landroid/webkit/WebView;->restoreState(Landroid/os/Bundle;)Landroid/webkit/WebBackForwardList;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/games/app/MainActivity;->㺴:Landroid/webkit/WebView;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->restoreState(Landroid/os/Bundle;)Landroid/webkit/WebBackForwardList;

    :cond_1
    return-void
.end method

.method public onResume()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    iget-object v0, p0, Lorg/games/app/MainActivity;->䂻:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/webkit/WebView;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/webkit/WebView;->onResume()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/games/app/MainActivity;->㺴:Landroid/webkit/WebView;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/webkit/WebView;->onResume()V

    :cond_2
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget-object v0, p0, Lorg/games/app/MainActivity;->䂻:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/webkit/WebView;

    invoke-virtual {v1, p1}, Landroid/webkit/WebView;->saveState(Landroid/os/Bundle;)Landroid/webkit/WebBackForwardList;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/games/app/MainActivity;->㺴:Landroid/webkit/WebView;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->saveState(Landroid/os/Bundle;)Landroid/webkit/WebBackForwardList;

    :cond_1
    return-void
.end method

.method public onStart()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    return-void
.end method

.method public onStop()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    invoke-virtual {p0}, Lorg/games/app/MainActivity;->ἥ()V

    return-void
.end method

.method public final ಫ(Landroid/webkit/WebView;)V
    .locals 7

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setInitialScale(I)V

    new-instance v1, Lorg/games/app/MainActivity$㚬;

    invoke-direct {v1, p0}, Lorg/games/app/MainActivity$㚬;-><init>(Lorg/games/app/MainActivity;)V

    invoke-virtual {p1, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    new-instance v1, Lorg/games/app/MainActivity$㺴;

    invoke-direct {v1, p0}, Lorg/games/app/MainActivity$㺴;-><init>(Lorg/games/app/MainActivity;)V

    invoke-virtual {p1, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v1

    check-cast v1, Lorg/games/app/App;

    const-string v2, "AA8FEw4IBQ=="

    invoke-static {v2}, L䆀/உ/உ;->உ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    invoke-virtual {v1, v0}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setAllowContentAccess(Z)V

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setAllowFileAccessFromFileURLs(Z)V

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setSupportMultipleWindows(Z)V

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setLoadsImagesAutomatically(Z)V

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x15

    if-lt v3, v4, :cond_0

    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/webkit/CookieManager;->setAcceptCookie(Z)V

    invoke-virtual {v5, p1, v2}, Landroid/webkit/CookieManager;->setAcceptThirdPartyCookies(Landroid/webkit/WebView;Z)V

    :cond_0
    const-wide/32 v5, 0x500000

    invoke-virtual {v1, v5, v6}, Landroid/webkit/WebSettings;->setAppCacheMaxSize(J)V

    if-le v3, v4, :cond_1

    invoke-virtual {v1, v0}, Landroid/webkit/WebSettings;->setMixedContentMode(I)V

    :cond_1
    invoke-virtual {v1, v0}, Landroid/webkit/WebSettings;->setBlockNetworkImage(Z)V

    const-string p1, "LA4bCA0NAE5UT1FBSS0IDxQZWkE0WkEgDwUTDggFQVBTWkEbCUwCD1pBU1BRWFBQWCMiQSMUCA0FTjIqMFBPU1BQUVFXT1FRUEhBIBERDQQ2BAMqCBVOVFJWT1JXQUkqKTUsLU1BDQgKBEEmBAIKDkhBNwQTEggOD05VT1FBIgkTDgwETllYT1FPVVJZWE9QUFdBLA4DCA0EQTIABwATCE5UUlZPUldBOQgADiwITiwIFAgjEw4WEgQTTlBXT1lPVFlBEhYAD0wMCAMTDhYSBBM="

    invoke-static {p1}, L䆀/உ/உ;->உ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    const/16 p1, 0x10

    if-lt v3, p1, :cond_2

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setAllowFileAccessFromFileURLs(Z)V

    :cond_2
    if-lt v3, p1, :cond_3

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setAllowUniversalAccessFromFileURLs(Z)V

    :cond_3
    const/16 p1, 0x11

    if-lt v3, p1, :cond_4

    invoke-virtual {v1, v0}, Landroid/webkit/WebSettings;->setMediaPlaybackRequiresUserGesture(Z)V

    :cond_4
    return-void
.end method

.method public ཇ(I)V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, -0x80000000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/Window;->setNavigationBarColor(I)V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/Window;->setStatusBarColor(I)V

    :cond_0
    return-void
.end method

.method public ᓭ(Landroid/view/View$OnClickListener;)V
    .locals 4

    invoke-static {}, L䆀/䂻/㚬/ᆻ;->உ()Z

    move-result v0

    const/4 v1, 0x0

    const v2, 0x7f080085

    const v3, 0x7f080084

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/games/app/MainActivity;->䆀:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v3, 0x7f070085

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lorg/games/app/MainActivity;->䆀:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v2, 0x7f0e0054

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lorg/games/app/MainActivity;->䆀:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lorg/games/app/MainActivity;->䆀:Landroid/view/View;

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    const v0, 0x7f070084

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object p1, p0, Lorg/games/app/MainActivity;->䆀:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const v0, 0x7f0e0053

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    :goto_0
    iget-object p1, p0, Lorg/games/app/MainActivity;->䆀:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public ἥ()V
    .locals 2

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x1e06

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/games/app/MainActivity;->ཇ(I)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const/4 v1, 0x1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    :cond_0
    return-void
.end method

.method public final ℓ()Landroid/webkit/WebView;
    .locals 4

    new-instance v0, Landroid/webkit/WebView;

    invoke-direct {v0, p0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_0

    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v0, v3}, Landroid/webkit/CookieManager;->setAcceptThirdPartyCookies(Landroid/webkit/WebView;Z)V

    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/webkit/CookieManager;->setAcceptCookie(Z)V

    :cond_0
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iget-object v1, p0, Lorg/games/app/MainActivity;->㚬:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lorg/games/app/MainActivity;->䂻:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, v0}, Lorg/games/app/MainActivity;->ಫ(Landroid/webkit/WebView;)V

    iget-object v1, p0, Lorg/games/app/MainActivity;->䂻:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    const-string v1, "FwgSCAMIDQgVGAIJAA8GBA=="

    invoke-static {v1}, L䆀/உ/உ;->உ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, L䆀/䂻/㚬/䆀;->ỷ(Ljava/lang/String;I)V

    :cond_1
    return-object v0
.end method

.method public final ㄏ()Landroid/webkit/WebView;
    .locals 2

    iget-object v0, p0, Lorg/games/app/MainActivity;->㚬:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/games/app/MainActivity;->㺴:Landroid/webkit/WebView;

    return-object v0

    :cond_0
    iget-object v1, p0, Lorg/games/app/MainActivity;->㚬:Landroid/view/ViewGroup;

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    return-object v0
.end method

.method public final 㧦(Ljava/lang/String;)V
    .locals 1

    invoke-static {}, L䆀/䂻/㚬/ᆻ;->உ()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/games/app/MainActivity;->ㄏ()Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/games/app/MainActivity$ḓ;

    invoke-direct {v0, p0, p1}, Lorg/games/app/MainActivity$ḓ;-><init>(Lorg/games/app/MainActivity;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/games/app/MainActivity;->ᓭ(Landroid/view/View$OnClickListener;)V

    :goto_0
    return-void
.end method

.method public final 㹖(I)V
    .locals 1

    iget-object v0, p0, Lorg/games/app/MainActivity;->㚬:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeViewAt(I)V

    iget-object v0, p0, Lorg/games/app/MainActivity;->䂻:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->destroy()V

    iget-object p1, p0, Lorg/games/app/MainActivity;->䂻:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "FwgSCAMIDQgVGAIJAA8GBA=="

    invoke-static {p1}, L䆀/உ/உ;->உ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    invoke-static {p1, v0}, L䆀/䂻/㚬/䆀;->ỷ(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method
