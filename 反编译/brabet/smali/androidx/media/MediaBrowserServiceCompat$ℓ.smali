.class public Landroidx/media/MediaBrowserServiceCompat$ℓ;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroidx/media/MediaBrowserServiceCompat$ᆻ;
.implements L㚬/ბ/ḓ$㺴;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media/MediaBrowserServiceCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "\u2113"
.end annotation


# instance fields
.field public final உ:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end field

.field public 㚬:Landroid/os/Messenger;

.field public final synthetic 㺴:Landroidx/media/MediaBrowserServiceCompat;

.field public 䂻:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroidx/media/MediaBrowserServiceCompat;)V
    .locals 0

    iput-object p1, p0, Landroidx/media/MediaBrowserServiceCompat$ℓ;->㺴:Landroidx/media/MediaBrowserServiceCompat;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroidx/media/MediaBrowserServiceCompat$ℓ;->உ:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public உ()V
    .locals 1

    iget-object v0, p0, Landroidx/media/MediaBrowserServiceCompat$ℓ;->㺴:Landroidx/media/MediaBrowserServiceCompat;

    invoke-static {v0, p0}, L㚬/ბ/ḓ;->உ(Landroid/content/Context;L㚬/ბ/ḓ$㺴;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Landroidx/media/MediaBrowserServiceCompat$ℓ;->䂻:Ljava/lang/Object;

    invoke-static {v0}, L㚬/ბ/ḓ;->㚬(Ljava/lang/Object;)V

    return-void
.end method

.method public ḓ(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Landroidx/media/MediaBrowserServiceCompat$ℓ;->䂻:Ljava/lang/Object;

    invoke-static {v0, p1}, L㚬/ბ/ḓ;->䂻(Ljava/lang/Object;Landroid/content/Intent;)Landroid/os/IBinder;

    move-result-object p1

    return-object p1
.end method

.method public 㚬(Ljava/lang/String;ILandroid/os/Bundle;)L㚬/ბ/ḓ$உ;
    .locals 11

    const/4 v0, 0x0

    if-eqz p3, :cond_2

    const/4 v1, 0x0

    const-string v2, "extra_client_version"

    invoke-virtual {p3, v2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p3, v2}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    new-instance v1, Landroid/os/Messenger;

    iget-object v2, p0, Landroidx/media/MediaBrowserServiceCompat$ℓ;->㺴:Landroidx/media/MediaBrowserServiceCompat;

    iget-object v2, v2, Landroidx/media/MediaBrowserServiceCompat;->ḓ:Landroidx/media/MediaBrowserServiceCompat$㲝;

    invoke-direct {v1, v2}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v1, p0, Landroidx/media/MediaBrowserServiceCompat$ℓ;->㚬:Landroid/os/Messenger;

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const/4 v2, 0x2

    const-string v3, "extra_service_version"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v2, p0, Landroidx/media/MediaBrowserServiceCompat$ℓ;->㚬:Landroid/os/Messenger;

    invoke-virtual {v2}, Landroid/os/Messenger;->getBinder()Landroid/os/IBinder;

    move-result-object v2

    const-string v3, "extra_messenger"

    invoke-static {v1, v3, v2}, L㚬/ℓ/㺴/ḓ;->䂻(Landroid/os/Bundle;Ljava/lang/String;Landroid/os/IBinder;)V

    iget-object v2, p0, Landroidx/media/MediaBrowserServiceCompat$ℓ;->㺴:Landroidx/media/MediaBrowserServiceCompat;

    iget-object v2, v2, Landroidx/media/MediaBrowserServiceCompat;->䆀:Landroid/support/v4/media/session/MediaSessionCompat$Token;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/support/v4/media/session/MediaSessionCompat$Token;->㹖()L䂻/உ/䂻/䂻/䆀/䂻;

    move-result-object v2

    if-nez v2, :cond_0

    move-object v2, v0

    goto :goto_0

    :cond_0
    invoke-interface {v2}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    :goto_0
    const-string v3, "extra_session_binder"

    invoke-static {v1, v3, v2}, L㚬/ℓ/㺴/ḓ;->䂻(Landroid/os/Bundle;Ljava/lang/String;Landroid/os/IBinder;)V

    goto :goto_1

    :cond_1
    iget-object v2, p0, Landroidx/media/MediaBrowserServiceCompat$ℓ;->உ:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    move-object v1, v0

    :goto_1
    iget-object v9, p0, Landroidx/media/MediaBrowserServiceCompat$ℓ;->㺴:Landroidx/media/MediaBrowserServiceCompat;

    new-instance v10, Landroidx/media/MediaBrowserServiceCompat$䆀;

    const/4 v5, -0x1

    const/4 v8, 0x0

    move-object v2, v10

    move-object v3, v9

    move-object v4, p1

    move v6, p2

    move-object v7, p3

    invoke-direct/range {v2 .. v8}, Landroidx/media/MediaBrowserServiceCompat$䆀;-><init>(Landroidx/media/MediaBrowserServiceCompat;Ljava/lang/String;IILandroid/os/Bundle;Landroidx/media/MediaBrowserServiceCompat$ᓭ;)V

    iput-object v10, v9, Landroidx/media/MediaBrowserServiceCompat;->㺴:Landroidx/media/MediaBrowserServiceCompat$䆀;

    iget-object v2, p0, Landroidx/media/MediaBrowserServiceCompat$ℓ;->㺴:Landroidx/media/MediaBrowserServiceCompat;

    invoke-virtual {v2, p1, p2, p3}, Landroidx/media/MediaBrowserServiceCompat;->ḓ(Ljava/lang/String;ILandroid/os/Bundle;)Landroidx/media/MediaBrowserServiceCompat$ḓ;

    move-result-object p1

    iget-object p2, p0, Landroidx/media/MediaBrowserServiceCompat$ℓ;->㺴:Landroidx/media/MediaBrowserServiceCompat;

    iput-object v0, p2, Landroidx/media/MediaBrowserServiceCompat;->㺴:Landroidx/media/MediaBrowserServiceCompat$䆀;

    if-nez p1, :cond_3

    return-object v0

    :cond_3
    invoke-virtual {p1}, Landroidx/media/MediaBrowserServiceCompat$ḓ;->உ()Landroid/os/Bundle;

    throw v0
.end method

.method public 䂻(Ljava/lang/String;L㚬/ბ/ḓ$㚬;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "L\u36ac/\u10d1/\u1e13$\u36ac<",
            "Ljava/util/List<",
            "Landroid/os/Parcel;",
            ">;>;)V"
        }
    .end annotation

    new-instance v0, Landroidx/media/MediaBrowserServiceCompat$ℓ$உ;

    invoke-direct {v0, p0, p1, p2}, Landroidx/media/MediaBrowserServiceCompat$ℓ$உ;-><init>(Landroidx/media/MediaBrowserServiceCompat$ℓ;Ljava/lang/Object;L㚬/ბ/ḓ$㚬;)V

    iget-object p2, p0, Landroidx/media/MediaBrowserServiceCompat$ℓ;->㺴:Landroidx/media/MediaBrowserServiceCompat;

    invoke-virtual {p2, p1, v0}, Landroidx/media/MediaBrowserServiceCompat;->䆀(Ljava/lang/String;Landroidx/media/MediaBrowserServiceCompat$ἥ;)V

    return-void
.end method
