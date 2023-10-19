.class public Lorg/games/app/MainActivity$㺴;
.super Landroid/webkit/WebChromeClient;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/games/app/MainActivity;->ಫ(Landroid/webkit/WebView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic உ:Lorg/games/app/MainActivity;


# direct methods
.method public constructor <init>(Lorg/games/app/MainActivity;)V
    .locals 0

    iput-object p1, p0, Lorg/games/app/MainActivity$㺴;->உ:Lorg/games/app/MainActivity;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onCloseWindow(Landroid/webkit/WebView;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/webkit/WebChromeClient;->onCloseWindow(Landroid/webkit/WebView;)V

    iget-object v0, p0, Lorg/games/app/MainActivity$㺴;->உ:Lorg/games/app/MainActivity;

    invoke-static {v0}, Lorg/games/app/MainActivity;->㺴(Lorg/games/app/MainActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    invoke-static {v0, p1}, Lorg/games/app/MainActivity;->ḓ(Lorg/games/app/MainActivity;I)V

    return-void
.end method

.method public onCreateWindow(Landroid/webkit/WebView;ZZLandroid/os/Message;)Z
    .locals 0

    iget-object p1, p0, Lorg/games/app/MainActivity$㺴;->உ:Lorg/games/app/MainActivity;

    iget-boolean p2, p1, Lorg/games/app/MainActivity;->ᆻ:Z

    const/4 p3, 0x1

    if-eqz p2, :cond_0

    invoke-static {p1}, Lorg/games/app/MainActivity;->㚬(Lorg/games/app/MainActivity;)Landroid/webkit/WebView;

    move-result-object p1

    goto :goto_0

    :cond_0
    new-instance p1, Landroid/webkit/WebView;

    iget-object p2, p0, Lorg/games/app/MainActivity$㺴;->உ:Lorg/games/app/MainActivity;

    invoke-direct {p1, p2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p2

    invoke-virtual {p2, p3}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    :goto_0
    iget-object p2, p4, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p2, Landroid/webkit/WebView$WebViewTransport;

    invoke-virtual {p2, p1}, Landroid/webkit/WebView$WebViewTransport;->setWebView(Landroid/webkit/WebView;)V

    invoke-virtual {p4}, Landroid/os/Message;->sendToTarget()V

    return p3
.end method

.method public onJsBeforeUnload(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .locals 0

    invoke-virtual {p4}, Landroid/webkit/JsResult;->confirm()V

    const/4 p1, 0x1

    return p1
.end method

.method public onShowFileChooser(Landroid/webkit/WebView;Landroid/webkit/ValueCallback;Landroid/webkit/WebChromeClient$FileChooserParams;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/WebView;",
            "Landroid/webkit/ValueCallback<",
            "[",
            "Landroid/net/Uri;",
            ">;",
            "Landroid/webkit/WebChromeClient$FileChooserParams;",
            ")Z"
        }
    .end annotation

    iget-object v0, p0, Lorg/games/app/MainActivity$㺴;->உ:Lorg/games/app/MainActivity;

    invoke-static {v0}, Lorg/games/app/MainActivity;->䆀(Lorg/games/app/MainActivity;)L䆀/䂻/䂻/䂻;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, L䆀/䂻/䂻/䂻;->䆀(Landroid/webkit/WebView;Landroid/webkit/ValueCallback;Landroid/webkit/WebChromeClient$FileChooserParams;)Z

    move-result p1

    return p1
.end method
