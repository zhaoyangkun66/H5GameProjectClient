.class public Landroidx/media/MediaBrowserServiceCompat$உ;
.super Landroidx/media/MediaBrowserServiceCompat$ἥ;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/media/MediaBrowserServiceCompat;->ἥ(Ljava/lang/String;Landroidx/media/MediaBrowserServiceCompat$䆀;Landroid/os/Bundle;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/media/MediaBrowserServiceCompat$\u1f25<",
        "Ljava/util/List<",
        "Landroid/support/v4/media/MediaBrowserCompat$MediaItem;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic ಫ:Landroidx/media/MediaBrowserServiceCompat;

.field public final synthetic ᆻ:Ljava/lang/String;

.field public final synthetic ℓ:Landroid/os/Bundle;

.field public final synthetic ㄏ:Landroid/os/Bundle;

.field public final synthetic 䆀:Landroidx/media/MediaBrowserServiceCompat$䆀;


# direct methods
.method public constructor <init>(Landroidx/media/MediaBrowserServiceCompat;Ljava/lang/Object;Landroidx/media/MediaBrowserServiceCompat$䆀;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;)V
    .locals 0

    iput-object p1, p0, Landroidx/media/MediaBrowserServiceCompat$உ;->ಫ:Landroidx/media/MediaBrowserServiceCompat;

    iput-object p3, p0, Landroidx/media/MediaBrowserServiceCompat$உ;->䆀:Landroidx/media/MediaBrowserServiceCompat$䆀;

    iput-object p4, p0, Landroidx/media/MediaBrowserServiceCompat$உ;->ᆻ:Ljava/lang/String;

    iput-object p5, p0, Landroidx/media/MediaBrowserServiceCompat$உ;->ℓ:Landroid/os/Bundle;

    iput-object p6, p0, Landroidx/media/MediaBrowserServiceCompat$உ;->ㄏ:Landroid/os/Bundle;

    invoke-direct {p0, p2}, Landroidx/media/MediaBrowserServiceCompat$ἥ;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public ℓ(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/support/v4/media/MediaBrowserCompat$MediaItem;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Landroidx/media/MediaBrowserServiceCompat$உ;->ಫ:Landroidx/media/MediaBrowserServiceCompat;

    iget-object v0, v0, Landroidx/media/MediaBrowserServiceCompat;->㚬:L㚬/䆀/உ;

    iget-object v1, p0, Landroidx/media/MediaBrowserServiceCompat$உ;->䆀:Landroidx/media/MediaBrowserServiceCompat$䆀;

    iget-object v1, v1, Landroidx/media/MediaBrowserServiceCompat$䆀;->䂻:Landroidx/media/MediaBrowserServiceCompat$ᓭ;

    invoke-interface {v1}, Landroidx/media/MediaBrowserServiceCompat$ᓭ;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1}, L㚬/䆀/ᆻ;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Landroidx/media/MediaBrowserServiceCompat$உ;->䆀:Landroidx/media/MediaBrowserServiceCompat$䆀;

    const-string v2, "MBServiceCompat"

    if-eq v0, v1, :cond_1

    sget-boolean p1, Landroidx/media/MediaBrowserServiceCompat;->ᆻ:Z

    if-eqz p1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Not sending onLoadChildren result for connection that has been disconnected. pkg="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Landroidx/media/MediaBrowserServiceCompat$உ;->䆀:Landroidx/media/MediaBrowserServiceCompat$䆀;

    iget-object v0, v0, Landroidx/media/MediaBrowserServiceCompat$䆀;->உ:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " id="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Landroidx/media/MediaBrowserServiceCompat$உ;->ᆻ:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p0}, Landroidx/media/MediaBrowserServiceCompat$ἥ;->உ()I

    move-result v0

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroidx/media/MediaBrowserServiceCompat$உ;->ಫ:Landroidx/media/MediaBrowserServiceCompat;

    iget-object v1, p0, Landroidx/media/MediaBrowserServiceCompat$உ;->ℓ:Landroid/os/Bundle;

    invoke-virtual {v0, p1, v1}, Landroidx/media/MediaBrowserServiceCompat;->䂻(Ljava/util/List;Landroid/os/Bundle;)Ljava/util/List;

    move-result-object p1

    :cond_2
    :try_start_0
    iget-object v0, p0, Landroidx/media/MediaBrowserServiceCompat$உ;->䆀:Landroidx/media/MediaBrowserServiceCompat$䆀;

    iget-object v0, v0, Landroidx/media/MediaBrowserServiceCompat$䆀;->䂻:Landroidx/media/MediaBrowserServiceCompat$ᓭ;

    iget-object v1, p0, Landroidx/media/MediaBrowserServiceCompat$உ;->ᆻ:Ljava/lang/String;

    iget-object v3, p0, Landroidx/media/MediaBrowserServiceCompat$உ;->ℓ:Landroid/os/Bundle;

    iget-object v4, p0, Landroidx/media/MediaBrowserServiceCompat$உ;->ㄏ:Landroid/os/Bundle;

    invoke-interface {v0, v1, p1, v3, v4}, Landroidx/media/MediaBrowserServiceCompat$ᓭ;->䂻(Ljava/lang/String;Ljava/util/List;Landroid/os/Bundle;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Calling onLoadChildren() failed for id="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Landroidx/media/MediaBrowserServiceCompat$உ;->ᆻ:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " package="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Landroidx/media/MediaBrowserServiceCompat$உ;->䆀:Landroidx/media/MediaBrowserServiceCompat$䆀;

    iget-object v0, v0, Landroidx/media/MediaBrowserServiceCompat$䆀;->உ:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public bridge synthetic 㺴(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Landroidx/media/MediaBrowserServiceCompat$உ;->ℓ(Ljava/util/List;)V

    return-void
.end method
