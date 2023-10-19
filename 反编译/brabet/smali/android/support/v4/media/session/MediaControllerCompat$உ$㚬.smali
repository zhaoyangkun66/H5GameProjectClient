.class public Landroid/support/v4/media/session/MediaControllerCompat$உ$㚬;
.super L䂻/உ/䂻/䂻/䆀/உ$உ;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/session/MediaControllerCompat$உ;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "\u36ac"
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

    invoke-direct {p0}, L䂻/உ/䂻/䂻/䆀/உ$உ;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/support/v4/media/session/MediaControllerCompat$உ$㚬;->உ:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public ڈ(Landroid/support/v4/media/session/PlaybackStateCompat;)V
    .locals 3

    iget-object v0, p0, Landroid/support/v4/media/session/MediaControllerCompat$உ$㚬;->உ:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/media/session/MediaControllerCompat$உ;

    if-eqz v0, :cond_0

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/support/v4/media/session/MediaControllerCompat$உ;->ㄏ(ILjava/lang/Object;Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public உ(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/support/v4/media/session/MediaSessionCompat$QueueItem;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Landroid/support/v4/media/session/MediaControllerCompat$உ$㚬;->உ:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/media/session/MediaControllerCompat$உ;

    if-eqz v0, :cond_0

    const/4 v1, 0x5

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/support/v4/media/session/MediaControllerCompat$உ;->ㄏ(ILjava/lang/Object;Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public ಋ()V
    .locals 3

    iget-object v0, p0, Landroid/support/v4/media/session/MediaControllerCompat$உ$㚬;->உ:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/media/session/MediaControllerCompat$உ;

    if-eqz v0, :cond_0

    const/16 v1, 0xd

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Landroid/support/v4/media/session/MediaControllerCompat$உ;->ㄏ(ILjava/lang/Object;Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public ಫ(Landroid/support/v4/media/MediaMetadataCompat;)V
    .locals 3

    iget-object v0, p0, Landroid/support/v4/media/session/MediaControllerCompat$உ$㚬;->உ:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/media/session/MediaControllerCompat$உ;

    if-eqz v0, :cond_0

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/support/v4/media/session/MediaControllerCompat$உ;->ㄏ(ILjava/lang/Object;Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public ᓭ(I)V
    .locals 3

    iget-object v0, p0, Landroid/support/v4/media/session/MediaControllerCompat$உ$㚬;->உ:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/media/session/MediaControllerCompat$உ;

    if-eqz v0, :cond_0

    const/16 v1, 0x9

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/support/v4/media/session/MediaControllerCompat$உ;->ㄏ(ILjava/lang/Object;Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public ᱹ(Landroid/support/v4/media/session/ParcelableVolumeInfo;)V
    .locals 9

    iget-object v0, p0, Landroid/support/v4/media/session/MediaControllerCompat$உ$㚬;->உ:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/media/session/MediaControllerCompat$உ;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    new-instance v8, Landroid/support/v4/media/session/MediaControllerCompat$䆀;

    iget v3, p1, Landroid/support/v4/media/session/ParcelableVolumeInfo;->䂻:I

    iget v4, p1, Landroid/support/v4/media/session/ParcelableVolumeInfo;->㚬:I

    iget v5, p1, Landroid/support/v4/media/session/ParcelableVolumeInfo;->㺴:I

    iget v6, p1, Landroid/support/v4/media/session/ParcelableVolumeInfo;->ḓ:I

    iget v7, p1, Landroid/support/v4/media/session/ParcelableVolumeInfo;->䆀:I

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Landroid/support/v4/media/session/MediaControllerCompat$䆀;-><init>(IIIII)V

    goto :goto_0

    :cond_0
    move-object v8, v1

    :goto_0
    const/4 p1, 0x4

    invoke-virtual {v0, p1, v8, v1}, Landroid/support/v4/media/session/MediaControllerCompat$உ;->ㄏ(ILjava/lang/Object;Landroid/os/Bundle;)V

    :cond_1
    return-void
.end method

.method public 㖪(Z)V
    .locals 3

    iget-object v0, p0, Landroid/support/v4/media/session/MediaControllerCompat$உ$㚬;->உ:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/media/session/MediaControllerCompat$உ;

    if-eqz v0, :cond_0

    const/16 v1, 0xb

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/support/v4/media/session/MediaControllerCompat$உ;->ㄏ(ILjava/lang/Object;Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public 㚬()V
    .locals 3

    iget-object v0, p0, Landroid/support/v4/media/session/MediaControllerCompat$உ$㚬;->உ:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/media/session/MediaControllerCompat$உ;

    if-eqz v0, :cond_0

    const/16 v1, 0x8

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Landroid/support/v4/media/session/MediaControllerCompat$உ;->ㄏ(ILjava/lang/Object;Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public 㫏(I)V
    .locals 3

    iget-object v0, p0, Landroid/support/v4/media/session/MediaControllerCompat$உ$㚬;->உ:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/media/session/MediaControllerCompat$உ;

    if-eqz v0, :cond_0

    const/16 v1, 0xc

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/support/v4/media/session/MediaControllerCompat$உ;->ㄏ(ILjava/lang/Object;Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public 㰫(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2

    iget-object v0, p0, Landroid/support/v4/media/session/MediaControllerCompat$உ$㚬;->உ:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/media/session/MediaControllerCompat$உ;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1, p2}, Landroid/support/v4/media/session/MediaControllerCompat$உ;->ㄏ(ILjava/lang/Object;Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public 㺴(Landroid/os/Bundle;)V
    .locals 3

    iget-object v0, p0, Landroid/support/v4/media/session/MediaControllerCompat$உ$㚬;->உ:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/media/session/MediaControllerCompat$உ;

    if-eqz v0, :cond_0

    const/4 v1, 0x7

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/support/v4/media/session/MediaControllerCompat$உ;->ㄏ(ILjava/lang/Object;Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public 䂻(Ljava/lang/CharSequence;)V
    .locals 3

    iget-object v0, p0, Landroid/support/v4/media/session/MediaControllerCompat$உ$㚬;->உ:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/media/session/MediaControllerCompat$உ;

    if-eqz v0, :cond_0

    const/4 v1, 0x6

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/support/v4/media/session/MediaControllerCompat$உ;->ㄏ(ILjava/lang/Object;Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public 䆀(Z)V
    .locals 0

    return-void
.end method
