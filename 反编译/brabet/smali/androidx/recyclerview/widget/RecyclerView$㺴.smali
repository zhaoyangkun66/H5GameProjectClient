.class public Landroidx/recyclerview/widget/RecyclerView$㺴;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements L㚬/㲝/㺴/ბ$䂻;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/recyclerview/widget/RecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic உ:Landroidx/recyclerview/widget/RecyclerView;


# direct methods
.method public constructor <init>(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0

    iput-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$㺴;->உ:Landroidx/recyclerview/widget/RecyclerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public உ(Landroidx/recyclerview/widget/RecyclerView$㰫;)V
    .locals 2

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$㺴;->உ:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$ᓭ;

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$㰫;->உ:Landroid/view/View;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->mRecycler:Landroidx/recyclerview/widget/RecyclerView$㢏;

    invoke-virtual {v1, p1, v0}, Landroidx/recyclerview/widget/RecyclerView$ᓭ;->Ⅎ(Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView$㢏;)V

    return-void
.end method

.method public 㚬(Landroidx/recyclerview/widget/RecyclerView$㰫;Landroidx/recyclerview/widget/RecyclerView$㹖$㚬;Landroidx/recyclerview/widget/RecyclerView$㹖$㚬;)V
    .locals 1

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$㺴;->உ:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->mRecycler:Landroidx/recyclerview/widget/RecyclerView$㢏;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$㢏;->ർ(Landroidx/recyclerview/widget/RecyclerView$㰫;)V

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$㺴;->உ:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView;->animateDisappearance(Landroidx/recyclerview/widget/RecyclerView$㰫;Landroidx/recyclerview/widget/RecyclerView$㹖$㚬;Landroidx/recyclerview/widget/RecyclerView$㹖$㚬;)V

    return-void
.end method

.method public 㺴(Landroidx/recyclerview/widget/RecyclerView$㰫;Landroidx/recyclerview/widget/RecyclerView$㹖$㚬;Landroidx/recyclerview/widget/RecyclerView$㹖$㚬;)V
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$㰫;->ᰘ(Z)V

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$㺴;->உ:Landroidx/recyclerview/widget/RecyclerView;

    iget-boolean v1, v0, Landroidx/recyclerview/widget/RecyclerView;->mDataSetHasChangedAfterLayout:Z

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->mItemAnimator:Landroidx/recyclerview/widget/RecyclerView$㹖;

    if-eqz v1, :cond_0

    invoke-virtual {v0, p1, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$㹖;->䂻(Landroidx/recyclerview/widget/RecyclerView$㰫;Landroidx/recyclerview/widget/RecyclerView$㰫;Landroidx/recyclerview/widget/RecyclerView$㹖$㚬;Landroidx/recyclerview/widget/RecyclerView$㹖$㚬;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$㹖;->㺴(Landroidx/recyclerview/widget/RecyclerView$㰫;Landroidx/recyclerview/widget/RecyclerView$㹖$㚬;Landroidx/recyclerview/widget/RecyclerView$㹖$㚬;)Z

    move-result p1

    if-eqz p1, :cond_1

    :goto_0
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$㺴;->உ:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->postAnimationRunner()V

    :cond_1
    return-void
.end method

.method public 䂻(Landroidx/recyclerview/widget/RecyclerView$㰫;Landroidx/recyclerview/widget/RecyclerView$㹖$㚬;Landroidx/recyclerview/widget/RecyclerView$㹖$㚬;)V
    .locals 1

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$㺴;->உ:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView;->animateAppearance(Landroidx/recyclerview/widget/RecyclerView$㰫;Landroidx/recyclerview/widget/RecyclerView$㹖$㚬;Landroidx/recyclerview/widget/RecyclerView$㹖$㚬;)V

    return-void
.end method
