.class public Landroidx/media/MediaBrowserServiceCompat$ℓ$உ;
.super Landroidx/media/MediaBrowserServiceCompat$ἥ;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/media/MediaBrowserServiceCompat$ℓ;->䂻(Ljava/lang/String;L㚬/ბ/ḓ$㚬;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/media/MediaBrowserServiceCompat$\u1f25<",
        "Ljava/util/List<",
        "Landroid/support/v4/media/MediaBrowserCompat$MediaItem;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic 䆀:L㚬/ბ/ḓ$㚬;


# direct methods
.method public constructor <init>(Landroidx/media/MediaBrowserServiceCompat$ℓ;Ljava/lang/Object;L㚬/ბ/ḓ$㚬;)V
    .locals 0

    iput-object p3, p0, Landroidx/media/MediaBrowserServiceCompat$ℓ$உ;->䆀:L㚬/ბ/ḓ$㚬;

    invoke-direct {p0, p2}, Landroidx/media/MediaBrowserServiceCompat$ἥ;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public ℓ(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/support/v4/media/MediaBrowserCompat$MediaItem;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/media/MediaBrowserCompat$MediaItem;

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/support/v4/media/MediaBrowserCompat$MediaItem;->writeToParcel(Landroid/os/Parcel;I)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    iget-object p1, p0, Landroidx/media/MediaBrowserServiceCompat$ℓ$உ;->䆀:L㚬/ბ/ḓ$㚬;

    invoke-virtual {p1, v0}, L㚬/ბ/ḓ$㚬;->䂻(Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic 㺴(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Landroidx/media/MediaBrowserServiceCompat$ℓ$உ;->ℓ(Ljava/util/List;)V

    return-void
.end method
