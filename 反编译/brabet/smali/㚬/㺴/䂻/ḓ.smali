.class public final L㚬/㺴/䂻/ḓ;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final உ:L䂻/உ/உ/䂻;

.field public final 㚬:Landroid/content/ComponentName;

.field public final 䂻:L䂻/உ/உ/உ;


# direct methods
.method public constructor <init>(L䂻/உ/உ/䂻;L䂻/உ/உ/உ;Landroid/content/ComponentName;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, L㚬/㺴/䂻/ḓ;->உ:L䂻/உ/உ/䂻;

    iput-object p2, p0, L㚬/㺴/䂻/ḓ;->䂻:L䂻/உ/உ/உ;

    iput-object p3, p0, L㚬/㺴/䂻/ḓ;->㚬:Landroid/content/ComponentName;

    return-void
.end method


# virtual methods
.method public உ()Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, L㚬/㺴/䂻/ḓ;->䂻:L䂻/உ/உ/உ;

    invoke-interface {v0}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public 㚬(Landroid/net/Uri;Landroid/os/Bundle;Ljava/util/List;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Landroid/os/Bundle;",
            "Ljava/util/List<",
            "Landroid/os/Bundle;",
            ">;)Z"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, L㚬/㺴/䂻/ḓ;->உ:L䂻/உ/உ/䂻;

    iget-object v1, p0, L㚬/㺴/䂻/ḓ;->䂻:L䂻/உ/உ/உ;

    invoke-interface {v0, v1, p1, p2, p3}, L䂻/உ/உ/䂻;->ἥ(L䂻/உ/உ/உ;Landroid/net/Uri;Landroid/os/Bundle;Ljava/util/List;)Z

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    const/4 p1, 0x0

    return p1
.end method

.method public 䂻()Landroid/content/ComponentName;
    .locals 1

    iget-object v0, p0, L㚬/㺴/䂻/ḓ;->㚬:Landroid/content/ComponentName;

    return-object v0
.end method
