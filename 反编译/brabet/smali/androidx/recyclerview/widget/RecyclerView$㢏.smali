.class public final Landroidx/recyclerview/widget/RecyclerView$㢏;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/recyclerview/widget/RecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "\u388f"
.end annotation


# instance fields
.field public final உ:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/recyclerview/widget/RecyclerView$\u3c2b;",
            ">;"
        }
    .end annotation
.end field

.field public ᆻ:Landroidx/recyclerview/widget/RecyclerView$㖪;

.field public ḓ:I

.field public ℓ:Landroidx/recyclerview/widget/RecyclerView$ᾦ;

.field public final synthetic ㄏ:Landroidx/recyclerview/widget/RecyclerView;

.field public final 㚬:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/recyclerview/widget/RecyclerView$\u3c2b;",
            ">;"
        }
    .end annotation
.end field

.field public final 㺴:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/recyclerview/widget/RecyclerView$\u3c2b;",
            ">;"
        }
    .end annotation
.end field

.field public 䂻:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/recyclerview/widget/RecyclerView$\u3c2b;",
            ">;"
        }
    .end annotation
.end field

.field public 䆀:I


# direct methods
.method public constructor <init>(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 1

    iput-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$㢏;->ㄏ:Landroidx/recyclerview/widget/RecyclerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$㢏;->உ:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$㢏;->䂻:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$㢏;->㚬:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$㢏;->㺴:Ljava/util/List;

    const/4 p1, 0x2

    iput p1, p0, Landroidx/recyclerview/widget/RecyclerView$㢏;->ḓ:I

    iput p1, p0, Landroidx/recyclerview/widget/RecyclerView$㢏;->䆀:I

    return-void
.end method


# virtual methods
.method public Խ(II)V
    .locals 3

    add-int/2addr p2, p1

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$㢏;->㚬:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_2

    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$㢏;->㚬:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView$㰫;

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    iget v2, v1, Landroidx/recyclerview/widget/RecyclerView$㰫;->㚬:I

    if-lt v2, p1, :cond_1

    if-ge v2, p2, :cond_1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView$㰫;->䂻(I)V

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$㢏;->ಋ(I)V

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public ש(Landroidx/recyclerview/widget/RecyclerView$㖪;)V
    .locals 1

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$㢏;->ᆻ:Landroidx/recyclerview/widget/RecyclerView$㖪;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$㖪;->㚬()V

    :cond_0
    iput-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$㢏;->ᆻ:Landroidx/recyclerview/widget/RecyclerView$㖪;

    if-eqz p1, :cond_1

    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$㢏;->ㄏ:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$ᆻ;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$㢏;->ᆻ:Landroidx/recyclerview/widget/RecyclerView$㖪;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$㖪;->உ()V

    :cond_1
    return-void
.end method

.method public ڈ(Landroidx/recyclerview/widget/RecyclerView$㰫;)V
    .locals 6

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$㰫;->ม()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_d

    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$㰫;->உ:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    goto/16 :goto_7

    :cond_0
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$㰫;->㲧()Z

    move-result v0

    if-nez v0, :cond_c

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$㰫;->ർ()Z

    move-result v0

    if-nez v0, :cond_b

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$㰫;->ℓ()Z

    move-result v0

    iget-object v3, p0, Landroidx/recyclerview/widget/RecyclerView$㢏;->ㄏ:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v3, v3, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$ᆻ;

    if-eqz v3, :cond_1

    if-eqz v0, :cond_1

    invoke-virtual {v3, p1}, Landroidx/recyclerview/widget/RecyclerView$ᆻ;->ཇ(Landroidx/recyclerview/widget/RecyclerView$㰫;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    if-nez v3, :cond_3

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$㰫;->㖪()Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v2, 0x0

    goto :goto_6

    :cond_3
    :goto_2
    iget v3, p0, Landroidx/recyclerview/widget/RecyclerView$㢏;->䆀:I

    if-lez v3, :cond_8

    const/16 v3, 0x20e

    invoke-virtual {p1, v3}, Landroidx/recyclerview/widget/RecyclerView$㰫;->ბ(I)Z

    move-result v3

    if-nez v3, :cond_8

    iget-object v3, p0, Landroidx/recyclerview/widget/RecyclerView$㢏;->㚬:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    iget v4, p0, Landroidx/recyclerview/widget/RecyclerView$㢏;->䆀:I

    if-lt v3, v4, :cond_4

    if-lez v3, :cond_4

    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/RecyclerView$㢏;->ಋ(I)V

    add-int/lit8 v3, v3, -0x1

    :cond_4
    sget-boolean v4, Landroidx/recyclerview/widget/RecyclerView;->ALLOW_THREAD_GAP_WORK:Z

    if-eqz v4, :cond_7

    if-lez v3, :cond_7

    iget-object v4, p0, Landroidx/recyclerview/widget/RecyclerView$㢏;->ㄏ:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v4, v4, Landroidx/recyclerview/widget/RecyclerView;->mPrefetchRegistry:L㚬/㲝/㺴/ḓ$䂻;

    iget v5, p1, Landroidx/recyclerview/widget/RecyclerView$㰫;->㚬:I

    invoke-virtual {v4, v5}, L㚬/㲝/㺴/ḓ$䂻;->㺴(I)Z

    move-result v4

    if-nez v4, :cond_7

    add-int/lit8 v3, v3, -0x1

    :goto_3
    if-ltz v3, :cond_6

    iget-object v4, p0, Landroidx/recyclerview/widget/RecyclerView$㢏;->㚬:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/recyclerview/widget/RecyclerView$㰫;

    iget v4, v4, Landroidx/recyclerview/widget/RecyclerView$㰫;->㚬:I

    iget-object v5, p0, Landroidx/recyclerview/widget/RecyclerView$㢏;->ㄏ:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v5, v5, Landroidx/recyclerview/widget/RecyclerView;->mPrefetchRegistry:L㚬/㲝/㺴/ḓ$䂻;

    invoke-virtual {v5, v4}, L㚬/㲝/㺴/ḓ$䂻;->㺴(I)Z

    move-result v4

    if-nez v4, :cond_5

    goto :goto_4

    :cond_5
    add-int/lit8 v3, v3, -0x1

    goto :goto_3

    :cond_6
    :goto_4
    add-int/2addr v3, v2

    :cond_7
    iget-object v4, p0, Landroidx/recyclerview/widget/RecyclerView$㢏;->㚬:Ljava/util/ArrayList;

    invoke-virtual {v4, v3, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    const/4 v3, 0x1

    goto :goto_5

    :cond_8
    const/4 v3, 0x0

    :goto_5
    if-nez v3, :cond_9

    invoke-virtual {p0, p1, v2}, Landroidx/recyclerview/widget/RecyclerView$㢏;->உ(Landroidx/recyclerview/widget/RecyclerView$㰫;Z)V

    move v1, v3

    goto :goto_6

    :cond_9
    move v1, v3

    goto :goto_1

    :goto_6
    iget-object v3, p0, Landroidx/recyclerview/widget/RecyclerView$㢏;->ㄏ:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v3, v3, Landroidx/recyclerview/widget/RecyclerView;->mViewInfoStore:L㚬/㲝/㺴/ბ;

    invoke-virtual {v3, p1}, L㚬/㲝/㺴/ბ;->㲝(Landroidx/recyclerview/widget/RecyclerView$㰫;)V

    if-nez v1, :cond_a

    if-nez v2, :cond_a

    if-eqz v0, :cond_a

    const/4 v0, 0x0

    iput-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$㰫;->㞘:Landroidx/recyclerview/widget/RecyclerView;

    :cond_a
    return-void

    :cond_b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Trying to recycle an ignored view holder. You should first call stopIgnoringView(view) before calling recycle."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$㢏;->ㄏ:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->exceptionLabel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Tmp detached view should be removed from RecyclerView before it can be recycled: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$㢏;->ㄏ:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->exceptionLabel()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    :goto_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Scrapped or attached views may not be recycled. isScrap:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$㰫;->ม()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " isAttached:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$㰫;->உ:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-eqz p1, :cond_e

    const/4 v1, 0x1

    :cond_e
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$㢏;->ㄏ:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->exceptionLabel()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public உ(Landroidx/recyclerview/widget/RecyclerView$㰫;Z)V
    .locals 4

    invoke-static {p1}, Landroidx/recyclerview/widget/RecyclerView;->clearNestedRecyclerViewIfNotNested(Landroidx/recyclerview/widget/RecyclerView$㰫;)V

    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$㰫;->உ:Landroid/view/View;

    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$㢏;->ㄏ:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView;->mAccessibilityDelegate:L㚬/㲝/㺴/㧦;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-virtual {v1}, L㚬/㲝/㺴/㧦;->ཇ()L㚬/ℓ/ἥ/உ;

    move-result-object v1

    instance-of v3, v1, L㚬/㲝/㺴/㧦$உ;

    if-eqz v3, :cond_0

    check-cast v1, L㚬/㲝/㺴/㧦$உ;

    invoke-virtual {v1, v0}, L㚬/㲝/㺴/㧦$உ;->ཇ(Landroid/view/View;)L㚬/ℓ/ἥ/உ;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    invoke-static {v0, v1}, L㚬/ℓ/ἥ/㭲;->Ổ(Landroid/view/View;L㚬/ℓ/ἥ/உ;)V

    :cond_1
    if-eqz p2, :cond_2

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$㢏;->ᆻ(Landroidx/recyclerview/widget/RecyclerView$㰫;)V

    :cond_2
    iput-object v2, p1, Landroidx/recyclerview/widget/RecyclerView$㰫;->㞘:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$㢏;->ㄏ()Landroidx/recyclerview/widget/RecyclerView$㖪;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/RecyclerView$㖪;->ㄏ(Landroidx/recyclerview/widget/RecyclerView$㰫;)V

    return-void
.end method

.method public ಋ(I)V
    .locals 2

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$㢏;->㚬:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$㰫;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroidx/recyclerview/widget/RecyclerView$㢏;->உ(Landroidx/recyclerview/widget/RecyclerView$㰫;Z)V

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$㢏;->㚬:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method public ಫ()I
    .locals 1

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$㢏;->உ:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public ർ(Landroidx/recyclerview/widget/RecyclerView$㰫;)V
    .locals 1

    iget-boolean v0, p1, Landroidx/recyclerview/widget/RecyclerView$㰫;->ᓭ:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$㢏;->䂻:Ljava/util/ArrayList;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$㢏;->உ:Ljava/util/ArrayList;

    :goto_0
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    iput-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$㰫;->ཇ:Landroidx/recyclerview/widget/RecyclerView$㢏;

    const/4 v0, 0x0

    iput-boolean v0, p1, Landroidx/recyclerview/widget/RecyclerView$㰫;->ᓭ:Z

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$㰫;->ḓ()V

    return-void
.end method

.method public ม(IIZ)V
    .locals 4

    add-int v0, p1, p2

    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$㢏;->㚬:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_2

    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView$㢏;->㚬:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/recyclerview/widget/RecyclerView$㰫;

    if-eqz v2, :cond_1

    iget v3, v2, Landroidx/recyclerview/widget/RecyclerView$㰫;->㚬:I

    if-lt v3, v0, :cond_0

    neg-int v3, p2

    invoke-virtual {v2, v3, p3}, Landroidx/recyclerview/widget/RecyclerView$㰫;->ಋ(IZ)V

    goto :goto_1

    :cond_0
    if-lt v3, p1, :cond_1

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/RecyclerView$㰫;->䂻(I)V

    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/RecyclerView$㢏;->ಋ(I)V

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public ཇ(I)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$㢏;->உ:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView$㰫;

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$㰫;->உ:Landroid/view/View;

    return-object p1
.end method

.method public ბ(IZ)Landroid/view/View;
    .locals 2

    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, p1, p2, v0, v1}, Landroidx/recyclerview/widget/RecyclerView$㢏;->㥁(IZJ)Landroidx/recyclerview/widget/RecyclerView$㰫;

    move-result-object p1

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$㰫;->உ:Landroid/view/View;

    return-object p1
.end method

.method public ᆻ(Landroidx/recyclerview/widget/RecyclerView$㰫;)V
    .locals 2

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$㢏;->ㄏ:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->mRecyclerListener:Landroidx/recyclerview/widget/RecyclerView$ม;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$ม;->உ(Landroidx/recyclerview/widget/RecyclerView$㰫;)V

    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$㢏;->ㄏ:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$ᆻ;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$ᆻ;->㲝(Landroidx/recyclerview/widget/RecyclerView$㰫;)V

    :cond_1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$㢏;->ㄏ:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$ಋ;

    if-eqz v1, :cond_2

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->mViewInfoStore:L㚬/㲝/㺴/ბ;

    invoke-virtual {v0, p1}, L㚬/㲝/㺴/ბ;->㲝(Landroidx/recyclerview/widget/RecyclerView$㰫;)V

    :cond_2
    return-void
.end method

.method public ᓭ(I)Landroid/view/View;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroidx/recyclerview/widget/RecyclerView$㢏;->ბ(IZ)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public ᰘ(I)V
    .locals 0

    iput p1, p0, Landroidx/recyclerview/widget/RecyclerView$㢏;->ḓ:I

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$㢏;->㖆()V

    return-void
.end method

.method public final ᱹ(Landroidx/recyclerview/widget/RecyclerView$㰫;IIJ)Z
    .locals 9

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$㢏;->ㄏ:Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$㰫;->㞘:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$㰫;->㹖()I

    move-result v2

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$㢏;->ㄏ:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getNanoTime()J

    move-result-wide v7

    const-wide v0, 0x7fffffffffffffffL

    cmp-long v3, p4, v0

    if-eqz v3, :cond_0

    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$㢏;->ᆻ:Landroidx/recyclerview/widget/RecyclerView$㖪;

    move-wide v3, v7

    move-wide v5, p4

    invoke-virtual/range {v1 .. v6}, Landroidx/recyclerview/widget/RecyclerView$㖪;->㧦(IJJ)Z

    move-result p4

    if-nez p4, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-object p4, p0, Landroidx/recyclerview/widget/RecyclerView$㢏;->ㄏ:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p4, p4, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$ᆻ;

    invoke-virtual {p4, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$ᆻ;->உ(Landroidx/recyclerview/widget/RecyclerView$㰫;I)V

    iget-object p2, p0, Landroidx/recyclerview/widget/RecyclerView$㢏;->ㄏ:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getNanoTime()J

    move-result-wide p4

    iget-object p2, p0, Landroidx/recyclerview/widget/RecyclerView$㢏;->ᆻ:Landroidx/recyclerview/widget/RecyclerView$㖪;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$㰫;->㹖()I

    move-result v0

    sub-long/2addr p4, v7

    invoke-virtual {p2, v0, p4, p5}, Landroidx/recyclerview/widget/RecyclerView$㖪;->㺴(IJ)V

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$㢏;->䂻(Landroidx/recyclerview/widget/RecyclerView$㰫;)V

    iget-object p2, p0, Landroidx/recyclerview/widget/RecyclerView$㢏;->ㄏ:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p2, p2, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$ಋ;

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$ಋ;->ḓ()Z

    move-result p2

    if-eqz p2, :cond_1

    iput p3, p1, Landroidx/recyclerview/widget/RecyclerView$㰫;->ᆻ:I

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public ḓ()V
    .locals 1

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$㢏;->உ:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$㢏;->䂻:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_0
    return-void
.end method

.method public ḙ()V
    .locals 4

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$㢏;->㚬:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView$㢏;->㚬:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/recyclerview/widget/RecyclerView$㰫;

    if-eqz v2, :cond_0

    const/4 v3, 0x6

    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/RecyclerView$㰫;->䂻(I)V

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/RecyclerView$㰫;->உ(Ljava/lang/Object;)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$㢏;->ㄏ:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$ᆻ;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$ᆻ;->ᆻ()Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$㢏;->㫏()V

    :cond_3
    return-void
.end method

.method public ἥ(IZ)Landroidx/recyclerview/widget/RecyclerView$㰫;
    .locals 5

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$㢏;->உ:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    iget-object v3, p0, Landroidx/recyclerview/widget/RecyclerView$㢏;->உ:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/recyclerview/widget/RecyclerView$㰫;

    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView$㰫;->㭢()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView$㰫;->ἥ()I

    move-result v4

    if-ne v4, p1, :cond_1

    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView$㰫;->ḙ()Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, p0, Landroidx/recyclerview/widget/RecyclerView$㢏;->ㄏ:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v4, v4, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$ಋ;

    iget-boolean v4, v4, Landroidx/recyclerview/widget/RecyclerView$ಋ;->ℓ:Z

    if-nez v4, :cond_0

    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView$㰫;->㢏()Z

    move-result v4

    if-nez v4, :cond_1

    :cond_0
    const/16 p1, 0x20

    invoke-virtual {v3, p1}, Landroidx/recyclerview/widget/RecyclerView$㰫;->䂻(I)V

    return-object v3

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    if-nez p2, :cond_4

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$㢏;->ㄏ:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:L㚬/㲝/㺴/䂻;

    invoke-virtual {v0, p1}, L㚬/㲝/㺴/䂻;->ḓ(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-static {v0}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$㰫;

    move-result-object p1

    iget-object p2, p0, Landroidx/recyclerview/widget/RecyclerView$㢏;->ㄏ:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p2, p2, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:L㚬/㲝/㺴/䂻;

    invoke-virtual {p2, v0}, L㚬/㲝/㺴/䂻;->㭲(Landroid/view/View;)V

    iget-object p2, p0, Landroidx/recyclerview/widget/RecyclerView$㢏;->ㄏ:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p2, p2, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:L㚬/㲝/㺴/䂻;

    invoke-virtual {p2, v0}, L㚬/㲝/㺴/䂻;->ἥ(Landroid/view/View;)I

    move-result p2

    const/4 v1, -0x1

    if-eq p2, v1, :cond_3

    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$㢏;->ㄏ:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:L㚬/㲝/㺴/䂻;

    invoke-virtual {v1, p2}, L㚬/㲝/㺴/䂻;->㺴(I)V

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$㢏;->㰫(Landroid/view/View;)V

    const/16 p2, 0x2020

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView$㰫;->䂻(I)V

    return-object p1

    :cond_3
    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "layout index should not be -1 after unhiding a view:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$㢏;->ㄏ:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->exceptionLabel()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_4
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$㢏;->㚬:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_1
    if-ge v1, v0, :cond_7

    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView$㢏;->㚬:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/recyclerview/widget/RecyclerView$㰫;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView$㰫;->ḙ()Z

    move-result v3

    if-nez v3, :cond_6

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView$㰫;->ἥ()I

    move-result v3

    if-ne v3, p1, :cond_6

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView$㰫;->㞘()Z

    move-result v3

    if-nez v3, :cond_6

    if-nez p2, :cond_5

    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$㢏;->㚬:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_5
    return-object v2

    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_7
    const/4 p1, 0x0

    return-object p1
.end method

.method public ᾦ(Landroid/view/View;)V
    .locals 3

    invoke-static {p1}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$㰫;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$㰫;->㲧()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$㢏;->ㄏ:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroidx/recyclerview/widget/RecyclerView;->removeDetachedView(Landroid/view/View;Z)V

    :cond_0
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$㰫;->ม()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$㰫;->㖆()V

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$㰫;->㭢()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$㰫;->ḓ()V

    :cond_2
    :goto_0
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$㢏;->ڈ(Landroidx/recyclerview/widget/RecyclerView$㰫;)V

    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$㢏;->ㄏ:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView;->mItemAnimator:Landroidx/recyclerview/widget/RecyclerView$㹖;

    if-eqz p1, :cond_3

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$㰫;->㖪()Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$㢏;->ㄏ:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView;->mItemAnimator:Landroidx/recyclerview/widget/RecyclerView$㹖;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$㹖;->ಫ(Landroidx/recyclerview/widget/RecyclerView$㰫;)V

    :cond_3
    return-void
.end method

.method public ℓ(I)Landroidx/recyclerview/widget/RecyclerView$㰫;
    .locals 9

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$㢏;->䂻:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    const/16 v4, 0x20

    if-ge v3, v0, :cond_2

    iget-object v5, p0, Landroidx/recyclerview/widget/RecyclerView$㢏;->䂻:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/recyclerview/widget/RecyclerView$㰫;

    invoke-virtual {v5}, Landroidx/recyclerview/widget/RecyclerView$㰫;->㭢()Z

    move-result v6

    if-nez v6, :cond_1

    invoke-virtual {v5}, Landroidx/recyclerview/widget/RecyclerView$㰫;->ἥ()I

    move-result v6

    if-ne v6, p1, :cond_1

    invoke-virtual {v5, v4}, Landroidx/recyclerview/widget/RecyclerView$㰫;->䂻(I)V

    return-object v5

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    iget-object v3, p0, Landroidx/recyclerview/widget/RecyclerView$㢏;->ㄏ:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v3, v3, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$ᆻ;

    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView$ᆻ;->ᆻ()Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Landroidx/recyclerview/widget/RecyclerView$㢏;->ㄏ:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v3, v3, Landroidx/recyclerview/widget/RecyclerView;->mAdapterHelper:L㚬/㲝/㺴/உ;

    invoke-virtual {v3, p1}, L㚬/㲝/㺴/உ;->ἥ(I)I

    move-result p1

    if-lez p1, :cond_4

    iget-object v3, p0, Landroidx/recyclerview/widget/RecyclerView$㢏;->ㄏ:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v3, v3, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$ᆻ;

    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView$ᆻ;->㚬()I

    move-result v3

    if-ge p1, v3, :cond_4

    iget-object v3, p0, Landroidx/recyclerview/widget/RecyclerView$㢏;->ㄏ:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v3, v3, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$ᆻ;

    invoke-virtual {v3, p1}, Landroidx/recyclerview/widget/RecyclerView$ᆻ;->㺴(I)J

    move-result-wide v5

    :goto_1
    if-ge v2, v0, :cond_4

    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$㢏;->䂻:Ljava/util/ArrayList;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView$㰫;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$㰫;->㭢()Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$㰫;->㧦()J

    move-result-wide v7

    cmp-long v3, v7, v5

    if-nez v3, :cond_3

    invoke-virtual {p1, v4}, Landroidx/recyclerview/widget/RecyclerView$㰫;->䂻(I)V

    return-object p1

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    :goto_2
    return-object v1
.end method

.method public ㄏ()Landroidx/recyclerview/widget/RecyclerView$㖪;
    .locals 1

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$㢏;->ᆻ:Landroidx/recyclerview/widget/RecyclerView$㖪;

    if-nez v0, :cond_0

    new-instance v0, Landroidx/recyclerview/widget/RecyclerView$㖪;

    invoke-direct {v0}, Landroidx/recyclerview/widget/RecyclerView$㖪;-><init>()V

    iput-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$㢏;->ᆻ:Landroidx/recyclerview/widget/RecyclerView$㖪;

    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$㢏;->ᆻ:Landroidx/recyclerview/widget/RecyclerView$㖪;

    return-object v0
.end method

.method public ㄬ(Landroid/view/View;)V
    .locals 1

    invoke-static {p1}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$㰫;

    move-result-object p1

    const/4 v0, 0x0

    iput-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$㰫;->ཇ:Landroidx/recyclerview/widget/RecyclerView$㢏;

    const/4 v0, 0x0

    iput-boolean v0, p1, Landroidx/recyclerview/widget/RecyclerView$㰫;->ᓭ:Z

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$㰫;->ḓ()V

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$㢏;->ڈ(Landroidx/recyclerview/widget/RecyclerView$㰫;)V

    return-void
.end method

.method public 㖆()V
    .locals 3

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$㢏;->ㄏ:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$ᓭ;

    if-eqz v0, :cond_0

    iget v0, v0, Landroidx/recyclerview/widget/RecyclerView$ᓭ;->ἥ:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Landroidx/recyclerview/widget/RecyclerView$㢏;->ḓ:I

    add-int/2addr v1, v0

    iput v1, p0, Landroidx/recyclerview/widget/RecyclerView$㢏;->䆀:I

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$㢏;->㚬:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_1
    if-ltz v0, :cond_1

    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$㢏;->㚬:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget v2, p0, Landroidx/recyclerview/widget/RecyclerView$㢏;->䆀:I

    if-le v1, v2, :cond_1

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$㢏;->ಋ(I)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public 㖪(II)V
    .locals 4

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$㢏;->㚬:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView$㢏;->㚬:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/recyclerview/widget/RecyclerView$㰫;

    if-eqz v2, :cond_0

    iget v3, v2, Landroidx/recyclerview/widget/RecyclerView$㰫;->㚬:I

    if-lt v3, p1, :cond_0

    const/4 v3, 0x1

    invoke-virtual {v2, p2, v3}, Landroidx/recyclerview/widget/RecyclerView$㰫;->ಋ(IZ)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public 㚬()V
    .locals 1

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$㢏;->உ:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$㢏;->㫏()V

    return-void
.end method

.method public final 㞘(Landroidx/recyclerview/widget/RecyclerView$㰫;)V
    .locals 1

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$㰫;->உ:Landroid/view/View;

    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    check-cast p1, Landroid/view/ViewGroup;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroidx/recyclerview/widget/RecyclerView$㢏;->㲝(Landroid/view/ViewGroup;Z)V

    :cond_0
    return-void
.end method

.method public 㢏(II)V
    .locals 8

    if-ge p1, p2, :cond_0

    const/4 v0, -0x1

    move v1, p1

    move v2, p2

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    move v2, p1

    move v1, p2

    :goto_0
    iget-object v3, p0, Landroidx/recyclerview/widget/RecyclerView$㢏;->㚬:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v3, :cond_4

    iget-object v6, p0, Landroidx/recyclerview/widget/RecyclerView$㢏;->㚬:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/recyclerview/widget/RecyclerView$㰫;

    if-eqz v6, :cond_3

    iget v7, v6, Landroidx/recyclerview/widget/RecyclerView$㰫;->㚬:I

    if-lt v7, v1, :cond_3

    if-le v7, v2, :cond_1

    goto :goto_2

    :cond_1
    if-ne v7, p1, :cond_2

    sub-int v7, p2, p1

    invoke-virtual {v6, v7, v4}, Landroidx/recyclerview/widget/RecyclerView$㰫;->ಋ(IZ)V

    goto :goto_2

    :cond_2
    invoke-virtual {v6, v0, v4}, Landroidx/recyclerview/widget/RecyclerView$㰫;->ಋ(IZ)V

    :cond_3
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_4
    return-void
.end method

.method public 㥁(IZJ)Landroidx/recyclerview/widget/RecyclerView$㰫;
    .locals 16

    move-object/from16 v6, p0

    move/from16 v3, p1

    move/from16 v0, p2

    if-ltz v3, :cond_18

    iget-object v1, v6, Landroidx/recyclerview/widget/RecyclerView$㢏;->ㄏ:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$ಋ;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$ಋ;->䂻()I

    move-result v1

    if-ge v3, v1, :cond_18

    iget-object v1, v6, Landroidx/recyclerview/widget/RecyclerView$㢏;->ㄏ:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$ಋ;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$ಋ;->ḓ()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-eqz v1, :cond_0

    invoke-virtual/range {p0 .. p1}, Landroidx/recyclerview/widget/RecyclerView$㢏;->ℓ(I)Landroidx/recyclerview/widget/RecyclerView$㰫;

    move-result-object v1

    if-eqz v1, :cond_1

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    move-object v1, v2

    :cond_1
    const/4 v4, 0x0

    :goto_0
    if-nez v1, :cond_6

    invoke-virtual/range {p0 .. p2}, Landroidx/recyclerview/widget/RecyclerView$㢏;->ἥ(IZ)Landroidx/recyclerview/widget/RecyclerView$㰫;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-virtual {v6, v1}, Landroidx/recyclerview/widget/RecyclerView$㢏;->㭢(Landroidx/recyclerview/widget/RecyclerView$㰫;)Z

    move-result v5

    if-nez v5, :cond_5

    if-nez v0, :cond_4

    const/4 v5, 0x4

    invoke-virtual {v1, v5}, Landroidx/recyclerview/widget/RecyclerView$㰫;->䂻(I)V

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$㰫;->ม()Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, v6, Landroidx/recyclerview/widget/RecyclerView$㢏;->ㄏ:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v9, v1, Landroidx/recyclerview/widget/RecyclerView$㰫;->உ:Landroid/view/View;

    invoke-virtual {v5, v9, v8}, Landroidx/recyclerview/widget/RecyclerView;->removeDetachedView(Landroid/view/View;Z)V

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$㰫;->㖆()V

    goto :goto_1

    :cond_2
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$㰫;->㭢()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$㰫;->ḓ()V

    :cond_3
    :goto_1
    invoke-virtual {v6, v1}, Landroidx/recyclerview/widget/RecyclerView$㢏;->ڈ(Landroidx/recyclerview/widget/RecyclerView$㰫;)V

    :cond_4
    move-object v1, v2

    goto :goto_2

    :cond_5
    const/4 v4, 0x1

    :cond_6
    :goto_2
    if-nez v1, :cond_10

    iget-object v5, v6, Landroidx/recyclerview/widget/RecyclerView$㢏;->ㄏ:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v5, v5, Landroidx/recyclerview/widget/RecyclerView;->mAdapterHelper:L㚬/㲝/㺴/உ;

    invoke-virtual {v5, v3}, L㚬/㲝/㺴/உ;->ἥ(I)I

    move-result v5

    if-ltz v5, :cond_f

    iget-object v9, v6, Landroidx/recyclerview/widget/RecyclerView$㢏;->ㄏ:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v9, v9, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$ᆻ;

    invoke-virtual {v9}, Landroidx/recyclerview/widget/RecyclerView$ᆻ;->㚬()I

    move-result v9

    if-ge v5, v9, :cond_f

    iget-object v9, v6, Landroidx/recyclerview/widget/RecyclerView$㢏;->ㄏ:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v9, v9, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$ᆻ;

    invoke-virtual {v9, v5}, Landroidx/recyclerview/widget/RecyclerView$ᆻ;->ḓ(I)I

    move-result v9

    iget-object v10, v6, Landroidx/recyclerview/widget/RecyclerView$㢏;->ㄏ:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v10, v10, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$ᆻ;

    invoke-virtual {v10}, Landroidx/recyclerview/widget/RecyclerView$ᆻ;->ᆻ()Z

    move-result v10

    if-eqz v10, :cond_7

    iget-object v1, v6, Landroidx/recyclerview/widget/RecyclerView$㢏;->ㄏ:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$ᆻ;

    invoke-virtual {v1, v5}, Landroidx/recyclerview/widget/RecyclerView$ᆻ;->㺴(I)J

    move-result-wide v10

    invoke-virtual {v6, v10, v11, v9, v0}, Landroidx/recyclerview/widget/RecyclerView$㢏;->㹖(JIZ)Landroidx/recyclerview/widget/RecyclerView$㰫;

    move-result-object v1

    if-eqz v1, :cond_7

    iput v5, v1, Landroidx/recyclerview/widget/RecyclerView$㰫;->㚬:I

    const/4 v4, 0x1

    :cond_7
    if-nez v1, :cond_a

    iget-object v0, v6, Landroidx/recyclerview/widget/RecyclerView$㢏;->ℓ:Landroidx/recyclerview/widget/RecyclerView$ᾦ;

    if-eqz v0, :cond_a

    invoke-virtual {v0, v6, v3, v9}, Landroidx/recyclerview/widget/RecyclerView$ᾦ;->உ(Landroidx/recyclerview/widget/RecyclerView$㢏;II)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_a

    iget-object v1, v6, Landroidx/recyclerview/widget/RecyclerView$㢏;->ㄏ:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$㰫;

    move-result-object v1

    if-eqz v1, :cond_9

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$㰫;->ർ()Z

    move-result v0

    if-nez v0, :cond_8

    goto :goto_3

    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getViewForPositionAndType returned a view that is ignored. You must call stopIgnoring before returning this view."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v6, Landroidx/recyclerview/widget/RecyclerView$㢏;->ㄏ:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->exceptionLabel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getViewForPositionAndType returned a view which does not have a ViewHolder"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v6, Landroidx/recyclerview/widget/RecyclerView$㢏;->ㄏ:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->exceptionLabel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    :goto_3
    if-nez v1, :cond_c

    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView$㢏;->ㄏ()Landroidx/recyclerview/widget/RecyclerView$㖪;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroidx/recyclerview/widget/RecyclerView$㖪;->䆀(I)Landroidx/recyclerview/widget/RecyclerView$㰫;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$㰫;->㰫()V

    sget-boolean v1, Landroidx/recyclerview/widget/RecyclerView;->FORCE_INVALIDATE_DISPLAY_LIST:Z

    if-eqz v1, :cond_b

    invoke-virtual {v6, v0}, Landroidx/recyclerview/widget/RecyclerView$㢏;->㞘(Landroidx/recyclerview/widget/RecyclerView$㰫;)V

    :cond_b
    move-object v1, v0

    :cond_c
    if-nez v1, :cond_10

    iget-object v0, v6, Landroidx/recyclerview/widget/RecyclerView$㢏;->ㄏ:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getNanoTime()J

    move-result-wide v0

    const-wide v10, 0x7fffffffffffffffL

    cmp-long v5, p3, v10

    if-eqz v5, :cond_d

    iget-object v10, v6, Landroidx/recyclerview/widget/RecyclerView$㢏;->ᆻ:Landroidx/recyclerview/widget/RecyclerView$㖪;

    move v11, v9

    move-wide v12, v0

    move-wide/from16 v14, p3

    invoke-virtual/range {v10 .. v15}, Landroidx/recyclerview/widget/RecyclerView$㖪;->㹖(IJJ)Z

    move-result v5

    if-nez v5, :cond_d

    return-object v2

    :cond_d
    iget-object v2, v6, Landroidx/recyclerview/widget/RecyclerView$㢏;->ㄏ:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v5, v2, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$ᆻ;

    invoke-virtual {v5, v2, v9}, Landroidx/recyclerview/widget/RecyclerView$ᆻ;->䂻(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$㰫;

    move-result-object v2

    sget-boolean v5, Landroidx/recyclerview/widget/RecyclerView;->ALLOW_THREAD_GAP_WORK:Z

    if-eqz v5, :cond_e

    iget-object v5, v2, Landroidx/recyclerview/widget/RecyclerView$㰫;->உ:Landroid/view/View;

    invoke-static {v5}, Landroidx/recyclerview/widget/RecyclerView;->findNestedRecyclerView(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v5

    if-eqz v5, :cond_e

    new-instance v10, Ljava/lang/ref/WeakReference;

    invoke-direct {v10, v5}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v10, v2, Landroidx/recyclerview/widget/RecyclerView$㰫;->䂻:Ljava/lang/ref/WeakReference;

    :cond_e
    iget-object v5, v6, Landroidx/recyclerview/widget/RecyclerView$㢏;->ㄏ:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v5}, Landroidx/recyclerview/widget/RecyclerView;->getNanoTime()J

    move-result-wide v10

    iget-object v5, v6, Landroidx/recyclerview/widget/RecyclerView$㢏;->ᆻ:Landroidx/recyclerview/widget/RecyclerView$㖪;

    sub-long/2addr v10, v0

    invoke-virtual {v5, v9, v10, v11}, Landroidx/recyclerview/widget/RecyclerView$㖪;->ḓ(IJ)V

    move-object v9, v2

    goto :goto_4

    :cond_f
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Inconsistency detected. Invalid item position "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "(offset:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ").state:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v6, Landroidx/recyclerview/widget/RecyclerView$㢏;->ㄏ:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v2, v2, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$ಋ;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView$ಋ;->䂻()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v2, v6, Landroidx/recyclerview/widget/RecyclerView$㢏;->ㄏ:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->exceptionLabel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_10
    move-object v9, v1

    :goto_4
    move v10, v4

    if-eqz v10, :cond_11

    iget-object v0, v6, Landroidx/recyclerview/widget/RecyclerView$㢏;->ㄏ:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$ಋ;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$ಋ;->ḓ()Z

    move-result v0

    if-nez v0, :cond_11

    const/16 v0, 0x2000

    invoke-virtual {v9, v0}, Landroidx/recyclerview/widget/RecyclerView$㰫;->ბ(I)Z

    move-result v1

    if-eqz v1, :cond_11

    invoke-virtual {v9, v8, v0}, Landroidx/recyclerview/widget/RecyclerView$㰫;->㨃(II)V

    iget-object v0, v6, Landroidx/recyclerview/widget/RecyclerView$㢏;->ㄏ:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$ಋ;

    iget-boolean v0, v0, Landroidx/recyclerview/widget/RecyclerView$ಋ;->㧦:Z

    if-eqz v0, :cond_11

    invoke-static {v9}, Landroidx/recyclerview/widget/RecyclerView$㹖;->ḓ(Landroidx/recyclerview/widget/RecyclerView$㰫;)I

    move-result v0

    or-int/lit16 v0, v0, 0x1000

    iget-object v1, v6, Landroidx/recyclerview/widget/RecyclerView$㢏;->ㄏ:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v2, v1, Landroidx/recyclerview/widget/RecyclerView;->mItemAnimator:Landroidx/recyclerview/widget/RecyclerView$㹖;

    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$ಋ;

    invoke-virtual {v9}, Landroidx/recyclerview/widget/RecyclerView$㰫;->ᓭ()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v2, v1, v9, v0, v4}, Landroidx/recyclerview/widget/RecyclerView$㹖;->ḙ(Landroidx/recyclerview/widget/RecyclerView$ಋ;Landroidx/recyclerview/widget/RecyclerView$㰫;ILjava/util/List;)Landroidx/recyclerview/widget/RecyclerView$㹖$㚬;

    move-result-object v0

    iget-object v1, v6, Landroidx/recyclerview/widget/RecyclerView$㢏;->ㄏ:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v9, v0}, Landroidx/recyclerview/widget/RecyclerView;->recordAnimationInfoIfBouncedHiddenView(Landroidx/recyclerview/widget/RecyclerView$㰫;Landroidx/recyclerview/widget/RecyclerView$㹖$㚬;)V

    :cond_11
    iget-object v0, v6, Landroidx/recyclerview/widget/RecyclerView$㢏;->ㄏ:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$ಋ;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$ಋ;->ḓ()Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-virtual {v9}, Landroidx/recyclerview/widget/RecyclerView$㰫;->㭲()Z

    move-result v0

    if-eqz v0, :cond_12

    iput v3, v9, Landroidx/recyclerview/widget/RecyclerView$㰫;->ᆻ:I

    goto :goto_5

    :cond_12
    invoke-virtual {v9}, Landroidx/recyclerview/widget/RecyclerView$㰫;->㭲()Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-virtual {v9}, Landroidx/recyclerview/widget/RecyclerView$㰫;->㫏()Z

    move-result v0

    if-nez v0, :cond_14

    invoke-virtual {v9}, Landroidx/recyclerview/widget/RecyclerView$㰫;->ḙ()Z

    move-result v0

    if-eqz v0, :cond_13

    goto :goto_6

    :cond_13
    :goto_5
    const/4 v0, 0x0

    goto :goto_7

    :cond_14
    :goto_6
    iget-object v0, v6, Landroidx/recyclerview/widget/RecyclerView$㢏;->ㄏ:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->mAdapterHelper:L㚬/㲝/㺴/உ;

    invoke-virtual {v0, v3}, L㚬/㲝/㺴/உ;->ἥ(I)I

    move-result v2

    move-object/from16 v0, p0

    move-object v1, v9

    move/from16 v3, p1

    move-wide/from16 v4, p3

    invoke-virtual/range {v0 .. v5}, Landroidx/recyclerview/widget/RecyclerView$㢏;->ᱹ(Landroidx/recyclerview/widget/RecyclerView$㰫;IIJ)Z

    move-result v0

    :goto_7
    iget-object v1, v9, Landroidx/recyclerview/widget/RecyclerView$㰫;->உ:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    if-nez v1, :cond_15

    iget-object v1, v6, Landroidx/recyclerview/widget/RecyclerView$㢏;->ㄏ:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    :goto_8
    check-cast v1, Landroidx/recyclerview/widget/RecyclerView$ბ;

    iget-object v2, v9, Landroidx/recyclerview/widget/RecyclerView$㰫;->உ:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_9

    :cond_15
    iget-object v2, v6, Landroidx/recyclerview/widget/RecyclerView$㢏;->ㄏ:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/RecyclerView;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v2

    if-nez v2, :cond_16

    iget-object v2, v6, Landroidx/recyclerview/widget/RecyclerView$㢏;->ㄏ:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/RecyclerView;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    goto :goto_8

    :cond_16
    check-cast v1, Landroidx/recyclerview/widget/RecyclerView$ბ;

    :goto_9
    iput-object v9, v1, Landroidx/recyclerview/widget/RecyclerView$ბ;->உ:Landroidx/recyclerview/widget/RecyclerView$㰫;

    if-eqz v10, :cond_17

    if-eqz v0, :cond_17

    goto :goto_a

    :cond_17
    const/4 v7, 0x0

    :goto_a
    iput-boolean v7, v1, Landroidx/recyclerview/widget/RecyclerView$ბ;->㺴:Z

    return-object v9

    :cond_18
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid item position "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "). Item count:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v6, Landroidx/recyclerview/widget/RecyclerView$㢏;->ㄏ:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v2, v2, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$ಋ;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView$ಋ;->䂻()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v2, v6, Landroidx/recyclerview/widget/RecyclerView$㢏;->ㄏ:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->exceptionLabel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public 㧦()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/recyclerview/widget/RecyclerView$\u3c2b;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$㢏;->㺴:Ljava/util/List;

    return-object v0
.end method

.method public 㨃(Landroidx/recyclerview/widget/RecyclerView$ᾦ;)V
    .locals 0

    return-void
.end method

.method public 㫏()V
    .locals 1

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$㢏;->㚬:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$㢏;->ಋ(I)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$㢏;->㚬:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    sget-boolean v0, Landroidx/recyclerview/widget/RecyclerView;->ALLOW_THREAD_GAP_WORK:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$㢏;->ㄏ:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->mPrefetchRegistry:L㚬/㲝/㺴/ḓ$䂻;

    invoke-virtual {v0}, L㚬/㲝/㺴/ḓ$䂻;->䂻()V

    :cond_1
    return-void
.end method

.method public 㭢(Landroidx/recyclerview/widget/RecyclerView$㰫;)Z
    .locals 7

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$㰫;->㢏()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$㢏;->ㄏ:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$ಋ;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ಋ;->ḓ()Z

    move-result p1

    return p1

    :cond_0
    iget v0, p1, Landroidx/recyclerview/widget/RecyclerView$㰫;->㚬:I

    if-ltz v0, :cond_4

    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$㢏;->ㄏ:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$ᆻ;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$ᆻ;->㚬()I

    move-result v1

    if-ge v0, v1, :cond_4

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$㢏;->ㄏ:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$ಋ;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$ಋ;->ḓ()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$㢏;->ㄏ:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$ᆻ;

    iget v2, p1, Landroidx/recyclerview/widget/RecyclerView$㰫;->㚬:I

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView$ᆻ;->ḓ(I)I

    move-result v0

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$㰫;->㹖()I

    move-result v2

    if-eq v0, v2, :cond_1

    return v1

    :cond_1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$㢏;->ㄏ:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$ᆻ;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$ᆻ;->ᆻ()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$㰫;->㧦()J

    move-result-wide v3

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$㢏;->ㄏ:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$ᆻ;

    iget p1, p1, Landroidx/recyclerview/widget/RecyclerView$㰫;->㚬:I

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$ᆻ;->㺴(I)J

    move-result-wide v5

    cmp-long p1, v3, v5

    if-nez p1, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1

    :cond_3
    return v2

    :cond_4
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Inconsistency detected. Invalid view holder adapter position"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$㢏;->ㄏ:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->exceptionLabel()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public 㭲()V
    .locals 4

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$㢏;->㚬:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView$㢏;->㚬:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/recyclerview/widget/RecyclerView$㰫;

    iget-object v2, v2, Landroidx/recyclerview/widget/RecyclerView$㰫;->உ:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroidx/recyclerview/widget/RecyclerView$ბ;

    if-eqz v2, :cond_0

    const/4 v3, 0x1

    iput-boolean v3, v2, Landroidx/recyclerview/widget/RecyclerView$ბ;->㚬:Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public 㰫(Landroid/view/View;)V
    .locals 2

    invoke-static {p1}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$㰫;

    move-result-object p1

    const/16 v0, 0xc

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$㰫;->ბ(I)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$㰫;->ㄬ()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$㢏;->ㄏ:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->canReuseUpdatedViewHolder(Landroidx/recyclerview/widget/RecyclerView$㰫;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$㢏;->䂻:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$㢏;->䂻:Ljava/util/ArrayList;

    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p1, p0, v0}, Landroidx/recyclerview/widget/RecyclerView$㰫;->ᱹ(Landroidx/recyclerview/widget/RecyclerView$㢏;Z)V

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$㢏;->䂻:Ljava/util/ArrayList;

    goto :goto_2

    :cond_2
    :goto_0
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$㰫;->ḙ()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$㰫;->㢏()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$㢏;->ㄏ:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$ᆻ;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$ᆻ;->ᆻ()Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Called scrap view with an invalid view. Invalid views cannot be reused from scrap, they should rebound from recycler pool."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$㢏;->ㄏ:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->exceptionLabel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    :goto_1
    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, Landroidx/recyclerview/widget/RecyclerView$㰫;->ᱹ(Landroidx/recyclerview/widget/RecyclerView$㢏;Z)V

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$㢏;->உ:Ljava/util/ArrayList;

    :goto_2
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final 㲝(Landroid/view/ViewGroup;Z)V
    .locals 4

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_1

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    instance-of v3, v2, Landroid/view/ViewGroup;

    if-eqz v3, :cond_0

    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {p0, v2, v1}, Landroidx/recyclerview/widget/RecyclerView$㢏;->㲝(Landroid/view/ViewGroup;Z)V

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    if-nez p2, :cond_2

    return-void

    :cond_2
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getVisibility()I

    move-result p2

    const/4 v0, 0x4

    if-ne p2, v0, :cond_3

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setVisibility(I)V

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getVisibility()I

    move-result p2

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setVisibility(I)V

    :goto_1
    return-void
.end method

.method public 㲧(Landroidx/recyclerview/widget/RecyclerView$ᆻ;Landroidx/recyclerview/widget/RecyclerView$ᆻ;Z)V
    .locals 1

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$㢏;->㚬()V

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$㢏;->ㄏ()Landroidx/recyclerview/widget/RecyclerView$㖪;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$㖪;->ℓ(Landroidx/recyclerview/widget/RecyclerView$ᆻ;Landroidx/recyclerview/widget/RecyclerView$ᆻ;Z)V

    return-void
.end method

.method public 㹖(JIZ)Landroidx/recyclerview/widget/RecyclerView$㰫;
    .locals 6

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$㢏;->உ:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_3

    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$㢏;->உ:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView$㰫;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$㰫;->㧦()J

    move-result-wide v2

    cmp-long v4, v2, p1

    if-nez v4, :cond_2

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$㰫;->㭢()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$㰫;->㹖()I

    move-result v2

    if-ne p3, v2, :cond_1

    const/16 p1, 0x20

    invoke-virtual {v1, p1}, Landroidx/recyclerview/widget/RecyclerView$㰫;->䂻(I)V

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$㰫;->㢏()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$㢏;->ㄏ:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$ಋ;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ಋ;->ḓ()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x2

    const/16 p2, 0xe

    invoke-virtual {v1, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$㰫;->㨃(II)V

    :cond_0
    return-object v1

    :cond_1
    if-nez p4, :cond_2

    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView$㢏;->உ:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView$㢏;->ㄏ:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v3, v1, Landroidx/recyclerview/widget/RecyclerView$㰫;->உ:Landroid/view/View;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroidx/recyclerview/widget/RecyclerView;->removeDetachedView(Landroid/view/View;Z)V

    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView$㰫;->உ:Landroid/view/View;

    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/RecyclerView$㢏;->ㄬ(Landroid/view/View;)V

    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_3
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$㢏;->㚬:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_1
    const/4 v1, 0x0

    if-ltz v0, :cond_7

    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView$㢏;->㚬:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/recyclerview/widget/RecyclerView$㰫;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView$㰫;->㧦()J

    move-result-wide v3

    cmp-long v5, v3, p1

    if-nez v5, :cond_6

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView$㰫;->㞘()Z

    move-result v3

    if-nez v3, :cond_6

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView$㰫;->㹖()I

    move-result v3

    if-ne p3, v3, :cond_5

    if-nez p4, :cond_4

    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$㢏;->㚬:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_4
    return-object v2

    :cond_5
    if-nez p4, :cond_6

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$㢏;->ಋ(I)V

    return-object v1

    :cond_6
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_7
    return-object v1
.end method

.method public 㺴()V
    .locals 4

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$㢏;->㚬:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    iget-object v3, p0, Landroidx/recyclerview/widget/RecyclerView$㢏;->㚬:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/recyclerview/widget/RecyclerView$㰫;

    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView$㰫;->㚬()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$㢏;->உ:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v0, :cond_1

    iget-object v3, p0, Landroidx/recyclerview/widget/RecyclerView$㢏;->உ:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/recyclerview/widget/RecyclerView$㰫;

    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView$㰫;->㚬()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$㢏;->䂻:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_2
    if-ge v1, v0, :cond_2

    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView$㢏;->䂻:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/recyclerview/widget/RecyclerView$㰫;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView$㰫;->㚬()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    return-void
.end method

.method public final 䂻(Landroidx/recyclerview/widget/RecyclerView$㰫;)V
    .locals 2

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$㢏;->ㄏ:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->isAccessibilityEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$㰫;->உ:Landroid/view/View;

    invoke-static {p1}, L㚬/ℓ/ἥ/㭲;->㖪(Landroid/view/View;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    invoke-static {p1, v0}, L㚬/ℓ/ἥ/㭲;->ⷜ(Landroid/view/View;I)V

    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$㢏;->ㄏ:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->mAccessibilityDelegate:L㚬/㲝/㺴/㧦;

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {v0}, L㚬/㲝/㺴/㧦;->ཇ()L㚬/ℓ/ἥ/உ;

    move-result-object v0

    instance-of v1, v0, L㚬/㲝/㺴/㧦$உ;

    if-eqz v1, :cond_2

    move-object v1, v0

    check-cast v1, L㚬/㲝/㺴/㧦$உ;

    invoke-virtual {v1, p1}, L㚬/㲝/㺴/㧦$உ;->ᓭ(Landroid/view/View;)V

    :cond_2
    invoke-static {p1, v0}, L㚬/ℓ/ἥ/㭲;->Ổ(Landroid/view/View;L㚬/ℓ/ἥ/உ;)V

    :cond_3
    return-void
.end method

.method public 䆀(I)I
    .locals 3

    if-ltz p1, :cond_1

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$㢏;->ㄏ:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$ಋ;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$ಋ;->䂻()I

    move-result v0

    if-ge p1, v0, :cond_1

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$㢏;->ㄏ:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$ಋ;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$ಋ;->ḓ()Z

    move-result v0

    if-nez v0, :cond_0

    return p1

    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$㢏;->ㄏ:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->mAdapterHelper:L㚬/㲝/㺴/உ;

    invoke-virtual {v0, p1}, L㚬/㲝/㺴/உ;->ἥ(I)I

    move-result p1

    return p1

    :cond_1
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid position "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ". State item count is "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$㢏;->ㄏ:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$ಋ;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ಋ;->䂻()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$㢏;->ㄏ:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->exceptionLabel()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
