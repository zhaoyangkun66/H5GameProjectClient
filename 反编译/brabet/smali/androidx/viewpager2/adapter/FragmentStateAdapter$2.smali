.class public Landroidx/viewpager2/adapter/FragmentStateAdapter$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements L㚬/ἥ/䆀;


# instance fields
.field public final synthetic உ:L㚬/ม/உ/䂻;

.field public final synthetic 䂻:L㚬/ม/உ/உ;


# virtual methods
.method public 㺴(L㚬/ἥ/ℓ;L㚬/ἥ/ḓ$䂻;)V
    .locals 0

    iget-object p2, p0, Landroidx/viewpager2/adapter/FragmentStateAdapter$2;->䂻:L㚬/ม/உ/உ;

    invoke-virtual {p2}, L㚬/ม/உ/உ;->㖪()Z

    move-result p2

    if-eqz p2, :cond_0

    return-void

    :cond_0
    invoke-interface {p1}, L㚬/ἥ/ℓ;->getLifecycle()L㚬/ἥ/ḓ;

    move-result-object p1

    invoke-virtual {p1, p0}, L㚬/ἥ/ḓ;->㚬(L㚬/ἥ/ᆻ;)V

    iget-object p1, p0, Landroidx/viewpager2/adapter/FragmentStateAdapter$2;->உ:L㚬/ม/உ/䂻;

    invoke-virtual {p1}, L㚬/ม/உ/䂻;->Խ()Landroid/widget/FrameLayout;

    const/4 p1, 0x0

    throw p1
.end method
