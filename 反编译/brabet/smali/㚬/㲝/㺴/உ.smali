.class public L㚬/㲝/㺴/உ;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements L㚬/㲝/㺴/ㄏ$உ;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        L㚬/㲝/㺴/உ$உ;,
        L㚬/㲝/㺴/உ$䂻;
    }
.end annotation


# instance fields
.field public உ:L㚬/ℓ/㹖/㺴;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "L\u36ac/\u2113/\u3e56/\u3eb4<",
            "L\u36ac/\u3c9d/\u3eb4/\u0b89$\u40bb;",
            ">;"
        }
    .end annotation
.end field

.field public final ᆻ:L㚬/㲝/㺴/ㄏ;

.field public ḓ:Ljava/lang/Runnable;

.field public ℓ:I

.field public final 㚬:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "L\u36ac/\u3c9d/\u3eb4/\u0b89$\u40bb;",
            ">;"
        }
    .end annotation
.end field

.field public final 㺴:L㚬/㲝/㺴/உ$உ;

.field public final 䂻:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "L\u36ac/\u3c9d/\u3eb4/\u0b89$\u40bb;",
            ">;"
        }
    .end annotation
.end field

.field public final 䆀:Z


# direct methods
.method public constructor <init>(L㚬/㲝/㺴/உ$உ;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, L㚬/㲝/㺴/உ;-><init>(L㚬/㲝/㺴/உ$உ;Z)V

    return-void
.end method

.method public constructor <init>(L㚬/㲝/㺴/உ$உ;Z)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, L㚬/ℓ/㹖/ḓ;

    const/16 v1, 0x1e

    invoke-direct {v0, v1}, L㚬/ℓ/㹖/ḓ;-><init>(I)V

    iput-object v0, p0, L㚬/㲝/㺴/உ;->உ:L㚬/ℓ/㹖/㺴;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, L㚬/㲝/㺴/உ;->䂻:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, L㚬/㲝/㺴/உ;->㚬:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput v0, p0, L㚬/㲝/㺴/உ;->ℓ:I

    iput-object p1, p0, L㚬/㲝/㺴/உ;->㺴:L㚬/㲝/㺴/உ$உ;

    iput-boolean p2, p0, L㚬/㲝/㺴/உ;->䆀:Z

    new-instance p1, L㚬/㲝/㺴/ㄏ;

    invoke-direct {p1, p0}, L㚬/㲝/㺴/ㄏ;-><init>(L㚬/㲝/㺴/ㄏ$உ;)V

    iput-object p1, p0, L㚬/㲝/㺴/உ;->ᆻ:L㚬/㲝/㺴/ㄏ;

    return-void
.end method


# virtual methods
.method public உ(L㚬/㲝/㺴/உ$䂻;)V
    .locals 1

    iget-boolean v0, p0, L㚬/㲝/㺴/உ;->䆀:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p1, L㚬/㲝/㺴/உ$䂻;->㚬:Ljava/lang/Object;

    iget-object v0, p0, L㚬/㲝/㺴/உ;->உ:L㚬/ℓ/㹖/㺴;

    invoke-interface {v0, p1}, L㚬/ℓ/㹖/㺴;->உ(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public ಫ()V
    .locals 7

    invoke-virtual {p0}, L㚬/㲝/㺴/உ;->ㄏ()V

    iget-object v0, p0, L㚬/㲝/㺴/உ;->䂻:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_5

    iget-object v3, p0, L㚬/㲝/㺴/உ;->䂻:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, L㚬/㲝/㺴/உ$䂻;

    iget v4, v3, L㚬/㲝/㺴/உ$䂻;->உ:I

    const/4 v5, 0x1

    if-eq v4, v5, :cond_3

    const/4 v5, 0x2

    if-eq v4, v5, :cond_2

    const/4 v5, 0x4

    if-eq v4, v5, :cond_1

    const/16 v5, 0x8

    if-eq v4, v5, :cond_0

    goto :goto_1

    :cond_0
    iget-object v4, p0, L㚬/㲝/㺴/உ;->㺴:L㚬/㲝/㺴/உ$உ;

    invoke-interface {v4, v3}, L㚬/㲝/㺴/உ$உ;->䂻(L㚬/㲝/㺴/உ$䂻;)V

    iget-object v4, p0, L㚬/㲝/㺴/உ;->㺴:L㚬/㲝/㺴/உ$உ;

    iget v5, v3, L㚬/㲝/㺴/உ$䂻;->䂻:I

    iget v3, v3, L㚬/㲝/㺴/உ$䂻;->㺴:I

    invoke-interface {v4, v5, v3}, L㚬/㲝/㺴/உ$உ;->உ(II)V

    goto :goto_1

    :cond_1
    iget-object v4, p0, L㚬/㲝/㺴/உ;->㺴:L㚬/㲝/㺴/உ$உ;

    invoke-interface {v4, v3}, L㚬/㲝/㺴/உ$உ;->䂻(L㚬/㲝/㺴/உ$䂻;)V

    iget-object v4, p0, L㚬/㲝/㺴/உ;->㺴:L㚬/㲝/㺴/உ$உ;

    iget v5, v3, L㚬/㲝/㺴/உ$䂻;->䂻:I

    iget v6, v3, L㚬/㲝/㺴/உ$䂻;->㺴:I

    iget-object v3, v3, L㚬/㲝/㺴/உ$䂻;->㚬:Ljava/lang/Object;

    invoke-interface {v4, v5, v6, v3}, L㚬/㲝/㺴/உ$உ;->ℓ(IILjava/lang/Object;)V

    goto :goto_1

    :cond_2
    iget-object v4, p0, L㚬/㲝/㺴/உ;->㺴:L㚬/㲝/㺴/உ$உ;

    invoke-interface {v4, v3}, L㚬/㲝/㺴/உ$உ;->䂻(L㚬/㲝/㺴/உ$䂻;)V

    iget-object v4, p0, L㚬/㲝/㺴/உ;->㺴:L㚬/㲝/㺴/உ$உ;

    iget v5, v3, L㚬/㲝/㺴/உ$䂻;->䂻:I

    iget v3, v3, L㚬/㲝/㺴/உ$䂻;->㺴:I

    invoke-interface {v4, v5, v3}, L㚬/㲝/㺴/உ$உ;->㺴(II)V

    goto :goto_1

    :cond_3
    iget-object v4, p0, L㚬/㲝/㺴/உ;->㺴:L㚬/㲝/㺴/உ$உ;

    invoke-interface {v4, v3}, L㚬/㲝/㺴/உ$உ;->䂻(L㚬/㲝/㺴/உ$䂻;)V

    iget-object v4, p0, L㚬/㲝/㺴/உ;->㺴:L㚬/㲝/㺴/உ$உ;

    iget v5, v3, L㚬/㲝/㺴/உ$䂻;->䂻:I

    iget v3, v3, L㚬/㲝/㺴/உ$䂻;->㺴:I

    invoke-interface {v4, v5, v3}, L㚬/㲝/㺴/உ$உ;->ᆻ(II)V

    :goto_1
    iget-object v3, p0, L㚬/㲝/㺴/உ;->ḓ:Ljava/lang/Runnable;

    if-eqz v3, :cond_4

    invoke-interface {v3}, Ljava/lang/Runnable;->run()V

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_5
    iget-object v0, p0, L㚬/㲝/㺴/உ;->䂻:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, L㚬/㲝/㺴/உ;->ḙ(Ljava/util/List;)V

    iput v1, p0, L㚬/㲝/㺴/உ;->ℓ:I

    return-void
.end method

.method public ཇ(II)I
    .locals 5

    iget-object v0, p0, L㚬/㲝/㺴/உ;->㚬:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_0
    if-ge p2, v0, :cond_6

    iget-object v1, p0, L㚬/㲝/㺴/உ;->㚬:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, L㚬/㲝/㺴/உ$䂻;

    iget v2, v1, L㚬/㲝/㺴/உ$䂻;->உ:I

    const/16 v3, 0x8

    if-ne v2, v3, :cond_2

    iget v2, v1, L㚬/㲝/㺴/உ$䂻;->䂻:I

    if-ne v2, p1, :cond_0

    iget p1, v1, L㚬/㲝/㺴/உ$䂻;->㺴:I

    goto :goto_1

    :cond_0
    if-ge v2, p1, :cond_1

    add-int/lit8 p1, p1, -0x1

    :cond_1
    iget v1, v1, L㚬/㲝/㺴/உ$䂻;->㺴:I

    if-gt v1, p1, :cond_5

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_2
    iget v3, v1, L㚬/㲝/㺴/உ$䂻;->䂻:I

    if-gt v3, p1, :cond_5

    const/4 v4, 0x2

    if-ne v2, v4, :cond_4

    iget v1, v1, L㚬/㲝/㺴/உ$䂻;->㺴:I

    add-int/2addr v3, v1

    if-ge p1, v3, :cond_3

    const/4 p1, -0x1

    return p1

    :cond_3
    sub-int/2addr p1, v1

    goto :goto_1

    :cond_4
    const/4 v3, 0x1

    if-ne v2, v3, :cond_5

    iget v1, v1, L㚬/㲝/㺴/உ$䂻;->㺴:I

    add-int/2addr p1, v1

    :cond_5
    :goto_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_6
    return p1
.end method

.method public ბ()Z
    .locals 1

    iget-object v0, p0, L㚬/㲝/㺴/உ;->䂻:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final ᆻ(L㚬/㲝/㺴/உ$䂻;)V
    .locals 9

    iget v0, p1, L㚬/㲝/㺴/உ$䂻;->䂻:I

    iget v1, p1, L㚬/㲝/㺴/உ$䂻;->㺴:I

    add-int/2addr v1, v0

    const/4 v2, 0x0

    const/4 v3, -0x1

    move v3, v0

    const/4 v4, -0x1

    const/4 v5, 0x0

    :goto_0
    const/4 v6, 0x4

    if-ge v0, v1, :cond_4

    iget-object v7, p0, L㚬/㲝/㺴/உ;->㺴:L㚬/㲝/㺴/உ$உ;

    invoke-interface {v7, v0}, L㚬/㲝/㺴/உ$உ;->㚬(I)Landroidx/recyclerview/widget/RecyclerView$㰫;

    move-result-object v7

    const/4 v8, 0x1

    if-nez v7, :cond_2

    invoke-virtual {p0, v0}, L㚬/㲝/㺴/உ;->ℓ(I)Z

    move-result v7

    if-eqz v7, :cond_0

    goto :goto_1

    :cond_0
    if-ne v4, v8, :cond_1

    iget-object v4, p1, L㚬/㲝/㺴/உ$䂻;->㚬:Ljava/lang/Object;

    invoke-virtual {p0, v6, v3, v5, v4}, L㚬/㲝/㺴/உ;->䂻(IIILjava/lang/Object;)L㚬/㲝/㺴/உ$䂻;

    move-result-object v3

    invoke-virtual {p0, v3}, L㚬/㲝/㺴/உ;->㞘(L㚬/㲝/㺴/உ$䂻;)V

    move v3, v0

    const/4 v5, 0x0

    :cond_1
    const/4 v4, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    if-nez v4, :cond_3

    iget-object v4, p1, L㚬/㲝/㺴/உ$䂻;->㚬:Ljava/lang/Object;

    invoke-virtual {p0, v6, v3, v5, v4}, L㚬/㲝/㺴/உ;->䂻(IIILjava/lang/Object;)L㚬/㲝/㺴/உ$䂻;

    move-result-object v3

    invoke-virtual {p0, v3}, L㚬/㲝/㺴/உ;->㧦(L㚬/㲝/㺴/உ$䂻;)V

    move v3, v0

    const/4 v5, 0x0

    :cond_3
    const/4 v4, 0x1

    :goto_2
    add-int/2addr v5, v8

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    iget v0, p1, L㚬/㲝/㺴/உ$䂻;->㺴:I

    if-eq v5, v0, :cond_5

    iget-object v0, p1, L㚬/㲝/㺴/உ$䂻;->㚬:Ljava/lang/Object;

    invoke-virtual {p0, p1}, L㚬/㲝/㺴/உ;->உ(L㚬/㲝/㺴/உ$䂻;)V

    invoke-virtual {p0, v6, v3, v5, v0}, L㚬/㲝/㺴/உ;->䂻(IIILjava/lang/Object;)L㚬/㲝/㺴/உ$䂻;

    move-result-object p1

    :cond_5
    if-nez v4, :cond_6

    invoke-virtual {p0, p1}, L㚬/㲝/㺴/உ;->㧦(L㚬/㲝/㺴/உ$䂻;)V

    goto :goto_3

    :cond_6
    invoke-virtual {p0, p1}, L㚬/㲝/㺴/உ;->㞘(L㚬/㲝/㺴/உ$䂻;)V

    :goto_3
    return-void
.end method

.method public ᓭ(I)Z
    .locals 1

    iget v0, p0, L㚬/㲝/㺴/உ;->ℓ:I

    and-int/2addr p1, v0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public ḓ(I)I
    .locals 5

    iget-object v0, p0, L㚬/㲝/㺴/உ;->䂻:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_7

    iget-object v2, p0, L㚬/㲝/㺴/உ;->䂻:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, L㚬/㲝/㺴/உ$䂻;

    iget v3, v2, L㚬/㲝/㺴/உ$䂻;->உ:I

    const/4 v4, 0x1

    if-eq v3, v4, :cond_5

    const/4 v4, 0x2

    if-eq v3, v4, :cond_3

    const/16 v4, 0x8

    if-eq v3, v4, :cond_0

    goto :goto_1

    :cond_0
    iget v3, v2, L㚬/㲝/㺴/உ$䂻;->䂻:I

    if-ne v3, p1, :cond_1

    iget p1, v2, L㚬/㲝/㺴/உ$䂻;->㺴:I

    goto :goto_1

    :cond_1
    if-ge v3, p1, :cond_2

    add-int/lit8 p1, p1, -0x1

    :cond_2
    iget v2, v2, L㚬/㲝/㺴/உ$䂻;->㺴:I

    if-gt v2, p1, :cond_6

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_3
    iget v3, v2, L㚬/㲝/㺴/உ$䂻;->䂻:I

    if-gt v3, p1, :cond_6

    iget v2, v2, L㚬/㲝/㺴/உ$䂻;->㺴:I

    add-int/2addr v3, v2

    if-le v3, p1, :cond_4

    const/4 p1, -0x1

    return p1

    :cond_4
    sub-int/2addr p1, v2

    goto :goto_1

    :cond_5
    iget v3, v2, L㚬/㲝/㺴/உ$䂻;->䂻:I

    if-gt v3, p1, :cond_6

    iget v2, v2, L㚬/㲝/㺴/உ$䂻;->㺴:I

    add-int/2addr p1, v2

    :cond_6
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_7
    return p1
.end method

.method public ḙ(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "L\u36ac/\u3c9d/\u3eb4/\u0b89$\u40bb;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, L㚬/㲝/㺴/உ$䂻;

    invoke-virtual {p0, v2}, L㚬/㲝/㺴/உ;->உ(L㚬/㲝/㺴/உ$䂻;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->clear()V

    return-void
.end method

.method public ἥ(I)I
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, L㚬/㲝/㺴/உ;->ཇ(II)I

    move-result p1

    return p1
.end method

.method public final ℓ(I)Z
    .locals 7

    iget-object v0, p0, L㚬/㲝/㺴/உ;->㚬:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_3

    iget-object v3, p0, L㚬/㲝/㺴/உ;->㚬:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, L㚬/㲝/㺴/உ$䂻;

    iget v4, v3, L㚬/㲝/㺴/உ$䂻;->உ:I

    const/16 v5, 0x8

    const/4 v6, 0x1

    if-ne v4, v5, :cond_0

    iget v3, v3, L㚬/㲝/㺴/உ$䂻;->㺴:I

    add-int/lit8 v4, v2, 0x1

    invoke-virtual {p0, v3, v4}, L㚬/㲝/㺴/உ;->ཇ(II)I

    move-result v3

    if-ne v3, p1, :cond_2

    return v6

    :cond_0
    if-ne v4, v6, :cond_2

    iget v4, v3, L㚬/㲝/㺴/உ$䂻;->䂻:I

    iget v3, v3, L㚬/㲝/㺴/உ$䂻;->㺴:I

    add-int/2addr v3, v4

    :goto_1
    if-ge v4, v3, :cond_2

    add-int/lit8 v5, v2, 0x1

    invoke-virtual {p0, v4, v5}, L㚬/㲝/㺴/உ;->ཇ(II)I

    move-result v5

    if-ne v5, p1, :cond_1

    return v6

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return v1
.end method

.method public ㄏ()V
    .locals 5

    iget-object v0, p0, L㚬/㲝/㺴/உ;->㚬:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    iget-object v3, p0, L㚬/㲝/㺴/உ;->㺴:L㚬/㲝/㺴/உ$உ;

    iget-object v4, p0, L㚬/㲝/㺴/உ;->㚬:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, L㚬/㲝/㺴/உ$䂻;

    invoke-interface {v3, v4}, L㚬/㲝/㺴/உ$உ;->䂻(L㚬/㲝/㺴/உ$䂻;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, L㚬/㲝/㺴/உ;->㚬:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, L㚬/㲝/㺴/உ;->ḙ(Ljava/util/List;)V

    iput v1, p0, L㚬/㲝/㺴/உ;->ℓ:I

    return-void
.end method

.method public 㖪()V
    .locals 1

    iget-object v0, p0, L㚬/㲝/㺴/உ;->䂻:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, L㚬/㲝/㺴/உ;->ḙ(Ljava/util/List;)V

    iget-object v0, p0, L㚬/㲝/㺴/உ;->㚬:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, L㚬/㲝/㺴/உ;->ḙ(Ljava/util/List;)V

    const/4 v0, 0x0

    iput v0, p0, L㚬/㲝/㺴/உ;->ℓ:I

    return-void
.end method

.method public final 㚬(L㚬/㲝/㺴/உ$䂻;)V
    .locals 0

    invoke-virtual {p0, p1}, L㚬/㲝/㺴/உ;->㞘(L㚬/㲝/㺴/உ$䂻;)V

    return-void
.end method

.method public final 㞘(L㚬/㲝/㺴/உ$䂻;)V
    .locals 3

    iget-object v0, p0, L㚬/㲝/㺴/உ;->㚬:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v0, p1, L㚬/㲝/㺴/உ$䂻;->உ:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    iget-object v0, p0, L㚬/㲝/㺴/உ;->㺴:L㚬/㲝/㺴/உ$உ;

    iget v1, p1, L㚬/㲝/㺴/உ$䂻;->䂻:I

    iget p1, p1, L㚬/㲝/㺴/உ$䂻;->㺴:I

    invoke-interface {v0, v1, p1}, L㚬/㲝/㺴/உ$உ;->உ(II)V

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown update op type for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, L㚬/㲝/㺴/உ;->㺴:L㚬/㲝/㺴/உ$உ;

    iget v1, p1, L㚬/㲝/㺴/உ$䂻;->䂻:I

    iget v2, p1, L㚬/㲝/㺴/உ$䂻;->㺴:I

    iget-object p1, p1, L㚬/㲝/㺴/உ$䂻;->㚬:Ljava/lang/Object;

    invoke-interface {v0, v1, v2, p1}, L㚬/㲝/㺴/உ$உ;->ℓ(IILjava/lang/Object;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, L㚬/㲝/㺴/உ;->㺴:L㚬/㲝/㺴/உ$உ;

    iget v1, p1, L㚬/㲝/㺴/உ$䂻;->䂻:I

    iget p1, p1, L㚬/㲝/㺴/உ$䂻;->㺴:I

    invoke-interface {v0, v1, p1}, L㚬/㲝/㺴/உ$உ;->ḓ(II)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, L㚬/㲝/㺴/உ;->㺴:L㚬/㲝/㺴/உ$உ;

    iget v1, p1, L㚬/㲝/㺴/உ$䂻;->䂻:I

    iget p1, p1, L㚬/㲝/㺴/உ$䂻;->㺴:I

    invoke-interface {v0, v1, p1}, L㚬/㲝/㺴/உ$உ;->ᆻ(II)V

    :goto_0
    return-void
.end method

.method public final 㢏(II)I
    .locals 8

    iget-object v0, p0, L㚬/㲝/㺴/உ;->㚬:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    const/16 v2, 0x8

    if-ltz v0, :cond_d

    iget-object v3, p0, L㚬/㲝/㺴/உ;->㚬:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, L㚬/㲝/㺴/உ$䂻;

    iget v4, v3, L㚬/㲝/㺴/உ$䂻;->உ:I

    const/4 v5, 0x2

    if-ne v4, v2, :cond_8

    iget v2, v3, L㚬/㲝/㺴/உ$䂻;->䂻:I

    iget v4, v3, L㚬/㲝/㺴/உ$䂻;->㺴:I

    if-ge v2, v4, :cond_0

    move v6, v2

    move v7, v4

    goto :goto_1

    :cond_0
    move v7, v2

    move v6, v4

    :goto_1
    if-lt p1, v6, :cond_6

    if-gt p1, v7, :cond_6

    if-ne v6, v2, :cond_3

    if-ne p2, v1, :cond_1

    add-int/lit8 v4, v4, 0x1

    :goto_2
    iput v4, v3, L㚬/㲝/㺴/உ$䂻;->㺴:I

    goto :goto_3

    :cond_1
    if-ne p2, v5, :cond_2

    add-int/lit8 v4, v4, -0x1

    goto :goto_2

    :cond_2
    :goto_3
    add-int/lit8 p1, p1, 0x1

    goto :goto_8

    :cond_3
    if-ne p2, v1, :cond_4

    add-int/lit8 v2, v2, 0x1

    :goto_4
    iput v2, v3, L㚬/㲝/㺴/உ$䂻;->䂻:I

    goto :goto_5

    :cond_4
    if-ne p2, v5, :cond_5

    add-int/lit8 v2, v2, -0x1

    goto :goto_4

    :cond_5
    :goto_5
    add-int/lit8 p1, p1, -0x1

    goto :goto_8

    :cond_6
    if-ge p1, v2, :cond_c

    if-ne p2, v1, :cond_7

    add-int/lit8 v2, v2, 0x1

    iput v2, v3, L㚬/㲝/㺴/உ$䂻;->䂻:I

    add-int/lit8 v4, v4, 0x1

    :goto_6
    iput v4, v3, L㚬/㲝/㺴/உ$䂻;->㺴:I

    goto :goto_8

    :cond_7
    if-ne p2, v5, :cond_c

    add-int/lit8 v2, v2, -0x1

    iput v2, v3, L㚬/㲝/㺴/உ$䂻;->䂻:I

    add-int/lit8 v4, v4, -0x1

    goto :goto_6

    :cond_8
    iget v2, v3, L㚬/㲝/㺴/உ$䂻;->䂻:I

    if-gt v2, p1, :cond_a

    if-ne v4, v1, :cond_9

    iget v2, v3, L㚬/㲝/㺴/உ$䂻;->㺴:I

    sub-int/2addr p1, v2

    goto :goto_8

    :cond_9
    if-ne v4, v5, :cond_c

    iget v2, v3, L㚬/㲝/㺴/உ$䂻;->㺴:I

    add-int/2addr p1, v2

    goto :goto_8

    :cond_a
    if-ne p2, v1, :cond_b

    add-int/lit8 v2, v2, 0x1

    :goto_7
    iput v2, v3, L㚬/㲝/㺴/உ$䂻;->䂻:I

    goto :goto_8

    :cond_b
    if-ne p2, v5, :cond_c

    add-int/lit8 v2, v2, -0x1

    goto :goto_7

    :cond_c
    :goto_8
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_d
    iget-object p2, p0, L㚬/㲝/㺴/உ;->㚬:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    sub-int/2addr p2, v1

    :goto_9
    if-ltz p2, :cond_11

    iget-object v0, p0, L㚬/㲝/㺴/உ;->㚬:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, L㚬/㲝/㺴/உ$䂻;

    iget v1, v0, L㚬/㲝/㺴/உ$䂻;->உ:I

    if-ne v1, v2, :cond_e

    iget v1, v0, L㚬/㲝/㺴/உ$䂻;->㺴:I

    iget v3, v0, L㚬/㲝/㺴/உ$䂻;->䂻:I

    if-eq v1, v3, :cond_f

    if-gez v1, :cond_10

    goto :goto_a

    :cond_e
    iget v1, v0, L㚬/㲝/㺴/உ$䂻;->㺴:I

    if-gtz v1, :cond_10

    :cond_f
    :goto_a
    iget-object v1, p0, L㚬/㲝/㺴/உ;->㚬:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    invoke-virtual {p0, v0}, L㚬/㲝/㺴/உ;->உ(L㚬/㲝/㺴/உ$䂻;)V

    :cond_10
    add-int/lit8 p2, p2, -0x1

    goto :goto_9

    :cond_11
    return p1
.end method

.method public final 㧦(L㚬/㲝/㺴/உ$䂻;)V
    .locals 12

    iget v0, p1, L㚬/㲝/㺴/உ$䂻;->உ:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_9

    const/16 v2, 0x8

    if-eq v0, v2, :cond_9

    iget v2, p1, L㚬/㲝/㺴/உ$䂻;->䂻:I

    invoke-virtual {p0, v2, v0}, L㚬/㲝/㺴/உ;->㢏(II)I

    move-result v0

    iget v2, p1, L㚬/㲝/㺴/உ$䂻;->䂻:I

    iget v3, p1, L㚬/㲝/㺴/உ$䂻;->உ:I

    const/4 v4, 0x2

    const/4 v5, 0x4

    const/4 v6, 0x0

    if-eq v3, v4, :cond_1

    if-ne v3, v5, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "op should be remove or update."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    const/4 v7, 0x1

    const/4 v8, 0x1

    :goto_1
    iget v9, p1, L㚬/㲝/㺴/உ$䂻;->㺴:I

    if-ge v7, v9, :cond_7

    iget v9, p1, L㚬/㲝/㺴/உ$䂻;->䂻:I

    mul-int v10, v3, v7

    add-int/2addr v9, v10

    iget v10, p1, L㚬/㲝/㺴/உ$䂻;->உ:I

    invoke-virtual {p0, v9, v10}, L㚬/㲝/㺴/உ;->㢏(II)I

    move-result v9

    iget v10, p1, L㚬/㲝/㺴/உ$䂻;->உ:I

    if-eq v10, v4, :cond_4

    if-eq v10, v5, :cond_3

    :cond_2
    const/4 v11, 0x0

    goto :goto_3

    :cond_3
    add-int/lit8 v11, v0, 0x1

    if-ne v9, v11, :cond_2

    :goto_2
    const/4 v11, 0x1

    goto :goto_3

    :cond_4
    if-ne v9, v0, :cond_2

    goto :goto_2

    :goto_3
    if-eqz v11, :cond_5

    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    :cond_5
    iget-object v11, p1, L㚬/㲝/㺴/உ$䂻;->㚬:Ljava/lang/Object;

    invoke-virtual {p0, v10, v0, v8, v11}, L㚬/㲝/㺴/உ;->䂻(IIILjava/lang/Object;)L㚬/㲝/㺴/உ$䂻;

    move-result-object v0

    invoke-virtual {p0, v0, v2}, L㚬/㲝/㺴/உ;->㹖(L㚬/㲝/㺴/உ$䂻;I)V

    invoke-virtual {p0, v0}, L㚬/㲝/㺴/உ;->உ(L㚬/㲝/㺴/உ$䂻;)V

    iget v0, p1, L㚬/㲝/㺴/உ$䂻;->உ:I

    if-ne v0, v5, :cond_6

    add-int/2addr v2, v8

    :cond_6
    move v0, v9

    const/4 v8, 0x1

    :goto_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_7
    iget-object v1, p1, L㚬/㲝/㺴/உ$䂻;->㚬:Ljava/lang/Object;

    invoke-virtual {p0, p1}, L㚬/㲝/㺴/உ;->உ(L㚬/㲝/㺴/உ$䂻;)V

    if-lez v8, :cond_8

    iget p1, p1, L㚬/㲝/㺴/உ$䂻;->உ:I

    invoke-virtual {p0, p1, v0, v8, v1}, L㚬/㲝/㺴/உ;->䂻(IIILjava/lang/Object;)L㚬/㲝/㺴/உ$䂻;

    move-result-object p1

    invoke-virtual {p0, p1, v2}, L㚬/㲝/㺴/உ;->㹖(L㚬/㲝/㺴/உ$䂻;I)V

    invoke-virtual {p0, p1}, L㚬/㲝/㺴/உ;->உ(L㚬/㲝/㺴/உ$䂻;)V

    :cond_8
    return-void

    :cond_9
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "should not dispatch add or move for pre layout"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public 㭲()V
    .locals 5

    iget-object v0, p0, L㚬/㲝/㺴/உ;->ᆻ:L㚬/㲝/㺴/ㄏ;

    iget-object v1, p0, L㚬/㲝/㺴/உ;->䂻:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, L㚬/㲝/㺴/ㄏ;->䂻(Ljava/util/List;)V

    iget-object v0, p0, L㚬/㲝/㺴/உ;->䂻:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_5

    iget-object v2, p0, L㚬/㲝/㺴/உ;->䂻:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, L㚬/㲝/㺴/உ$䂻;

    iget v3, v2, L㚬/㲝/㺴/உ$䂻;->உ:I

    const/4 v4, 0x1

    if-eq v3, v4, :cond_3

    const/4 v4, 0x2

    if-eq v3, v4, :cond_2

    const/4 v4, 0x4

    if-eq v3, v4, :cond_1

    const/16 v4, 0x8

    if-eq v3, v4, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0, v2}, L㚬/㲝/㺴/உ;->㺴(L㚬/㲝/㺴/உ$䂻;)V

    goto :goto_1

    :cond_1
    invoke-virtual {p0, v2}, L㚬/㲝/㺴/உ;->ᆻ(L㚬/㲝/㺴/உ$䂻;)V

    goto :goto_1

    :cond_2
    invoke-virtual {p0, v2}, L㚬/㲝/㺴/உ;->䆀(L㚬/㲝/㺴/உ$䂻;)V

    goto :goto_1

    :cond_3
    invoke-virtual {p0, v2}, L㚬/㲝/㺴/உ;->㚬(L㚬/㲝/㺴/உ$䂻;)V

    :goto_1
    iget-object v2, p0, L㚬/㲝/㺴/உ;->ḓ:Ljava/lang/Runnable;

    if-eqz v2, :cond_4

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_5
    iget-object v0, p0, L㚬/㲝/㺴/உ;->䂻:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public 㲝()Z
    .locals 1

    iget-object v0, p0, L㚬/㲝/㺴/உ;->㚬:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, L㚬/㲝/㺴/உ;->䂻:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public 㹖(L㚬/㲝/㺴/உ$䂻;I)V
    .locals 2

    iget-object v0, p0, L㚬/㲝/㺴/உ;->㺴:L㚬/㲝/㺴/உ$உ;

    invoke-interface {v0, p1}, L㚬/㲝/㺴/உ$உ;->䆀(L㚬/㲝/㺴/உ$䂻;)V

    iget v0, p1, L㚬/㲝/㺴/உ$䂻;->உ:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    iget-object v0, p0, L㚬/㲝/㺴/உ;->㺴:L㚬/㲝/㺴/உ$உ;

    iget v1, p1, L㚬/㲝/㺴/உ$䂻;->㺴:I

    iget-object p1, p1, L㚬/㲝/㺴/உ$䂻;->㚬:Ljava/lang/Object;

    invoke-interface {v0, p2, v1, p1}, L㚬/㲝/㺴/உ$உ;->ℓ(IILjava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "only remove and update ops can be dispatched in first pass"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    iget-object v0, p0, L㚬/㲝/㺴/உ;->㺴:L㚬/㲝/㺴/உ$உ;

    iget p1, p1, L㚬/㲝/㺴/உ$䂻;->㺴:I

    invoke-interface {v0, p2, p1}, L㚬/㲝/㺴/உ$உ;->㺴(II)V

    :goto_0
    return-void
.end method

.method public final 㺴(L㚬/㲝/㺴/உ$䂻;)V
    .locals 0

    invoke-virtual {p0, p1}, L㚬/㲝/㺴/உ;->㞘(L㚬/㲝/㺴/உ$䂻;)V

    return-void
.end method

.method public 䂻(IIILjava/lang/Object;)L㚬/㲝/㺴/உ$䂻;
    .locals 1

    iget-object v0, p0, L㚬/㲝/㺴/உ;->உ:L㚬/ℓ/㹖/㺴;

    invoke-interface {v0}, L㚬/ℓ/㹖/㺴;->䂻()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, L㚬/㲝/㺴/உ$䂻;

    if-nez v0, :cond_0

    new-instance v0, L㚬/㲝/㺴/உ$䂻;

    invoke-direct {v0, p1, p2, p3, p4}, L㚬/㲝/㺴/உ$䂻;-><init>(IIILjava/lang/Object;)V

    goto :goto_0

    :cond_0
    iput p1, v0, L㚬/㲝/㺴/உ$䂻;->உ:I

    iput p2, v0, L㚬/㲝/㺴/உ$䂻;->䂻:I

    iput p3, v0, L㚬/㲝/㺴/உ$䂻;->㺴:I

    iput-object p4, v0, L㚬/㲝/㺴/உ$䂻;->㚬:Ljava/lang/Object;

    :goto_0
    return-object v0
.end method

.method public final 䆀(L㚬/㲝/㺴/உ$䂻;)V
    .locals 10

    iget v0, p1, L㚬/㲝/㺴/உ$䂻;->䂻:I

    iget v1, p1, L㚬/㲝/㺴/உ$䂻;->㺴:I

    add-int/2addr v1, v0

    const/4 v2, 0x0

    const/4 v3, -0x1

    move v4, v0

    const/4 v5, 0x0

    :goto_0
    const/4 v6, 0x0

    const/4 v7, 0x2

    if-ge v4, v1, :cond_5

    iget-object v8, p0, L㚬/㲝/㺴/உ;->㺴:L㚬/㲝/㺴/உ$உ;

    invoke-interface {v8, v4}, L㚬/㲝/㺴/உ$உ;->㚬(I)Landroidx/recyclerview/widget/RecyclerView$㰫;

    move-result-object v8

    const/4 v9, 0x1

    if-nez v8, :cond_2

    invoke-virtual {p0, v4}, L㚬/㲝/㺴/உ;->ℓ(I)Z

    move-result v8

    if-eqz v8, :cond_0

    goto :goto_2

    :cond_0
    if-ne v3, v9, :cond_1

    invoke-virtual {p0, v7, v0, v5, v6}, L㚬/㲝/㺴/உ;->䂻(IIILjava/lang/Object;)L㚬/㲝/㺴/உ$䂻;

    move-result-object v3

    invoke-virtual {p0, v3}, L㚬/㲝/㺴/உ;->㞘(L㚬/㲝/㺴/உ$䂻;)V

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    const/4 v6, 0x0

    goto :goto_4

    :cond_2
    :goto_2
    if-nez v3, :cond_3

    invoke-virtual {p0, v7, v0, v5, v6}, L㚬/㲝/㺴/உ;->䂻(IIILjava/lang/Object;)L㚬/㲝/㺴/உ$䂻;

    move-result-object v3

    invoke-virtual {p0, v3}, L㚬/㲝/㺴/உ;->㧦(L㚬/㲝/㺴/உ$䂻;)V

    const/4 v3, 0x1

    goto :goto_3

    :cond_3
    const/4 v3, 0x0

    :goto_3
    const/4 v6, 0x1

    :goto_4
    if-eqz v3, :cond_4

    sub-int/2addr v4, v5

    sub-int/2addr v1, v5

    const/4 v5, 0x1

    goto :goto_5

    :cond_4
    add-int/lit8 v5, v5, 0x1

    :goto_5
    add-int/2addr v4, v9

    move v3, v6

    goto :goto_0

    :cond_5
    iget v1, p1, L㚬/㲝/㺴/உ$䂻;->㺴:I

    if-eq v5, v1, :cond_6

    invoke-virtual {p0, p1}, L㚬/㲝/㺴/உ;->உ(L㚬/㲝/㺴/உ$䂻;)V

    invoke-virtual {p0, v7, v0, v5, v6}, L㚬/㲝/㺴/உ;->䂻(IIILjava/lang/Object;)L㚬/㲝/㺴/உ$䂻;

    move-result-object p1

    :cond_6
    if-nez v3, :cond_7

    invoke-virtual {p0, p1}, L㚬/㲝/㺴/உ;->㧦(L㚬/㲝/㺴/உ$䂻;)V

    goto :goto_6

    :cond_7
    invoke-virtual {p0, p1}, L㚬/㲝/㺴/உ;->㞘(L㚬/㲝/㺴/உ$䂻;)V

    :goto_6
    return-void
.end method
