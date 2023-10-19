.class public Landroidx/recyclerview/widget/LinearLayoutManager$㚬;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/recyclerview/widget/LinearLayoutManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "\u36ac"
.end annotation


# instance fields
.field public உ:Z

.field public ಫ:Z

.field public ᆻ:I

.field public ḓ:I

.field public ἥ:Z

.field public ℓ:I

.field public ㄏ:I

.field public 㚬:I

.field public 㧦:I

.field public 㹖:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/recyclerview/widget/RecyclerView$\u3c2b;",
            ">;"
        }
    .end annotation
.end field

.field public 㺴:I

.field public 䂻:I

.field public 䆀:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager$㚬;->உ:Z

    const/4 v0, 0x0

    iput v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager$㚬;->ℓ:I

    iput v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager$㚬;->ㄏ:I

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager$㚬;->㹖:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public உ()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/LinearLayoutManager$㚬;->䂻(Landroid/view/View;)V

    return-void
.end method

.method public final ḓ()Landroid/view/View;
    .locals 5

    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager$㚬;->㹖:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    iget-object v2, p0, Landroidx/recyclerview/widget/LinearLayoutManager$㚬;->㹖:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/recyclerview/widget/RecyclerView$㰫;

    iget-object v2, v2, Landroidx/recyclerview/widget/RecyclerView$㰫;->உ:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroidx/recyclerview/widget/RecyclerView$ბ;

    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView$ბ;->㚬()Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_1

    :cond_0
    iget v4, p0, Landroidx/recyclerview/widget/LinearLayoutManager$㚬;->㺴:I

    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView$ბ;->உ()I

    move-result v3

    if-ne v4, v3, :cond_1

    invoke-virtual {p0, v2}, Landroidx/recyclerview/widget/LinearLayoutManager$㚬;->䂻(Landroid/view/View;)V

    return-object v2

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method public 㚬(Landroidx/recyclerview/widget/RecyclerView$ಋ;)Z
    .locals 1

    iget v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager$㚬;->㺴:I

    if-ltz v0, :cond_0

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ಋ;->䂻()I

    move-result p1

    if-ge v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public 㺴(Landroidx/recyclerview/widget/RecyclerView$㢏;)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager$㚬;->㹖:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager$㚬;->ḓ()Landroid/view/View;

    move-result-object p1

    return-object p1

    :cond_0
    iget v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager$㚬;->㺴:I

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$㢏;->ᓭ(I)Landroid/view/View;

    move-result-object p1

    iget v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager$㚬;->㺴:I

    iget v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager$㚬;->ḓ:I

    add-int/2addr v0, v1

    iput v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager$㚬;->㺴:I

    return-object p1
.end method

.method public 䂻(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager$㚬;->䆀(Landroid/view/View;)Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, -0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView$ბ;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ბ;->உ()I

    move-result p1

    :goto_0
    iput p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager$㚬;->㺴:I

    return-void
.end method

.method public 䆀(Landroid/view/View;)Landroid/view/View;
    .locals 7

    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager$㚬;->㹖:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const v2, 0x7fffffff

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_4

    iget-object v4, p0, Landroidx/recyclerview/widget/LinearLayoutManager$㚬;->㹖:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/recyclerview/widget/RecyclerView$㰫;

    iget-object v4, v4, Landroidx/recyclerview/widget/RecyclerView$㰫;->உ:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroidx/recyclerview/widget/RecyclerView$ბ;

    if-eq v4, p1, :cond_3

    invoke-virtual {v5}, Landroidx/recyclerview/widget/RecyclerView$ბ;->㚬()Z

    move-result v6

    if-eqz v6, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v5}, Landroidx/recyclerview/widget/RecyclerView$ბ;->உ()I

    move-result v5

    iget v6, p0, Landroidx/recyclerview/widget/LinearLayoutManager$㚬;->㺴:I

    sub-int/2addr v5, v6

    iget v6, p0, Landroidx/recyclerview/widget/LinearLayoutManager$㚬;->ḓ:I

    mul-int v5, v5, v6

    if-gez v5, :cond_1

    goto :goto_1

    :cond_1
    if-ge v5, v2, :cond_3

    move-object v1, v4

    if-nez v5, :cond_2

    goto :goto_2

    :cond_2
    move v2, v5

    :cond_3
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    :goto_2
    return-object v1
.end method
