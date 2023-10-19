.class public final Lcom/facebook/internal/FacebookWebFallbackDialog;
.super Lcom/facebook/internal/WebDialog;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/internal/FacebookWebFallbackDialog$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/facebook/internal/FacebookWebFallbackDialog$Companion;

.field private static final OS_BACK_BUTTON_RESPONSE_TIMEOUT_MILLISECONDS:I = 0x5dc

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private waitingForDialogToClose:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/facebook/internal/FacebookWebFallbackDialog$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/facebook/internal/FacebookWebFallbackDialog$Companion;-><init>(Lḓ/ᓭ/㺴/ᆻ;)V

    sput-object v0, Lcom/facebook/internal/FacebookWebFallbackDialog;->Companion:Lcom/facebook/internal/FacebookWebFallbackDialog$Companion;

    const-class v0, Lcom/facebook/internal/FacebookWebFallbackDialog;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/internal/FacebookWebFallbackDialog;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/facebook/internal/WebDialog;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p0, p3}, Lcom/facebook/internal/WebDialog;->setExpectedRedirectUrl(Ljava/lang/String;)V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lḓ/ᓭ/㺴/ᆻ;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/internal/FacebookWebFallbackDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static final cancel$lambda-0(Lcom/facebook/internal/FacebookWebFallbackDialog;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lḓ/ᓭ/㺴/ಫ;->㺴(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0}, Lcom/facebook/internal/WebDialog;->cancel()V

    return-void
.end method

.method public static final newInstance(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/internal/FacebookWebFallbackDialog;
    .locals 1

    sget-object v0, Lcom/facebook/internal/FacebookWebFallbackDialog;->Companion:Lcom/facebook/internal/FacebookWebFallbackDialog$Companion;

    invoke-virtual {v0, p0, p1, p2}, Lcom/facebook/internal/FacebookWebFallbackDialog$Companion;->newInstance(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/internal/FacebookWebFallbackDialog;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic 㺴(Lcom/facebook/internal/FacebookWebFallbackDialog;)V
    .locals 0

    invoke-static {p0}, Lcom/facebook/internal/FacebookWebFallbackDialog;->cancel$lambda-0(Lcom/facebook/internal/FacebookWebFallbackDialog;)V

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 4

    invoke-virtual {p0}, Lcom/facebook/internal/WebDialog;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {p0}, Lcom/facebook/internal/WebDialog;->isPageFinished()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/facebook/internal/WebDialog;->isListenerCalled()Z

    move-result v1

    if-nez v1, :cond_2

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/webkit/WebView;->isShown()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    iget-boolean v1, p0, Lcom/facebook/internal/FacebookWebFallbackDialog;->waitingForDialogToClose:Z

    if-eqz v1, :cond_1

    return-void

    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/facebook/internal/FacebookWebFallbackDialog;->waitingForDialogToClose:Z

    const-string v1, "javascript:"

    const-string v2, "(function() {  var event = document.createEvent(\'Event\');  event.initEvent(\'fbPlatformDialogMustClose\',true,true);  document.dispatchEvent(event);})();"

    invoke-static {v1, v2}, Lḓ/ᓭ/㺴/ಫ;->ಫ(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, L㺴/உ/ㄬ/㺴;

    invoke-direct {v1, p0}, L㺴/உ/ㄬ/㺴;-><init>(Lcom/facebook/internal/FacebookWebFallbackDialog;)V

    const-wide/16 v2, 0x5dc

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_2
    :goto_0
    invoke-super {p0}, Lcom/facebook/internal/WebDialog;->cancel()V

    return-void
.end method

.method public parseResponseUri(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 3

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    sget-object v0, Lcom/facebook/internal/Utility;->INSTANCE:Lcom/facebook/internal/Utility;

    invoke-virtual {p1}, Landroid/net/Uri;->getQuery()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/facebook/internal/Utility;->parseUrlQueryString(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "bridge_args"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    const-string v2, "Unable to parse bridge_args JSON"

    if-nez v0, :cond_0

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/facebook/internal/BundleJSONConverter;->INSTANCE:Lcom/facebook/internal/BundleJSONConverter;

    invoke-static {v0}, Lcom/facebook/internal/BundleJSONConverter;->convertToBundle(Lorg/json/JSONObject;)Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "com.facebook.platform.protocol.BRIDGE_ARGS"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/facebook/internal/Utility;->INSTANCE:Lcom/facebook/internal/Utility;

    sget-object v1, Lcom/facebook/internal/FacebookWebFallbackDialog;->TAG:Ljava/lang/String;

    invoke-static {v1, v2, v0}, Lcom/facebook/internal/Utility;->logd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    const-string v0, "method_results"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    sget-object v0, Lcom/facebook/internal/Utility;->INSTANCE:Lcom/facebook/internal/Utility;

    invoke-static {v1}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    :try_start_1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/facebook/internal/BundleJSONConverter;->INSTANCE:Lcom/facebook/internal/BundleJSONConverter;

    invoke-static {v0}, Lcom/facebook/internal/BundleJSONConverter;->convertToBundle(Lorg/json/JSONObject;)Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "com.facebook.platform.protocol.RESULT_ARGS"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    sget-object v1, Lcom/facebook/internal/Utility;->INSTANCE:Lcom/facebook/internal/Utility;

    sget-object v1, Lcom/facebook/internal/FacebookWebFallbackDialog;->TAG:Ljava/lang/String;

    invoke-static {v1, v2, v0}, Lcom/facebook/internal/Utility;->logd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    :goto_1
    const-string v0, "version"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    sget-object v0, Lcom/facebook/internal/NativeProtocol;->INSTANCE:Lcom/facebook/internal/NativeProtocol;

    invoke-static {}, Lcom/facebook/internal/NativeProtocol;->getLatestKnownVersion()I

    move-result v0

    const-string v1, "com.facebook.platform.protocol.PROTOCOL_VERSION"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object p1
.end method
