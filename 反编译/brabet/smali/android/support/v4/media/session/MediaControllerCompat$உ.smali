.class public abstract Landroid/support/v4/media/session/MediaControllerCompat$உ;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/session/MediaControllerCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "\u0b89"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/media/session/MediaControllerCompat$உ$உ;,
        Landroid/support/v4/media/session/MediaControllerCompat$உ$㚬;,
        Landroid/support/v4/media/session/MediaControllerCompat$உ$䂻;
    }
.end annotation


# instance fields
.field public final உ:Ljava/lang/Object;

.field public 㚬:L䂻/உ/䂻/䂻/䆀/உ;

.field public 䂻:Landroid/support/v4/media/session/MediaControllerCompat$உ$உ;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    new-instance v0, Landroid/support/v4/media/session/MediaControllerCompat$உ$䂻;

    invoke-direct {v0, p0}, Landroid/support/v4/media/session/MediaControllerCompat$உ$䂻;-><init>(Landroid/support/v4/media/session/MediaControllerCompat$உ;)V

    invoke-static {v0}, L䂻/உ/䂻/䂻/䆀/㚬;->உ(L䂻/உ/䂻/䂻/䆀/㚬$உ;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/media/session/MediaControllerCompat$உ;->உ:Ljava/lang/Object;

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/support/v4/media/session/MediaControllerCompat$உ$㚬;

    invoke-direct {v0, p0}, Landroid/support/v4/media/session/MediaControllerCompat$உ$㚬;-><init>(Landroid/support/v4/media/session/MediaControllerCompat$உ;)V

    iput-object v0, p0, Landroid/support/v4/media/session/MediaControllerCompat$உ;->㚬:L䂻/உ/䂻/䂻/䆀/உ;

    :goto_0
    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 2

    const/16 v0, 0x8

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v1}, Landroid/support/v4/media/session/MediaControllerCompat$உ;->ㄏ(ILjava/lang/Object;Landroid/os/Bundle;)V

    return-void
.end method

.method public உ(Landroid/support/v4/media/session/MediaControllerCompat$䆀;)V
    .locals 0

    return-void
.end method

.method public ᆻ()V
    .locals 0

    return-void
.end method

.method public ḓ(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/support/v4/media/session/MediaSessionCompat$QueueItem;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public ℓ(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public ㄏ(ILjava/lang/Object;Landroid/os/Bundle;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/media/session/MediaControllerCompat$உ;->䂻:Landroid/support/v4/media/session/MediaControllerCompat$உ$உ;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1, p3}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    return-void
.end method

.method public 㚬(Landroid/support/v4/media/MediaMetadataCompat;)V
    .locals 0

    return-void
.end method

.method public 㺴(Landroid/support/v4/media/session/PlaybackStateCompat;)V
    .locals 0

    return-void
.end method

.method public 䂻(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public 䆀(Ljava/lang/CharSequence;)V
    .locals 0

    return-void
.end method
