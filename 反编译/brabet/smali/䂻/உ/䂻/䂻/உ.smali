.class public L䂻/உ/䂻/䂻/உ;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        L䂻/உ/䂻/䂻/உ$㚬;,
        L䂻/உ/䂻/䂻/உ$ḓ;,
        L䂻/உ/䂻/䂻/உ$㺴;,
        L䂻/உ/䂻/䂻/உ$䂻;,
        L䂻/உ/䂻/䂻/உ$உ;
    }
.end annotation


# direct methods
.method public static உ(Ljava/lang/Object;)V
    .locals 0

    check-cast p0, Landroid/media/browse/MediaBrowser;

    invoke-virtual {p0}, Landroid/media/browse/MediaBrowser;->connect()V

    return-void
.end method

.method public static ᆻ(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p0, Landroid/media/browse/MediaBrowser;

    invoke-virtual {p0}, Landroid/media/browse/MediaBrowser;->getSessionToken()Landroid/media/session/MediaSession$Token;

    move-result-object p0

    return-object p0
.end method

.method public static ḓ(Ljava/lang/Object;)V
    .locals 0

    check-cast p0, Landroid/media/browse/MediaBrowser;

    invoke-virtual {p0}, Landroid/media/browse/MediaBrowser;->disconnect()V

    return-void
.end method

.method public static 㚬(L䂻/உ/䂻/䂻/உ$உ;)Ljava/lang/Object;
    .locals 1

    new-instance v0, L䂻/உ/䂻/䂻/உ$䂻;

    invoke-direct {v0, p0}, L䂻/உ/䂻/䂻/உ$䂻;-><init>(L䂻/உ/䂻/䂻/உ$உ;)V

    return-object v0
.end method

.method public static 㺴(L䂻/உ/䂻/䂻/உ$㺴;)Ljava/lang/Object;
    .locals 1

    new-instance v0, L䂻/உ/䂻/䂻/உ$ḓ;

    invoke-direct {v0, p0}, L䂻/உ/䂻/䂻/உ$ḓ;-><init>(L䂻/உ/䂻/䂻/உ$㺴;)V

    return-object v0
.end method

.method public static 䂻(Landroid/content/Context;Landroid/content/ComponentName;Ljava/lang/Object;Landroid/os/Bundle;)Ljava/lang/Object;
    .locals 1

    new-instance v0, Landroid/media/browse/MediaBrowser;

    check-cast p2, Landroid/media/browse/MediaBrowser$ConnectionCallback;

    invoke-direct {v0, p0, p1, p2, p3}, Landroid/media/browse/MediaBrowser;-><init>(Landroid/content/Context;Landroid/content/ComponentName;Landroid/media/browse/MediaBrowser$ConnectionCallback;Landroid/os/Bundle;)V

    return-object v0
.end method

.method public static 䆀(Ljava/lang/Object;)Landroid/os/Bundle;
    .locals 0

    check-cast p0, Landroid/media/browse/MediaBrowser;

    invoke-virtual {p0}, Landroid/media/browse/MediaBrowser;->getExtras()Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method
