.class public Landroidx/viewpager2/adapter/FragmentStateAdapter$5;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements L㚬/ἥ/䆀;


# instance fields
.field public final synthetic உ:Landroid/os/Handler;

.field public final synthetic 䂻:Ljava/lang/Runnable;


# virtual methods
.method public 㺴(L㚬/ἥ/ℓ;L㚬/ἥ/ḓ$䂻;)V
    .locals 1

    sget-object v0, L㚬/ἥ/ḓ$䂻;->ON_DESTROY:L㚬/ἥ/ḓ$䂻;

    if-ne p2, v0, :cond_0

    iget-object p2, p0, Landroidx/viewpager2/adapter/FragmentStateAdapter$5;->உ:Landroid/os/Handler;

    iget-object v0, p0, Landroidx/viewpager2/adapter/FragmentStateAdapter$5;->䂻:Ljava/lang/Runnable;

    invoke-virtual {p2, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-interface {p1}, L㚬/ἥ/ℓ;->getLifecycle()L㚬/ἥ/ḓ;

    move-result-object p1

    invoke-virtual {p1, p0}, L㚬/ἥ/ḓ;->㚬(L㚬/ἥ/ᆻ;)V

    :cond_0
    return-void
.end method
