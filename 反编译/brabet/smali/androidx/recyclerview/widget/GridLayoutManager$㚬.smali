.class public abstract Landroidx/recyclerview/widget/GridLayoutManager$㚬;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/recyclerview/widget/GridLayoutManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "\u36ac"
.end annotation


# instance fields
.field public final உ:Landroid/util/SparseIntArray;

.field public 㚬:Z

.field public 㺴:Z

.field public final 䂻:Landroid/util/SparseIntArray;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Landroidx/recyclerview/widget/GridLayoutManager$㚬;->உ:Landroid/util/SparseIntArray;

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Landroidx/recyclerview/widget/GridLayoutManager$㚬;->䂻:Landroid/util/SparseIntArray;

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/recyclerview/widget/GridLayoutManager$㚬;->㚬:Z

    iput-boolean v0, p0, Landroidx/recyclerview/widget/GridLayoutManager$㚬;->㺴:Z

    return-void
.end method

.method public static உ(Landroid/util/SparseIntArray;I)I
    .locals 4

    invoke-virtual {p0}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    :goto_0
    if-gt v1, v0, :cond_1

    add-int v2, v1, v0

    ushr-int/lit8 v2, v2, 0x1

    invoke-virtual {p0, v2}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v3

    if-ge v3, p1, :cond_0

    add-int/lit8 v2, v2, 0x1

    move v1, v2

    goto :goto_0

    :cond_0
    add-int/lit8 v2, v2, -0x1

    move v0, v2

    goto :goto_0

    :cond_1
    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_2

    invoke-virtual {p0}, Landroid/util/SparseIntArray;->size()I

    move-result p1

    if-ge v1, p1, :cond_2

    invoke-virtual {p0, v1}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result p0

    return p0

    :cond_2
    const/4 p0, -0x1

    return p0
.end method


# virtual methods
.method public ᆻ()V
    .locals 1

    iget-object v0, p0, Landroidx/recyclerview/widget/GridLayoutManager$㚬;->䂻:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    return-void
.end method

.method public abstract ḓ(II)I
.end method

.method public ℓ()V
    .locals 1

    iget-object v0, p0, Landroidx/recyclerview/widget/GridLayoutManager$㚬;->உ:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    return-void
.end method

.method public 㚬(II)I
    .locals 2

    iget-boolean v0, p0, Landroidx/recyclerview/widget/GridLayoutManager$㚬;->㚬:Z

    if-nez v0, :cond_0

    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/GridLayoutManager$㚬;->ḓ(II)I

    move-result p1

    return p1

    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/GridLayoutManager$㚬;->உ:Landroid/util/SparseIntArray;

    const/4 v1, -0x1

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    if-eq v0, v1, :cond_1

    return v0

    :cond_1
    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/GridLayoutManager$㚬;->ḓ(II)I

    move-result p2

    iget-object v0, p0, Landroidx/recyclerview/widget/GridLayoutManager$㚬;->உ:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseIntArray;->put(II)V

    return p2
.end method

.method public 㺴(II)I
    .locals 6

    iget-boolean v0, p0, Landroidx/recyclerview/widget/GridLayoutManager$㚬;->㺴:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/recyclerview/widget/GridLayoutManager$㚬;->䂻:Landroid/util/SparseIntArray;

    invoke-static {v0, p1}, Landroidx/recyclerview/widget/GridLayoutManager$㚬;->உ(Landroid/util/SparseIntArray;I)I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    iget-object v2, p0, Landroidx/recyclerview/widget/GridLayoutManager$㚬;->䂻:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseIntArray;->get(I)I

    move-result v2

    add-int/lit8 v3, v0, 0x1

    invoke-virtual {p0, v0, p2}, Landroidx/recyclerview/widget/GridLayoutManager$㚬;->㚬(II)I

    move-result v4

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/GridLayoutManager$㚬;->䆀(I)I

    move-result v0

    add-int/2addr v4, v0

    if-ne v4, p2, :cond_1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    const/4 v4, 0x0

    :cond_1
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/GridLayoutManager$㚬;->䆀(I)I

    move-result v0

    :goto_1
    if-ge v3, p1, :cond_4

    invoke-virtual {p0, v3}, Landroidx/recyclerview/widget/GridLayoutManager$㚬;->䆀(I)I

    move-result v5

    add-int/2addr v4, v5

    if-ne v4, p2, :cond_2

    add-int/lit8 v2, v2, 0x1

    const/4 v4, 0x0

    goto :goto_2

    :cond_2
    if-le v4, p2, :cond_3

    add-int/lit8 v2, v2, 0x1

    move v4, v5

    :cond_3
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_4
    add-int/2addr v4, v0

    if-le v4, p2, :cond_5

    add-int/lit8 v2, v2, 0x1

    :cond_5
    return v2
.end method

.method public 䂻(II)I
    .locals 2

    iget-boolean v0, p0, Landroidx/recyclerview/widget/GridLayoutManager$㚬;->㺴:Z

    if-nez v0, :cond_0

    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/GridLayoutManager$㚬;->㺴(II)I

    move-result p1

    return p1

    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/GridLayoutManager$㚬;->䂻:Landroid/util/SparseIntArray;

    const/4 v1, -0x1

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    if-eq v0, v1, :cond_1

    return v0

    :cond_1
    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/GridLayoutManager$㚬;->㺴(II)I

    move-result p2

    iget-object v0, p0, Landroidx/recyclerview/widget/GridLayoutManager$㚬;->䂻:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseIntArray;->put(II)V

    return p2
.end method

.method public abstract 䆀(I)I
.end method
