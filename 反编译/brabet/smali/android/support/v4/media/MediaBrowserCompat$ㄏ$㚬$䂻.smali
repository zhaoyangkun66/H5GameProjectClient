.class public Landroid/support/v4/media/MediaBrowserCompat$ㄏ$㚬$䂻;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v4/media/MediaBrowserCompat$ㄏ$㚬;->onServiceDisconnected(Landroid/content/ComponentName;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic 㚬:Landroid/support/v4/media/MediaBrowserCompat$ㄏ$㚬;

.field public final synthetic 䂻:Landroid/content/ComponentName;


# direct methods
.method public constructor <init>(Landroid/support/v4/media/MediaBrowserCompat$ㄏ$㚬;Landroid/content/ComponentName;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v4/media/MediaBrowserCompat$ㄏ$㚬$䂻;->㚬:Landroid/support/v4/media/MediaBrowserCompat$ㄏ$㚬;

    iput-object p2, p0, Landroid/support/v4/media/MediaBrowserCompat$ㄏ$㚬$䂻;->䂻:Landroid/content/ComponentName;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    sget-boolean v0, Landroid/support/v4/media/MediaBrowserCompat;->䂻:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MediaServiceConnection.onServiceDisconnected name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/support/v4/media/MediaBrowserCompat$ㄏ$㚬$䂻;->䂻:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " this="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " mServiceConnection="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/support/v4/media/MediaBrowserCompat$ㄏ$㚬$䂻;->㚬:Landroid/support/v4/media/MediaBrowserCompat$ㄏ$㚬;

    iget-object v1, v1, Landroid/support/v4/media/MediaBrowserCompat$ㄏ$㚬;->உ:Landroid/support/v4/media/MediaBrowserCompat$ㄏ;

    iget-object v1, v1, Landroid/support/v4/media/MediaBrowserCompat$ㄏ;->ℓ:Landroid/support/v4/media/MediaBrowserCompat$ㄏ$㚬;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MediaBrowserCompat"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$ㄏ$㚬$䂻;->㚬:Landroid/support/v4/media/MediaBrowserCompat$ㄏ$㚬;

    iget-object v0, v0, Landroid/support/v4/media/MediaBrowserCompat$ㄏ$㚬;->உ:Landroid/support/v4/media/MediaBrowserCompat$ㄏ;

    invoke-virtual {v0}, Landroid/support/v4/media/MediaBrowserCompat$ㄏ;->உ()V

    :cond_0
    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$ㄏ$㚬$䂻;->㚬:Landroid/support/v4/media/MediaBrowserCompat$ㄏ$㚬;

    const-string v1, "onServiceDisconnected"

    invoke-virtual {v0, v1}, Landroid/support/v4/media/MediaBrowserCompat$ㄏ$㚬;->உ(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$ㄏ$㚬$䂻;->㚬:Landroid/support/v4/media/MediaBrowserCompat$ㄏ$㚬;

    iget-object v0, v0, Landroid/support/v4/media/MediaBrowserCompat$ㄏ$㚬;->உ:Landroid/support/v4/media/MediaBrowserCompat$ㄏ;

    const/4 v1, 0x0

    iput-object v1, v0, Landroid/support/v4/media/MediaBrowserCompat$ㄏ;->ㄏ:Landroid/support/v4/media/MediaBrowserCompat$㹖;

    iput-object v1, v0, Landroid/support/v4/media/MediaBrowserCompat$ㄏ;->ಫ:Landroid/os/Messenger;

    iget-object v0, v0, Landroid/support/v4/media/MediaBrowserCompat$ㄏ;->ḓ:Landroid/support/v4/media/MediaBrowserCompat$உ;

    invoke-virtual {v0, v1}, Landroid/support/v4/media/MediaBrowserCompat$உ;->உ(Landroid/os/Messenger;)V

    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$ㄏ$㚬$䂻;->㚬:Landroid/support/v4/media/MediaBrowserCompat$ㄏ$㚬;

    iget-object v0, v0, Landroid/support/v4/media/MediaBrowserCompat$ㄏ$㚬;->உ:Landroid/support/v4/media/MediaBrowserCompat$ㄏ;

    const/4 v1, 0x4

    iput v1, v0, Landroid/support/v4/media/MediaBrowserCompat$ㄏ;->ᆻ:I

    iget-object v0, v0, Landroid/support/v4/media/MediaBrowserCompat$ㄏ;->㚬:Landroid/support/v4/media/MediaBrowserCompat$䂻;

    invoke-virtual {v0}, Landroid/support/v4/media/MediaBrowserCompat$䂻;->㚬()V

    return-void
.end method
