.class public Landroidx/browser/customtabs/CustomTabsService$உ;
.super L䂻/உ/உ/䂻$உ;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/browser/customtabs/CustomTabsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic உ:Landroidx/browser/customtabs/CustomTabsService;


# direct methods
.method public constructor <init>(Landroidx/browser/customtabs/CustomTabsService;)V
    .locals 0

    iput-object p1, p0, Landroidx/browser/customtabs/CustomTabsService$உ;->உ:Landroidx/browser/customtabs/CustomTabsService;

    invoke-direct {p0}, L䂻/உ/உ/䂻$உ;-><init>()V

    return-void
.end method


# virtual methods
.method public ม(J)Z
    .locals 1

    iget-object v0, p0, Landroidx/browser/customtabs/CustomTabsService$உ;->உ:Landroidx/browser/customtabs/CustomTabsService;

    invoke-virtual {v0, p1, p2}, Landroidx/browser/customtabs/CustomTabsService;->ㄏ(J)Z

    move-result p1

    return p1
.end method

.method public ཇ(L䂻/உ/உ/உ;)Z
    .locals 5

    new-instance v0, L㚬/㺴/䂻/䆀;

    invoke-direct {v0, p1}, L㚬/㺴/䂻/䆀;-><init>(L䂻/உ/உ/உ;)V

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Landroidx/browser/customtabs/CustomTabsService$உ$உ;

    invoke-direct {v2, p0, v0}, Landroidx/browser/customtabs/CustomTabsService$உ$உ;-><init>(Landroidx/browser/customtabs/CustomTabsService$உ;L㚬/㺴/䂻/䆀;)V

    iget-object v3, p0, Landroidx/browser/customtabs/CustomTabsService$உ;->உ:Landroidx/browser/customtabs/CustomTabsService;

    iget-object v3, v3, Landroidx/browser/customtabs/CustomTabsService;->䂻:Ljava/util/Map;

    monitor-enter v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-interface {p1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-interface {v4, v2, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    iget-object v4, p0, Landroidx/browser/customtabs/CustomTabsService$உ;->உ:Landroidx/browser/customtabs/CustomTabsService;

    iget-object v4, v4, Landroidx/browser/customtabs/CustomTabsService;->䂻:Ljava/util/Map;

    invoke-interface {p1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-interface {v4, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object p1, p0, Landroidx/browser/customtabs/CustomTabsService$உ;->உ:Landroidx/browser/customtabs/CustomTabsService;

    invoke-virtual {p1, v0}, Landroidx/browser/customtabs/CustomTabsService;->㺴(L㚬/㺴/䂻/䆀;)Z

    move-result p1
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    return p1

    :catchall_0
    move-exception p1

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p1
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    return v1
.end method

.method public ბ(L䂻/உ/உ/உ;ILandroid/net/Uri;Landroid/os/Bundle;)Z
    .locals 2

    iget-object v0, p0, Landroidx/browser/customtabs/CustomTabsService$உ;->உ:Landroidx/browser/customtabs/CustomTabsService;

    new-instance v1, L㚬/㺴/䂻/䆀;

    invoke-direct {v1, p1}, L㚬/㺴/䂻/䆀;-><init>(L䂻/உ/உ/உ;)V

    invoke-virtual {v0, v1, p2, p3, p4}, Landroidx/browser/customtabs/CustomTabsService;->ℓ(L㚬/㺴/䂻/䆀;ILandroid/net/Uri;Landroid/os/Bundle;)Z

    move-result p1

    return p1
.end method

.method public ᆻ(L䂻/உ/உ/உ;Landroid/net/Uri;)Z
    .locals 2

    iget-object v0, p0, Landroidx/browser/customtabs/CustomTabsService$உ;->உ:Landroidx/browser/customtabs/CustomTabsService;

    new-instance v1, L㚬/㺴/䂻/䆀;

    invoke-direct {v1, p1}, L㚬/㺴/䂻/䆀;-><init>(L䂻/உ/உ/உ;)V

    invoke-virtual {v0, v1, p2}, Landroidx/browser/customtabs/CustomTabsService;->䆀(L㚬/㺴/䂻/䆀;Landroid/net/Uri;)Z

    move-result p1

    return p1
.end method

.method public ἥ(L䂻/உ/உ/உ;Landroid/net/Uri;Landroid/os/Bundle;Ljava/util/List;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "L\u40bb/\u0b89/\u0b89/\u0b89;",
            "Landroid/net/Uri;",
            "Landroid/os/Bundle;",
            "Ljava/util/List<",
            "Landroid/os/Bundle;",
            ">;)Z"
        }
    .end annotation

    iget-object v0, p0, Landroidx/browser/customtabs/CustomTabsService$உ;->உ:Landroidx/browser/customtabs/CustomTabsService;

    new-instance v1, L㚬/㺴/䂻/䆀;

    invoke-direct {v1, p1}, L㚬/㺴/䂻/䆀;-><init>(L䂻/உ/உ/உ;)V

    invoke-virtual {v0, v1, p2, p3, p4}, Landroidx/browser/customtabs/CustomTabsService;->㚬(L㚬/㺴/䂻/䆀;Landroid/net/Uri;Landroid/os/Bundle;Ljava/util/List;)Z

    move-result p1

    return p1
.end method

.method public ᾦ(L䂻/உ/உ/உ;Landroid/os/Bundle;)Z
    .locals 2

    iget-object v0, p0, Landroidx/browser/customtabs/CustomTabsService$உ;->உ:Landroidx/browser/customtabs/CustomTabsService;

    new-instance v1, L㚬/㺴/䂻/䆀;

    invoke-direct {v1, p1}, L㚬/㺴/䂻/䆀;-><init>(L䂻/உ/உ/உ;)V

    invoke-virtual {v0, v1, p2}, Landroidx/browser/customtabs/CustomTabsService;->ᆻ(L㚬/㺴/䂻/䆀;Landroid/os/Bundle;)Z

    move-result p1

    return p1
.end method

.method public ㄏ(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Landroidx/browser/customtabs/CustomTabsService$உ;->உ:Landroidx/browser/customtabs/CustomTabsService;

    invoke-virtual {v0, p1, p2}, Landroidx/browser/customtabs/CustomTabsService;->䂻(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1
.end method

.method public 㹖(L䂻/உ/உ/உ;Ljava/lang/String;Landroid/os/Bundle;)I
    .locals 2

    iget-object v0, p0, Landroidx/browser/customtabs/CustomTabsService$உ;->உ:Landroidx/browser/customtabs/CustomTabsService;

    new-instance v1, L㚬/㺴/䂻/䆀;

    invoke-direct {v1, p1}, L㚬/㺴/䂻/䆀;-><init>(L䂻/உ/உ/உ;)V

    invoke-virtual {v0, v1, p2, p3}, Landroidx/browser/customtabs/CustomTabsService;->ḓ(L㚬/㺴/䂻/䆀;Ljava/lang/String;Landroid/os/Bundle;)I

    move-result p1

    return p1
.end method
