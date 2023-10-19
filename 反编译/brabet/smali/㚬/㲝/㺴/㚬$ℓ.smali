.class public L㚬/㲝/㺴/㚬$ℓ;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = L㚬/㲝/㺴/㚬;->ἂ(L㚬/㲝/㺴/㚬$ㄏ;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic உ:L㚬/㲝/㺴/㚬$ㄏ;

.field public final synthetic 㚬:Landroid/view/View;

.field public final synthetic 㺴:L㚬/㲝/㺴/㚬;

.field public final synthetic 䂻:Landroid/view/ViewPropertyAnimator;


# direct methods
.method public constructor <init>(L㚬/㲝/㺴/㚬;L㚬/㲝/㺴/㚬$ㄏ;Landroid/view/ViewPropertyAnimator;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, L㚬/㲝/㺴/㚬$ℓ;->㺴:L㚬/㲝/㺴/㚬;

    iput-object p2, p0, L㚬/㲝/㺴/㚬$ℓ;->உ:L㚬/㲝/㺴/㚬$ㄏ;

    iput-object p3, p0, L㚬/㲝/㺴/㚬$ℓ;->䂻:Landroid/view/ViewPropertyAnimator;

    iput-object p4, p0, L㚬/㲝/㺴/㚬$ℓ;->㚬:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    iget-object p1, p0, L㚬/㲝/㺴/㚬$ℓ;->䂻:Landroid/view/ViewPropertyAnimator;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    iget-object p1, p0, L㚬/㲝/㺴/㚬$ℓ;->㚬:Landroid/view/View;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    iget-object p1, p0, L㚬/㲝/㺴/㚬$ℓ;->㚬:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationX(F)V

    iget-object p1, p0, L㚬/㲝/㺴/㚬$ℓ;->㚬:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    iget-object p1, p0, L㚬/㲝/㺴/㚬$ℓ;->㺴:L㚬/㲝/㺴/㚬;

    iget-object v0, p0, L㚬/㲝/㺴/㚬$ℓ;->உ:L㚬/㲝/㺴/㚬$ㄏ;

    iget-object v0, v0, L㚬/㲝/㺴/㚬$ㄏ;->䂻:Landroidx/recyclerview/widget/RecyclerView$㰫;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, L㚬/㲝/㺴/ἥ;->ڈ(Landroidx/recyclerview/widget/RecyclerView$㰫;Z)V

    iget-object p1, p0, L㚬/㲝/㺴/㚬$ℓ;->㺴:L㚬/㲝/㺴/㚬;

    iget-object p1, p1, L㚬/㲝/㺴/㚬;->㞘:Ljava/util/ArrayList;

    iget-object v0, p0, L㚬/㲝/㺴/㚬$ℓ;->உ:L㚬/㲝/㺴/㚬$ㄏ;

    iget-object v0, v0, L㚬/㲝/㺴/㚬$ㄏ;->䂻:Landroidx/recyclerview/widget/RecyclerView$㰫;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object p1, p0, L㚬/㲝/㺴/㚬$ℓ;->㺴:L㚬/㲝/㺴/㚬;

    invoke-virtual {p1}, L㚬/㲝/㺴/㚬;->ᣝ()V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2

    iget-object p1, p0, L㚬/㲝/㺴/㚬$ℓ;->㺴:L㚬/㲝/㺴/㚬;

    iget-object v0, p0, L㚬/㲝/㺴/㚬$ℓ;->உ:L㚬/㲝/㺴/㚬$ㄏ;

    iget-object v0, v0, L㚬/㲝/㺴/㚬$ㄏ;->䂻:Landroidx/recyclerview/widget/RecyclerView$㰫;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, L㚬/㲝/㺴/ἥ;->㰫(Landroidx/recyclerview/widget/RecyclerView$㰫;Z)V

    return-void
.end method
