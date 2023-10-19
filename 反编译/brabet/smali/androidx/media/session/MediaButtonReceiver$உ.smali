.class public Landroidx/media/session/MediaButtonReceiver$உ;
.super Landroid/support/v4/media/MediaBrowserCompat$䂻;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media/session/MediaButtonReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "\u0b89"
.end annotation


# instance fields
.field public final ḓ:Landroid/content/BroadcastReceiver$PendingResult;

.field public final 㚬:Landroid/content/Context;

.field public final 㺴:Landroid/content/Intent;

.field public 䆀:Landroid/support/v4/media/MediaBrowserCompat;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/Intent;Landroid/content/BroadcastReceiver$PendingResult;)V
    .locals 0

    invoke-direct {p0}, Landroid/support/v4/media/MediaBrowserCompat$䂻;-><init>()V

    iput-object p1, p0, Landroidx/media/session/MediaButtonReceiver$உ;->㚬:Landroid/content/Context;

    iput-object p2, p0, Landroidx/media/session/MediaButtonReceiver$உ;->㺴:Landroid/content/Intent;

    iput-object p3, p0, Landroidx/media/session/MediaButtonReceiver$உ;->ḓ:Landroid/content/BroadcastReceiver$PendingResult;

    return-void
.end method


# virtual methods
.method public உ()V
    .locals 3

    :try_start_0
    new-instance v0, Landroid/support/v4/media/session/MediaControllerCompat;

    iget-object v1, p0, Landroidx/media/session/MediaButtonReceiver$உ;->㚬:Landroid/content/Context;

    iget-object v2, p0, Landroidx/media/session/MediaButtonReceiver$உ;->䆀:Landroid/support/v4/media/MediaBrowserCompat;

    invoke-virtual {v2}, Landroid/support/v4/media/MediaBrowserCompat;->㚬()Landroid/support/v4/media/session/MediaSessionCompat$Token;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/support/v4/media/session/MediaControllerCompat;-><init>(Landroid/content/Context;Landroid/support/v4/media/session/MediaSessionCompat$Token;)V

    iget-object v1, p0, Landroidx/media/session/MediaButtonReceiver$உ;->㺴:Landroid/content/Intent;

    const-string v2, "android.intent.extra.KEY_EVENT"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/view/KeyEvent;

    invoke-virtual {v0, v1}, Landroid/support/v4/media/session/MediaControllerCompat;->உ(Landroid/view/KeyEvent;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "MediaButtonReceiver"

    const-string v2, "Failed to create a media controller"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    invoke-virtual {p0}, Landroidx/media/session/MediaButtonReceiver$உ;->ḓ()V

    return-void
.end method

.method public final ḓ()V
    .locals 1

    iget-object v0, p0, Landroidx/media/session/MediaButtonReceiver$உ;->䆀:Landroid/support/v4/media/MediaBrowserCompat;

    invoke-virtual {v0}, Landroid/support/v4/media/MediaBrowserCompat;->䂻()V

    iget-object v0, p0, Landroidx/media/session/MediaButtonReceiver$உ;->ḓ:Landroid/content/BroadcastReceiver$PendingResult;

    invoke-virtual {v0}, Landroid/content/BroadcastReceiver$PendingResult;->finish()V

    return-void
.end method

.method public 㚬()V
    .locals 0

    invoke-virtual {p0}, Landroidx/media/session/MediaButtonReceiver$உ;->ḓ()V

    return-void
.end method

.method public 䂻()V
    .locals 0

    invoke-virtual {p0}, Landroidx/media/session/MediaButtonReceiver$உ;->ḓ()V

    return-void
.end method

.method public 䆀(Landroid/support/v4/media/MediaBrowserCompat;)V
    .locals 0

    iput-object p1, p0, Landroidx/media/session/MediaButtonReceiver$உ;->䆀:Landroid/support/v4/media/MediaBrowserCompat;

    return-void
.end method
