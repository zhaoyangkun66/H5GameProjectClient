.class public Landroidx/media/MediaBrowserServiceCompat$ཇ$䆀;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/media/MediaBrowserServiceCompat$ཇ;->ḓ(Landroidx/media/MediaBrowserServiceCompat$ᓭ;Ljava/lang/String;IILandroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic ᆻ:Landroidx/media/MediaBrowserServiceCompat$ཇ;

.field public final synthetic ḓ:I

.field public final synthetic 㚬:Ljava/lang/String;

.field public final synthetic 㺴:I

.field public final synthetic 䂻:Landroidx/media/MediaBrowserServiceCompat$ᓭ;

.field public final synthetic 䆀:Landroid/os/Bundle;


# direct methods
.method public constructor <init>(Landroidx/media/MediaBrowserServiceCompat$ཇ;Landroidx/media/MediaBrowserServiceCompat$ᓭ;Ljava/lang/String;IILandroid/os/Bundle;)V
    .locals 0

    iput-object p1, p0, Landroidx/media/MediaBrowserServiceCompat$ཇ$䆀;->ᆻ:Landroidx/media/MediaBrowserServiceCompat$ཇ;

    iput-object p2, p0, Landroidx/media/MediaBrowserServiceCompat$ཇ$䆀;->䂻:Landroidx/media/MediaBrowserServiceCompat$ᓭ;

    iput-object p3, p0, Landroidx/media/MediaBrowserServiceCompat$ཇ$䆀;->㚬:Ljava/lang/String;

    iput p4, p0, Landroidx/media/MediaBrowserServiceCompat$ཇ$䆀;->㺴:I

    iput p5, p0, Landroidx/media/MediaBrowserServiceCompat$ཇ$䆀;->ḓ:I

    iput-object p6, p0, Landroidx/media/MediaBrowserServiceCompat$ཇ$䆀;->䆀:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    iget-object v0, p0, Landroidx/media/MediaBrowserServiceCompat$ཇ$䆀;->䂻:Landroidx/media/MediaBrowserServiceCompat$ᓭ;

    invoke-interface {v0}, Landroidx/media/MediaBrowserServiceCompat$ᓭ;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    iget-object v1, p0, Landroidx/media/MediaBrowserServiceCompat$ཇ$䆀;->ᆻ:Landroidx/media/MediaBrowserServiceCompat$ཇ;

    iget-object v1, v1, Landroidx/media/MediaBrowserServiceCompat$ཇ;->உ:Landroidx/media/MediaBrowserServiceCompat;

    iget-object v1, v1, Landroidx/media/MediaBrowserServiceCompat;->㚬:L㚬/䆀/உ;

    invoke-virtual {v1, v0}, L㚬/䆀/ᆻ;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Landroidx/media/MediaBrowserServiceCompat$䆀;

    iget-object v2, p0, Landroidx/media/MediaBrowserServiceCompat$ཇ$䆀;->ᆻ:Landroidx/media/MediaBrowserServiceCompat$ཇ;

    iget-object v3, v2, Landroidx/media/MediaBrowserServiceCompat$ཇ;->உ:Landroidx/media/MediaBrowserServiceCompat;

    iget-object v4, p0, Landroidx/media/MediaBrowserServiceCompat$ཇ$䆀;->㚬:Ljava/lang/String;

    iget v5, p0, Landroidx/media/MediaBrowserServiceCompat$ཇ$䆀;->㺴:I

    iget v6, p0, Landroidx/media/MediaBrowserServiceCompat$ཇ$䆀;->ḓ:I

    iget-object v7, p0, Landroidx/media/MediaBrowserServiceCompat$ཇ$䆀;->䆀:Landroid/os/Bundle;

    iget-object v8, p0, Landroidx/media/MediaBrowserServiceCompat$ཇ$䆀;->䂻:Landroidx/media/MediaBrowserServiceCompat$ᓭ;

    move-object v2, v1

    invoke-direct/range {v2 .. v8}, Landroidx/media/MediaBrowserServiceCompat$䆀;-><init>(Landroidx/media/MediaBrowserServiceCompat;Ljava/lang/String;IILandroid/os/Bundle;Landroidx/media/MediaBrowserServiceCompat$ᓭ;)V

    iget-object v2, p0, Landroidx/media/MediaBrowserServiceCompat$ཇ$䆀;->ᆻ:Landroidx/media/MediaBrowserServiceCompat$ཇ;

    iget-object v2, v2, Landroidx/media/MediaBrowserServiceCompat$ཇ;->உ:Landroidx/media/MediaBrowserServiceCompat;

    iget-object v2, v2, Landroidx/media/MediaBrowserServiceCompat;->㚬:L㚬/䆀/உ;

    invoke-virtual {v2, v0, v1}, L㚬/䆀/ᆻ;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x0

    :try_start_0
    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, "MBServiceCompat"

    const-string v1, "IBinder is already dead."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
