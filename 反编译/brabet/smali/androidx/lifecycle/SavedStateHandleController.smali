.class public final Landroidx/lifecycle/SavedStateHandleController;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements L㚬/ἥ/䆀;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/lifecycle/SavedStateHandleController$உ;
    }
.end annotation


# instance fields
.field public final உ:Ljava/lang/String;

.field public final 㚬:L㚬/ἥ/ბ;

.field public 䂻:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;L㚬/ἥ/ბ;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/lifecycle/SavedStateHandleController;->䂻:Z

    iput-object p1, p0, Landroidx/lifecycle/SavedStateHandleController;->உ:Ljava/lang/String;

    iput-object p2, p0, Landroidx/lifecycle/SavedStateHandleController;->㚬:L㚬/ἥ/ბ;

    return-void
.end method

.method public static ಫ(Landroidx/savedstate/SavedStateRegistry;L㚬/ἥ/ḓ;Ljava/lang/String;Landroid/os/Bundle;)Landroidx/lifecycle/SavedStateHandleController;
    .locals 1

    invoke-virtual {p0, p2}, Landroidx/savedstate/SavedStateRegistry;->உ(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0, p3}, L㚬/ἥ/ბ;->உ(Landroid/os/Bundle;Landroid/os/Bundle;)L㚬/ἥ/ბ;

    move-result-object p3

    new-instance v0, Landroidx/lifecycle/SavedStateHandleController;

    invoke-direct {v0, p2, p3}, Landroidx/lifecycle/SavedStateHandleController;-><init>(Ljava/lang/String;L㚬/ἥ/ბ;)V

    invoke-virtual {v0, p0, p1}, Landroidx/lifecycle/SavedStateHandleController;->ㄏ(Landroidx/savedstate/SavedStateRegistry;L㚬/ἥ/ḓ;)V

    invoke-static {p0, p1}, Landroidx/lifecycle/SavedStateHandleController;->ἥ(Landroidx/savedstate/SavedStateRegistry;L㚬/ἥ/ḓ;)V

    return-object v0
.end method

.method public static ἥ(Landroidx/savedstate/SavedStateRegistry;L㚬/ἥ/ḓ;)V
    .locals 2

    invoke-virtual {p1}, L㚬/ἥ/ḓ;->䂻()L㚬/ἥ/ḓ$㚬;

    move-result-object v0

    sget-object v1, L㚬/ἥ/ḓ$㚬;->㚬:L㚬/ἥ/ḓ$㚬;

    if-eq v0, v1, :cond_1

    sget-object v1, L㚬/ἥ/ḓ$㚬;->ḓ:L㚬/ἥ/ḓ$㚬;

    invoke-virtual {v0, v1}, L㚬/ἥ/ḓ$㚬;->உ(L㚬/ἥ/ḓ$㚬;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Landroidx/lifecycle/SavedStateHandleController$1;

    invoke-direct {v0, p1, p0}, Landroidx/lifecycle/SavedStateHandleController$1;-><init>(L㚬/ἥ/ḓ;Landroidx/savedstate/SavedStateRegistry;)V

    invoke-virtual {p1, v0}, L㚬/ἥ/ḓ;->உ(L㚬/ἥ/ᆻ;)V

    goto :goto_1

    :cond_1
    :goto_0
    const-class p1, Landroidx/lifecycle/SavedStateHandleController$உ;

    invoke-virtual {p0, p1}, Landroidx/savedstate/SavedStateRegistry;->ḓ(Ljava/lang/Class;)V

    :goto_1
    return-void
.end method

.method public static ℓ(L㚬/ἥ/㞘;Landroidx/savedstate/SavedStateRegistry;L㚬/ἥ/ḓ;)V
    .locals 1

    const-string v0, "androidx.lifecycle.savedstate.vm.tag"

    invoke-virtual {p0, v0}, L㚬/ἥ/㞘;->㚬(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/lifecycle/SavedStateHandleController;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroidx/lifecycle/SavedStateHandleController;->㹖()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1, p2}, Landroidx/lifecycle/SavedStateHandleController;->ㄏ(Landroidx/savedstate/SavedStateRegistry;L㚬/ἥ/ḓ;)V

    invoke-static {p1, p2}, Landroidx/lifecycle/SavedStateHandleController;->ἥ(Landroidx/savedstate/SavedStateRegistry;L㚬/ἥ/ḓ;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public ㄏ(Landroidx/savedstate/SavedStateRegistry;L㚬/ἥ/ḓ;)V
    .locals 1

    iget-boolean v0, p0, Landroidx/lifecycle/SavedStateHandleController;->䂻:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/lifecycle/SavedStateHandleController;->䂻:Z

    invoke-virtual {p2, p0}, L㚬/ἥ/ḓ;->உ(L㚬/ἥ/ᆻ;)V

    iget-object p2, p0, Landroidx/lifecycle/SavedStateHandleController;->உ:Ljava/lang/String;

    iget-object v0, p0, Landroidx/lifecycle/SavedStateHandleController;->㚬:L㚬/ἥ/ბ;

    invoke-virtual {v0}, L㚬/ἥ/ბ;->䂻()Landroidx/savedstate/SavedStateRegistry$䂻;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Landroidx/savedstate/SavedStateRegistry;->㺴(Ljava/lang/String;Landroidx/savedstate/SavedStateRegistry$䂻;)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Already attached to lifecycleOwner"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public 㧦()L㚬/ἥ/ბ;
    .locals 1

    iget-object v0, p0, Landroidx/lifecycle/SavedStateHandleController;->㚬:L㚬/ἥ/ბ;

    return-object v0
.end method

.method public 㹖()Z
    .locals 1

    iget-boolean v0, p0, Landroidx/lifecycle/SavedStateHandleController;->䂻:Z

    return v0
.end method

.method public 㺴(L㚬/ἥ/ℓ;L㚬/ἥ/ḓ$䂻;)V
    .locals 1

    sget-object v0, L㚬/ἥ/ḓ$䂻;->ON_DESTROY:L㚬/ἥ/ḓ$䂻;

    if-ne p2, v0, :cond_0

    const/4 p2, 0x0

    iput-boolean p2, p0, Landroidx/lifecycle/SavedStateHandleController;->䂻:Z

    invoke-interface {p1}, L㚬/ἥ/ℓ;->getLifecycle()L㚬/ἥ/ḓ;

    move-result-object p1

    invoke-virtual {p1, p0}, L㚬/ἥ/ḓ;->㚬(L㚬/ἥ/ᆻ;)V

    :cond_0
    return-void
.end method
