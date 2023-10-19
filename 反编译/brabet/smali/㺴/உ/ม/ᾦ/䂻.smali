.class public final synthetic L㺴/உ/ม/ᾦ/䂻;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic 㚬:Lcom/facebook/appevents/AppEvent;

.field public final synthetic 䂻:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Lcom/facebook/appevents/AppEvent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, L㺴/உ/ม/ᾦ/䂻;->䂻:Ljava/lang/String;

    iput-object p2, p0, L㺴/உ/ม/ᾦ/䂻;->㚬:Lcom/facebook/appevents/AppEvent;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, L㺴/உ/ม/ᾦ/䂻;->䂻:Ljava/lang/String;

    iget-object v1, p0, L㺴/உ/ม/ᾦ/䂻;->㚬:Lcom/facebook/appevents/AppEvent;

    invoke-static {v0, v1}, Lcom/facebook/appevents/ondeviceprocessing/OnDeviceProcessingManager;->䂻(Ljava/lang/String;Lcom/facebook/appevents/AppEvent;)V

    return-void
.end method
