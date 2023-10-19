.class public final L㚬/㲝/㺴/ಫ$䂻;
.super L㚬/㲝/㺴/ಫ;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = L㚬/㲝/㺴/ಫ;->㚬(Landroidx/recyclerview/widget/RecyclerView$ᓭ;)L㚬/㲝/㺴/ಫ;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# direct methods
.method public constructor <init>(Landroidx/recyclerview/widget/RecyclerView$ᓭ;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, L㚬/㲝/㺴/ಫ;-><init>(Landroidx/recyclerview/widget/RecyclerView$ᓭ;L㚬/㲝/㺴/ಫ$உ;)V

    return-void
.end method


# virtual methods
.method public ಫ()I
    .locals 1

    iget-object v0, p0, L㚬/㲝/㺴/ಫ;->உ:Landroidx/recyclerview/widget/RecyclerView$ᓭ;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$ᓭ;->Ổ()I

    move-result v0

    return v0
.end method

.method public ཇ()I
    .locals 2

    iget-object v0, p0, L㚬/㲝/㺴/ಫ;->உ:Landroidx/recyclerview/widget/RecyclerView$ᓭ;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$ᓭ;->ᇿ()I

    move-result v0

    iget-object v1, p0, L㚬/㲝/㺴/ಫ;->உ:Landroidx/recyclerview/widget/RecyclerView$ᓭ;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$ᓭ;->㠭()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, L㚬/㲝/㺴/ಫ;->உ:Landroidx/recyclerview/widget/RecyclerView$ᓭ;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$ᓭ;->Ổ()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public ბ(Landroid/view/View;)I
    .locals 3

    iget-object v0, p0, L㚬/㲝/㺴/ಫ;->உ:Landroidx/recyclerview/widget/RecyclerView$ᓭ;

    iget-object v1, p0, L㚬/㲝/㺴/ಫ;->㚬:Landroid/graphics/Rect;

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v2, v1}, Landroidx/recyclerview/widget/RecyclerView$ᓭ;->䃻(Landroid/view/View;ZLandroid/graphics/Rect;)V

    iget-object p1, p0, L㚬/㲝/㺴/ಫ;->㚬:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    return p1
.end method

.method public ᆻ(Landroid/view/View;)I
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$ბ;

    iget-object v1, p0, L㚬/㲝/㺴/ಫ;->உ:Landroidx/recyclerview/widget/RecyclerView$ᓭ;

    invoke-virtual {v1, p1}, Landroidx/recyclerview/widget/RecyclerView$ᓭ;->㟘(Landroid/view/View;)I

    move-result p1

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    sub-int/2addr p1, v0

    return p1
.end method

.method public ḓ(Landroid/view/View;)I
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$ბ;

    iget-object v1, p0, L㚬/㲝/㺴/ಫ;->உ:Landroidx/recyclerview/widget/RecyclerView$ᓭ;

    invoke-virtual {v1, p1}, Landroidx/recyclerview/widget/RecyclerView$ᓭ;->ἂ(Landroid/view/View;)I

    move-result p1

    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr p1, v1

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr p1, v0

    return p1
.end method

.method public ἥ()I
    .locals 1

    iget-object v0, p0, L㚬/㲝/㺴/ಫ;->உ:Landroidx/recyclerview/widget/RecyclerView$ᓭ;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$ᓭ;->㠭()I

    move-result v0

    return v0
.end method

.method public ℓ()I
    .locals 1

    iget-object v0, p0, L㚬/㲝/㺴/ಫ;->உ:Landroidx/recyclerview/widget/RecyclerView$ᓭ;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$ᓭ;->ᇿ()I

    move-result v0

    return v0
.end method

.method public ㄏ()I
    .locals 2

    iget-object v0, p0, L㚬/㲝/㺴/ಫ;->உ:Landroidx/recyclerview/widget/RecyclerView$ᓭ;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$ᓭ;->ᇿ()I

    move-result v0

    iget-object v1, p0, L㚬/㲝/㺴/ಫ;->உ:Landroidx/recyclerview/widget/RecyclerView$ᓭ;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$ᓭ;->Ổ()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public 㞘(I)V
    .locals 1

    iget-object v0, p0, L㚬/㲝/㺴/ಫ;->உ:Landroidx/recyclerview/widget/RecyclerView$ᓭ;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$ᓭ;->ᴇ(I)V

    return-void
.end method

.method public 㧦()I
    .locals 1

    iget-object v0, p0, L㚬/㲝/㺴/ಫ;->உ:Landroidx/recyclerview/widget/RecyclerView$ᓭ;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$ᓭ;->ᣑ()I

    move-result v0

    return v0
.end method

.method public 㲝(Landroid/view/View;)I
    .locals 3

    iget-object v0, p0, L㚬/㲝/㺴/ಫ;->உ:Landroidx/recyclerview/widget/RecyclerView$ᓭ;

    iget-object v1, p0, L㚬/㲝/㺴/ಫ;->㚬:Landroid/graphics/Rect;

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v2, v1}, Landroidx/recyclerview/widget/RecyclerView$ᓭ;->䃻(Landroid/view/View;ZLandroid/graphics/Rect;)V

    iget-object p1, p0, L㚬/㲝/㺴/ಫ;->㚬:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->top:I

    return p1
.end method

.method public 㹖()I
    .locals 1

    iget-object v0, p0, L㚬/㲝/㺴/ಫ;->உ:Landroidx/recyclerview/widget/RecyclerView$ᓭ;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$ᓭ;->ϣ()I

    move-result v0

    return v0
.end method

.method public 㺴(Landroid/view/View;)I
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$ბ;

    iget-object v1, p0, L㚬/㲝/㺴/ಫ;->உ:Landroidx/recyclerview/widget/RecyclerView$ᓭ;

    invoke-virtual {v1, p1}, Landroidx/recyclerview/widget/RecyclerView$ᓭ;->ỷ(Landroid/view/View;)I

    move-result p1

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr p1, v0

    return p1
.end method

.method public 䆀(Landroid/view/View;)I
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$ბ;

    iget-object v1, p0, L㚬/㲝/㺴/ಫ;->உ:Landroidx/recyclerview/widget/RecyclerView$ᓭ;

    invoke-virtual {v1, p1}, Landroidx/recyclerview/widget/RecyclerView$ᓭ;->ⵦ(Landroid/view/View;)I

    move-result p1

    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr p1, v1

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr p1, v0

    return p1
.end method
