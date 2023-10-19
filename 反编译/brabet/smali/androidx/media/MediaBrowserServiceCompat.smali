.class public abstract Landroidx/media/MediaBrowserServiceCompat;
.super Landroid/app/Service;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media/MediaBrowserServiceCompat$ḓ;,
        Landroidx/media/MediaBrowserServiceCompat$ბ;,
        Landroidx/media/MediaBrowserServiceCompat$ᓭ;,
        Landroidx/media/MediaBrowserServiceCompat$ཇ;,
        Landroidx/media/MediaBrowserServiceCompat$ἥ;,
        Landroidx/media/MediaBrowserServiceCompat$䆀;,
        Landroidx/media/MediaBrowserServiceCompat$㲝;,
        Landroidx/media/MediaBrowserServiceCompat$㧦;,
        Landroidx/media/MediaBrowserServiceCompat$ಫ;,
        Landroidx/media/MediaBrowserServiceCompat$ㄏ;,
        Landroidx/media/MediaBrowserServiceCompat$ℓ;,
        Landroidx/media/MediaBrowserServiceCompat$㹖;,
        Landroidx/media/MediaBrowserServiceCompat$ᆻ;
    }
.end annotation


# static fields
.field public static final ᆻ:Z


# instance fields
.field public final ḓ:Landroidx/media/MediaBrowserServiceCompat$㲝;

.field public final 㚬:L㚬/䆀/உ;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "L\u36ac/\u4180/\u0b89<",
            "Landroid/os/IBinder;",
            "Landroidx/media/MediaBrowserServiceCompat$\u4180;",
            ">;"
        }
    .end annotation
.end field

.field public 㺴:Landroidx/media/MediaBrowserServiceCompat$䆀;

.field public 䂻:Landroidx/media/MediaBrowserServiceCompat$ᆻ;

.field public 䆀:Landroid/support/v4/media/session/MediaSessionCompat$Token;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const-string v0, "MBServiceCompat"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Landroidx/media/MediaBrowserServiceCompat;->ᆻ:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    new-instance v0, L㚬/䆀/உ;

    invoke-direct {v0}, L㚬/䆀/உ;-><init>()V

    iput-object v0, p0, Landroidx/media/MediaBrowserServiceCompat;->㚬:L㚬/䆀/உ;

    new-instance v0, Landroidx/media/MediaBrowserServiceCompat$㲝;

    invoke-direct {v0, p0}, Landroidx/media/MediaBrowserServiceCompat$㲝;-><init>(Landroidx/media/MediaBrowserServiceCompat;)V

    iput-object v0, p0, Landroidx/media/MediaBrowserServiceCompat;->ḓ:Landroidx/media/MediaBrowserServiceCompat$㲝;

    return-void
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Landroidx/media/MediaBrowserServiceCompat;->䂻:Landroidx/media/MediaBrowserServiceCompat$ᆻ;

    invoke-interface {v0, p1}, Landroidx/media/MediaBrowserServiceCompat$ᆻ;->ḓ(Landroid/content/Intent;)Landroid/os/IBinder;

    move-result-object p1

    return-object p1
.end method

.method public onCreate()V
    .locals 2

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_0

    new-instance v0, Landroidx/media/MediaBrowserServiceCompat$㧦;

    invoke-direct {v0, p0}, Landroidx/media/MediaBrowserServiceCompat$㧦;-><init>(Landroidx/media/MediaBrowserServiceCompat;)V

    :goto_0
    iput-object v0, p0, Landroidx/media/MediaBrowserServiceCompat;->䂻:Landroidx/media/MediaBrowserServiceCompat$ᆻ;

    goto :goto_1

    :cond_0
    const/16 v1, 0x1a

    if-lt v0, v1, :cond_1

    new-instance v0, Landroidx/media/MediaBrowserServiceCompat$ಫ;

    invoke-direct {v0, p0}, Landroidx/media/MediaBrowserServiceCompat$ಫ;-><init>(Landroidx/media/MediaBrowserServiceCompat;)V

    goto :goto_0

    :cond_1
    const/16 v1, 0x17

    if-lt v0, v1, :cond_2

    new-instance v0, Landroidx/media/MediaBrowserServiceCompat$ㄏ;

    invoke-direct {v0, p0}, Landroidx/media/MediaBrowserServiceCompat$ㄏ;-><init>(Landroidx/media/MediaBrowserServiceCompat;)V

    goto :goto_0

    :cond_2
    const/16 v1, 0x15

    if-lt v0, v1, :cond_3

    new-instance v0, Landroidx/media/MediaBrowserServiceCompat$ℓ;

    invoke-direct {v0, p0}, Landroidx/media/MediaBrowserServiceCompat$ℓ;-><init>(Landroidx/media/MediaBrowserServiceCompat;)V

    goto :goto_0

    :cond_3
    new-instance v0, Landroidx/media/MediaBrowserServiceCompat$㹖;

    invoke-direct {v0, p0}, Landroidx/media/MediaBrowserServiceCompat$㹖;-><init>(Landroidx/media/MediaBrowserServiceCompat;)V

    goto :goto_0

    :goto_1
    iget-object v0, p0, Landroidx/media/MediaBrowserServiceCompat;->䂻:Landroidx/media/MediaBrowserServiceCompat$ᆻ;

    invoke-interface {v0}, Landroidx/media/MediaBrowserServiceCompat$ᆻ;->உ()V

    return-void
.end method

.method public உ(Ljava/lang/String;Landroidx/media/MediaBrowserServiceCompat$䆀;Landroid/os/IBinder;Landroid/os/Bundle;)V
    .locals 4

    iget-object v0, p2, Landroidx/media/MediaBrowserServiceCompat$䆀;->㚬:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, L㚬/ℓ/㹖/㚬;

    iget-object v3, v2, L㚬/ℓ/㹖/㚬;->உ:Ljava/lang/Object;

    if-ne p3, v3, :cond_1

    iget-object v2, v2, L㚬/ℓ/㹖/㚬;->䂻:Ljava/lang/Object;

    check-cast v2, Landroid/os/Bundle;

    invoke-static {p4, v2}, L㚬/ბ/㺴;->உ(Landroid/os/Bundle;Landroid/os/Bundle;)Z

    move-result v2

    if-eqz v2, :cond_1

    return-void

    :cond_2
    new-instance v1, L㚬/ℓ/㹖/㚬;

    invoke-direct {v1, p3, p4}, L㚬/ℓ/㹖/㚬;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p3, p2, Landroidx/media/MediaBrowserServiceCompat$䆀;->㚬:Ljava/util/HashMap;

    invoke-virtual {p3, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p3, 0x0

    invoke-virtual {p0, p1, p2, p4, p3}, Landroidx/media/MediaBrowserServiceCompat;->ἥ(Ljava/lang/String;Landroidx/media/MediaBrowserServiceCompat$䆀;Landroid/os/Bundle;Landroid/os/Bundle;)V

    invoke-virtual {p0, p1, p4}, Landroidx/media/MediaBrowserServiceCompat;->ಫ(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public ಫ(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public ཇ(Ljava/lang/String;Landroidx/media/MediaBrowserServiceCompat$䆀;L䂻/உ/䂻/㚬/䂻;)V
    .locals 1

    new-instance p2, Landroidx/media/MediaBrowserServiceCompat$䂻;

    invoke-direct {p2, p0, p1, p3}, Landroidx/media/MediaBrowserServiceCompat$䂻;-><init>(Landroidx/media/MediaBrowserServiceCompat;Ljava/lang/Object;L䂻/உ/䂻/㚬/䂻;)V

    invoke-virtual {p0, p1, p2}, Landroidx/media/MediaBrowserServiceCompat;->ℓ(Ljava/lang/String;Landroidx/media/MediaBrowserServiceCompat$ἥ;)V

    invoke-virtual {p2}, Landroidx/media/MediaBrowserServiceCompat$ἥ;->䂻()Z

    move-result p2

    if-eqz p2, :cond_0

    return-void

    :cond_0
    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onLoadItem must call detach() or sendResult() before returning for id="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public ბ(Ljava/lang/String;Landroidx/media/MediaBrowserServiceCompat$䆀;Landroid/os/IBinder;)Z
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p3, :cond_1

    :try_start_0
    iget-object p2, p2, Landroidx/media/MediaBrowserServiceCompat$䆀;->㚬:Ljava/util/HashMap;

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Landroidx/media/MediaBrowserServiceCompat;->㧦(Ljava/lang/String;)V

    return v0

    :cond_1
    :try_start_1
    iget-object v2, p2, Landroidx/media/MediaBrowserServiceCompat$䆀;->㚬:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    if-eqz v2, :cond_4

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, L㚬/ℓ/㹖/㚬;

    iget-object v4, v4, L㚬/ℓ/㹖/㚬;->உ:Ljava/lang/Object;

    if-ne p3, v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    const/4 v1, 0x1

    goto :goto_1

    :cond_3
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result p3

    if-nez p3, :cond_4

    iget-object p2, p2, Landroidx/media/MediaBrowserServiceCompat$䆀;->㚬:Ljava/util/HashMap;

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_4
    invoke-virtual {p0, p1}, Landroidx/media/MediaBrowserServiceCompat;->㧦(Ljava/lang/String;)V

    return v1

    :catchall_0
    move-exception p2

    invoke-virtual {p0, p1}, Landroidx/media/MediaBrowserServiceCompat;->㧦(Ljava/lang/String;)V

    throw p2
.end method

.method public ᆻ(Ljava/lang/String;Landroidx/media/MediaBrowserServiceCompat$ἥ;Landroid/os/Bundle;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroidx/media/MediaBrowserServiceCompat$\u1f25<",
            "Ljava/util/List<",
            "Landroid/support/v4/media/MediaBrowserCompat$MediaItem;",
            ">;>;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    const/4 p3, 0x1

    invoke-virtual {p2, p3}, Landroidx/media/MediaBrowserServiceCompat$ἥ;->ᆻ(I)V

    invoke-virtual {p0, p1, p2}, Landroidx/media/MediaBrowserServiceCompat;->䆀(Ljava/lang/String;Landroidx/media/MediaBrowserServiceCompat$ἥ;)V

    return-void
.end method

.method public ᓭ(Ljava/lang/String;Landroid/os/Bundle;Landroidx/media/MediaBrowserServiceCompat$䆀;L䂻/உ/䂻/㚬/䂻;)V
    .locals 0

    new-instance p3, Landroidx/media/MediaBrowserServiceCompat$㚬;

    invoke-direct {p3, p0, p1, p4}, Landroidx/media/MediaBrowserServiceCompat$㚬;-><init>(Landroidx/media/MediaBrowserServiceCompat;Ljava/lang/Object;L䂻/உ/䂻/㚬/䂻;)V

    invoke-virtual {p0, p1, p2, p3}, Landroidx/media/MediaBrowserServiceCompat;->ㄏ(Ljava/lang/String;Landroid/os/Bundle;Landroidx/media/MediaBrowserServiceCompat$ἥ;)V

    invoke-virtual {p3}, Landroidx/media/MediaBrowserServiceCompat$ἥ;->䂻()Z

    move-result p2

    if-eqz p2, :cond_0

    return-void

    :cond_0
    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "onSearch must call detach() or sendResult() before returning for query="

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public abstract ḓ(Ljava/lang/String;ILandroid/os/Bundle;)Landroidx/media/MediaBrowserServiceCompat$ḓ;
.end method

.method public ἥ(Ljava/lang/String;Landroidx/media/MediaBrowserServiceCompat$䆀;Landroid/os/Bundle;Landroid/os/Bundle;)V
    .locals 8

    new-instance v7, Landroidx/media/MediaBrowserServiceCompat$உ;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p1

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Landroidx/media/MediaBrowserServiceCompat$உ;-><init>(Landroidx/media/MediaBrowserServiceCompat;Ljava/lang/Object;Landroidx/media/MediaBrowserServiceCompat$䆀;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;)V

    if-nez p3, :cond_0

    invoke-virtual {p0, p1, v7}, Landroidx/media/MediaBrowserServiceCompat;->䆀(Ljava/lang/String;Landroidx/media/MediaBrowserServiceCompat$ἥ;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1, v7, p3}, Landroidx/media/MediaBrowserServiceCompat;->ᆻ(Ljava/lang/String;Landroidx/media/MediaBrowserServiceCompat$ἥ;Landroid/os/Bundle;)V

    :goto_0
    invoke-virtual {v7}, Landroidx/media/MediaBrowserServiceCompat$ἥ;->䂻()Z

    move-result p3

    if-eqz p3, :cond_1

    return-void

    :cond_1
    new-instance p3, Ljava/lang/IllegalStateException;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onLoadChildren must call detach() or sendResult() before returning for package="

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p2, Landroidx/media/MediaBrowserServiceCompat$䆀;->உ:Ljava/lang/String;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " id="

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p3
.end method

.method public ℓ(Ljava/lang/String;Landroidx/media/MediaBrowserServiceCompat$ἥ;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroidx/media/MediaBrowserServiceCompat$\u1f25<",
            "Landroid/support/v4/media/MediaBrowserCompat$MediaItem;",
            ">;)V"
        }
    .end annotation

    const/4 p1, 0x2

    invoke-virtual {p2, p1}, Landroidx/media/MediaBrowserServiceCompat$ἥ;->ᆻ(I)V

    const/4 p1, 0x0

    invoke-virtual {p2, p1}, Landroidx/media/MediaBrowserServiceCompat$ἥ;->䆀(Ljava/lang/Object;)V

    return-void
.end method

.method public ㄏ(Ljava/lang/String;Landroid/os/Bundle;Landroidx/media/MediaBrowserServiceCompat$ἥ;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            "Landroidx/media/MediaBrowserServiceCompat$\u1f25<",
            "Ljava/util/List<",
            "Landroid/support/v4/media/MediaBrowserCompat$MediaItem;",
            ">;>;)V"
        }
    .end annotation

    const/4 p1, 0x4

    invoke-virtual {p3, p1}, Landroidx/media/MediaBrowserServiceCompat$ἥ;->ᆻ(I)V

    const/4 p1, 0x0

    invoke-virtual {p3, p1}, Landroidx/media/MediaBrowserServiceCompat$ἥ;->䆀(Ljava/lang/Object;)V

    return-void
.end method

.method public 㚬(Ljava/lang/String;I)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/app/Service;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object p2

    array-length v1, p2

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, p2, v2

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method public 㧦(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public 㹖(Ljava/lang/String;Landroid/os/Bundle;Landroidx/media/MediaBrowserServiceCompat$䆀;L䂻/உ/䂻/㚬/䂻;)V
    .locals 1

    new-instance p3, Landroidx/media/MediaBrowserServiceCompat$㺴;

    invoke-direct {p3, p0, p1, p4}, Landroidx/media/MediaBrowserServiceCompat$㺴;-><init>(Landroidx/media/MediaBrowserServiceCompat;Ljava/lang/Object;L䂻/உ/䂻/㚬/䂻;)V

    invoke-virtual {p0, p1, p2, p3}, Landroidx/media/MediaBrowserServiceCompat;->㺴(Ljava/lang/String;Landroid/os/Bundle;Landroidx/media/MediaBrowserServiceCompat$ἥ;)V

    invoke-virtual {p3}, Landroidx/media/MediaBrowserServiceCompat$ἥ;->䂻()Z

    move-result p3

    if-eqz p3, :cond_0

    return-void

    :cond_0
    new-instance p3, Ljava/lang/IllegalStateException;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onCustomAction must call detach() or sendResult() or sendError() before returning for action="

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " extras="

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p3
.end method

.method public 㺴(Ljava/lang/String;Landroid/os/Bundle;Landroidx/media/MediaBrowserServiceCompat$ἥ;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            "Landroidx/media/MediaBrowserServiceCompat$\u1f25<",
            "Landroid/os/Bundle;",
            ">;)V"
        }
    .end annotation

    const/4 p1, 0x0

    invoke-virtual {p3, p1}, Landroidx/media/MediaBrowserServiceCompat$ἥ;->ḓ(Landroid/os/Bundle;)V

    return-void
.end method

.method public 䂻(Ljava/util/List;Landroid/os/Bundle;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/support/v4/media/MediaBrowserCompat$MediaItem;",
            ">;",
            "Landroid/os/Bundle;",
            ")",
            "Ljava/util/List<",
            "Landroid/support/v4/media/MediaBrowserCompat$MediaItem;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const-string v0, "android.media.browse.extra.PAGE"

    const/4 v1, -0x1

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    const-string v2, "android.media.browse.extra.PAGE_SIZE"

    invoke-virtual {p2, v2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p2

    if-ne v0, v1, :cond_1

    if-ne p2, v1, :cond_1

    return-object p1

    :cond_1
    mul-int v1, p2, v0

    add-int v2, v1, p2

    if-ltz v0, :cond_4

    const/4 v0, 0x1

    if-lt p2, v0, :cond_4

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    if-lt v1, p2, :cond_2

    goto :goto_0

    :cond_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    if-le v2, p2, :cond_3

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    :cond_3
    invoke-interface {p1, v1, v2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p1

    return-object p1

    :cond_4
    :goto_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public abstract 䆀(Ljava/lang/String;Landroidx/media/MediaBrowserServiceCompat$ἥ;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroidx/media/MediaBrowserServiceCompat$\u1f25<",
            "Ljava/util/List<",
            "Landroid/support/v4/media/MediaBrowserCompat$MediaItem;",
            ">;>;)V"
        }
    .end annotation
.end method
