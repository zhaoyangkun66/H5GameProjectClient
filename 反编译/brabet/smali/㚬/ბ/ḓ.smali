.class public L㚬/ბ/ḓ;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        L㚬/ბ/ḓ$䂻;,
        L㚬/ბ/ḓ$உ;,
        L㚬/ბ/ḓ$㚬;,
        L㚬/ბ/ḓ$㺴;
    }
.end annotation


# direct methods
.method public static உ(Landroid/content/Context;L㚬/ბ/ḓ$㺴;)Ljava/lang/Object;
    .locals 1

    new-instance v0, L㚬/ბ/ḓ$䂻;

    invoke-direct {v0, p0, p1}, L㚬/ბ/ḓ$䂻;-><init>(Landroid/content/Context;L㚬/ბ/ḓ$㺴;)V

    return-object v0
.end method

.method public static 㚬(Ljava/lang/Object;)V
    .locals 0

    check-cast p0, Landroid/service/media/MediaBrowserService;

    invoke-virtual {p0}, Landroid/service/media/MediaBrowserService;->onCreate()V

    return-void
.end method

.method public static 䂻(Ljava/lang/Object;Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    check-cast p0, Landroid/service/media/MediaBrowserService;

    invoke-virtual {p0, p1}, Landroid/service/media/MediaBrowserService;->onBind(Landroid/content/Intent;)Landroid/os/IBinder;

    move-result-object p0

    return-object p0
.end method
