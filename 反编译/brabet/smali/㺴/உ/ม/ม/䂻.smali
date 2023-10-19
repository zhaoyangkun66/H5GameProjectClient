.class public final synthetic L㺴/உ/ม/ม/䂻;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic 䂻:Lcom/facebook/GraphRequest;


# direct methods
.method public synthetic constructor <init>(Lcom/facebook/GraphRequest;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, L㺴/உ/ม/ม/䂻;->䂻:Lcom/facebook/GraphRequest;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, L㺴/உ/ม/ม/䂻;->䂻:Lcom/facebook/GraphRequest;

    invoke-static {v0}, Lcom/facebook/appevents/cloudbridge/AppEventsConversionsAPITransformerWebRequests;->உ(Lcom/facebook/GraphRequest;)V

    return-void
.end method
