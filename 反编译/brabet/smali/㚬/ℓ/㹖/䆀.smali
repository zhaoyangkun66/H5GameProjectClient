.class public L㚬/ℓ/㹖/䆀;
.super L㚬/ℓ/㹖/ḓ;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "L\u36ac/\u2113/\u3e56/\u1e13<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final 㚬:Ljava/lang/Object;


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0, p1}, L㚬/ℓ/㹖/ḓ;-><init>(I)V

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, L㚬/ℓ/㹖/䆀;->㚬:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public உ(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    iget-object v0, p0, L㚬/ℓ/㹖/䆀;->㚬:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-super {p0, p1}, L㚬/ℓ/㹖/ḓ;->உ(Ljava/lang/Object;)Z

    move-result p1

    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public 䂻()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, L㚬/ℓ/㹖/䆀;->㚬:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-super {p0}, L㚬/ℓ/㹖/ḓ;->䂻()Ljava/lang/Object;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
