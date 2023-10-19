.class public Landroidx/lifecycle/CompositeGeneratedAdaptersObserver;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements L㚬/ἥ/䆀;


# instance fields
.field public final உ:[L㚬/ἥ/㺴;


# direct methods
.method public constructor <init>([L㚬/ἥ/㺴;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/lifecycle/CompositeGeneratedAdaptersObserver;->உ:[L㚬/ἥ/㺴;

    return-void
.end method


# virtual methods
.method public 㺴(L㚬/ἥ/ℓ;L㚬/ἥ/ḓ$䂻;)V
    .locals 6

    new-instance v0, L㚬/ἥ/㹖;

    invoke-direct {v0}, L㚬/ἥ/㹖;-><init>()V

    iget-object v1, p0, Landroidx/lifecycle/CompositeGeneratedAdaptersObserver;->உ:[L㚬/ἥ/㺴;

    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_0

    aget-object v5, v1, v4

    invoke-interface {v5, p1, p2, v3, v0}, L㚬/ἥ/㺴;->உ(L㚬/ἥ/ℓ;L㚬/ἥ/ḓ$䂻;ZL㚬/ἥ/㹖;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Landroidx/lifecycle/CompositeGeneratedAdaptersObserver;->உ:[L㚬/ἥ/㺴;

    array-length v2, v1

    :goto_1
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    const/4 v5, 0x1

    invoke-interface {v4, p1, p2, v5, v0}, L㚬/ἥ/㺴;->உ(L㚬/ἥ/ℓ;L㚬/ἥ/ḓ$䂻;ZL㚬/ἥ/㹖;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method
