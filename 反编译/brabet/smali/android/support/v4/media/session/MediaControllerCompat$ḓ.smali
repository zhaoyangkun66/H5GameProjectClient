.class public Landroid/support/v4/media/session/MediaControllerCompat$ḓ;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/support/v4/media/session/MediaControllerCompat$䂻;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/session/MediaControllerCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "\u1e13"
.end annotation


# instance fields
.field public உ:L䂻/உ/䂻/䂻/䆀/䂻;


# direct methods
.method public constructor <init>(Landroid/support/v4/media/session/MediaSessionCompat$Token;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/support/v4/media/session/MediaSessionCompat$Token;->ἥ()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/IBinder;

    invoke-static {p1}, L䂻/உ/䂻/䂻/䆀/䂻$உ;->ർ(Landroid/os/IBinder;)L䂻/உ/䂻/䂻/䆀/䂻;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v4/media/session/MediaControllerCompat$ḓ;->உ:L䂻/உ/䂻/䂻/䆀/䂻;

    return-void
.end method


# virtual methods
.method public உ(Landroid/view/KeyEvent;)Z
    .locals 2

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v0, p0, Landroid/support/v4/media/session/MediaControllerCompat$ḓ;->உ:L䂻/உ/䂻/䂻/䆀/䂻;

    invoke-interface {v0, p1}, L䂻/உ/䂻/䂻/䆀/䂻;->㥁(Landroid/view/KeyEvent;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "MediaControllerCompat"

    const-string v1, "Dead object in dispatchMediaButtonEvent."

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    const/4 p1, 0x0

    return p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "event may not be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
