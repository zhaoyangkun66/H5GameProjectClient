.class public Landroidx/lifecycle/LiveData$LifecycleBoundObserver;
.super Landroidx/lifecycle/LiveData$䂻;
.source ""

# interfaces
.implements L㚬/ἥ/䆀;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/lifecycle/LiveData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LifecycleBoundObserver"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/lifecycle/LiveData<",
        "TT;>.\u40bb;",
        "L\u36ac/\u1f25/\u4180;"
    }
.end annotation


# instance fields
.field public final ḓ:L㚬/ἥ/ℓ;

.field public final synthetic 䆀:Landroidx/lifecycle/LiveData;


# direct methods
.method public constructor <init>(Landroidx/lifecycle/LiveData;L㚬/ἥ/ℓ;L㚬/ἥ/ཇ;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "L\u36ac/\u1f25/\u2113;",
            "L\u36ac/\u1f25/\u0f47<",
            "-TT;>;)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/lifecycle/LiveData$LifecycleBoundObserver;->䆀:Landroidx/lifecycle/LiveData;

    invoke-direct {p0, p1, p3}, Landroidx/lifecycle/LiveData$䂻;-><init>(Landroidx/lifecycle/LiveData;L㚬/ἥ/ཇ;)V

    iput-object p2, p0, Landroidx/lifecycle/LiveData$LifecycleBoundObserver;->ḓ:L㚬/ἥ/ℓ;

    return-void
.end method


# virtual methods
.method public ಫ(L㚬/ἥ/ℓ;)Z
    .locals 1

    iget-object v0, p0, Landroidx/lifecycle/LiveData$LifecycleBoundObserver;->ḓ:L㚬/ἥ/ℓ;

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public ㄏ()V
    .locals 1

    iget-object v0, p0, Landroidx/lifecycle/LiveData$LifecycleBoundObserver;->ḓ:L㚬/ἥ/ℓ;

    invoke-interface {v0}, L㚬/ἥ/ℓ;->getLifecycle()L㚬/ἥ/ḓ;

    move-result-object v0

    invoke-virtual {v0, p0}, L㚬/ἥ/ḓ;->㚬(L㚬/ἥ/ᆻ;)V

    return-void
.end method

.method public 㧦()Z
    .locals 2

    iget-object v0, p0, Landroidx/lifecycle/LiveData$LifecycleBoundObserver;->ḓ:L㚬/ἥ/ℓ;

    invoke-interface {v0}, L㚬/ἥ/ℓ;->getLifecycle()L㚬/ἥ/ḓ;

    move-result-object v0

    invoke-virtual {v0}, L㚬/ἥ/ḓ;->䂻()L㚬/ἥ/ḓ$㚬;

    move-result-object v0

    sget-object v1, L㚬/ἥ/ḓ$㚬;->ḓ:L㚬/ἥ/ḓ$㚬;

    invoke-virtual {v0, v1}, L㚬/ἥ/ḓ$㚬;->உ(L㚬/ἥ/ḓ$㚬;)Z

    move-result v0

    return v0
.end method

.method public 㺴(L㚬/ἥ/ℓ;L㚬/ἥ/ḓ$䂻;)V
    .locals 1

    iget-object p1, p0, Landroidx/lifecycle/LiveData$LifecycleBoundObserver;->ḓ:L㚬/ἥ/ℓ;

    invoke-interface {p1}, L㚬/ἥ/ℓ;->getLifecycle()L㚬/ἥ/ḓ;

    move-result-object p1

    invoke-virtual {p1}, L㚬/ἥ/ḓ;->䂻()L㚬/ἥ/ḓ$㚬;

    move-result-object p1

    sget-object p2, L㚬/ἥ/ḓ$㚬;->䂻:L㚬/ἥ/ḓ$㚬;

    if-ne p1, p2, :cond_0

    iget-object p1, p0, Landroidx/lifecycle/LiveData$LifecycleBoundObserver;->䆀:Landroidx/lifecycle/LiveData;

    iget-object p2, p0, Landroidx/lifecycle/LiveData$䂻;->உ:L㚬/ἥ/ཇ;

    invoke-virtual {p1, p2}, Landroidx/lifecycle/LiveData;->ㄏ(L㚬/ἥ/ཇ;)V

    return-void

    :cond_0
    const/4 p2, 0x0

    :goto_0
    if-eq p2, p1, :cond_1

    invoke-virtual {p0}, Landroidx/lifecycle/LiveData$LifecycleBoundObserver;->㧦()Z

    move-result p2

    invoke-virtual {p0, p2}, Landroidx/lifecycle/LiveData$䂻;->ℓ(Z)V

    iget-object p2, p0, Landroidx/lifecycle/LiveData$LifecycleBoundObserver;->ḓ:L㚬/ἥ/ℓ;

    invoke-interface {p2}, L㚬/ἥ/ℓ;->getLifecycle()L㚬/ἥ/ḓ;

    move-result-object p2

    invoke-virtual {p2}, L㚬/ἥ/ḓ;->䂻()L㚬/ἥ/ḓ$㚬;

    move-result-object p2

    move-object v0, p2

    move-object p2, p1

    move-object p1, v0

    goto :goto_0

    :cond_1
    return-void
.end method
