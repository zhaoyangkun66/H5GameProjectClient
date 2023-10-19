.class public Landroidx/media/MediaBrowserServiceCompat$ཇ$ㄏ;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/media/MediaBrowserServiceCompat$ཇ;->ℓ(Ljava/lang/String;Landroid/os/Bundle;L䂻/உ/䂻/㚬/䂻;Landroidx/media/MediaBrowserServiceCompat$ᓭ;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic ḓ:L䂻/உ/䂻/㚬/䂻;

.field public final synthetic 㚬:Ljava/lang/String;

.field public final synthetic 㺴:Landroid/os/Bundle;

.field public final synthetic 䂻:Landroidx/media/MediaBrowserServiceCompat$ᓭ;

.field public final synthetic 䆀:Landroidx/media/MediaBrowserServiceCompat$ཇ;


# direct methods
.method public constructor <init>(Landroidx/media/MediaBrowserServiceCompat$ཇ;Landroidx/media/MediaBrowserServiceCompat$ᓭ;Ljava/lang/String;Landroid/os/Bundle;L䂻/உ/䂻/㚬/䂻;)V
    .locals 0

    iput-object p1, p0, Landroidx/media/MediaBrowserServiceCompat$ཇ$ㄏ;->䆀:Landroidx/media/MediaBrowserServiceCompat$ཇ;

    iput-object p2, p0, Landroidx/media/MediaBrowserServiceCompat$ཇ$ㄏ;->䂻:Landroidx/media/MediaBrowserServiceCompat$ᓭ;

    iput-object p3, p0, Landroidx/media/MediaBrowserServiceCompat$ཇ$ㄏ;->㚬:Ljava/lang/String;

    iput-object p4, p0, Landroidx/media/MediaBrowserServiceCompat$ཇ$ㄏ;->㺴:Landroid/os/Bundle;

    iput-object p5, p0, Landroidx/media/MediaBrowserServiceCompat$ཇ$ㄏ;->ḓ:L䂻/உ/䂻/㚬/䂻;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Landroidx/media/MediaBrowserServiceCompat$ཇ$ㄏ;->䂻:Landroidx/media/MediaBrowserServiceCompat$ᓭ;

    invoke-interface {v0}, Landroidx/media/MediaBrowserServiceCompat$ᓭ;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    iget-object v1, p0, Landroidx/media/MediaBrowserServiceCompat$ཇ$ㄏ;->䆀:Landroidx/media/MediaBrowserServiceCompat$ཇ;

    iget-object v1, v1, Landroidx/media/MediaBrowserServiceCompat$ཇ;->உ:Landroidx/media/MediaBrowserServiceCompat;

    iget-object v1, v1, Landroidx/media/MediaBrowserServiceCompat;->㚬:L㚬/䆀/உ;

    invoke-virtual {v1, v0}, L㚬/䆀/ᆻ;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media/MediaBrowserServiceCompat$䆀;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sendCustomAction for callback that isn\'t registered action="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/media/MediaBrowserServiceCompat$ཇ$ㄏ;->㚬:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", extras="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/media/MediaBrowserServiceCompat$ཇ$ㄏ;->㺴:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MBServiceCompat"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v1, p0, Landroidx/media/MediaBrowserServiceCompat$ཇ$ㄏ;->䆀:Landroidx/media/MediaBrowserServiceCompat$ཇ;

    iget-object v1, v1, Landroidx/media/MediaBrowserServiceCompat$ཇ;->உ:Landroidx/media/MediaBrowserServiceCompat;

    iget-object v2, p0, Landroidx/media/MediaBrowserServiceCompat$ཇ$ㄏ;->㚬:Ljava/lang/String;

    iget-object v3, p0, Landroidx/media/MediaBrowserServiceCompat$ཇ$ㄏ;->㺴:Landroid/os/Bundle;

    iget-object v4, p0, Landroidx/media/MediaBrowserServiceCompat$ཇ$ㄏ;->ḓ:L䂻/உ/䂻/㚬/䂻;

    invoke-virtual {v1, v2, v3, v0, v4}, Landroidx/media/MediaBrowserServiceCompat;->㹖(Ljava/lang/String;Landroid/os/Bundle;Landroidx/media/MediaBrowserServiceCompat$䆀;L䂻/உ/䂻/㚬/䂻;)V

    return-void
.end method
