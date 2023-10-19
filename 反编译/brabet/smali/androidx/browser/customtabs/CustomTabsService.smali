.class public abstract Landroidx/browser/customtabs/CustomTabsService;
.super Landroid/app/Service;
.source ""


# instance fields
.field public 㚬:L䂻/உ/உ/䂻$உ;

.field public final 䂻:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/os/IBinder;",
            "Landroid/os/IBinder$DeathRecipient;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    new-instance v0, L㚬/䆀/உ;

    invoke-direct {v0}, L㚬/䆀/உ;-><init>()V

    iput-object v0, p0, Landroidx/browser/customtabs/CustomTabsService;->䂻:Ljava/util/Map;

    new-instance v0, Landroidx/browser/customtabs/CustomTabsService$உ;

    invoke-direct {v0, p0}, Landroidx/browser/customtabs/CustomTabsService$உ;-><init>(Landroidx/browser/customtabs/CustomTabsService;)V

    iput-object v0, p0, Landroidx/browser/customtabs/CustomTabsService;->㚬:L䂻/உ/உ/䂻$உ;

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    iget-object p1, p0, Landroidx/browser/customtabs/CustomTabsService;->㚬:L䂻/உ/உ/䂻$உ;

    return-object p1
.end method

.method public உ(L㚬/㺴/䂻/䆀;)Z
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Landroidx/browser/customtabs/CustomTabsService;->䂻:Ljava/util/Map;

    monitor-enter v1
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {p1}, L㚬/㺴/䂻/䆀;->உ()Landroid/os/IBinder;

    move-result-object p1

    iget-object v2, p0, Landroidx/browser/customtabs/CustomTabsService;->䂻:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/IBinder$DeathRecipient;

    invoke-interface {p1, v2, v0}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    iget-object v2, p0, Landroidx/browser/customtabs/CustomTabsService;->䂻:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v1

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p1
    :try_end_2
    .catch Ljava/util/NoSuchElementException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    return v0
.end method

.method public abstract ᆻ(L㚬/㺴/䂻/䆀;Landroid/os/Bundle;)Z
.end method

.method public abstract ḓ(L㚬/㺴/䂻/䆀;Ljava/lang/String;Landroid/os/Bundle;)I
.end method

.method public abstract ℓ(L㚬/㺴/䂻/䆀;ILandroid/net/Uri;Landroid/os/Bundle;)Z
.end method

.method public abstract ㄏ(J)Z
.end method

.method public abstract 㚬(L㚬/㺴/䂻/䆀;Landroid/net/Uri;Landroid/os/Bundle;Ljava/util/List;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "L\u36ac/\u3eb4/\u40bb/\u4180;",
            "Landroid/net/Uri;",
            "Landroid/os/Bundle;",
            "Ljava/util/List<",
            "Landroid/os/Bundle;",
            ">;)Z"
        }
    .end annotation
.end method

.method public abstract 㺴(L㚬/㺴/䂻/䆀;)Z
.end method

.method public abstract 䂻(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
.end method

.method public abstract 䆀(L㚬/㺴/䂻/䆀;Landroid/net/Uri;)Z
.end method
