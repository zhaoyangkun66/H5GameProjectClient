.class public Landroidx/media/MediaBrowserServiceCompat$ཇ$ᆻ;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/media/MediaBrowserServiceCompat$ཇ;->ㄏ(Landroidx/media/MediaBrowserServiceCompat$ᓭ;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic 㚬:Landroidx/media/MediaBrowserServiceCompat$ཇ;

.field public final synthetic 䂻:Landroidx/media/MediaBrowserServiceCompat$ᓭ;


# direct methods
.method public constructor <init>(Landroidx/media/MediaBrowserServiceCompat$ཇ;Landroidx/media/MediaBrowserServiceCompat$ᓭ;)V
    .locals 0

    iput-object p1, p0, Landroidx/media/MediaBrowserServiceCompat$ཇ$ᆻ;->㚬:Landroidx/media/MediaBrowserServiceCompat$ཇ;

    iput-object p2, p0, Landroidx/media/MediaBrowserServiceCompat$ཇ$ᆻ;->䂻:Landroidx/media/MediaBrowserServiceCompat$ᓭ;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Landroidx/media/MediaBrowserServiceCompat$ཇ$ᆻ;->䂻:Landroidx/media/MediaBrowserServiceCompat$ᓭ;

    invoke-interface {v0}, Landroidx/media/MediaBrowserServiceCompat$ᓭ;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    iget-object v1, p0, Landroidx/media/MediaBrowserServiceCompat$ཇ$ᆻ;->㚬:Landroidx/media/MediaBrowserServiceCompat$ཇ;

    iget-object v1, v1, Landroidx/media/MediaBrowserServiceCompat$ཇ;->உ:Landroidx/media/MediaBrowserServiceCompat;

    iget-object v1, v1, Landroidx/media/MediaBrowserServiceCompat;->㚬:L㚬/䆀/உ;

    invoke-virtual {v1, v0}, L㚬/䆀/ᆻ;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media/MediaBrowserServiceCompat$䆀;

    if-eqz v1, :cond_0

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    :cond_0
    return-void
.end method
