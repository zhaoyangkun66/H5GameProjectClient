.class public L㚬/ბ/䆀$உ;
.super L㚬/ბ/ḓ$䂻;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = L㚬/ბ/䆀;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "\u0b89"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;L㚬/ბ/䆀$䂻;)V
    .locals 0

    invoke-direct {p0, p1, p2}, L㚬/ბ/ḓ$䂻;-><init>(Landroid/content/Context;L㚬/ბ/ḓ$㺴;)V

    return-void
.end method


# virtual methods
.method public onLoadItem(Ljava/lang/String;Landroid/service/media/MediaBrowserService$Result;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/service/media/MediaBrowserService$Result<",
            "Landroid/media/browse/MediaBrowser$MediaItem;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, L㚬/ბ/ḓ$䂻;->䂻:L㚬/ბ/ḓ$㺴;

    check-cast v0, L㚬/ბ/䆀$䂻;

    new-instance v1, L㚬/ბ/ḓ$㚬;

    invoke-direct {v1, p2}, L㚬/ბ/ḓ$㚬;-><init>(Landroid/service/media/MediaBrowserService$Result;)V

    invoke-interface {v0, p1, v1}, L㚬/ბ/䆀$䂻;->㺴(Ljava/lang/String;L㚬/ბ/ḓ$㚬;)V

    return-void
.end method
