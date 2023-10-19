.class public final L㚬/㞘/䂻;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final உ:L㚬/㞘/㚬;

.field public final 䂻:Landroidx/savedstate/SavedStateRegistry;


# direct methods
.method public constructor <init>(L㚬/㞘/㚬;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, L㚬/㞘/䂻;->உ:L㚬/㞘/㚬;

    new-instance p1, Landroidx/savedstate/SavedStateRegistry;

    invoke-direct {p1}, Landroidx/savedstate/SavedStateRegistry;-><init>()V

    iput-object p1, p0, L㚬/㞘/䂻;->䂻:Landroidx/savedstate/SavedStateRegistry;

    return-void
.end method

.method public static உ(L㚬/㞘/㚬;)L㚬/㞘/䂻;
    .locals 1

    new-instance v0, L㚬/㞘/䂻;

    invoke-direct {v0, p0}, L㚬/㞘/䂻;-><init>(L㚬/㞘/㚬;)V

    return-object v0
.end method


# virtual methods
.method public 㚬(Landroid/os/Bundle;)V
    .locals 3

    iget-object v0, p0, L㚬/㞘/䂻;->உ:L㚬/㞘/㚬;

    invoke-interface {v0}, L㚬/ἥ/ℓ;->getLifecycle()L㚬/ἥ/ḓ;

    move-result-object v0

    invoke-virtual {v0}, L㚬/ἥ/ḓ;->䂻()L㚬/ἥ/ḓ$㚬;

    move-result-object v1

    sget-object v2, L㚬/ἥ/ḓ$㚬;->㚬:L㚬/ἥ/ḓ$㚬;

    if-ne v1, v2, :cond_0

    new-instance v1, Landroidx/savedstate/Recreator;

    iget-object v2, p0, L㚬/㞘/䂻;->உ:L㚬/㞘/㚬;

    invoke-direct {v1, v2}, Landroidx/savedstate/Recreator;-><init>(L㚬/㞘/㚬;)V

    invoke-virtual {v0, v1}, L㚬/ἥ/ḓ;->உ(L㚬/ἥ/ᆻ;)V

    iget-object v1, p0, L㚬/㞘/䂻;->䂻:Landroidx/savedstate/SavedStateRegistry;

    invoke-virtual {v1, v0, p1}, Landroidx/savedstate/SavedStateRegistry;->䂻(L㚬/ἥ/ḓ;Landroid/os/Bundle;)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Restarter must be created only during owner\'s initialization stage"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public 㺴(Landroid/os/Bundle;)V
    .locals 1

    iget-object v0, p0, L㚬/㞘/䂻;->䂻:Landroidx/savedstate/SavedStateRegistry;

    invoke-virtual {v0, p1}, Landroidx/savedstate/SavedStateRegistry;->㚬(Landroid/os/Bundle;)V

    return-void
.end method

.method public 䂻()Landroidx/savedstate/SavedStateRegistry;
    .locals 1

    iget-object v0, p0, L㚬/㞘/䂻;->䂻:Landroidx/savedstate/SavedStateRegistry;

    return-object v0
.end method
