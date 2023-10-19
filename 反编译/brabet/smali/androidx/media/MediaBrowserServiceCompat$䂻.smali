.class public Landroidx/media/MediaBrowserServiceCompat$䂻;
.super Landroidx/media/MediaBrowserServiceCompat$ἥ;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/media/MediaBrowserServiceCompat;->ཇ(Ljava/lang/String;Landroidx/media/MediaBrowserServiceCompat$䆀;L䂻/உ/䂻/㚬/䂻;)V
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
.field public final synthetic 䆀:L䂻/உ/䂻/㚬/䂻;


# direct methods
.method public constructor <init>(Landroidx/media/MediaBrowserServiceCompat;Ljava/lang/Object;L䂻/உ/䂻/㚬/䂻;)V
    .locals 0

    iput-object p3, p0, Landroidx/media/MediaBrowserServiceCompat$䂻;->䆀:L䂻/உ/䂻/㚬/䂻;

    invoke-direct {p0, p2}, Landroidx/media/MediaBrowserServiceCompat$ἥ;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public ℓ(Landroid/support/v4/media/MediaBrowserCompat$MediaItem;)V
    .locals 2

    invoke-virtual {p0}, Landroidx/media/MediaBrowserServiceCompat$ἥ;->உ()I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    iget-object p1, p0, Landroidx/media/MediaBrowserServiceCompat$䂻;->䆀:L䂻/உ/䂻/㚬/䂻;

    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, L䂻/உ/䂻/㚬/䂻;->㧦(ILandroid/os/Bundle;)V

    return-void

    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "media_item"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    iget-object p1, p0, Landroidx/media/MediaBrowserServiceCompat$䂻;->䆀:L䂻/உ/䂻/㚬/䂻;

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, L䂻/உ/䂻/㚬/䂻;->㧦(ILandroid/os/Bundle;)V

    return-void
.end method

.method public bridge synthetic 㺴(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Landroid/support/v4/media/MediaBrowserCompat$MediaItem;

    invoke-virtual {p0, p1}, Landroidx/media/MediaBrowserServiceCompat$䂻;->ℓ(Landroid/support/v4/media/MediaBrowserCompat$MediaItem;)V

    return-void
.end method
