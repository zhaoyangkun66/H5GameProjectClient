.class public L㚬/ბ/ᆻ$உ;
.super L㚬/ბ/䆀$உ;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = L㚬/ბ/ᆻ;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "\u0b89"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;L㚬/ბ/ᆻ$㚬;)V
    .locals 0

    invoke-direct {p0, p1, p2}, L㚬/ბ/䆀$உ;-><init>(Landroid/content/Context;L㚬/ბ/䆀$䂻;)V

    return-void
.end method


# virtual methods
.method public onLoadChildren(Ljava/lang/String;Landroid/service/media/MediaBrowserService$Result;Landroid/os/Bundle;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/service/media/MediaBrowserService$Result<",
            "Ljava/util/List<",
            "Landroid/media/browse/MediaBrowser$MediaItem;",
            ">;>;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    invoke-static {p3}, Landroid/support/v4/media/session/MediaSessionCompat;->உ(Landroid/os/Bundle;)V

    iget-object v0, p0, L㚬/ბ/ḓ$䂻;->䂻:L㚬/ბ/ḓ$㺴;

    check-cast v0, L㚬/ბ/ᆻ$㚬;

    new-instance v1, L㚬/ბ/ᆻ$䂻;

    invoke-direct {v1, p2}, L㚬/ბ/ᆻ$䂻;-><init>(Landroid/service/media/MediaBrowserService$Result;)V

    invoke-interface {v0, p1, v1, p3}, L㚬/ბ/ᆻ$㚬;->䆀(Ljava/lang/String;L㚬/ბ/ᆻ$䂻;Landroid/os/Bundle;)V

    return-void
.end method
