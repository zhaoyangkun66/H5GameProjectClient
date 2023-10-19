.class public Landroidx/media/MediaBrowserServiceCompat$ㄏ$உ;
.super Landroidx/media/MediaBrowserServiceCompat$ἥ;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/media/MediaBrowserServiceCompat$ㄏ;->㺴(Ljava/lang/String;L㚬/ბ/ḓ$㚬;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/media/MediaBrowserServiceCompat$\u1f25<",
        "Landroid/support/v4/media/MediaBrowserCompat$MediaItem;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic 䆀:L㚬/ბ/ḓ$㚬;


# direct methods
.method public constructor <init>(Landroidx/media/MediaBrowserServiceCompat$ㄏ;Ljava/lang/Object;L㚬/ბ/ḓ$㚬;)V
    .locals 0

    iput-object p3, p0, Landroidx/media/MediaBrowserServiceCompat$ㄏ$உ;->䆀:L㚬/ბ/ḓ$㚬;

    invoke-direct {p0, p2}, Landroidx/media/MediaBrowserServiceCompat$ἥ;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public ℓ(Landroid/support/v4/media/MediaBrowserCompat$MediaItem;)V
    .locals 2

    if-nez p1, :cond_0

    iget-object p1, p0, Landroidx/media/MediaBrowserServiceCompat$ㄏ$உ;->䆀:L㚬/ბ/ḓ$㚬;

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/support/v4/media/MediaBrowserCompat$MediaItem;->writeToParcel(Landroid/os/Parcel;I)V

    iget-object p1, p0, Landroidx/media/MediaBrowserServiceCompat$ㄏ$உ;->䆀:L㚬/ბ/ḓ$㚬;

    :goto_0
    invoke-virtual {p1, v0}, L㚬/ბ/ḓ$㚬;->䂻(Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic 㺴(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Landroid/support/v4/media/MediaBrowserCompat$MediaItem;

    invoke-virtual {p0, p1}, Landroidx/media/MediaBrowserServiceCompat$ㄏ$உ;->ℓ(Landroid/support/v4/media/MediaBrowserCompat$MediaItem;)V

    return-void
.end method
