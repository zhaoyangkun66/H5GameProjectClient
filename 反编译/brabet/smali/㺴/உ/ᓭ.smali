.class public final synthetic L㺴/உ/ᓭ;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/FacebookSdk$GraphRequestCreator;


# static fields
.field public static final synthetic உ:L㺴/உ/ᓭ;


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, L㺴/உ/ᓭ;

    invoke-direct {v0}, L㺴/உ/ᓭ;-><init>()V

    sput-object v0, L㺴/உ/ᓭ;->உ:L㺴/உ/ᓭ;

    return-void
.end method

.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final createPostRequest(Lcom/facebook/AccessToken;Ljava/lang/String;Lorg/json/JSONObject;Lcom/facebook/GraphRequest$Callback;)Lcom/facebook/GraphRequest;
    .locals 0

    invoke-static {p1, p2, p3, p4}, Lcom/facebook/FacebookSdk;->ㄏ(Lcom/facebook/AccessToken;Ljava/lang/String;Lorg/json/JSONObject;Lcom/facebook/GraphRequest$Callback;)Lcom/facebook/GraphRequest;

    move-result-object p1

    return-object p1
.end method
