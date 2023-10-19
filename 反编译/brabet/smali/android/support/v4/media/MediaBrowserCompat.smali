.class public final Landroid/support/v4/media/MediaBrowserCompat;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/media/MediaBrowserCompat$CustomActionResultReceiver;,
        Landroid/support/v4/media/MediaBrowserCompat$SearchResultReceiver;,
        Landroid/support/v4/media/MediaBrowserCompat$ItemReceiver;,
        Landroid/support/v4/media/MediaBrowserCompat$㹖;,
        Landroid/support/v4/media/MediaBrowserCompat$உ;,
        Landroid/support/v4/media/MediaBrowserCompat$ἥ;,
        Landroid/support/v4/media/MediaBrowserCompat$ℓ;,
        Landroid/support/v4/media/MediaBrowserCompat$ᆻ;,
        Landroid/support/v4/media/MediaBrowserCompat$䆀;,
        Landroid/support/v4/media/MediaBrowserCompat$ㄏ;,
        Landroid/support/v4/media/MediaBrowserCompat$ಫ;,
        Landroid/support/v4/media/MediaBrowserCompat$ḓ;,
        Landroid/support/v4/media/MediaBrowserCompat$㚬;,
        Landroid/support/v4/media/MediaBrowserCompat$㧦;,
        Landroid/support/v4/media/MediaBrowserCompat$㺴;,
        Landroid/support/v4/media/MediaBrowserCompat$ཇ;,
        Landroid/support/v4/media/MediaBrowserCompat$䂻;,
        Landroid/support/v4/media/MediaBrowserCompat$MediaItem;
    }
.end annotation


# static fields
.field public static final 䂻:Z


# instance fields
.field public final உ:Landroid/support/v4/media/MediaBrowserCompat$ḓ;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const-string v0, "MediaBrowserCompat"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Landroid/support/v4/media/MediaBrowserCompat;->䂻:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/ComponentName;Landroid/support/v4/media/MediaBrowserCompat$䂻;Landroid/os/Bundle;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    new-instance v0, Landroid/support/v4/media/MediaBrowserCompat$ℓ;

    invoke-direct {v0, p1, p2, p3, p4}, Landroid/support/v4/media/MediaBrowserCompat$ℓ;-><init>(Landroid/content/Context;Landroid/content/ComponentName;Landroid/support/v4/media/MediaBrowserCompat$䂻;Landroid/os/Bundle;)V

    :goto_0
    iput-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat;->உ:Landroid/support/v4/media/MediaBrowserCompat$ḓ;

    goto :goto_1

    :cond_0
    const/16 v1, 0x17

    if-lt v0, v1, :cond_1

    new-instance v0, Landroid/support/v4/media/MediaBrowserCompat$ᆻ;

    invoke-direct {v0, p1, p2, p3, p4}, Landroid/support/v4/media/MediaBrowserCompat$ᆻ;-><init>(Landroid/content/Context;Landroid/content/ComponentName;Landroid/support/v4/media/MediaBrowserCompat$䂻;Landroid/os/Bundle;)V

    goto :goto_0

    :cond_1
    const/16 v1, 0x15

    if-lt v0, v1, :cond_2

    new-instance v0, Landroid/support/v4/media/MediaBrowserCompat$䆀;

    invoke-direct {v0, p1, p2, p3, p4}, Landroid/support/v4/media/MediaBrowserCompat$䆀;-><init>(Landroid/content/Context;Landroid/content/ComponentName;Landroid/support/v4/media/MediaBrowserCompat$䂻;Landroid/os/Bundle;)V

    goto :goto_0

    :cond_2
    new-instance v0, Landroid/support/v4/media/MediaBrowserCompat$ㄏ;

    invoke-direct {v0, p1, p2, p3, p4}, Landroid/support/v4/media/MediaBrowserCompat$ㄏ;-><init>(Landroid/content/Context;Landroid/content/ComponentName;Landroid/support/v4/media/MediaBrowserCompat$䂻;Landroid/os/Bundle;)V

    goto :goto_0

    :goto_1
    return-void
.end method


# virtual methods
.method public உ()V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat;->உ:Landroid/support/v4/media/MediaBrowserCompat$ḓ;

    invoke-interface {v0}, Landroid/support/v4/media/MediaBrowserCompat$ḓ;->ᆻ()V

    return-void
.end method

.method public 㚬()Landroid/support/v4/media/session/MediaSessionCompat$Token;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat;->உ:Landroid/support/v4/media/MediaBrowserCompat$ḓ;

    invoke-interface {v0}, Landroid/support/v4/media/MediaBrowserCompat$ḓ;->ḓ()Landroid/support/v4/media/session/MediaSessionCompat$Token;

    move-result-object v0

    return-object v0
.end method

.method public 䂻()V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat;->உ:Landroid/support/v4/media/MediaBrowserCompat$ḓ;

    invoke-interface {v0}, Landroid/support/v4/media/MediaBrowserCompat$ḓ;->䆀()V

    return-void
.end method
