.class public Landroid/support/v4/media/MediaBrowserCompat$ItemReceiver;
.super L䂻/உ/䂻/㚬/䂻;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/MediaBrowserCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ItemReceiver"
.end annotation


# instance fields
.field public final ḓ:Ljava/lang/String;

.field public final 䆀:Landroid/support/v4/media/MediaBrowserCompat$㺴;


# virtual methods
.method public ಫ(ILandroid/os/Bundle;)V
    .locals 1

    invoke-static {p2}, Landroid/support/v4/media/session/MediaSessionCompat;->உ(Landroid/os/Bundle;)V

    if-nez p1, :cond_3

    if-eqz p2, :cond_3

    const-string p1, "media_item"

    invoke-virtual {p2, p1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    if-eqz p1, :cond_2

    instance-of p2, p1, Landroid/support/v4/media/MediaBrowserCompat$MediaItem;

    if-eqz p2, :cond_1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Landroid/support/v4/media/MediaBrowserCompat$ItemReceiver;->䆀:Landroid/support/v4/media/MediaBrowserCompat$㺴;

    iget-object p2, p0, Landroid/support/v4/media/MediaBrowserCompat$ItemReceiver;->ḓ:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/support/v4/media/MediaBrowserCompat$㺴;->உ(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    :goto_0
    iget-object p2, p0, Landroid/support/v4/media/MediaBrowserCompat$ItemReceiver;->䆀:Landroid/support/v4/media/MediaBrowserCompat$㺴;

    check-cast p1, Landroid/support/v4/media/MediaBrowserCompat$MediaItem;

    invoke-virtual {p2, p1}, Landroid/support/v4/media/MediaBrowserCompat$㺴;->䂻(Landroid/support/v4/media/MediaBrowserCompat$MediaItem;)V

    :goto_1
    return-void

    :cond_3
    :goto_2
    iget-object p1, p0, Landroid/support/v4/media/MediaBrowserCompat$ItemReceiver;->䆀:Landroid/support/v4/media/MediaBrowserCompat$㺴;

    iget-object p2, p0, Landroid/support/v4/media/MediaBrowserCompat$ItemReceiver;->ḓ:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/support/v4/media/MediaBrowserCompat$㺴;->உ(Ljava/lang/String;)V

    return-void
.end method
