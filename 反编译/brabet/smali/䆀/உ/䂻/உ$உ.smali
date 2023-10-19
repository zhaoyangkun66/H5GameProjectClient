.class public L䆀/உ/䂻/உ$உ;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements L䆀/உ/㚬/䂻;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = L䆀/உ/䂻/உ;->䂻(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic உ:L䆀/உ/䂻/உ;


# direct methods
.method public constructor <init>(L䆀/உ/䂻/உ;)V
    .locals 0

    iput-object p1, p0, L䆀/உ/䂻/உ$உ;->உ:L䆀/உ/䂻/உ;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public உ(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "typetoken"

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "tObjData"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "tCurrencyType"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, L䆀/உ/䂻/உ$உ;->உ:L䆀/உ/䂻/உ;

    invoke-static {v2}, L䆀/உ/䂻/உ;->உ(L䆀/உ/䂻/உ;)Landroid/os/Handler;

    move-result-object v2

    new-instance v3, L䆀/உ/䂻/உ$உ$உ;

    invoke-direct {v3, p0, p1, v1, v0}, L䆀/உ/䂻/உ$உ$உ;-><init>(L䆀/உ/䂻/உ$உ;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method
