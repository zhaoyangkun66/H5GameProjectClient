.class public Landroidx/fragment/app/Fragment$ℓ;
.super L㚬/உ/ḓ/㚬;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/fragment/app/Fragment;->prepareCallInternal(L㚬/உ/ḓ/䆀/உ;L㚬/㚬/உ/㚬/உ;L㚬/உ/ḓ/䂻;)L㚬/உ/ḓ/㚬;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "L\u36ac/\u0b89/\u1e13/\u36ac<",
        "TI;>;"
    }
.end annotation


# instance fields
.field public final synthetic உ:Ljava/util/concurrent/atomic/AtomicReference;

.field public final synthetic 䂻:L㚬/உ/ḓ/䆀/உ;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/Fragment;Ljava/util/concurrent/atomic/AtomicReference;L㚬/உ/ḓ/䆀/உ;)V
    .locals 0

    iput-object p2, p0, Landroidx/fragment/app/Fragment$ℓ;->உ:Ljava/util/concurrent/atomic/AtomicReference;

    iput-object p3, p0, Landroidx/fragment/app/Fragment$ℓ;->䂻:L㚬/உ/ḓ/䆀/உ;

    invoke-direct {p0}, L㚬/உ/ḓ/㚬;-><init>()V

    return-void
.end method


# virtual methods
.method public உ()L㚬/உ/ḓ/䆀/உ;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "L\u36ac/\u0b89/\u1e13/\u4180/\u0b89<",
            "TI;*>;"
        }
    .end annotation

    iget-object v0, p0, Landroidx/fragment/app/Fragment$ℓ;->䂻:L㚬/உ/ḓ/䆀/உ;

    return-object v0
.end method

.method public 㚬(Ljava/lang/Object;L㚬/ℓ/㺴/䂻;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TI;",
            "L\u36ac/\u2113/\u3eb4/\u40bb;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Landroidx/fragment/app/Fragment$ℓ;->உ:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, L㚬/உ/ḓ/㚬;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, L㚬/உ/ḓ/㚬;->㚬(Ljava/lang/Object;L㚬/ℓ/㺴/䂻;)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Operation cannot be started before fragment is in created state"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public 㺴()V
    .locals 2

    iget-object v0, p0, Landroidx/fragment/app/Fragment$ℓ;->உ:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, L㚬/உ/ḓ/㚬;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, L㚬/உ/ḓ/㚬;->㺴()V

    :cond_0
    return-void
.end method
