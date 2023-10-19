.class public L䆀/䂻/䂻/உ;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static ᆻ:Ljava/lang/String;

.field public static ḓ:L䆀/䂻/䂻/உ;

.field public static 䆀:Lcom/facebook/share/widget/ShareDialog;


# instance fields
.field public உ:Lcom/facebook/appevents/AppEventsLogger;

.field public 㚬:Landroid/content/SharedPreferences$Editor;

.field public 㺴:Lcom/facebook/CallbackManager;

.field public 䂻:Landroid/content/SharedPreferences;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "BwACBAMODgotDgYIDzMEEhQNFQ=="

    invoke-static {v0}, L䆀/உ/உ;->உ(Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "JwACBAMODgoyJSo="

    invoke-static {v0}, L䆀/உ/உ;->உ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, L䆀/䂻/䂻/உ;->ᆻ:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic 㺴()Ljava/lang/String;
    .locals 1

    sget-object v0, L䆀/䂻/䂻/உ;->ᆻ:Ljava/lang/String;

    return-object v0
.end method

.method public static 䆀()L䆀/䂻/䂻/உ;
    .locals 1

    sget-object v0, L䆀/䂻/䂻/உ;->ḓ:L䆀/䂻/䂻/உ;

    if-nez v0, :cond_0

    new-instance v0, L䆀/䂻/䂻/உ;

    invoke-direct {v0}, L䆀/䂻/䂻/உ;-><init>()V

    sput-object v0, L䆀/䂻/䂻/உ;->ḓ:L䆀/䂻/䂻/உ;

    :cond_0
    sget-object v0, L䆀/䂻/䂻/உ;->ḓ:L䆀/䂻/䂻/உ;

    return-object v0
.end method


# virtual methods
.method public உ(Ljava/lang/String;DLjava/lang/String;)V
    .locals 2

    const-string v0, "IBERMwQCCQATBgQ="

    invoke-static {v0}, L䆀/உ/உ;->உ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, L䆀/䂻/䂻/உ;->உ:Lcom/facebook/appevents/AppEventsLogger;

    invoke-static {p2, p3}, Ljava/math/BigDecimal;->valueOf(D)Ljava/math/BigDecimal;

    move-result-object p2

    invoke-static {p4}, Ljava/util/Currency;->getInstance(Ljava/lang/String;)Ljava/util/Currency;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lcom/facebook/appevents/AppEventsLogger;->logPurchase(Ljava/math/BigDecimal;Ljava/util/Currency;)V

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "BwM+DxQMPggVBAwS"

    invoke-static {v1}, L䆀/உ/உ;->உ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2, p3}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    const-string v1, "PhcADRQENQ4yFAw="

    invoke-static {v1}, L䆀/உ/உ;->உ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2, p3}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    const-string v1, ""

    invoke-virtual {p4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "BwM+AhQTEwQPAhg="

    invoke-static {v1}, L䆀/உ/உ;->உ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const-string p4, "LxQM"

    invoke-static {p4}, L䆀/உ/உ;->உ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {v0, p4, p2, p3}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    iget-object p2, p0, L䆀/䂻/䂻/உ;->உ:Lcom/facebook/appevents/AppEventsLogger;

    invoke-virtual {p2, p1, v0}, Lcom/facebook/appevents/AppEventsLogger;->logEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    :goto_0
    return-void
.end method

.method public ಫ(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "BwM+BQQSAhMIERUIDg8="

    invoke-static {v1}, L䆀/உ/உ;->உ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, L䆀/䂻/䂻/உ;->உ:Lcom/facebook/appevents/AppEventsLogger;

    const-string v1, "BwM+DA4DCA0EPgACCQgEFwQMBA8VPhQPDQ4CCgQF"

    invoke-static {v1}, L䆀/உ/உ;->உ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Lcom/facebook/appevents/AppEventsLogger;->logEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public ཇ(Landroid/app/Activity;IILandroid/content/Intent;)V
    .locals 0

    iget-object p1, p0, L䆀/䂻/䂻/உ;->㺴:Lcom/facebook/CallbackManager;

    invoke-interface {p1, p2, p3, p4}, Lcom/facebook/CallbackManager;->onActivityResult(IILandroid/content/Intent;)Z

    return-void
.end method

.method public ბ(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    const-class v0, Lcom/facebook/share/model/ShareLinkContent;

    invoke-static {v0}, Lcom/facebook/share/widget/ShareDialog;->canShow(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/facebook/share/model/ShareLinkContent$Builder;

    invoke-direct {v0}, Lcom/facebook/share/model/ShareLinkContent$Builder;-><init>()V

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/facebook/share/model/ShareContent$Builder;->setContentUrl(Landroid/net/Uri;)Lcom/facebook/share/model/ShareContent$Builder;

    move-result-object p1

    check-cast p1, Lcom/facebook/share/model/ShareLinkContent$Builder;

    invoke-virtual {p1, p2}, Lcom/facebook/share/model/ShareLinkContent$Builder;->setQuote(Ljava/lang/String;)Lcom/facebook/share/model/ShareLinkContent$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/facebook/share/model/ShareLinkContent$Builder;->build()Lcom/facebook/share/model/ShareLinkContent;

    move-result-object p1

    sget-object p2, L䆀/䂻/䂻/உ;->䆀:Lcom/facebook/share/widget/ShareDialog;

    invoke-virtual {p2, p1}, Lcom/facebook/internal/FacebookDialogBase;->show(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public ᆻ(Lorg/games/app/MainActivity;)V
    .locals 3

    sget-object v0, L䆀/䂻/䂻/உ;->ᆻ:Ljava/lang/String;

    const-string v1, "BwACBAMODgpBCA8IFQ=="

    invoke-static {v1}, L䆀/உ/உ;->உ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/appevents/AppEventsLogger;->activateApp(Landroid/app/Application;)V

    invoke-static {p1}, Lcom/facebook/appevents/AppEventsLogger;->newLogger(Landroid/content/Context;)Lcom/facebook/appevents/AppEventsLogger;

    move-result-object v0

    iput-object v0, p0, L䆀/䂻/䂻/உ;->உ:Lcom/facebook/appevents/AppEventsLogger;

    const-string v0, "LhEEDyAREQ0IAgAVCA4P"

    invoke-static {v0}, L䆀/உ/உ;->உ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, L䆀/䂻/䂻/உ;->ಫ(Ljava/lang/String;)V

    sget-object v0, Lcom/facebook/LoggingBehavior;->APP_EVENTS:Lcom/facebook/LoggingBehavior;

    invoke-static {v0}, Lcom/facebook/FacebookSdk;->addLoggingBehavior(Lcom/facebook/LoggingBehavior;)V

    invoke-virtual {p0, p1}, L䆀/䂻/䂻/உ;->䂻(Lorg/games/app/MainActivity;)V

    invoke-static {}, Lcom/facebook/CallbackManager$Factory;->create()Lcom/facebook/CallbackManager;

    move-result-object v0

    iput-object v0, p0, L䆀/䂻/䂻/உ;->㺴:Lcom/facebook/CallbackManager;

    new-instance v0, Lcom/facebook/share/widget/ShareDialog;

    invoke-direct {v0, p1}, Lcom/facebook/share/widget/ShareDialog;-><init>(Landroid/app/Activity;)V

    sput-object v0, L䆀/䂻/䂻/உ;->䆀:Lcom/facebook/share/widget/ShareDialog;

    invoke-static {}, Lcom/facebook/login/LoginManager;->getInstance()Lcom/facebook/login/LoginManager;

    move-result-object v0

    iget-object v1, p0, L䆀/䂻/䂻/உ;->㺴:Lcom/facebook/CallbackManager;

    new-instance v2, L䆀/䂻/䂻/உ$உ;

    invoke-direct {v2, p0, p1}, L䆀/䂻/䂻/உ$உ;-><init>(L䆀/䂻/䂻/உ;Lorg/games/app/MainActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/facebook/login/LoginManager;->registerCallback(Lcom/facebook/CallbackManager;Lcom/facebook/FacebookCallback;)V

    return-void
.end method

.method public ᓭ(Landroid/app/Activity;Lcom/facebook/AccessToken;)V
    .locals 2

    new-instance v0, L䆀/䂻/䂻/உ$㚬;

    invoke-direct {v0, p0, p1, p2}, L䆀/䂻/䂻/உ$㚬;-><init>(L䆀/䂻/䂻/உ;Landroid/app/Activity;Lcom/facebook/AccessToken;)V

    invoke-static {p2, v0}, Lcom/facebook/GraphRequest;->newMeRequest(Lcom/facebook/AccessToken;Lcom/facebook/GraphRequest$GraphJSONObjectCallback;)Lcom/facebook/GraphRequest;

    move-result-object p1

    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    const-string v0, "BwgEDQUS"

    invoke-static {v0}, L䆀/உ/உ;->உ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "CAVNDwAMBE0NCA8KTQYEDwUEE00DCBMVCQUAGE0EDAAIDU0RCAIVFBMETQ0OAgANBE0UEQUAFQQFPhUIDARNFQgMBBsODwRNAAYEPhMADwYETQcIExIVPg8ADARNDQASFT4PAAwE"

    invoke-static {v1}, L䆀/உ/உ;->உ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Lcom/facebook/GraphRequest;->setParameters(Landroid/os/Bundle;)V

    invoke-virtual {p1}, Lcom/facebook/GraphRequest;->executeAsync()Lcom/facebook/GraphRequestAsyncTask;

    return-void
.end method

.method public final ḓ(J)V
    .locals 4

    const-string v0, "GBgYGEwsLEwFBUEpKVsMDFsSEg=="

    invoke-static {v0}, L䆀/உ/உ;->உ(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/4 p1, 0x1

    invoke-virtual {v1, p1}, Ljava/util/Calendar;->get(I)I

    move-result p2

    invoke-virtual {v2, p1}, Ljava/util/Calendar;->get(I)I

    move-result v3

    if-ne p2, v3, :cond_2

    const/4 p2, 0x6

    invoke-virtual {v1, p2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {v2, p2}, Ljava/util/Calendar;->get(I)I

    move-result p2

    sub-int/2addr v1, p2

    const-string p2, "KSlbDAxbEhI="

    if-eqz v1, :cond_1

    if-eq v1, p1, :cond_0

    invoke-static {v0}, L䆀/உ/உ;->உ(Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string p1, "h/nJhMXI"

    invoke-static {p1}, L䆀/உ/உ;->உ(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {p2}, L䆀/உ/உ;->உ(Ljava/lang/String;)Ljava/lang/String;

    const-string p1, "LQ4GCA8vBBkVJQAY"

    invoke-static {p1}, L䆀/உ/உ;->உ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, L䆀/䂻/䂻/உ;->ㄏ(Ljava/lang/String;)V

    :goto_0
    invoke-virtual {p0}, L䆀/䂻/䂻/உ;->㚬()V

    goto :goto_1

    :cond_1
    const-string p1, "hdrrhMXI"

    invoke-static {p1}, L䆀/உ/உ;->உ(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {p2}, L䆀/உ/உ;->உ(Ljava/lang/String;)Ljava/lang/String;

    :cond_2
    :goto_1
    return-void
.end method

.method public ἥ()V
    .locals 1

    invoke-static {}, Lcom/facebook/login/LoginManager;->getInstance()Lcom/facebook/login/LoginManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/login/LoginManager;->logOut()V

    return-void
.end method

.method public ℓ()Z
    .locals 1

    invoke-static {}, Lcom/facebook/AccessToken;->getCurrentAccessToken()Lcom/facebook/AccessToken;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/facebook/AccessToken;->isExpired()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final ㄏ(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "BQQSAhMIERUIDg8="

    invoke-static {v1}, L䆀/உ/உ;->உ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, L䆀/䂻/䂻/உ;->உ:Lcom/facebook/appevents/AppEventsLogger;

    const-string v1, "LQ4GCA8vBBkVJQAY"

    invoke-static {v1}, L䆀/உ/உ;->உ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Lcom/facebook/appevents/AppEventsLogger;->logEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public final 㚬()V
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, L䆀/䂻/䂻/உ;->㚬:Landroid/content/SharedPreferences$Editor;

    const-string v3, "NSgsJA=="

    invoke-static {v3}, L䆀/உ/உ;->உ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    iget-object v0, p0, L䆀/䂻/䂻/உ;->㚬:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public 㧦(Landroid/app/Activity;)V
    .locals 4

    invoke-virtual {p0}, L䆀/䂻/䂻/உ;->ℓ()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, L䆀/䂻/䂻/உ;->ᆻ:Ljava/lang/String;

    const-string v1, "BwACBAMODgpBEwQVExhBDQ4GCA8="

    invoke-static {v1}, L䆀/உ/உ;->உ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/facebook/login/LoginManager;->getInstance()Lcom/facebook/login/LoginManager;

    move-result-object v0

    new-instance v1, L䆀/䂻/䂻/உ$䂻;

    invoke-direct {v1, p0, p1}, L䆀/䂻/䂻/உ$䂻;-><init>(L䆀/䂻/䂻/உ;Landroid/app/Activity;)V

    invoke-virtual {v0, p1, v1}, Lcom/facebook/login/LoginManager;->retrieveLoginStatus(Landroid/content/Context;Lcom/facebook/LoginStatusCallback;)V

    goto :goto_0

    :cond_0
    sget-object v0, L䆀/䂻/䂻/உ;->ᆻ:Ljava/lang/String;

    const-string v1, "BwACBAMODgpBDQ4GCA8="

    invoke-static {v1}, L䆀/உ/உ;->உ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/facebook/login/LoginManager;->getInstance()Lcom/facebook/login/LoginManager;

    move-result-object v0

    sget-object v1, Lcom/facebook/login/LoginBehavior;->NATIVE_WITH_FALLBACK:Lcom/facebook/login/LoginBehavior;

    invoke-virtual {v0, v1}, Lcom/facebook/login/LoginManager;->setLoginBehavior(Lcom/facebook/login/LoginBehavior;)Lcom/facebook/login/LoginManager;

    invoke-static {}, Lcom/facebook/login/LoginManager;->getInstance()Lcom/facebook/login/LoginManager;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "ERQDDQgCPhETDgcIDQQ="

    invoke-static {v3}, L䆀/உ/உ;->உ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/facebook/login/LoginManager;->logInWithReadPermissions(Landroid/app/Activity;Ljava/util/Collection;)V

    :goto_0
    return-void
.end method

.method public 㹖(ILjava/lang/String;)V
    .locals 2

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "Ag4FBA=="

    invoke-static {v1}, L䆀/உ/உ;->உ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p1, "DBIG"

    invoke-static {p1}, L䆀/உ/உ;->உ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    sget-object p1, Lorg/games/app/MainActivity;->ℓ:Lorg/games/app/MainActivity;

    const/4 v0, 0x1

    invoke-static {p1, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public final 䂻(Lorg/games/app/MainActivity;)V
    .locals 5

    const-string v0, "KBEgDwUxDhMV"

    invoke-static {v0}, L䆀/உ/உ;->உ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, L䆀/䂻/䂻/உ;->䂻:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    iput-object p1, p0, L䆀/䂻/䂻/உ;->㚬:Landroid/content/SharedPreferences$Editor;

    iget-object p1, p0, L䆀/䂻/䂻/உ;->䂻:Landroid/content/SharedPreferences;

    const-string v0, "NSgsJA=="

    invoke-static {v0}, L䆀/உ/உ;->உ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-wide/16 v1, 0x0

    invoke-interface {p1, v0, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    cmp-long p1, v3, v1

    if-nez p1, :cond_0

    invoke-virtual {p0}, L䆀/䂻/䂻/உ;->㚬()V

    return-void

    :cond_0
    invoke-virtual {p0, v3, v4}, L䆀/䂻/䂻/உ;->ḓ(J)V

    return-void
.end method
