.class public final Landroid/support/v4/media/session/MediaControllerCompat;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/media/session/MediaControllerCompat$㺴;,
        Landroid/support/v4/media/session/MediaControllerCompat$㚬;,
        Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21;,
        Landroid/support/v4/media/session/MediaControllerCompat$ḓ;,
        Landroid/support/v4/media/session/MediaControllerCompat$䂻;,
        Landroid/support/v4/media/session/MediaControllerCompat$䆀;,
        Landroid/support/v4/media/session/MediaControllerCompat$உ;
    }
.end annotation


# instance fields
.field public final உ:Landroid/support/v4/media/session/MediaControllerCompat$䂻;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/support/v4/media/session/MediaSessionCompat$Token;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    if-eqz p2, :cond_3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    new-instance v0, Landroid/support/v4/media/session/MediaControllerCompat$㺴;

    invoke-direct {v0, p1, p2}, Landroid/support/v4/media/session/MediaControllerCompat$㺴;-><init>(Landroid/content/Context;Landroid/support/v4/media/session/MediaSessionCompat$Token;)V

    :goto_0
    iput-object v0, p0, Landroid/support/v4/media/session/MediaControllerCompat;->உ:Landroid/support/v4/media/session/MediaControllerCompat$䂻;

    goto :goto_1

    :cond_0
    const/16 v1, 0x17

    if-lt v0, v1, :cond_1

    new-instance v0, Landroid/support/v4/media/session/MediaControllerCompat$㚬;

    invoke-direct {v0, p1, p2}, Landroid/support/v4/media/session/MediaControllerCompat$㚬;-><init>(Landroid/content/Context;Landroid/support/v4/media/session/MediaSessionCompat$Token;)V

    goto :goto_0

    :cond_1
    const/16 v1, 0x15

    if-lt v0, v1, :cond_2

    new-instance v0, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21;

    invoke-direct {v0, p1, p2}, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21;-><init>(Landroid/content/Context;Landroid/support/v4/media/session/MediaSessionCompat$Token;)V

    goto :goto_0

    :cond_2
    new-instance p1, Landroid/support/v4/media/session/MediaControllerCompat$ḓ;

    invoke-direct {p1, p2}, Landroid/support/v4/media/session/MediaControllerCompat$ḓ;-><init>(Landroid/support/v4/media/session/MediaSessionCompat$Token;)V

    iput-object p1, p0, Landroid/support/v4/media/session/MediaControllerCompat;->உ:Landroid/support/v4/media/session/MediaControllerCompat$䂻;

    :goto_1
    return-void

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "sessionToken must not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public உ(Landroid/view/KeyEvent;)Z
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Landroid/support/v4/media/session/MediaControllerCompat;->உ:Landroid/support/v4/media/session/MediaControllerCompat$䂻;

    invoke-interface {v0, p1}, Landroid/support/v4/media/session/MediaControllerCompat$䂻;->உ(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "KeyEvent may not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
