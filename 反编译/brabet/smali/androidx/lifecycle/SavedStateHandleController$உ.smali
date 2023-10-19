.class public final Landroidx/lifecycle/SavedStateHandleController$உ;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroidx/savedstate/SavedStateRegistry$உ;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/lifecycle/SavedStateHandleController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "\u0b89"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public உ(L㚬/㞘/㚬;)V
    .locals 5

    instance-of v0, p1, L㚬/ἥ/㖪;

    if-eqz v0, :cond_2

    move-object v0, p1

    check-cast v0, L㚬/ἥ/㖪;

    invoke-interface {v0}, L㚬/ἥ/㖪;->getViewModelStore()L㚬/ἥ/ḙ;

    move-result-object v0

    invoke-interface {p1}, L㚬/㞘/㚬;->getSavedStateRegistry()Landroidx/savedstate/SavedStateRegistry;

    move-result-object v1

    invoke-virtual {v0}, L㚬/ἥ/ḙ;->㚬()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, L㚬/ἥ/ḙ;->䂻(Ljava/lang/String;)L㚬/ἥ/㞘;

    move-result-object v3

    invoke-interface {p1}, L㚬/ἥ/ℓ;->getLifecycle()L㚬/ἥ/ḓ;

    move-result-object v4

    invoke-static {v3, v1, v4}, Landroidx/lifecycle/SavedStateHandleController;->ℓ(L㚬/ἥ/㞘;Landroidx/savedstate/SavedStateRegistry;L㚬/ἥ/ḓ;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, L㚬/ἥ/ḙ;->㚬()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    const-class p1, Landroidx/lifecycle/SavedStateHandleController$உ;

    invoke-virtual {v1, p1}, Landroidx/savedstate/SavedStateRegistry;->ḓ(Ljava/lang/Class;)V

    :cond_1
    return-void

    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Internal error: OnRecreation should be registered only on componentsthat implement ViewModelStoreOwner"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
