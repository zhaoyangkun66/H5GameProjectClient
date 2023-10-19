.class public L䂻/உ/䂻/䂻/䂻$䂻;
.super L䂻/உ/䂻/䂻/உ$ḓ;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = L䂻/உ/䂻/䂻/䂻;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "\u40bb"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "L\u40bb/\u0b89/\u40bb/\u40bb/\u40bb$\u0b89;",
        ">",
        "L\u40bb/\u0b89/\u40bb/\u40bb/\u0b89$\u1e13<",
        "TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(L䂻/உ/䂻/䂻/䂻$உ;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, L䂻/உ/䂻/䂻/உ$ḓ;-><init>(L䂻/உ/䂻/䂻/உ$㺴;)V

    return-void
.end method


# virtual methods
.method public onChildrenLoaded(Ljava/lang/String;Ljava/util/List;Landroid/os/Bundle;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/media/browse/MediaBrowser$MediaItem;",
            ">;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    invoke-static {p3}, Landroid/support/v4/media/session/MediaSessionCompat;->உ(Landroid/os/Bundle;)V

    iget-object v0, p0, L䂻/உ/䂻/䂻/உ$ḓ;->உ:L䂻/உ/䂻/䂻/உ$㺴;

    check-cast v0, L䂻/உ/䂻/䂻/䂻$உ;

    invoke-interface {v0, p1, p2, p3}, L䂻/உ/䂻/䂻/䂻$உ;->உ(Ljava/lang/String;Ljava/util/List;Landroid/os/Bundle;)V

    return-void
.end method

.method public onError(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    invoke-static {p2}, Landroid/support/v4/media/session/MediaSessionCompat;->உ(Landroid/os/Bundle;)V

    iget-object v0, p0, L䂻/உ/䂻/䂻/உ$ḓ;->உ:L䂻/உ/䂻/䂻/உ$㺴;

    check-cast v0, L䂻/உ/䂻/䂻/䂻$உ;

    invoke-interface {v0, p1, p2}, L䂻/உ/䂻/䂻/䂻$உ;->䂻(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method
