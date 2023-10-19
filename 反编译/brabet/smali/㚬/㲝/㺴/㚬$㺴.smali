.class public L㚬/㲝/㺴/㚬$㺴;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = L㚬/㲝/㺴/㚬;->ᭊ(Landroidx/recyclerview/widget/RecyclerView$㰫;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic உ:Landroidx/recyclerview/widget/RecyclerView$㰫;

.field public final synthetic 㚬:Landroid/view/View;

.field public final synthetic 㺴:L㚬/㲝/㺴/㚬;

.field public final synthetic 䂻:Landroid/view/ViewPropertyAnimator;


# direct methods
.method public constructor <init>(L㚬/㲝/㺴/㚬;Landroidx/recyclerview/widget/RecyclerView$㰫;Landroid/view/ViewPropertyAnimator;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, L㚬/㲝/㺴/㚬$㺴;->㺴:L㚬/㲝/㺴/㚬;

    iput-object p2, p0, L㚬/㲝/㺴/㚬$㺴;->உ:Landroidx/recyclerview/widget/RecyclerView$㰫;

    iput-object p3, p0, L㚬/㲝/㺴/㚬$㺴;->䂻:Landroid/view/ViewPropertyAnimator;

    iput-object p4, p0, L㚬/㲝/㺴/㚬$㺴;->㚬:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, L㚬/㲝/㺴/㚬$㺴;->䂻:Landroid/view/ViewPropertyAnimator;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    iget-object p1, p0, L㚬/㲝/㺴/㚬$㺴;->㚬:Landroid/view/View;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    iget-object p1, p0, L㚬/㲝/㺴/㚬$㺴;->㺴:L㚬/㲝/㺴/㚬;

    iget-object v0, p0, L㚬/㲝/㺴/㚬$㺴;->உ:Landroidx/recyclerview/widget/RecyclerView$㰫;

    invoke-virtual {p1, v0}, L㚬/㲝/㺴/ἥ;->ᰘ(Landroidx/recyclerview/widget/RecyclerView$㰫;)V

    iget-object p1, p0, L㚬/㲝/㺴/㚬$㺴;->㺴:L㚬/㲝/㺴/㚬;

    iget-object p1, p1, L㚬/㲝/㺴/㚬;->㲝:Ljava/util/ArrayList;

    iget-object v0, p0, L㚬/㲝/㺴/㚬$㺴;->உ:Landroidx/recyclerview/widget/RecyclerView$㰫;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object p1, p0, L㚬/㲝/㺴/㚬$㺴;->㺴:L㚬/㲝/㺴/㚬;

    invoke-virtual {p1}, L㚬/㲝/㺴/㚬;->ᣝ()V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, L㚬/㲝/㺴/㚬$㺴;->㺴:L㚬/㲝/㺴/㚬;

    iget-object v0, p0, L㚬/㲝/㺴/㚬$㺴;->உ:Landroidx/recyclerview/widget/RecyclerView$㰫;

    invoke-virtual {p1, v0}, L㚬/㲝/㺴/ἥ;->ᱹ(Landroidx/recyclerview/widget/RecyclerView$㰫;)V

    return-void
.end method
