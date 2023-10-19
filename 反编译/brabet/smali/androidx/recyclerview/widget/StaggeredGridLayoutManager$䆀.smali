.class public Landroidx/recyclerview/widget/StaggeredGridLayoutManager$䆀;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/recyclerview/widget/StaggeredGridLayoutManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "\u4180"
.end annotation


# instance fields
.field public உ:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field public final ḓ:I

.field public 㚬:I

.field public 㺴:I

.field public 䂻:I

.field public final synthetic 䆀:Landroidx/recyclerview/widget/StaggeredGridLayoutManager;


# direct methods
.method public constructor <init>(Landroidx/recyclerview/widget/StaggeredGridLayoutManager;I)V
    .locals 0

    iput-object p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$䆀;->䆀:Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$䆀;->உ:Ljava/util/ArrayList;

    const/high16 p1, -0x80000000

    iput p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$䆀;->䂻:I

    iput p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$䆀;->㚬:I

    const/4 p1, 0x0

    iput p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$䆀;->㺴:I

    iput p2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$䆀;->ḓ:I

    return-void
.end method


# virtual methods
.method public உ(Landroid/view/View;)V
    .locals 4

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$䆀;->ཇ(Landroid/view/View;)Landroidx/recyclerview/widget/StaggeredGridLayoutManager$㚬;

    move-result-object v0

    iput-object p0, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$㚬;->ḓ:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$䆀;

    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$䆀;->உ:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/high16 v1, -0x80000000

    iput v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$䆀;->㚬:I

    iget-object v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$䆀;->உ:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    iput v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$䆀;->䂻:I

    :cond_0
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$ბ;->㚬()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$ბ;->䂻()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    iget v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$䆀;->㺴:I

    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$䆀;->䆀:Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    iget-object v1, v1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->㖪:L㚬/㲝/㺴/ಫ;

    invoke-virtual {v1, p1}, L㚬/㲝/㺴/ಫ;->ḓ(Landroid/view/View;)I

    move-result p1

    add-int/2addr v0, p1

    iput v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$䆀;->㺴:I

    :cond_2
    return-void
.end method

.method public ಫ()I
    .locals 1

    iget v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$䆀;->㺴:I

    return v0
.end method

.method public ཇ(Landroid/view/View;)Landroidx/recyclerview/widget/StaggeredGridLayoutManager$㚬;
    .locals 0

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$㚬;

    return-object p1
.end method

.method public ბ(I)I
    .locals 2

    iget v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$䆀;->䂻:I

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$䆀;->உ:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    return p1

    :cond_1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$䆀;->㺴()V

    iget p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$䆀;->䂻:I

    return p1
.end method

.method public ᆻ()I
    .locals 3

    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$䆀;->䆀:Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    iget-boolean v0, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->㫏:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iget-object v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$䆀;->உ:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$䆀;->உ:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v1

    const/4 v2, -0x1

    :goto_0
    invoke-virtual {p0, v0, v2, v1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$䆀;->ㄏ(IIZ)I

    move-result v0

    return v0
.end method

.method public ᓭ()I
    .locals 2

    iget v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$䆀;->䂻:I

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$䆀;->㺴()V

    iget v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$䆀;->䂻:I

    return v0
.end method

.method public ḓ()V
    .locals 1

    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$䆀;->உ:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$䆀;->㲝()V

    const/4 v0, 0x0

    iput v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$䆀;->㺴:I

    return-void
.end method

.method public ḙ()V
    .locals 4

    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$䆀;->உ:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$䆀;->ཇ(Landroid/view/View;)Landroidx/recyclerview/widget/StaggeredGridLayoutManager$㚬;

    move-result-object v1

    const/4 v2, 0x0

    iput-object v2, v1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$㚬;->ḓ:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$䆀;

    iget-object v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$䆀;->உ:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/high16 v3, -0x80000000

    if-nez v2, :cond_0

    iput v3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$䆀;->㚬:I

    :cond_0
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$ბ;->㚬()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$ბ;->䂻()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    iget v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$䆀;->㺴:I

    iget-object v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$䆀;->䆀:Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    iget-object v2, v2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->㖪:L㚬/㲝/㺴/ಫ;

    invoke-virtual {v2, v0}, L㚬/㲝/㺴/ಫ;->ḓ(Landroid/view/View;)I

    move-result v0

    sub-int/2addr v1, v0

    iput v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$䆀;->㺴:I

    :cond_2
    iput v3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$䆀;->䂻:I

    return-void
.end method

.method public ἥ(II)Landroid/view/View;
    .locals 5

    const/4 v0, -0x1

    const/4 v1, 0x0

    if-ne p2, v0, :cond_2

    iget-object p2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$䆀;->உ:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_5

    iget-object v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$䆀;->உ:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    iget-object v3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$䆀;->䆀:Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    iget-boolean v4, v3, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->㫏:Z

    if-eqz v4, :cond_0

    invoke-virtual {v3, v2}, Landroidx/recyclerview/widget/RecyclerView$ᓭ;->䋡(Landroid/view/View;)I

    move-result v3

    if-le v3, p1, :cond_5

    :cond_0
    iget-object v3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$䆀;->䆀:Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    iget-boolean v4, v3, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->㫏:Z

    if-nez v4, :cond_1

    invoke-virtual {v3, v2}, Landroidx/recyclerview/widget/RecyclerView$ᓭ;->䋡(Landroid/view/View;)I

    move-result v3

    if-lt v3, p1, :cond_1

    goto :goto_2

    :cond_1
    invoke-virtual {v2}, Landroid/view/View;->hasFocusable()Z

    move-result v3

    if-eqz v3, :cond_5

    add-int/lit8 v0, v0, 0x1

    move-object v1, v2

    goto :goto_0

    :cond_2
    iget-object p2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$䆀;->உ:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    :goto_1
    if-ltz p2, :cond_5

    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$䆀;->உ:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iget-object v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$䆀;->䆀:Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    iget-boolean v3, v2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->㫏:Z

    if-eqz v3, :cond_3

    invoke-virtual {v2, v0}, Landroidx/recyclerview/widget/RecyclerView$ᓭ;->䋡(Landroid/view/View;)I

    move-result v2

    if-ge v2, p1, :cond_5

    :cond_3
    iget-object v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$䆀;->䆀:Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    iget-boolean v3, v2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->㫏:Z

    if-nez v3, :cond_4

    invoke-virtual {v2, v0}, Landroidx/recyclerview/widget/RecyclerView$ᓭ;->䋡(Landroid/view/View;)I

    move-result v2

    if-gt v2, p1, :cond_4

    goto :goto_2

    :cond_4
    invoke-virtual {v0}, Landroid/view/View;->hasFocusable()Z

    move-result v2

    if-eqz v2, :cond_5

    add-int/lit8 p2, p2, -0x1

    move-object v1, v0

    goto :goto_1

    :cond_5
    :goto_2
    return-object v1
.end method

.method public ℓ(IIZZZ)I
    .locals 10

    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$䆀;->䆀:Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    iget-object v0, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->㖪:L㚬/㲝/㺴/ಫ;

    invoke-virtual {v0}, L㚬/㲝/㺴/ಫ;->ἥ()I

    move-result v0

    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$䆀;->䆀:Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    iget-object v1, v1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->㖪:L㚬/㲝/㺴/ಫ;

    invoke-virtual {v1}, L㚬/㲝/㺴/ಫ;->ㄏ()I

    move-result v1

    const/4 v2, -0x1

    const/4 v3, 0x1

    if-le p2, p1, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, -0x1

    :goto_0
    if-eq p1, p2, :cond_9

    iget-object v5, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$䆀;->உ:Ljava/util/ArrayList;

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    iget-object v6, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$䆀;->䆀:Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    iget-object v6, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->㖪:L㚬/㲝/㺴/ಫ;

    invoke-virtual {v6, v5}, L㚬/㲝/㺴/ಫ;->ᆻ(Landroid/view/View;)I

    move-result v6

    iget-object v7, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$䆀;->䆀:Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    iget-object v7, v7, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->㖪:L㚬/㲝/㺴/ಫ;

    invoke-virtual {v7, v5}, L㚬/㲝/㺴/ಫ;->㺴(Landroid/view/View;)I

    move-result v7

    const/4 v8, 0x0

    if-eqz p5, :cond_1

    if-gt v6, v1, :cond_2

    goto :goto_1

    :cond_1
    if-ge v6, v1, :cond_2

    :goto_1
    const/4 v9, 0x1

    goto :goto_2

    :cond_2
    const/4 v9, 0x0

    :goto_2
    if-eqz p5, :cond_3

    if-lt v7, v0, :cond_4

    goto :goto_3

    :cond_3
    if-le v7, v0, :cond_4

    :goto_3
    const/4 v8, 0x1

    :cond_4
    if-eqz v9, :cond_8

    if-eqz v8, :cond_8

    if-eqz p3, :cond_6

    if-eqz p4, :cond_6

    if-lt v6, v0, :cond_8

    if-gt v7, v1, :cond_8

    :cond_5
    :goto_4
    iget-object p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$䆀;->䆀:Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    invoke-virtual {p1, v5}, Landroidx/recyclerview/widget/RecyclerView$ᓭ;->䋡(Landroid/view/View;)I

    move-result p1

    return p1

    :cond_6
    if-eqz p4, :cond_7

    goto :goto_4

    :cond_7
    if-lt v6, v0, :cond_5

    if-le v7, v1, :cond_8

    goto :goto_4

    :cond_8
    add-int/2addr p1, v4

    goto :goto_0

    :cond_9
    return v2
.end method

.method public ㄏ(IIZ)I
    .locals 6

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$䆀;->ℓ(IIZZZ)I

    move-result p1

    return p1
.end method

.method public 㖪(Landroid/view/View;)V
    .locals 4

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$䆀;->ཇ(Landroid/view/View;)Landroidx/recyclerview/widget/StaggeredGridLayoutManager$㚬;

    move-result-object v0

    iput-object p0, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$㚬;->ḓ:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$䆀;

    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$䆀;->உ:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    const/high16 v1, -0x80000000

    iput v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$䆀;->䂻:I

    iget-object v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$䆀;->உ:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    iput v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$䆀;->㚬:I

    :cond_0
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$ბ;->㚬()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$ბ;->䂻()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    iget v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$䆀;->㺴:I

    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$䆀;->䆀:Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    iget-object v1, v1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->㖪:L㚬/㲝/㺴/ಫ;

    invoke-virtual {v1, p1}, L㚬/㲝/㺴/ಫ;->ḓ(Landroid/view/View;)I

    move-result p1

    add-int/2addr v0, p1

    iput v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$䆀;->㺴:I

    :cond_2
    return-void
.end method

.method public 㚬()V
    .locals 4

    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$䆀;->உ:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$䆀;->ཇ(Landroid/view/View;)Landroidx/recyclerview/widget/StaggeredGridLayoutManager$㚬;

    move-result-object v1

    iget-object v3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$䆀;->䆀:Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    iget-object v3, v3, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->㖪:L㚬/㲝/㺴/ಫ;

    invoke-virtual {v3, v0}, L㚬/㲝/㺴/ಫ;->㺴(Landroid/view/View;)I

    move-result v0

    iput v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$䆀;->㚬:I

    iget-boolean v0, v1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$㚬;->䆀:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$䆀;->䆀:Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    iget-object v0, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ש:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$㺴;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$ბ;->உ()I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$㺴;->䆀(I)Landroidx/recyclerview/widget/StaggeredGridLayoutManager$㺴$உ;

    move-result-object v0

    if-eqz v0, :cond_0

    iget v1, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$㺴$உ;->㚬:I

    if-ne v1, v2, :cond_0

    iget v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$䆀;->㚬:I

    iget v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$䆀;->ḓ:I

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$㺴$உ;->ಫ(I)I

    move-result v0

    add-int/2addr v1, v0

    iput v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$䆀;->㚬:I

    :cond_0
    return-void
.end method

.method public 㞘(I)V
    .locals 2

    iget v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$䆀;->䂻:I

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_0

    add-int/2addr v0, p1

    iput v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$䆀;->䂻:I

    :cond_0
    iget v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$䆀;->㚬:I

    if-eq v0, v1, :cond_1

    add-int/2addr v0, p1

    iput v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$䆀;->㚬:I

    :cond_1
    return-void
.end method

.method public 㢏(I)V
    .locals 0

    iput p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$䆀;->䂻:I

    iput p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$䆀;->㚬:I

    return-void
.end method

.method public 㧦()I
    .locals 2

    iget v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$䆀;->㚬:I

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$䆀;->㚬()V

    iget v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$䆀;->㚬:I

    return v0
.end method

.method public 㭲()V
    .locals 4

    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$䆀;->உ:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$䆀;->உ:Ljava/util/ArrayList;

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$䆀;->ཇ(Landroid/view/View;)Landroidx/recyclerview/widget/StaggeredGridLayoutManager$㚬;

    move-result-object v2

    const/4 v3, 0x0

    iput-object v3, v2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$㚬;->ḓ:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$䆀;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView$ბ;->㚬()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView$ბ;->䂻()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    iget v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$䆀;->㺴:I

    iget-object v3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$䆀;->䆀:Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    iget-object v3, v3, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->㖪:L㚬/㲝/㺴/ಫ;

    invoke-virtual {v3, v1}, L㚬/㲝/㺴/ಫ;->ḓ(Landroid/view/View;)I

    move-result v1

    sub-int/2addr v2, v1

    iput v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$䆀;->㺴:I

    :cond_1
    const/high16 v1, -0x80000000

    const/4 v2, 0x1

    if-ne v0, v2, :cond_2

    iput v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$䆀;->䂻:I

    :cond_2
    iput v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$䆀;->㚬:I

    return-void
.end method

.method public 㲝()V
    .locals 1

    const/high16 v0, -0x80000000

    iput v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$䆀;->䂻:I

    iput v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$䆀;->㚬:I

    return-void
.end method

.method public 㹖(I)I
    .locals 2

    iget v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$䆀;->㚬:I

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$䆀;->உ:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    return p1

    :cond_1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$䆀;->㚬()V

    iget p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$䆀;->㚬:I

    return p1
.end method

.method public 㺴()V
    .locals 3

    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$䆀;->உ:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$䆀;->ཇ(Landroid/view/View;)Landroidx/recyclerview/widget/StaggeredGridLayoutManager$㚬;

    move-result-object v1

    iget-object v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$䆀;->䆀:Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    iget-object v2, v2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->㖪:L㚬/㲝/㺴/ಫ;

    invoke-virtual {v2, v0}, L㚬/㲝/㺴/ಫ;->ᆻ(Landroid/view/View;)I

    move-result v0

    iput v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$䆀;->䂻:I

    iget-boolean v0, v1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$㚬;->䆀:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$䆀;->䆀:Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    iget-object v0, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ש:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$㺴;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$ბ;->உ()I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$㺴;->䆀(I)Landroidx/recyclerview/widget/StaggeredGridLayoutManager$㺴$உ;

    move-result-object v0

    if-eqz v0, :cond_0

    iget v1, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$㺴$உ;->㚬:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    iget v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$䆀;->䂻:I

    iget v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$䆀;->ḓ:I

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$㺴$உ;->ಫ(I)I

    move-result v0

    sub-int/2addr v1, v0

    iput v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$䆀;->䂻:I

    :cond_0
    return-void
.end method

.method public 䂻(ZI)V
    .locals 3

    const/high16 v0, -0x80000000

    if-eqz p1, :cond_0

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$䆀;->㹖(I)I

    move-result v1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$䆀;->ბ(I)I

    move-result v1

    :goto_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$䆀;->ḓ()V

    if-ne v1, v0, :cond_1

    return-void

    :cond_1
    if-eqz p1, :cond_2

    iget-object v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$䆀;->䆀:Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    iget-object v2, v2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->㖪:L㚬/㲝/㺴/ಫ;

    invoke-virtual {v2}, L㚬/㲝/㺴/ಫ;->ㄏ()I

    move-result v2

    if-lt v1, v2, :cond_3

    :cond_2
    if-nez p1, :cond_4

    iget-object p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$䆀;->䆀:Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    iget-object p1, p1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->㖪:L㚬/㲝/㺴/ಫ;

    invoke-virtual {p1}, L㚬/㲝/㺴/ಫ;->ἥ()I

    move-result p1

    if-le v1, p1, :cond_4

    :cond_3
    return-void

    :cond_4
    if-eq p2, v0, :cond_5

    add-int/2addr v1, p2

    :cond_5
    iput v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$䆀;->㚬:I

    iput v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$䆀;->䂻:I

    return-void
.end method

.method public 䆀()I
    .locals 3

    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$䆀;->䆀:Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    iget-boolean v0, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->㫏:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$䆀;->உ:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v1

    const/4 v2, -0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    iget-object v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$䆀;->உ:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    :goto_0
    invoke-virtual {p0, v0, v2, v1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$䆀;->ㄏ(IIZ)I

    move-result v0

    return v0
.end method
