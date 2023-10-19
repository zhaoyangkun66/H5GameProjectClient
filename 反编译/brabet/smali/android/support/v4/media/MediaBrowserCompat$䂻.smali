.class public Landroid/support/v4/media/MediaBrowserCompat$䂻;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/MediaBrowserCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "\u40bb"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/media/MediaBrowserCompat$䂻$䂻;,
        Landroid/support/v4/media/MediaBrowserCompat$䂻$உ;
    }
.end annotation


# instance fields
.field public final உ:Ljava/lang/Object;

.field public 䂻:Landroid/support/v4/media/MediaBrowserCompat$䂻$உ;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    new-instance v0, Landroid/support/v4/media/MediaBrowserCompat$䂻$䂻;

    invoke-direct {v0, p0}, Landroid/support/v4/media/MediaBrowserCompat$䂻$䂻;-><init>(Landroid/support/v4/media/MediaBrowserCompat$䂻;)V

    invoke-static {v0}, L䂻/உ/䂻/䂻/உ;->㚬(L䂻/உ/䂻/䂻/உ$உ;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$䂻;->உ:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public உ()V
    .locals 0

    const p0, 0x0

    throw p0
.end method

.method public 㚬()V
    .locals 0

    const p0, 0x0

    throw p0
.end method

.method public 㺴(Landroid/support/v4/media/MediaBrowserCompat$䂻$உ;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v4/media/MediaBrowserCompat$䂻;->䂻:Landroid/support/v4/media/MediaBrowserCompat$䂻$உ;

    return-void
.end method

.method public 䂻()V
    .locals 0

    const p0, 0x0

    throw p0
.end method
