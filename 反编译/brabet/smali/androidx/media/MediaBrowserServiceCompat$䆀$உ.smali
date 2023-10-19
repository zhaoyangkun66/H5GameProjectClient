.class public Landroidx/media/MediaBrowserServiceCompat$䆀$உ;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/media/MediaBrowserServiceCompat$䆀;->binderDied()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic 䂻:Landroidx/media/MediaBrowserServiceCompat$䆀;


# direct methods
.method public constructor <init>(Landroidx/media/MediaBrowserServiceCompat$䆀;)V
    .locals 0

    iput-object p1, p0, Landroidx/media/MediaBrowserServiceCompat$䆀$உ;->䂻:Landroidx/media/MediaBrowserServiceCompat$䆀;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Landroidx/media/MediaBrowserServiceCompat$䆀$உ;->䂻:Landroidx/media/MediaBrowserServiceCompat$䆀;

    iget-object v1, v0, Landroidx/media/MediaBrowserServiceCompat$䆀;->ḓ:Landroidx/media/MediaBrowserServiceCompat;

    iget-object v1, v1, Landroidx/media/MediaBrowserServiceCompat;->㚬:L㚬/䆀/உ;

    iget-object v0, v0, Landroidx/media/MediaBrowserServiceCompat$䆀;->䂻:Landroidx/media/MediaBrowserServiceCompat$ᓭ;

    invoke-interface {v0}, Landroidx/media/MediaBrowserServiceCompat$ᓭ;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {v1, v0}, L㚬/䆀/ᆻ;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
