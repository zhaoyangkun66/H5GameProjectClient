.class public L㚬/㧦/㺴/ḓ$㚬;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = L㚬/㧦/㺴/ḓ;->உ(Landroidx/fragment/app/Fragment;L㚬/㧦/㺴/ḓ$㺴;L㚬/㧦/㺴/ม$ᆻ;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic உ:Landroid/view/ViewGroup;

.field public final synthetic ḓ:L㚬/ℓ/ㄏ/உ;

.field public final synthetic 㚬:Landroidx/fragment/app/Fragment;

.field public final synthetic 㺴:L㚬/㧦/㺴/ม$ᆻ;

.field public final synthetic 䂻:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;Landroid/view/View;Landroidx/fragment/app/Fragment;L㚬/㧦/㺴/ม$ᆻ;L㚬/ℓ/ㄏ/உ;)V
    .locals 0

    iput-object p1, p0, L㚬/㧦/㺴/ḓ$㚬;->உ:Landroid/view/ViewGroup;

    iput-object p2, p0, L㚬/㧦/㺴/ḓ$㚬;->䂻:Landroid/view/View;

    iput-object p3, p0, L㚬/㧦/㺴/ḓ$㚬;->㚬:Landroidx/fragment/app/Fragment;

    iput-object p4, p0, L㚬/㧦/㺴/ḓ$㚬;->㺴:L㚬/㧦/㺴/ม$ᆻ;

    iput-object p5, p0, L㚬/㧦/㺴/ḓ$㚬;->ḓ:L㚬/ℓ/ㄏ/உ;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    iget-object p1, p0, L㚬/㧦/㺴/ḓ$㚬;->உ:Landroid/view/ViewGroup;

    iget-object v0, p0, L㚬/㧦/㺴/ḓ$㚬;->䂻:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->endViewTransition(Landroid/view/View;)V

    iget-object p1, p0, L㚬/㧦/㺴/ḓ$㚬;->㚬:Landroidx/fragment/app/Fragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getAnimator()Landroid/animation/Animator;

    move-result-object p1

    iget-object v0, p0, L㚬/㧦/㺴/ḓ$㚬;->㚬:Landroidx/fragment/app/Fragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setAnimator(Landroid/animation/Animator;)V

    if-eqz p1, :cond_0

    iget-object p1, p0, L㚬/㧦/㺴/ḓ$㚬;->உ:Landroid/view/ViewGroup;

    iget-object v0, p0, L㚬/㧦/㺴/ḓ$㚬;->䂻:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result p1

    if-gez p1, :cond_0

    iget-object p1, p0, L㚬/㧦/㺴/ḓ$㚬;->㺴:L㚬/㧦/㺴/ม$ᆻ;

    iget-object v0, p0, L㚬/㧦/㺴/ḓ$㚬;->㚬:Landroidx/fragment/app/Fragment;

    iget-object v1, p0, L㚬/㧦/㺴/ḓ$㚬;->ḓ:L㚬/ℓ/ㄏ/உ;

    invoke-interface {p1, v0, v1}, L㚬/㧦/㺴/ม$ᆻ;->உ(Landroidx/fragment/app/Fragment;L㚬/ℓ/ㄏ/உ;)V

    :cond_0
    return-void
.end method
