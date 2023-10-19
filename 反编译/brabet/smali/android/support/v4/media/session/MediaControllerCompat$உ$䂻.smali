.class public Landroid/support/v4/media/session/MediaControllerCompat$உ$䂻;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements L䂻/உ/䂻/䂻/䆀/㚬$உ;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/session/MediaControllerCompat$உ;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "\u40bb"
.end annotation


# instance fields
.field public final உ:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/support/v4/media/session/MediaControllerCompat$\u0b89;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/support/v4/media/session/MediaControllerCompat$உ;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/support/v4/media/session/MediaControllerCompat$உ$䂻;->உ:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public உ(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "*>;)V"
        }
    .end annotation

    iget-object v0, p0, Landroid/support/v4/media/session/MediaControllerCompat$உ$䂻;->உ:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/media/session/MediaControllerCompat$உ;

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/support/v4/media/session/MediaSessionCompat$QueueItem;->㧦(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/support/v4/media/session/MediaControllerCompat$உ;->ḓ(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public ᆻ(IIIII)V
    .locals 8

    iget-object v0, p0, Landroid/support/v4/media/session/MediaControllerCompat$உ$䂻;->உ:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/media/session/MediaControllerCompat$உ;

    if-eqz v0, :cond_0

    new-instance v7, Landroid/support/v4/media/session/MediaControllerCompat$䆀;

    move-object v1, v7

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v1 .. v6}, Landroid/support/v4/media/session/MediaControllerCompat$䆀;-><init>(IIIII)V

    invoke-virtual {v0, v7}, Landroid/support/v4/media/session/MediaControllerCompat$உ;->உ(Landroid/support/v4/media/session/MediaControllerCompat$䆀;)V

    :cond_0
    return-void
.end method

.method public ḓ(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Landroid/support/v4/media/session/MediaControllerCompat$உ$䂻;->உ:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/media/session/MediaControllerCompat$உ;

    if-eqz v0, :cond_1

    iget-object v1, v0, Landroid/support/v4/media/session/MediaControllerCompat$உ;->㚬:L䂻/உ/䂻/䂻/䆀/உ;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Landroid/support/v4/media/session/PlaybackStateCompat;->ಫ(Ljava/lang/Object;)Landroid/support/v4/media/session/PlaybackStateCompat;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/support/v4/media/session/MediaControllerCompat$உ;->㺴(Landroid/support/v4/media/session/PlaybackStateCompat;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public ℓ(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 3

    iget-object v0, p0, Landroid/support/v4/media/session/MediaControllerCompat$உ$䂻;->உ:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/media/session/MediaControllerCompat$உ;

    if-eqz v0, :cond_1

    iget-object v1, v0, Landroid/support/v4/media/session/MediaControllerCompat$உ;->㚬:L䂻/உ/䂻/䂻/䆀/உ;

    if-eqz v1, :cond_0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-ge v1, v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1, p2}, Landroid/support/v4/media/session/MediaControllerCompat$உ;->ℓ(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public 㚬()V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/media/session/MediaControllerCompat$உ$䂻;->உ:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/media/session/MediaControllerCompat$உ;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/support/v4/media/session/MediaControllerCompat$உ;->ᆻ()V

    :cond_0
    return-void
.end method

.method public 㺴(Landroid/os/Bundle;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/media/session/MediaControllerCompat$உ$䂻;->உ:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/media/session/MediaControllerCompat$உ;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/support/v4/media/session/MediaControllerCompat$உ;->䂻(Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public 䂻(Ljava/lang/CharSequence;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/media/session/MediaControllerCompat$உ$䂻;->உ:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/media/session/MediaControllerCompat$உ;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/support/v4/media/session/MediaControllerCompat$உ;->䆀(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public 䆀(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/media/session/MediaControllerCompat$உ$䂻;->உ:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/media/session/MediaControllerCompat$உ;

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/support/v4/media/MediaMetadataCompat;->ಫ(Ljava/lang/Object;)Landroid/support/v4/media/MediaMetadataCompat;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/support/v4/media/session/MediaControllerCompat$உ;->㚬(Landroid/support/v4/media/MediaMetadataCompat;)V

    :cond_0
    return-void
.end method
