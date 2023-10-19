.class public abstract L㚬/䂻/㧦/ḓ$㹖;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = L㚬/䂻/㧦/ḓ;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "\u3e56"
.end annotation


# instance fields
.field public உ:Landroid/content/BroadcastReceiver;

.field public final synthetic 䂻:L㚬/䂻/㧦/ḓ;


# direct methods
.method public constructor <init>(L㚬/䂻/㧦/ḓ;)V
    .locals 0

    iput-object p1, p0, L㚬/䂻/㧦/ḓ$㹖;->䂻:L㚬/䂻/㧦/ḓ;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public உ()V
    .locals 2

    iget-object v0, p0, L㚬/䂻/㧦/ḓ$㹖;->உ:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v1, p0, L㚬/䂻/㧦/ḓ$㹖;->䂻:L㚬/䂻/㧦/ḓ;

    iget-object v1, v1, L㚬/䂻/㧦/ḓ;->䆀:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v0, 0x0

    iput-object v0, p0, L㚬/䂻/㧦/ḓ$㹖;->உ:Landroid/content/BroadcastReceiver;

    :cond_0
    return-void
.end method

.method public ḓ()V
    .locals 3

    invoke-virtual {p0}, L㚬/䂻/㧦/ḓ$㹖;->உ()V

    invoke-virtual {p0}, L㚬/䂻/㧦/ḓ$㹖;->䂻()Landroid/content/IntentFilter;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/content/IntentFilter;->countActions()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, L㚬/䂻/㧦/ḓ$㹖;->உ:Landroid/content/BroadcastReceiver;

    if-nez v1, :cond_1

    new-instance v1, L㚬/䂻/㧦/ḓ$㹖$உ;

    invoke-direct {v1, p0}, L㚬/䂻/㧦/ḓ$㹖$உ;-><init>(L㚬/䂻/㧦/ḓ$㹖;)V

    iput-object v1, p0, L㚬/䂻/㧦/ḓ$㹖;->உ:Landroid/content/BroadcastReceiver;

    :cond_1
    iget-object v1, p0, L㚬/䂻/㧦/ḓ$㹖;->䂻:L㚬/䂻/㧦/ḓ;

    iget-object v1, v1, L㚬/䂻/㧦/ḓ;->䆀:Landroid/content/Context;

    iget-object v2, p0, L㚬/䂻/㧦/ḓ$㹖;->உ:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_2
    :goto_0
    return-void
.end method

.method public abstract 㚬()I
.end method

.method public abstract 㺴()V
.end method

.method public abstract 䂻()Landroid/content/IntentFilter;
.end method
