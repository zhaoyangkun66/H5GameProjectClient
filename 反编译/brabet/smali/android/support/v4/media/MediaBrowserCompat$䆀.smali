.class public Landroid/support/v4/media/MediaBrowserCompat$䆀;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/support/v4/media/MediaBrowserCompat$ḓ;
.implements Landroid/support/v4/media/MediaBrowserCompat$ಫ;
.implements Landroid/support/v4/media/MediaBrowserCompat$䂻$உ;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/MediaBrowserCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "\u4180"
.end annotation


# instance fields
.field public final உ:Landroid/content/Context;

.field public ᆻ:Landroid/os/Messenger;

.field public final ḓ:L㚬/䆀/உ;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "L\u36ac/\u4180/\u0b89<",
            "Ljava/lang/String;",
            "Landroid/support/v4/media/MediaBrowserCompat$\u1f25;",
            ">;"
        }
    .end annotation
.end field

.field public ℓ:Landroid/support/v4/media/session/MediaSessionCompat$Token;

.field public final 㚬:Landroid/os/Bundle;

.field public final 㺴:Landroid/support/v4/media/MediaBrowserCompat$உ;

.field public final 䂻:Ljava/lang/Object;

.field public 䆀:Landroid/support/v4/media/MediaBrowserCompat$㹖;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/ComponentName;Landroid/support/v4/media/MediaBrowserCompat$䂻;Landroid/os/Bundle;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/support/v4/media/MediaBrowserCompat$உ;

    invoke-direct {v0, p0}, Landroid/support/v4/media/MediaBrowserCompat$உ;-><init>(Landroid/support/v4/media/MediaBrowserCompat$ಫ;)V

    iput-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$䆀;->㺴:Landroid/support/v4/media/MediaBrowserCompat$உ;

    new-instance v0, L㚬/䆀/உ;

    invoke-direct {v0}, L㚬/䆀/உ;-><init>()V

    iput-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$䆀;->ḓ:L㚬/䆀/உ;

    iput-object p1, p0, Landroid/support/v4/media/MediaBrowserCompat$䆀;->உ:Landroid/content/Context;

    new-instance v0, Landroid/os/Bundle;

    if-eqz p4, :cond_0

    invoke-direct {v0, p4}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    goto :goto_0

    :cond_0
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    :goto_0
    iput-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$䆀;->㚬:Landroid/os/Bundle;

    const/4 p4, 0x1

    const-string v1, "extra_client_version"

    invoke-virtual {v0, v1, p4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {p3, p0}, Landroid/support/v4/media/MediaBrowserCompat$䂻;->㺴(Landroid/support/v4/media/MediaBrowserCompat$䂻$உ;)V

    iget-object p3, p3, Landroid/support/v4/media/MediaBrowserCompat$䂻;->உ:Ljava/lang/Object;

    invoke-static {p1, p2, p3, v0}, L䂻/உ/䂻/䂻/உ;->䂻(Landroid/content/Context;Landroid/content/ComponentName;Ljava/lang/Object;Landroid/os/Bundle;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v4/media/MediaBrowserCompat$䆀;->䂻:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public உ()V
    .locals 2

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$䆀;->䆀:Landroid/support/v4/media/MediaBrowserCompat$㹖;

    iput-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$䆀;->ᆻ:Landroid/os/Messenger;

    iput-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$䆀;->ℓ:Landroid/support/v4/media/session/MediaSessionCompat$Token;

    iget-object v1, p0, Landroid/support/v4/media/MediaBrowserCompat$䆀;->㺴:Landroid/support/v4/media/MediaBrowserCompat$உ;

    invoke-virtual {v1, v0}, Landroid/support/v4/media/MediaBrowserCompat$உ;->உ(Landroid/os/Messenger;)V

    return-void
.end method

.method public ᆻ()V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$䆀;->䂻:Ljava/lang/Object;

    invoke-static {v0}, L䂻/உ/䂻/䂻/உ;->உ(Ljava/lang/Object;)V

    return-void
.end method

.method public ḓ()Landroid/support/v4/media/session/MediaSessionCompat$Token;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$䆀;->ℓ:Landroid/support/v4/media/session/MediaSessionCompat$Token;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$䆀;->䂻:Ljava/lang/Object;

    invoke-static {v0}, L䂻/உ/䂻/䂻/உ;->ᆻ(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/media/session/MediaSessionCompat$Token;->ಫ(Ljava/lang/Object;)Landroid/support/v4/media/session/MediaSessionCompat$Token;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$䆀;->ℓ:Landroid/support/v4/media/session/MediaSessionCompat$Token;

    :cond_0
    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$䆀;->ℓ:Landroid/support/v4/media/session/MediaSessionCompat$Token;

    return-object v0
.end method

.method public ℓ(Landroid/os/Messenger;Ljava/lang/String;Landroid/support/v4/media/session/MediaSessionCompat$Token;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public ㄏ(Landroid/os/Messenger;Ljava/lang/String;Ljava/util/List;Landroid/os/Bundle;Landroid/os/Bundle;)V
    .locals 0

    iget-object p5, p0, Landroid/support/v4/media/MediaBrowserCompat$䆀;->ᆻ:Landroid/os/Messenger;

    if-eq p5, p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Landroid/support/v4/media/MediaBrowserCompat$䆀;->ḓ:L㚬/䆀/உ;

    invoke-virtual {p1, p2}, L㚬/䆀/ᆻ;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/support/v4/media/MediaBrowserCompat$ἥ;

    if-nez p1, :cond_2

    sget-boolean p1, Landroid/support/v4/media/MediaBrowserCompat;->䂻:Z

    if-eqz p1, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "onLoadChildren for id that isn\'t subscribed id="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "MediaBrowserCompat"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void

    :cond_2
    invoke-virtual {p1, p4}, Landroid/support/v4/media/MediaBrowserCompat$ἥ;->உ(Landroid/os/Bundle;)Landroid/support/v4/media/MediaBrowserCompat$ཇ;

    move-result-object p1

    if-eqz p1, :cond_6

    if-nez p4, :cond_4

    if-nez p3, :cond_3

    invoke-virtual {p1, p2}, Landroid/support/v4/media/MediaBrowserCompat$ཇ;->㚬(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    invoke-virtual {p1, p2, p3}, Landroid/support/v4/media/MediaBrowserCompat$ཇ;->உ(Ljava/lang/String;Ljava/util/List;)V

    goto :goto_0

    :cond_4
    if-nez p3, :cond_5

    invoke-virtual {p1, p2, p4}, Landroid/support/v4/media/MediaBrowserCompat$ཇ;->㺴(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    :cond_5
    invoke-virtual {p1, p2, p3, p4}, Landroid/support/v4/media/MediaBrowserCompat$ཇ;->䂻(Ljava/lang/String;Ljava/util/List;Landroid/os/Bundle;)V

    :cond_6
    :goto_0
    return-void
.end method

.method public 㚬()V
    .locals 0

    return-void
.end method

.method public 㺴(Landroid/os/Messenger;)V
    .locals 0

    return-void
.end method

.method public 䂻()V
    .locals 4

    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$䆀;->䂻:Ljava/lang/Object;

    invoke-static {v0}, L䂻/உ/䂻/䂻/உ;->䆀(Ljava/lang/Object;)Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    const-string v2, "extra_service_version"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    const-string v1, "extra_messenger"

    invoke-static {v0, v1}, L㚬/ℓ/㺴/ḓ;->உ(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance v2, Landroid/support/v4/media/MediaBrowserCompat$㹖;

    iget-object v3, p0, Landroid/support/v4/media/MediaBrowserCompat$䆀;->㚬:Landroid/os/Bundle;

    invoke-direct {v2, v1, v3}, Landroid/support/v4/media/MediaBrowserCompat$㹖;-><init>(Landroid/os/IBinder;Landroid/os/Bundle;)V

    iput-object v2, p0, Landroid/support/v4/media/MediaBrowserCompat$䆀;->䆀:Landroid/support/v4/media/MediaBrowserCompat$㹖;

    new-instance v1, Landroid/os/Messenger;

    iget-object v2, p0, Landroid/support/v4/media/MediaBrowserCompat$䆀;->㺴:Landroid/support/v4/media/MediaBrowserCompat$உ;

    invoke-direct {v1, v2}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v1, p0, Landroid/support/v4/media/MediaBrowserCompat$䆀;->ᆻ:Landroid/os/Messenger;

    iget-object v2, p0, Landroid/support/v4/media/MediaBrowserCompat$䆀;->㺴:Landroid/support/v4/media/MediaBrowserCompat$உ;

    invoke-virtual {v2, v1}, Landroid/support/v4/media/MediaBrowserCompat$உ;->உ(Landroid/os/Messenger;)V

    :try_start_0
    iget-object v1, p0, Landroid/support/v4/media/MediaBrowserCompat$䆀;->䆀:Landroid/support/v4/media/MediaBrowserCompat$㹖;

    iget-object v2, p0, Landroid/support/v4/media/MediaBrowserCompat$䆀;->உ:Landroid/content/Context;

    iget-object v3, p0, Landroid/support/v4/media/MediaBrowserCompat$䆀;->ᆻ:Landroid/os/Messenger;

    invoke-virtual {v1, v2, v3}, Landroid/support/v4/media/MediaBrowserCompat$㹖;->㺴(Landroid/content/Context;Landroid/os/Messenger;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v1, "MediaBrowserCompat"

    const-string v2, "Remote error registering client messenger."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    const-string v1, "extra_session_binder"

    invoke-static {v0, v1}, L㚬/ℓ/㺴/ḓ;->உ(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, L䂻/உ/䂻/䂻/䆀/䂻$உ;->ർ(Landroid/os/IBinder;)L䂻/உ/䂻/䂻/䆀/䂻;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v1, p0, Landroid/support/v4/media/MediaBrowserCompat$䆀;->䂻:Ljava/lang/Object;

    invoke-static {v1}, L䂻/உ/䂻/䂻/உ;->ᆻ(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/support/v4/media/session/MediaSessionCompat$Token;->㧦(Ljava/lang/Object;L䂻/உ/䂻/䂻/䆀/䂻;)Landroid/support/v4/media/session/MediaSessionCompat$Token;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$䆀;->ℓ:Landroid/support/v4/media/session/MediaSessionCompat$Token;

    :cond_2
    return-void
.end method

.method public 䆀()V
    .locals 2

    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$䆀;->䆀:Landroid/support/v4/media/MediaBrowserCompat$㹖;

    if-eqz v0, :cond_0

    iget-object v1, p0, Landroid/support/v4/media/MediaBrowserCompat$䆀;->ᆻ:Landroid/os/Messenger;

    if-eqz v1, :cond_0

    :try_start_0
    invoke-virtual {v0, v1}, Landroid/support/v4/media/MediaBrowserCompat$㹖;->䆀(Landroid/os/Messenger;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, "MediaBrowserCompat"

    const-string v1, "Remote error unregistering client messenger."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$䆀;->䂻:Ljava/lang/Object;

    invoke-static {v0}, L䂻/உ/䂻/䂻/உ;->ḓ(Ljava/lang/Object;)V

    return-void
.end method
