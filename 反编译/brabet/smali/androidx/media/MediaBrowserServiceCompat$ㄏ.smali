.class public Landroidx/media/MediaBrowserServiceCompat$ㄏ;
.super Landroidx/media/MediaBrowserServiceCompat$ℓ;
.source ""

# interfaces
.implements L㚬/ბ/䆀$䂻;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media/MediaBrowserServiceCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "\u310f"
.end annotation


# instance fields
.field public final synthetic ḓ:Landroidx/media/MediaBrowserServiceCompat;


# direct methods
.method public constructor <init>(Landroidx/media/MediaBrowserServiceCompat;)V
    .locals 0

    iput-object p1, p0, Landroidx/media/MediaBrowserServiceCompat$ㄏ;->ḓ:Landroidx/media/MediaBrowserServiceCompat;

    invoke-direct {p0, p1}, Landroidx/media/MediaBrowserServiceCompat$ℓ;-><init>(Landroidx/media/MediaBrowserServiceCompat;)V

    return-void
.end method


# virtual methods
.method public உ()V
    .locals 1

    iget-object v0, p0, Landroidx/media/MediaBrowserServiceCompat$ㄏ;->ḓ:Landroidx/media/MediaBrowserServiceCompat;

    invoke-static {v0, p0}, L㚬/ბ/䆀;->உ(Landroid/content/Context;L㚬/ბ/䆀$䂻;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Landroidx/media/MediaBrowserServiceCompat$ℓ;->䂻:Ljava/lang/Object;

    invoke-static {v0}, L㚬/ბ/ḓ;->㚬(Ljava/lang/Object;)V

    return-void
.end method

.method public 㺴(Ljava/lang/String;L㚬/ბ/ḓ$㚬;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "L\u36ac/\u10d1/\u1e13$\u36ac<",
            "Landroid/os/Parcel;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Landroidx/media/MediaBrowserServiceCompat$ㄏ$உ;

    invoke-direct {v0, p0, p1, p2}, Landroidx/media/MediaBrowserServiceCompat$ㄏ$உ;-><init>(Landroidx/media/MediaBrowserServiceCompat$ㄏ;Ljava/lang/Object;L㚬/ბ/ḓ$㚬;)V

    iget-object p2, p0, Landroidx/media/MediaBrowserServiceCompat$ㄏ;->ḓ:Landroidx/media/MediaBrowserServiceCompat;

    invoke-virtual {p2, p1, v0}, Landroidx/media/MediaBrowserServiceCompat;->ℓ(Ljava/lang/String;Landroidx/media/MediaBrowserServiceCompat$ἥ;)V

    return-void
.end method
