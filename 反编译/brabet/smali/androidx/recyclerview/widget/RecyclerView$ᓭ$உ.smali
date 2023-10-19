.class public Landroidx/recyclerview/widget/RecyclerView$ᓭ$உ;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements L㚬/㲝/㺴/ᓭ$䂻;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/recyclerview/widget/RecyclerView$ᓭ;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic உ:Landroidx/recyclerview/widget/RecyclerView$ᓭ;


# direct methods
.method public constructor <init>(Landroidx/recyclerview/widget/RecyclerView$ᓭ;)V
    .locals 0

    iput-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ᓭ$உ;->உ:Landroidx/recyclerview/widget/RecyclerView$ᓭ;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public உ(I)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$ᓭ$உ;->உ:Landroidx/recyclerview/widget/RecyclerView$ᓭ;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$ᓭ;->㥁(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public ḓ(Landroid/view/View;)I
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$ბ;

    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$ᓭ$உ;->உ:Landroidx/recyclerview/widget/RecyclerView$ᓭ;

    invoke-virtual {v1, p1}, Landroidx/recyclerview/widget/RecyclerView$ᓭ;->㮕(Landroid/view/View;)I

    move-result p1

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    sub-int/2addr p1, v0

    return p1
.end method

.method public 㚬()I
    .locals 1

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$ᓭ$உ;->உ:Landroidx/recyclerview/widget/RecyclerView$ᓭ;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$ᓭ;->ග()I

    move-result v0

    return v0
.end method

.method public 㺴(Landroid/view/View;)I
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$ბ;

    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$ᓭ$உ;->உ:Landroidx/recyclerview/widget/RecyclerView$ᓭ;

    invoke-virtual {v1, p1}, Landroidx/recyclerview/widget/RecyclerView$ᓭ;->ᭊ(Landroid/view/View;)I

    move-result p1

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr p1, v0

    return p1
.end method

.method public 䂻()I
    .locals 2

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$ᓭ$உ;->உ:Landroidx/recyclerview/widget/RecyclerView$ᓭ;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$ᓭ;->ᗼ()I

    move-result v0

    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$ᓭ$உ;->உ:Landroidx/recyclerview/widget/RecyclerView$ᓭ;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$ᓭ;->Ᏼ()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method
