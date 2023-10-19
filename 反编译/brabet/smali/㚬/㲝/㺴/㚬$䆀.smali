.class public L㚬/㲝/㺴/㚬$䆀;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = L㚬/㲝/㺴/㚬;->ⵦ(Landroidx/recyclerview/widget/RecyclerView$㰫;IIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic உ:Landroidx/recyclerview/widget/RecyclerView$㰫;

.field public final synthetic ḓ:Landroid/view/ViewPropertyAnimator;

.field public final synthetic 㚬:Landroid/view/View;

.field public final synthetic 㺴:I

.field public final synthetic 䂻:I

.field public final synthetic 䆀:L㚬/㲝/㺴/㚬;


# direct methods
.method public constructor <init>(L㚬/㲝/㺴/㚬;Landroidx/recyclerview/widget/RecyclerView$㰫;ILandroid/view/View;ILandroid/view/ViewPropertyAnimator;)V
    .locals 0

    iput-object p1, p0, L㚬/㲝/㺴/㚬$䆀;->䆀:L㚬/㲝/㺴/㚬;

    iput-object p2, p0, L㚬/㲝/㺴/㚬$䆀;->உ:Landroidx/recyclerview/widget/RecyclerView$㰫;

    iput p3, p0, L㚬/㲝/㺴/㚬$䆀;->䂻:I

    iput-object p4, p0, L㚬/㲝/㺴/㚬$䆀;->㚬:Landroid/view/View;

    iput p5, p0, L㚬/㲝/㺴/㚬$䆀;->㺴:I

    iput-object p6, p0, L㚬/㲝/㺴/㚬$䆀;->ḓ:Landroid/view/ViewPropertyAnimator;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    iget p1, p0, L㚬/㲝/㺴/㚬$䆀;->䂻:I

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iget-object p1, p0, L㚬/㲝/㺴/㚬$䆀;->㚬:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationX(F)V

    :cond_0
    iget p1, p0, L㚬/㲝/㺴/㚬$䆀;->㺴:I

    if-eqz p1, :cond_1

    iget-object p1, p0, L㚬/㲝/㺴/㚬$䆀;->㚬:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    :cond_1
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, L㚬/㲝/㺴/㚬$䆀;->ḓ:Landroid/view/ViewPropertyAnimator;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    iget-object p1, p0, L㚬/㲝/㺴/㚬$䆀;->䆀:L㚬/㲝/㺴/㚬;

    iget-object v0, p0, L㚬/㲝/㺴/㚬$䆀;->உ:Landroidx/recyclerview/widget/RecyclerView$㰫;

    invoke-virtual {p1, v0}, L㚬/㲝/㺴/ἥ;->ש(Landroidx/recyclerview/widget/RecyclerView$㰫;)V

    iget-object p1, p0, L㚬/㲝/㺴/㚬$䆀;->䆀:L㚬/㲝/㺴/㚬;

    iget-object p1, p1, L㚬/㲝/㺴/㚬;->ბ:Ljava/util/ArrayList;

    iget-object v0, p0, L㚬/㲝/㺴/㚬$䆀;->உ:Landroidx/recyclerview/widget/RecyclerView$㰫;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object p1, p0, L㚬/㲝/㺴/㚬$䆀;->䆀:L㚬/㲝/㺴/㚬;

    invoke-virtual {p1}, L㚬/㲝/㺴/㚬;->ᣝ()V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, L㚬/㲝/㺴/㚬$䆀;->䆀:L㚬/㲝/㺴/㚬;

    iget-object v0, p0, L㚬/㲝/㺴/㚬$䆀;->உ:Landroidx/recyclerview/widget/RecyclerView$㰫;

    invoke-virtual {p1, v0}, L㚬/㲝/㺴/ἥ;->㨃(Landroidx/recyclerview/widget/RecyclerView$㰫;)V

    return-void
.end method
