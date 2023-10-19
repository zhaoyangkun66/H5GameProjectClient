.class public final synthetic L㺴/உ/ม/ℓ;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic 㚬:Lcom/facebook/appevents/SessionEventsState;

.field public final synthetic 䂻:Lcom/facebook/appevents/AccessTokenAppIdPair;


# direct methods
.method public synthetic constructor <init>(Lcom/facebook/appevents/AccessTokenAppIdPair;Lcom/facebook/appevents/SessionEventsState;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, L㺴/உ/ม/ℓ;->䂻:Lcom/facebook/appevents/AccessTokenAppIdPair;

    iput-object p2, p0, L㺴/உ/ม/ℓ;->㚬:Lcom/facebook/appevents/SessionEventsState;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, L㺴/உ/ม/ℓ;->䂻:Lcom/facebook/appevents/AccessTokenAppIdPair;

    iget-object v1, p0, L㺴/உ/ม/ℓ;->㚬:Lcom/facebook/appevents/SessionEventsState;

    invoke-static {v0, v1}, Lcom/facebook/appevents/AppEventQueue;->䆀(Lcom/facebook/appevents/AccessTokenAppIdPair;Lcom/facebook/appevents/SessionEventsState;)V

    return-void
.end method
