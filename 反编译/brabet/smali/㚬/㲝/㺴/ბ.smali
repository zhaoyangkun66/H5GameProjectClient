.class public L㚬/㲝/㺴/ბ;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        L㚬/㲝/㺴/ბ$உ;,
        L㚬/㲝/㺴/ბ$䂻;
    }
.end annotation


# instance fields
.field public final உ:L㚬/䆀/ᆻ;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "L\u36ac/\u4180/\u11bb<",
            "Landroidx/recyclerview/widget/RecyclerView$\u3c2b;",
            "L\u36ac/\u3c9d/\u3eb4/\u10d1$\u0b89;",
            ">;"
        }
    .end annotation
.end field

.field public final 䂻:L㚬/䆀/㺴;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "L\u36ac/\u4180/\u3eb4<",
            "Landroidx/recyclerview/widget/RecyclerView$\u3c2b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, L㚬/䆀/ᆻ;

    invoke-direct {v0}, L㚬/䆀/ᆻ;-><init>()V

    iput-object v0, p0, L㚬/㲝/㺴/ბ;->உ:L㚬/䆀/ᆻ;

    new-instance v0, L㚬/䆀/㺴;

    invoke-direct {v0}, L㚬/䆀/㺴;-><init>()V

    iput-object v0, p0, L㚬/㲝/㺴/ბ;->䂻:L㚬/䆀/㺴;

    return-void
.end method


# virtual methods
.method public உ(Landroidx/recyclerview/widget/RecyclerView$㰫;Landroidx/recyclerview/widget/RecyclerView$㹖$㚬;)V
    .locals 2

    iget-object v0, p0, L㚬/㲝/㺴/ბ;->உ:L㚬/䆀/ᆻ;

    invoke-virtual {v0, p1}, L㚬/䆀/ᆻ;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, L㚬/㲝/㺴/ბ$உ;

    if-nez v0, :cond_0

    invoke-static {}, L㚬/㲝/㺴/ბ$உ;->䂻()L㚬/㲝/㺴/ბ$உ;

    move-result-object v0

    iget-object v1, p0, L㚬/㲝/㺴/ბ;->உ:L㚬/䆀/ᆻ;

    invoke-virtual {v1, p1, v0}, L㚬/䆀/ᆻ;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget p1, v0, L㚬/㲝/㺴/ბ$உ;->உ:I

    or-int/lit8 p1, p1, 0x2

    iput p1, v0, L㚬/㲝/㺴/ბ$உ;->உ:I

    iput-object p2, v0, L㚬/㲝/㺴/ბ$உ;->䂻:Landroidx/recyclerview/widget/RecyclerView$㹖$㚬;

    return-void
.end method

.method public ಫ()V
    .locals 0

    invoke-static {}, L㚬/㲝/㺴/ბ$உ;->உ()V

    return-void
.end method

.method public ཇ(Landroidx/recyclerview/widget/RecyclerView$㰫;)Landroidx/recyclerview/widget/RecyclerView$㹖$㚬;
    .locals 1

    const/4 v0, 0x4

    invoke-virtual {p0, p1, v0}, L㚬/㲝/㺴/ბ;->㹖(Landroidx/recyclerview/widget/RecyclerView$㰫;I)Landroidx/recyclerview/widget/RecyclerView$㹖$㚬;

    move-result-object p1

    return-object p1
.end method

.method public ბ(Landroidx/recyclerview/widget/RecyclerView$㰫;)V
    .locals 1

    iget-object v0, p0, L㚬/㲝/㺴/ბ;->உ:L㚬/䆀/ᆻ;

    invoke-virtual {v0, p1}, L㚬/䆀/ᆻ;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, L㚬/㲝/㺴/ბ$உ;

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget v0, p1, L㚬/㲝/㺴/ბ$உ;->உ:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p1, L㚬/㲝/㺴/ბ$உ;->உ:I

    return-void
.end method

.method public ᆻ(J)Landroidx/recyclerview/widget/RecyclerView$㰫;
    .locals 1

    iget-object v0, p0, L㚬/㲝/㺴/ბ;->䂻:L㚬/䆀/㺴;

    invoke-virtual {v0, p1, p2}, L㚬/䆀/㺴;->䆀(J)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView$㰫;

    return-object p1
.end method

.method public ᓭ(L㚬/㲝/㺴/ბ$䂻;)V
    .locals 6

    iget-object v0, p0, L㚬/㲝/㺴/ბ;->உ:L㚬/䆀/ᆻ;

    invoke-virtual {v0}, L㚬/䆀/ᆻ;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_7

    iget-object v1, p0, L㚬/㲝/㺴/ბ;->உ:L㚬/䆀/ᆻ;

    invoke-virtual {v1, v0}, L㚬/䆀/ᆻ;->ㄏ(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView$㰫;

    iget-object v2, p0, L㚬/㲝/㺴/ბ;->உ:L㚬/䆀/ᆻ;

    invoke-virtual {v2, v0}, L㚬/䆀/ᆻ;->㧦(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, L㚬/㲝/㺴/ბ$உ;

    iget v3, v2, L㚬/㲝/㺴/ბ$உ;->உ:I

    and-int/lit8 v4, v3, 0x3

    const/4 v5, 0x3

    if-ne v4, v5, :cond_0

    :goto_1
    invoke-interface {p1, v1}, L㚬/㲝/㺴/ბ$䂻;->உ(Landroidx/recyclerview/widget/RecyclerView$㰫;)V

    goto :goto_4

    :cond_0
    and-int/lit8 v4, v3, 0x1

    if-eqz v4, :cond_2

    iget-object v3, v2, L㚬/㲝/㺴/ბ$உ;->䂻:Landroidx/recyclerview/widget/RecyclerView$㹖$㚬;

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    iget-object v4, v2, L㚬/㲝/㺴/ბ$உ;->㚬:Landroidx/recyclerview/widget/RecyclerView$㹖$㚬;

    :goto_2
    invoke-interface {p1, v1, v3, v4}, L㚬/㲝/㺴/ბ$䂻;->㚬(Landroidx/recyclerview/widget/RecyclerView$㰫;Landroidx/recyclerview/widget/RecyclerView$㹖$㚬;Landroidx/recyclerview/widget/RecyclerView$㹖$㚬;)V

    goto :goto_4

    :cond_2
    and-int/lit8 v4, v3, 0xe

    const/16 v5, 0xe

    if-ne v4, v5, :cond_3

    :goto_3
    iget-object v3, v2, L㚬/㲝/㺴/ბ$உ;->䂻:Landroidx/recyclerview/widget/RecyclerView$㹖$㚬;

    iget-object v4, v2, L㚬/㲝/㺴/ბ$உ;->㚬:Landroidx/recyclerview/widget/RecyclerView$㹖$㚬;

    invoke-interface {p1, v1, v3, v4}, L㚬/㲝/㺴/ბ$䂻;->䂻(Landroidx/recyclerview/widget/RecyclerView$㰫;Landroidx/recyclerview/widget/RecyclerView$㹖$㚬;Landroidx/recyclerview/widget/RecyclerView$㹖$㚬;)V

    goto :goto_4

    :cond_3
    and-int/lit8 v4, v3, 0xc

    const/16 v5, 0xc

    if-ne v4, v5, :cond_4

    iget-object v3, v2, L㚬/㲝/㺴/ბ$உ;->䂻:Landroidx/recyclerview/widget/RecyclerView$㹖$㚬;

    iget-object v4, v2, L㚬/㲝/㺴/ბ$உ;->㚬:Landroidx/recyclerview/widget/RecyclerView$㹖$㚬;

    invoke-interface {p1, v1, v3, v4}, L㚬/㲝/㺴/ბ$䂻;->㺴(Landroidx/recyclerview/widget/RecyclerView$㰫;Landroidx/recyclerview/widget/RecyclerView$㹖$㚬;Landroidx/recyclerview/widget/RecyclerView$㹖$㚬;)V

    goto :goto_4

    :cond_4
    and-int/lit8 v4, v3, 0x4

    if-eqz v4, :cond_5

    iget-object v3, v2, L㚬/㲝/㺴/ბ$உ;->䂻:Landroidx/recyclerview/widget/RecyclerView$㹖$㚬;

    const/4 v4, 0x0

    goto :goto_2

    :cond_5
    and-int/lit8 v3, v3, 0x8

    if-eqz v3, :cond_6

    goto :goto_3

    :cond_6
    :goto_4
    invoke-static {v2}, L㚬/㲝/㺴/ბ$உ;->㚬(L㚬/㲝/㺴/ბ$உ;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_7
    return-void
.end method

.method public ḓ(Landroidx/recyclerview/widget/RecyclerView$㰫;Landroidx/recyclerview/widget/RecyclerView$㹖$㚬;)V
    .locals 2

    iget-object v0, p0, L㚬/㲝/㺴/ბ;->உ:L㚬/䆀/ᆻ;

    invoke-virtual {v0, p1}, L㚬/䆀/ᆻ;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, L㚬/㲝/㺴/ბ$உ;

    if-nez v0, :cond_0

    invoke-static {}, L㚬/㲝/㺴/ბ$உ;->䂻()L㚬/㲝/㺴/ბ$உ;

    move-result-object v0

    iget-object v1, p0, L㚬/㲝/㺴/ბ;->உ:L㚬/䆀/ᆻ;

    invoke-virtual {v1, p1, v0}, L㚬/䆀/ᆻ;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iput-object p2, v0, L㚬/㲝/㺴/ბ$உ;->䂻:Landroidx/recyclerview/widget/RecyclerView$㹖$㚬;

    iget p1, v0, L㚬/㲝/㺴/ბ$உ;->உ:I

    or-int/lit8 p1, p1, 0x4

    iput p1, v0, L㚬/㲝/㺴/ბ$உ;->உ:I

    return-void
.end method

.method public ἥ(Landroidx/recyclerview/widget/RecyclerView$㰫;)Landroidx/recyclerview/widget/RecyclerView$㹖$㚬;
    .locals 1

    const/16 v0, 0x8

    invoke-virtual {p0, p1, v0}, L㚬/㲝/㺴/ბ;->㹖(Landroidx/recyclerview/widget/RecyclerView$㰫;I)Landroidx/recyclerview/widget/RecyclerView$㹖$㚬;

    move-result-object p1

    return-object p1
.end method

.method public ℓ(Landroidx/recyclerview/widget/RecyclerView$㰫;)Z
    .locals 1

    iget-object v0, p0, L㚬/㲝/㺴/ბ;->உ:L㚬/䆀/ᆻ;

    invoke-virtual {v0, p1}, L㚬/䆀/ᆻ;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, L㚬/㲝/㺴/ბ$உ;

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    iget p1, p1, L㚬/㲝/㺴/ბ$உ;->உ:I

    and-int/2addr p1, v0

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public ㄏ(Landroidx/recyclerview/widget/RecyclerView$㰫;)Z
    .locals 1

    iget-object v0, p0, L㚬/㲝/㺴/ბ;->உ:L㚬/䆀/ᆻ;

    invoke-virtual {v0, p1}, L㚬/䆀/ᆻ;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, L㚬/㲝/㺴/ბ$உ;

    if-eqz p1, :cond_0

    iget p1, p1, L㚬/㲝/㺴/ბ$உ;->உ:I

    and-int/lit8 p1, p1, 0x4

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public 㚬(JLandroidx/recyclerview/widget/RecyclerView$㰫;)V
    .locals 1

    iget-object v0, p0, L㚬/㲝/㺴/ბ;->䂻:L㚬/䆀/㺴;

    invoke-virtual {v0, p1, p2, p3}, L㚬/䆀/㺴;->ಫ(JLjava/lang/Object;)V

    return-void
.end method

.method public 㧦(Landroidx/recyclerview/widget/RecyclerView$㰫;)V
    .locals 0

    invoke-virtual {p0, p1}, L㚬/㲝/㺴/ბ;->ბ(Landroidx/recyclerview/widget/RecyclerView$㰫;)V

    return-void
.end method

.method public 㲝(Landroidx/recyclerview/widget/RecyclerView$㰫;)V
    .locals 2

    iget-object v0, p0, L㚬/㲝/㺴/ბ;->䂻:L㚬/䆀/㺴;

    invoke-virtual {v0}, L㚬/䆀/㺴;->ἥ()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v1, p0, L㚬/㲝/㺴/ბ;->䂻:L㚬/䆀/㺴;

    invoke-virtual {v1, v0}, L㚬/䆀/㺴;->ཇ(I)Ljava/lang/Object;

    move-result-object v1

    if-ne p1, v1, :cond_0

    iget-object v1, p0, L㚬/㲝/㺴/ბ;->䂻:L㚬/䆀/㺴;

    invoke-virtual {v1, v0}, L㚬/䆀/㺴;->㹖(I)V

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    :goto_1
    iget-object v0, p0, L㚬/㲝/㺴/ბ;->உ:L㚬/䆀/ᆻ;

    invoke-virtual {v0, p1}, L㚬/䆀/ᆻ;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, L㚬/㲝/㺴/ბ$உ;

    if-eqz p1, :cond_2

    invoke-static {p1}, L㚬/㲝/㺴/ბ$உ;->㚬(L㚬/㲝/㺴/ბ$உ;)V

    :cond_2
    return-void
.end method

.method public final 㹖(Landroidx/recyclerview/widget/RecyclerView$㰫;I)Landroidx/recyclerview/widget/RecyclerView$㹖$㚬;
    .locals 4

    iget-object v0, p0, L㚬/㲝/㺴/ბ;->உ:L㚬/䆀/ᆻ;

    invoke-virtual {v0, p1}, L㚬/䆀/ᆻ;->䆀(Ljava/lang/Object;)I

    move-result p1

    const/4 v0, 0x0

    if-gez p1, :cond_0

    return-object v0

    :cond_0
    iget-object v1, p0, L㚬/㲝/㺴/ბ;->உ:L㚬/䆀/ᆻ;

    invoke-virtual {v1, p1}, L㚬/䆀/ᆻ;->ἥ(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, L㚬/㲝/㺴/ბ$உ;

    if-eqz v1, :cond_4

    iget v2, v1, L㚬/㲝/㺴/ბ$உ;->உ:I

    and-int v3, v2, p2

    if-eqz v3, :cond_4

    not-int v0, p2

    and-int/2addr v0, v2

    iput v0, v1, L㚬/㲝/㺴/ბ$உ;->உ:I

    const/4 v2, 0x4

    if-ne p2, v2, :cond_1

    iget-object p2, v1, L㚬/㲝/㺴/ბ$உ;->䂻:Landroidx/recyclerview/widget/RecyclerView$㹖$㚬;

    goto :goto_0

    :cond_1
    const/16 v2, 0x8

    if-ne p2, v2, :cond_3

    iget-object p2, v1, L㚬/㲝/㺴/ბ$உ;->㚬:Landroidx/recyclerview/widget/RecyclerView$㹖$㚬;

    :goto_0
    and-int/lit8 v0, v0, 0xc

    if-nez v0, :cond_2

    iget-object v0, p0, L㚬/㲝/㺴/ბ;->உ:L㚬/䆀/ᆻ;

    invoke-virtual {v0, p1}, L㚬/䆀/ᆻ;->㧦(I)Ljava/lang/Object;

    invoke-static {v1}, L㚬/㲝/㺴/ბ$உ;->㚬(L㚬/㲝/㺴/ბ$உ;)V

    :cond_2
    return-object p2

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Must provide flag PRE or POST"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    return-object v0
.end method

.method public 㺴(Landroidx/recyclerview/widget/RecyclerView$㰫;Landroidx/recyclerview/widget/RecyclerView$㹖$㚬;)V
    .locals 2

    iget-object v0, p0, L㚬/㲝/㺴/ბ;->உ:L㚬/䆀/ᆻ;

    invoke-virtual {v0, p1}, L㚬/䆀/ᆻ;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, L㚬/㲝/㺴/ბ$உ;

    if-nez v0, :cond_0

    invoke-static {}, L㚬/㲝/㺴/ბ$உ;->䂻()L㚬/㲝/㺴/ბ$உ;

    move-result-object v0

    iget-object v1, p0, L㚬/㲝/㺴/ბ;->உ:L㚬/䆀/ᆻ;

    invoke-virtual {v1, p1, v0}, L㚬/䆀/ᆻ;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iput-object p2, v0, L㚬/㲝/㺴/ბ$உ;->㚬:Landroidx/recyclerview/widget/RecyclerView$㹖$㚬;

    iget p1, v0, L㚬/㲝/㺴/ბ$உ;->உ:I

    or-int/lit8 p1, p1, 0x8

    iput p1, v0, L㚬/㲝/㺴/ბ$உ;->உ:I

    return-void
.end method

.method public 䂻(Landroidx/recyclerview/widget/RecyclerView$㰫;)V
    .locals 2

    iget-object v0, p0, L㚬/㲝/㺴/ბ;->உ:L㚬/䆀/ᆻ;

    invoke-virtual {v0, p1}, L㚬/䆀/ᆻ;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, L㚬/㲝/㺴/ბ$உ;

    if-nez v0, :cond_0

    invoke-static {}, L㚬/㲝/㺴/ბ$உ;->䂻()L㚬/㲝/㺴/ბ$உ;

    move-result-object v0

    iget-object v1, p0, L㚬/㲝/㺴/ბ;->உ:L㚬/䆀/ᆻ;

    invoke-virtual {v1, p1, v0}, L㚬/䆀/ᆻ;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget p1, v0, L㚬/㲝/㺴/ბ$உ;->உ:I

    or-int/lit8 p1, p1, 0x1

    iput p1, v0, L㚬/㲝/㺴/ბ$உ;->உ:I

    return-void
.end method

.method public 䆀()V
    .locals 1

    iget-object v0, p0, L㚬/㲝/㺴/ბ;->உ:L㚬/䆀/ᆻ;

    invoke-virtual {v0}, L㚬/䆀/ᆻ;->clear()V

    iget-object v0, p0, L㚬/㲝/㺴/ბ;->䂻:L㚬/䆀/㺴;

    invoke-virtual {v0}, L㚬/䆀/㺴;->䂻()V

    return-void
.end method
