.class public abstract Landroid/support/v4/media/MediaBrowserCompat$ཇ;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/MediaBrowserCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "\u0f47"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/media/MediaBrowserCompat$ཇ$䂻;,
        Landroid/support/v4/media/MediaBrowserCompat$ཇ$உ;
    }
.end annotation


# instance fields
.field public final உ:Ljava/lang/Object;

.field public 㚬:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/support/v4/media/MediaBrowserCompat$\u1f25;",
            ">;"
        }
    .end annotation
.end field

.field public final 䂻:Landroid/os/IBinder;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$ཇ;->䂻:Landroid/os/IBinder;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    new-instance v0, Landroid/support/v4/media/MediaBrowserCompat$ཇ$䂻;

    invoke-direct {v0, p0}, Landroid/support/v4/media/MediaBrowserCompat$ཇ$䂻;-><init>(Landroid/support/v4/media/MediaBrowserCompat$ཇ;)V

    invoke-static {v0}, L䂻/உ/䂻/䂻/䂻;->உ(L䂻/உ/䂻/䂻/䂻$உ;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$ཇ;->உ:Ljava/lang/Object;

    goto :goto_1

    :cond_0
    const/16 v1, 0x15

    if-lt v0, v1, :cond_1

    new-instance v0, Landroid/support/v4/media/MediaBrowserCompat$ཇ$உ;

    invoke-direct {v0, p0}, Landroid/support/v4/media/MediaBrowserCompat$ཇ$உ;-><init>(Landroid/support/v4/media/MediaBrowserCompat$ཇ;)V

    invoke-static {v0}, L䂻/உ/䂻/䂻/உ;->㺴(L䂻/உ/䂻/䂻/உ$㺴;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method


# virtual methods
.method public உ(Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/support/v4/media/MediaBrowserCompat$MediaItem;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public 㚬(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public 㺴(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public 䂻(Ljava/lang/String;Ljava/util/List;Landroid/os/Bundle;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/support/v4/media/MediaBrowserCompat$MediaItem;",
            ">;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    return-void
.end method
