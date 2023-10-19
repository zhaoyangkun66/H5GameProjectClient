.class public Landroid/support/v4/media/MediaBrowserCompat$ㄏ$㚬$உ;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v4/media/MediaBrowserCompat$ㄏ$㚬;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic 㚬:Landroid/os/IBinder;

.field public final synthetic 㺴:Landroid/support/v4/media/MediaBrowserCompat$ㄏ$㚬;

.field public final synthetic 䂻:Landroid/content/ComponentName;


# direct methods
.method public constructor <init>(Landroid/support/v4/media/MediaBrowserCompat$ㄏ$㚬;Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v4/media/MediaBrowserCompat$ㄏ$㚬$உ;->㺴:Landroid/support/v4/media/MediaBrowserCompat$ㄏ$㚬;

    iput-object p2, p0, Landroid/support/v4/media/MediaBrowserCompat$ㄏ$㚬$உ;->䂻:Landroid/content/ComponentName;

    iput-object p3, p0, Landroid/support/v4/media/MediaBrowserCompat$ㄏ$㚬$உ;->㚬:Landroid/os/IBinder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    sget-boolean v0, Landroid/support/v4/media/MediaBrowserCompat;->䂻:Z

    const-string v1, "MediaBrowserCompat"

    if-eqz v0, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MediaServiceConnection.onServiceConnected name="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Landroid/support/v4/media/MediaBrowserCompat$ㄏ$㚬$உ;->䂻:Landroid/content/ComponentName;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " binder="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Landroid/support/v4/media/MediaBrowserCompat$ㄏ$㚬$உ;->㚬:Landroid/os/IBinder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Landroid/support/v4/media/MediaBrowserCompat$ㄏ$㚬$உ;->㺴:Landroid/support/v4/media/MediaBrowserCompat$ㄏ$㚬;

    iget-object v2, v2, Landroid/support/v4/media/MediaBrowserCompat$ㄏ$㚬;->உ:Landroid/support/v4/media/MediaBrowserCompat$ㄏ;

    invoke-virtual {v2}, Landroid/support/v4/media/MediaBrowserCompat$ㄏ;->உ()V

    :cond_0
    iget-object v2, p0, Landroid/support/v4/media/MediaBrowserCompat$ㄏ$㚬$உ;->㺴:Landroid/support/v4/media/MediaBrowserCompat$ㄏ$㚬;

    const-string v3, "onServiceConnected"

    invoke-virtual {v2, v3}, Landroid/support/v4/media/MediaBrowserCompat$ㄏ$㚬;->உ(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    return-void

    :cond_1
    iget-object v2, p0, Landroid/support/v4/media/MediaBrowserCompat$ㄏ$㚬$உ;->㺴:Landroid/support/v4/media/MediaBrowserCompat$ㄏ$㚬;

    iget-object v2, v2, Landroid/support/v4/media/MediaBrowserCompat$ㄏ$㚬;->உ:Landroid/support/v4/media/MediaBrowserCompat$ㄏ;

    new-instance v3, Landroid/support/v4/media/MediaBrowserCompat$㹖;

    iget-object v4, p0, Landroid/support/v4/media/MediaBrowserCompat$ㄏ$㚬$உ;->㚬:Landroid/os/IBinder;

    iget-object v5, v2, Landroid/support/v4/media/MediaBrowserCompat$ㄏ;->㺴:Landroid/os/Bundle;

    invoke-direct {v3, v4, v5}, Landroid/support/v4/media/MediaBrowserCompat$㹖;-><init>(Landroid/os/IBinder;Landroid/os/Bundle;)V

    iput-object v3, v2, Landroid/support/v4/media/MediaBrowserCompat$ㄏ;->ㄏ:Landroid/support/v4/media/MediaBrowserCompat$㹖;

    iget-object v2, p0, Landroid/support/v4/media/MediaBrowserCompat$ㄏ$㚬$உ;->㺴:Landroid/support/v4/media/MediaBrowserCompat$ㄏ$㚬;

    iget-object v2, v2, Landroid/support/v4/media/MediaBrowserCompat$ㄏ$㚬;->உ:Landroid/support/v4/media/MediaBrowserCompat$ㄏ;

    new-instance v3, Landroid/os/Messenger;

    iget-object v4, p0, Landroid/support/v4/media/MediaBrowserCompat$ㄏ$㚬$உ;->㺴:Landroid/support/v4/media/MediaBrowserCompat$ㄏ$㚬;

    iget-object v4, v4, Landroid/support/v4/media/MediaBrowserCompat$ㄏ$㚬;->உ:Landroid/support/v4/media/MediaBrowserCompat$ㄏ;

    iget-object v4, v4, Landroid/support/v4/media/MediaBrowserCompat$ㄏ;->ḓ:Landroid/support/v4/media/MediaBrowserCompat$உ;

    invoke-direct {v3, v4}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v3, v2, Landroid/support/v4/media/MediaBrowserCompat$ㄏ;->ಫ:Landroid/os/Messenger;

    iget-object v2, p0, Landroid/support/v4/media/MediaBrowserCompat$ㄏ$㚬$உ;->㺴:Landroid/support/v4/media/MediaBrowserCompat$ㄏ$㚬;

    iget-object v2, v2, Landroid/support/v4/media/MediaBrowserCompat$ㄏ$㚬;->உ:Landroid/support/v4/media/MediaBrowserCompat$ㄏ;

    iget-object v3, v2, Landroid/support/v4/media/MediaBrowserCompat$ㄏ;->ḓ:Landroid/support/v4/media/MediaBrowserCompat$உ;

    iget-object v2, v2, Landroid/support/v4/media/MediaBrowserCompat$ㄏ;->ಫ:Landroid/os/Messenger;

    invoke-virtual {v3, v2}, Landroid/support/v4/media/MediaBrowserCompat$உ;->உ(Landroid/os/Messenger;)V

    iget-object v2, p0, Landroid/support/v4/media/MediaBrowserCompat$ㄏ$㚬$உ;->㺴:Landroid/support/v4/media/MediaBrowserCompat$ㄏ$㚬;

    iget-object v2, v2, Landroid/support/v4/media/MediaBrowserCompat$ㄏ$㚬;->உ:Landroid/support/v4/media/MediaBrowserCompat$ㄏ;

    const/4 v3, 0x2

    iput v3, v2, Landroid/support/v4/media/MediaBrowserCompat$ㄏ;->ᆻ:I

    const-string v2, "ServiceCallbacks.onConnect..."

    if-eqz v0, :cond_2

    :try_start_0
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$ㄏ$㚬$உ;->㺴:Landroid/support/v4/media/MediaBrowserCompat$ㄏ$㚬;

    iget-object v0, v0, Landroid/support/v4/media/MediaBrowserCompat$ㄏ$㚬;->உ:Landroid/support/v4/media/MediaBrowserCompat$ㄏ;

    invoke-virtual {v0}, Landroid/support/v4/media/MediaBrowserCompat$ㄏ;->உ()V

    :cond_2
    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$ㄏ$㚬$உ;->㺴:Landroid/support/v4/media/MediaBrowserCompat$ㄏ$㚬;

    iget-object v0, v0, Landroid/support/v4/media/MediaBrowserCompat$ㄏ$㚬;->உ:Landroid/support/v4/media/MediaBrowserCompat$ㄏ;

    iget-object v3, v0, Landroid/support/v4/media/MediaBrowserCompat$ㄏ;->ㄏ:Landroid/support/v4/media/MediaBrowserCompat$㹖;

    iget-object v4, v0, Landroid/support/v4/media/MediaBrowserCompat$ㄏ;->உ:Landroid/content/Context;

    iget-object v0, v0, Landroid/support/v4/media/MediaBrowserCompat$ㄏ;->ಫ:Landroid/os/Messenger;

    invoke-virtual {v3, v4, v0}, Landroid/support/v4/media/MediaBrowserCompat$㹖;->䂻(Landroid/content/Context;Landroid/os/Messenger;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RemoteException during connect for "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Landroid/support/v4/media/MediaBrowserCompat$ㄏ$㚬$உ;->㺴:Landroid/support/v4/media/MediaBrowserCompat$ㄏ$㚬;

    iget-object v3, v3, Landroid/support/v4/media/MediaBrowserCompat$ㄏ$㚬;->உ:Landroid/support/v4/media/MediaBrowserCompat$ㄏ;

    iget-object v3, v3, Landroid/support/v4/media/MediaBrowserCompat$ㄏ;->䂻:Landroid/content/ComponentName;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v0, Landroid/support/v4/media/MediaBrowserCompat;->䂻:Z

    if-eqz v0, :cond_3

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$ㄏ$㚬$உ;->㺴:Landroid/support/v4/media/MediaBrowserCompat$ㄏ$㚬;

    iget-object v0, v0, Landroid/support/v4/media/MediaBrowserCompat$ㄏ$㚬;->உ:Landroid/support/v4/media/MediaBrowserCompat$ㄏ;

    invoke-virtual {v0}, Landroid/support/v4/media/MediaBrowserCompat$ㄏ;->உ()V

    :cond_3
    :goto_0
    return-void
.end method
