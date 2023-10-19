.class public abstract Lcom/facebook/ProfileTracker;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ProfileTracker$ProfileBroadcastReceiver;
    }
.end annotation


# instance fields
.field private final broadcastManager:L㚬/ᓭ/உ/உ;

.field private isTracking:Z

.field private final receiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/facebook/internal/Validate;->INSTANCE:Lcom/facebook/internal/Validate;

    invoke-static {}, Lcom/facebook/internal/Validate;->sdkInitialized()V

    new-instance v0, Lcom/facebook/ProfileTracker$ProfileBroadcastReceiver;

    invoke-direct {v0, p0}, Lcom/facebook/ProfileTracker$ProfileBroadcastReceiver;-><init>(Lcom/facebook/ProfileTracker;)V

    iput-object v0, p0, Lcom/facebook/ProfileTracker;->receiver:Landroid/content/BroadcastReceiver;

    sget-object v0, Lcom/facebook/FacebookSdk;->INSTANCE:Lcom/facebook/FacebookSdk;

    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, L㚬/ᓭ/உ/உ;->䂻(Landroid/content/Context;)L㚬/ᓭ/உ/உ;

    move-result-object v0

    const-string v1, "getInstance(FacebookSdk.getApplicationContext())"

    invoke-static {v0, v1}, Lḓ/ᓭ/㺴/ಫ;->㚬(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/facebook/ProfileTracker;->broadcastManager:L㚬/ᓭ/உ/உ;

    invoke-virtual {p0}, Lcom/facebook/ProfileTracker;->startTracking()V

    return-void
.end method

.method private final addBroadcastReceiver()V
    .locals 3

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.facebook.sdk.ACTION_CURRENT_PROFILE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/facebook/ProfileTracker;->broadcastManager:L㚬/ᓭ/உ/உ;

    iget-object v2, p0, Lcom/facebook/ProfileTracker;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, L㚬/ᓭ/உ/உ;->㚬(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    return-void
.end method


# virtual methods
.method public final isTracking()Z
    .locals 1

    iget-boolean v0, p0, Lcom/facebook/ProfileTracker;->isTracking:Z

    return v0
.end method

.method public abstract onCurrentProfileChanged(Lcom/facebook/Profile;Lcom/facebook/Profile;)V
.end method

.method public final startTracking()V
    .locals 1

    iget-boolean v0, p0, Lcom/facebook/ProfileTracker;->isTracking:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/facebook/ProfileTracker;->addBroadcastReceiver()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ProfileTracker;->isTracking:Z

    return-void
.end method

.method public final stopTracking()V
    .locals 2

    iget-boolean v0, p0, Lcom/facebook/ProfileTracker;->isTracking:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/facebook/ProfileTracker;->broadcastManager:L㚬/ᓭ/உ/உ;

    iget-object v1, p0, Lcom/facebook/ProfileTracker;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, L㚬/ᓭ/உ/உ;->ḓ(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ProfileTracker;->isTracking:Z

    return-void
.end method
