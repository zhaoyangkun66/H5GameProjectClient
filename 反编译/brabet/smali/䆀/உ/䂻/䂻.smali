.class public L䆀/உ/䂻/䂻;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        L䆀/உ/䂻/䂻$䂻;
    }
.end annotation


# static fields
.field public static உ:Landroid/app/Application; = null

.field public static 㚬:Ljava/lang/String; = ""

.field public static 䂻:L䆀/உ/䂻/䂻;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static 䂻()L䆀/உ/䂻/䂻;
    .locals 1

    sget-object v0, L䆀/உ/䂻/䂻;->䂻:L䆀/உ/䂻/䂻;

    if-nez v0, :cond_0

    new-instance v0, L䆀/உ/䂻/䂻;

    invoke-direct {v0}, L䆀/உ/䂻/䂻;-><init>()V

    sput-object v0, L䆀/உ/䂻/䂻;->䂻:L䆀/உ/䂻/䂻;

    :cond_0
    sget-object v0, L䆀/உ/䂻/䂻;->䂻:L䆀/உ/䂻/䂻;

    return-object v0
.end method


# virtual methods
.method public உ()Ljava/lang/String;
    .locals 1

    sget-object v0, L䆀/உ/䂻/䂻;->㚬:Ljava/lang/String;

    return-object v0
.end method

.method public ḓ(Lcom/adjust/sdk/AdjustAttribution;)V
    .locals 3

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "trackerName"

    iget-object v2, p1, Lcom/adjust/sdk/AdjustAttribution;->trackerName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "trackerToken"

    iget-object v2, p1, Lcom/adjust/sdk/AdjustAttribution;->trackerToken:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "adid"

    iget-object v2, p1, Lcom/adjust/sdk/AdjustAttribution;->adid:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "clickLabel"

    iget-object p1, p1, Lcom/adjust/sdk/AdjustAttribution;->clickLabel:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    sput-object p1, L䆀/உ/䂻/䂻;->㚬:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public 㚬(Landroid/app/Application;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    sput-object p1, L䆀/உ/䂻/䂻;->உ:Landroid/app/Application;

    new-instance v0, Lcom/adjust/sdk/AdjustConfig;

    const-string v1, "production"

    invoke-direct {v0, p1, p2, v1}, Lcom/adjust/sdk/AdjustConfig;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "url_strategy_china"

    invoke-virtual {v0, p1}, Lcom/adjust/sdk/AdjustConfig;->setUrlStrategy(Ljava/lang/String;)V

    sget-object p1, L䆀/உ/䂻/䂻;->உ:Landroid/app/Application;

    new-instance p2, L䆀/உ/䂻/䂻$䂻;

    const/4 v1, 0x0

    invoke-direct {p2, v1}, L䆀/உ/䂻/䂻$䂻;-><init>(L䆀/உ/䂻/䂻$உ;)V

    invoke-virtual {p1, p2}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    new-instance p1, L䆀/உ/䂻/䂻$உ;

    invoke-direct {p1, p0}, L䆀/உ/䂻/䂻$உ;-><init>(L䆀/உ/䂻/䂻;)V

    invoke-virtual {v0, p1}, Lcom/adjust/sdk/AdjustConfig;->setOnAttributionChangedListener(Lcom/adjust/sdk/OnAttributionChangedListener;)V

    const-string p1, ""

    if-eq p3, p1, :cond_0

    invoke-virtual {v0, p3}, Lcom/adjust/sdk/AdjustConfig;->setDefaultTracker(Ljava/lang/String;)V

    :cond_0
    invoke-static {v0}, Lcom/adjust/sdk/Adjust;->onCreate(Lcom/adjust/sdk/AdjustConfig;)V

    return-void
.end method

.method public 㺴(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Lcom/adjust/sdk/AdjustEvent;

    invoke-direct {v1, p1}, Lcom/adjust/sdk/AdjustEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {p2}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p1

    invoke-virtual {v1, p1, p2, p3}, Lcom/adjust/sdk/AdjustEvent;->setRevenue(DLjava/lang/String;)V

    :cond_0
    invoke-static {v1}, Lcom/adjust/sdk/Adjust;->trackEvent(Lcom/adjust/sdk/AdjustEvent;)V

    :cond_1
    return-void
.end method
