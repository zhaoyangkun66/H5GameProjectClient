.class public L䂻/உ/䂻/䂻/䆀/㚬$䂻;
.super Landroid/media/session/MediaController$Callback;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = L䂻/உ/䂻/䂻/䆀/㚬;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "\u40bb"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "L\u40bb/\u0b89/\u40bb/\u40bb/\u4180/\u36ac$\u0b89;",
        ">",
        "Landroid/media/session/MediaController$Callback;"
    }
.end annotation


# instance fields
.field public final உ:L䂻/உ/䂻/䂻/䆀/㚬$உ;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(L䂻/உ/䂻/䂻/䆀/㚬$உ;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    invoke-direct {p0}, Landroid/media/session/MediaController$Callback;-><init>()V

    iput-object p1, p0, L䂻/உ/䂻/䂻/䆀/㚬$䂻;->உ:L䂻/உ/䂻/䂻/䆀/㚬$உ;

    return-void
.end method


# virtual methods
.method public onAudioInfoChanged(Landroid/media/session/MediaController$PlaybackInfo;)V
    .locals 6

    iget-object v0, p0, L䂻/உ/䂻/䂻/䆀/㚬$䂻;->உ:L䂻/உ/䂻/䂻/䆀/㚬$உ;

    invoke-virtual {p1}, Landroid/media/session/MediaController$PlaybackInfo;->getPlaybackType()I

    move-result v1

    invoke-static {p1}, L䂻/உ/䂻/䂻/䆀/㚬$㚬;->䂻(Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {p1}, Landroid/media/session/MediaController$PlaybackInfo;->getVolumeControl()I

    move-result v3

    invoke-virtual {p1}, Landroid/media/session/MediaController$PlaybackInfo;->getMaxVolume()I

    move-result v4

    invoke-virtual {p1}, Landroid/media/session/MediaController$PlaybackInfo;->getCurrentVolume()I

    move-result v5

    invoke-interface/range {v0 .. v5}, L䂻/உ/䂻/䂻/䆀/㚬$உ;->ᆻ(IIIII)V

    return-void
.end method

.method public onExtrasChanged(Landroid/os/Bundle;)V
    .locals 1

    invoke-static {p1}, Landroid/support/v4/media/session/MediaSessionCompat;->உ(Landroid/os/Bundle;)V

    iget-object v0, p0, L䂻/உ/䂻/䂻/䆀/㚬$䂻;->உ:L䂻/உ/䂻/䂻/䆀/㚬$உ;

    invoke-interface {v0, p1}, L䂻/உ/䂻/䂻/䆀/㚬$உ;->㺴(Landroid/os/Bundle;)V

    return-void
.end method

.method public onMetadataChanged(Landroid/media/MediaMetadata;)V
    .locals 1

    iget-object v0, p0, L䂻/உ/䂻/䂻/䆀/㚬$䂻;->உ:L䂻/உ/䂻/䂻/䆀/㚬$உ;

    invoke-interface {v0, p1}, L䂻/உ/䂻/䂻/䆀/㚬$உ;->䆀(Ljava/lang/Object;)V

    return-void
.end method

.method public onPlaybackStateChanged(Landroid/media/session/PlaybackState;)V
    .locals 1

    iget-object v0, p0, L䂻/உ/䂻/䂻/䆀/㚬$䂻;->உ:L䂻/உ/䂻/䂻/䆀/㚬$உ;

    invoke-interface {v0, p1}, L䂻/உ/䂻/䂻/䆀/㚬$உ;->ḓ(Ljava/lang/Object;)V

    return-void
.end method

.method public onQueueChanged(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/session/MediaSession$QueueItem;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, L䂻/உ/䂻/䂻/䆀/㚬$䂻;->உ:L䂻/உ/䂻/䂻/䆀/㚬$உ;

    invoke-interface {v0, p1}, L䂻/உ/䂻/䂻/䆀/㚬$உ;->உ(Ljava/util/List;)V

    return-void
.end method

.method public onQueueTitleChanged(Ljava/lang/CharSequence;)V
    .locals 1

    iget-object v0, p0, L䂻/உ/䂻/䂻/䆀/㚬$䂻;->உ:L䂻/உ/䂻/䂻/䆀/㚬$உ;

    invoke-interface {v0, p1}, L䂻/உ/䂻/䂻/䆀/㚬$உ;->䂻(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onSessionDestroyed()V
    .locals 1

    iget-object v0, p0, L䂻/உ/䂻/䂻/䆀/㚬$䂻;->உ:L䂻/உ/䂻/䂻/䆀/㚬$உ;

    invoke-interface {v0}, L䂻/உ/䂻/䂻/䆀/㚬$உ;->㚬()V

    return-void
.end method

.method public onSessionEvent(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    invoke-static {p2}, Landroid/support/v4/media/session/MediaSessionCompat;->உ(Landroid/os/Bundle;)V

    iget-object v0, p0, L䂻/உ/䂻/䂻/䆀/㚬$䂻;->உ:L䂻/உ/䂻/䂻/䆀/㚬$உ;

    invoke-interface {v0, p1, p2}, L䂻/உ/䂻/䂻/䆀/㚬$உ;->ℓ(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method
