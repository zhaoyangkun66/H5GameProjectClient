.class public final synthetic L㺴/உ/ม/ڈ/㺴;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic ḓ:Ljava/lang/String;

.field public final synthetic 㚬:Ljava/lang/String;

.field public final synthetic 㺴:Lcom/facebook/appevents/suggestedevents/ViewOnClickListener;

.field public final synthetic 䂻:Lorg/json/JSONObject;


# direct methods
.method public synthetic constructor <init>(Lorg/json/JSONObject;Ljava/lang/String;Lcom/facebook/appevents/suggestedevents/ViewOnClickListener;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, L㺴/உ/ม/ڈ/㺴;->䂻:Lorg/json/JSONObject;

    iput-object p2, p0, L㺴/உ/ม/ڈ/㺴;->㚬:Ljava/lang/String;

    iput-object p3, p0, L㺴/உ/ม/ڈ/㺴;->㺴:Lcom/facebook/appevents/suggestedevents/ViewOnClickListener;

    iput-object p4, p0, L㺴/உ/ม/ڈ/㺴;->ḓ:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, L㺴/உ/ม/ڈ/㺴;->䂻:Lorg/json/JSONObject;

    iget-object v1, p0, L㺴/உ/ม/ڈ/㺴;->㚬:Ljava/lang/String;

    iget-object v2, p0, L㺴/உ/ม/ڈ/㺴;->㺴:Lcom/facebook/appevents/suggestedevents/ViewOnClickListener;

    iget-object v3, p0, L㺴/உ/ม/ڈ/㺴;->ḓ:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/facebook/appevents/suggestedevents/ViewOnClickListener;->உ(Lorg/json/JSONObject;Ljava/lang/String;Lcom/facebook/appevents/suggestedevents/ViewOnClickListener;Ljava/lang/String;)V

    return-void
.end method
