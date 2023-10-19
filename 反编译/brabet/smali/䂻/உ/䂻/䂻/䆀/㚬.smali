.class public L䂻/உ/䂻/䂻/䆀/㚬;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        L䂻/உ/䂻/䂻/䆀/㚬$䂻;,
        L䂻/உ/䂻/䂻/䆀/㚬$உ;,
        L䂻/உ/䂻/䂻/䆀/㚬$㚬;
    }
.end annotation


# direct methods
.method public static உ(L䂻/உ/䂻/䂻/䆀/㚬$உ;)Ljava/lang/Object;
    .locals 1

    new-instance v0, L䂻/உ/䂻/䂻/䆀/㚬$䂻;

    invoke-direct {v0, p0}, L䂻/உ/䂻/䂻/䆀/㚬$䂻;-><init>(L䂻/உ/䂻/䂻/䆀/㚬$உ;)V

    return-object v0
.end method

.method public static 㚬(Landroid/content/Context;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    new-instance v0, Landroid/media/session/MediaController;

    check-cast p1, Landroid/media/session/MediaSession$Token;

    invoke-direct {v0, p0, p1}, Landroid/media/session/MediaController;-><init>(Landroid/content/Context;Landroid/media/session/MediaSession$Token;)V

    return-object v0
.end method

.method public static 㺴(Ljava/lang/Object;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/ResultReceiver;)V
    .locals 0

    check-cast p0, Landroid/media/session/MediaController;

    invoke-virtual {p0, p1, p2, p3}, Landroid/media/session/MediaController;->sendCommand(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/ResultReceiver;)V

    return-void
.end method

.method public static 䂻(Ljava/lang/Object;Landroid/view/KeyEvent;)Z
    .locals 0

    check-cast p0, Landroid/media/session/MediaController;

    invoke-virtual {p0, p1}, Landroid/media/session/MediaController;->dispatchMediaButtonEvent(Landroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method
