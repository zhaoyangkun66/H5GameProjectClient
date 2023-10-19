.class public Landroidx/recyclerview/widget/StaggeredGridLayoutManager;
.super Landroidx/recyclerview/widget/RecyclerView$ᓭ;
.source ""

# interfaces
.implements Landroidx/recyclerview/widget/RecyclerView$㫏$䂻;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/recyclerview/widget/StaggeredGridLayoutManager$䂻;,
        Landroidx/recyclerview/widget/StaggeredGridLayoutManager$ḓ;,
        Landroidx/recyclerview/widget/StaggeredGridLayoutManager$㺴;,
        Landroidx/recyclerview/widget/StaggeredGridLayoutManager$䆀;,
        Landroidx/recyclerview/widget/StaggeredGridLayoutManager$㚬;
    }
.end annotation


# instance fields
.field public Ԁ:Z

.field public Խ:Z

.field public ש:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$㺴;

.field public ڈ:I

.field public ಋ:Z

.field public ർ:I

.field public ม:I

.field public ᰘ:Z

.field public ᱹ:Z

.field public ḙ:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$䆀;

.field public ỷ:[I

.field public ᾦ:Ljava/util/BitSet;

.field public final ㄬ:L㚬/㲝/㺴/䆀;

.field public final 㖆:Landroid/graphics/Rect;

.field public 㖪:L㚬/㲝/㺴/ಫ;

.field public 㢏:L㚬/㲝/㺴/ಫ;

.field public 㥁:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$ḓ;

.field public 㨃:I

.field public 㫏:Z

.field public final 㭢:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$䂻;

.field public 㭲:I

.field public 㰫:I

.field public 㲧:I

.field public final 䅚:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 2

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ᓭ;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->㭲:I

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->㫏:Z

    iput-boolean v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ಋ:Z

    iput v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ڈ:I

    const/high16 v0, -0x80000000

    iput v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->㰫:I

    new-instance v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$㺴;

    invoke-direct {v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$㺴;-><init>()V

    iput-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ש:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$㺴;

    const/4 v0, 0x2

    iput v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->㨃:I

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->㖆:Landroid/graphics/Rect;

    new-instance v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$䂻;

    invoke-direct {v0, p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$䂻;-><init>(Landroidx/recyclerview/widget/StaggeredGridLayoutManager;)V

    iput-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->㭢:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$䂻;

    iput-boolean v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->Խ:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->Ԁ:Z

    new-instance v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$உ;

    invoke-direct {v0, p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$உ;-><init>(Landroidx/recyclerview/widget/StaggeredGridLayoutManager;)V

    iput-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->䅚:Ljava/lang/Runnable;

    invoke-static {p1, p2, p3, p4}, Landroidx/recyclerview/widget/RecyclerView$ᓭ;->ἃ(Landroid/content/Context;Landroid/util/AttributeSet;II)Landroidx/recyclerview/widget/RecyclerView$ᓭ$㺴;

    move-result-object p1

    iget p2, p1, Landroidx/recyclerview/widget/RecyclerView$ᓭ$㺴;->உ:I

    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->㜷(I)V

    iget p2, p1, Landroidx/recyclerview/widget/RecyclerView$ᓭ$㺴;->䂻:I

    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ፄ(I)V

    iget-boolean p1, p1, Landroidx/recyclerview/widget/RecyclerView$ᓭ$㺴;->㚬:Z

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ᅚ(Z)V

    new-instance p1, L㚬/㲝/㺴/䆀;

    invoke-direct {p1}, L㚬/㲝/㺴/䆀;-><init>()V

    iput-object p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ㄬ:L㚬/㲝/㺴/䆀;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ܙ()V

    return-void
.end method


# virtual methods
.method public final ѝ(Landroidx/recyclerview/widget/RecyclerView$㢏;Landroidx/recyclerview/widget/RecyclerView$ಋ;Z)V
    .locals 2

    const/high16 v0, -0x80000000

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->㒺(I)I

    move-result v1

    if-ne v1, v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->㖪:L㚬/㲝/㺴/ಫ;

    invoke-virtual {v0}, L㚬/㲝/㺴/ಫ;->ㄏ()I

    move-result v0

    sub-int/2addr v0, v1

    if-lez v0, :cond_1

    neg-int v1, v0

    invoke-virtual {p0, v1, p1, p2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ᨁ(ILandroidx/recyclerview/widget/RecyclerView$㢏;Landroidx/recyclerview/widget/RecyclerView$ಋ;)I

    move-result p1

    neg-int p1, p1

    sub-int/2addr v0, p1

    if-eqz p3, :cond_1

    if-lez v0, :cond_1

    iget-object p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->㖪:L㚬/㲝/㺴/ಫ;

    invoke-virtual {p1, v0}, L㚬/㲝/㺴/ಫ;->㞘(I)V

    :cond_1
    return-void
.end method

.method public ѵ(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 0

    const/4 p1, 0x2

    invoke-virtual {p0, p2, p3, p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ᡳ(III)V

    return-void
.end method

.method public final ә(I)I
    .locals 3

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$ᓭ;->ർ()I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x1

    if-nez v0, :cond_1

    iget-boolean p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ಋ:Z

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    :cond_1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ਣ()I

    move-result v0

    if-ge p1, v0, :cond_2

    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    iget-boolean v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ಋ:Z

    if-eq p1, v0, :cond_3

    goto :goto_1

    :cond_3
    const/4 v1, 0x1

    :goto_1
    return v1
.end method

.method public Ԁ(Landroidx/recyclerview/widget/RecyclerView$㢏;Landroidx/recyclerview/widget/RecyclerView$ಋ;)I
    .locals 2

    iget v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ม:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->㭲:I

    return p1

    :cond_0
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$ᓭ;->Ԁ(Landroidx/recyclerview/widget/RecyclerView$㢏;Landroidx/recyclerview/widget/RecyclerView$ಋ;)I

    move-result p1

    return p1
.end method

.method public final Ձ(I)Z
    .locals 4

    iget v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ม:I

    const/4 v1, -0x1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v0, :cond_2

    if-ne p1, v1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iget-boolean v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ಋ:Z

    if-eq p1, v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    return v2

    :cond_2
    if-ne p1, v1, :cond_3

    const/4 p1, 0x1

    goto :goto_2

    :cond_3
    const/4 p1, 0x0

    :goto_2
    iget-boolean v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ಋ:Z

    if-ne p1, v0, :cond_4

    const/4 p1, 0x1

    goto :goto_3

    :cond_4
    const/4 p1, 0x0

    :goto_3
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ඌ()Z

    move-result v0

    if-ne p1, v0, :cond_5

    goto :goto_4

    :cond_5
    const/4 v2, 0x0

    :goto_4
    return v2
.end method

.method public ש(Landroid/content/Context;Landroid/util/AttributeSet;)Landroidx/recyclerview/widget/RecyclerView$ბ;
    .locals 1

    new-instance v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$㚬;

    invoke-direct {v0, p1, p2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$㚬;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public ڪ()Z
    .locals 1

    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->㥁:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$ḓ;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final ܙ()V
    .locals 1

    iget v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ม:I

    invoke-static {p0, v0}, L㚬/㲝/㺴/ಫ;->䂻(Landroidx/recyclerview/widget/RecyclerView$ᓭ;I)L㚬/㲝/㺴/ಫ;

    move-result-object v0

    iput-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->㖪:L㚬/㲝/㺴/ಫ;

    iget v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ม:I

    rsub-int/lit8 v0, v0, 0x1

    invoke-static {p0, v0}, L㚬/㲝/㺴/ಫ;->䂻(Landroidx/recyclerview/widget/RecyclerView$ᓭ;I)L㚬/㲝/㺴/ಫ;

    move-result-object v0

    iput-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->㢏:L㚬/㲝/㺴/ಫ;

    return-void
.end method

.method public final ނ(Landroidx/recyclerview/widget/RecyclerView$㢏;Landroidx/recyclerview/widget/RecyclerView$ಋ;Z)V
    .locals 2

    const v0, 0x7fffffff

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->䈳(I)I

    move-result v1

    if-ne v1, v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->㖪:L㚬/㲝/㺴/ಫ;

    invoke-virtual {v0}, L㚬/㲝/㺴/ಫ;->ἥ()I

    move-result v0

    sub-int/2addr v1, v0

    if-lez v1, :cond_1

    invoke-virtual {p0, v1, p1, p2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ᨁ(ILandroidx/recyclerview/widget/RecyclerView$㢏;Landroidx/recyclerview/widget/RecyclerView$ಋ;)I

    move-result p1

    sub-int/2addr v1, p1

    if-eqz p3, :cond_1

    if-lez v1, :cond_1

    iget-object p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->㖪:L㚬/㲝/㺴/ಫ;

    neg-int p2, v1

    invoke-virtual {p1, p2}, L㚬/㲝/㺴/ಫ;->㞘(I)V

    :cond_1
    return-void
.end method

.method public ޒ(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$㢏;)V
    .locals 1

    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$ᓭ;->ޒ(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$㢏;)V

    iget-object p2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->䅚:Ljava/lang/Runnable;

    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ᓭ;->Ꭸ(Ljava/lang/Runnable;)Z

    const/4 p2, 0x0

    :goto_0
    iget v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->㭲:I

    if-ge p2, v0, :cond_0

    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ḙ:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$䆀;

    aget-object v0, v0, p2

    invoke-virtual {v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$䆀;->ḓ()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->requestLayout()V

    return-void
.end method

.method public ঔ(ILandroidx/recyclerview/widget/RecyclerView$㢏;Landroidx/recyclerview/widget/RecyclerView$ಋ;)I
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ᨁ(ILandroidx/recyclerview/widget/RecyclerView$㢏;Landroidx/recyclerview/widget/RecyclerView$ಋ;)I

    move-result p1

    return p1
.end method

.method public final ਚ(I)I
    .locals 4

    const/4 v0, -0x1

    const/4 v1, 0x1

    if-eq p1, v1, :cond_b

    const/4 v2, 0x2

    if-eq p1, v2, :cond_8

    const/16 v2, 0x11

    const/high16 v3, -0x80000000

    if-eq p1, v2, :cond_6

    const/16 v2, 0x21

    if-eq p1, v2, :cond_4

    const/16 v0, 0x42

    if-eq p1, v0, :cond_2

    const/16 v0, 0x82

    if-eq p1, v0, :cond_0

    return v3

    :cond_0
    iget p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ม:I

    if-ne p1, v1, :cond_1

    goto :goto_0

    :cond_1
    const/high16 v1, -0x80000000

    :goto_0
    return v1

    :cond_2
    iget p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ม:I

    if-nez p1, :cond_3

    goto :goto_1

    :cond_3
    const/high16 v1, -0x80000000

    :goto_1
    return v1

    :cond_4
    iget p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ม:I

    if-ne p1, v1, :cond_5

    goto :goto_2

    :cond_5
    const/high16 v0, -0x80000000

    :goto_2
    return v0

    :cond_6
    iget p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ม:I

    if-nez p1, :cond_7

    goto :goto_3

    :cond_7
    const/high16 v0, -0x80000000

    :goto_3
    return v0

    :cond_8
    iget p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ม:I

    if-ne p1, v1, :cond_9

    return v1

    :cond_9
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ඌ()Z

    move-result p1

    if-eqz p1, :cond_a

    return v0

    :cond_a
    return v1

    :cond_b
    iget p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ม:I

    if-ne p1, v1, :cond_c

    return v0

    :cond_c
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ඌ()Z

    move-result p1

    if-eqz p1, :cond_d

    return v1

    :cond_d
    return v0
.end method

.method public ਣ()I
    .locals 2

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$ᓭ;->ർ()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/RecyclerView$ᓭ;->㥁(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$ᓭ;->䋡(Landroid/view/View;)I

    move-result v1

    :goto_0
    return v1
.end method

.method public உ(I)Landroid/graphics/PointF;
    .locals 3

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ә(I)I

    move-result p1

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    iget v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ม:I

    const/4 v2, 0x0

    if-nez v1, :cond_1

    int-to-float p1, p1

    iput p1, v0, Landroid/graphics/PointF;->x:F

    iput v2, v0, Landroid/graphics/PointF;->y:F

    goto :goto_0

    :cond_1
    iput v2, v0, Landroid/graphics/PointF;->x:F

    int-to-float p1, p1

    iput p1, v0, Landroid/graphics/PointF;->y:F

    :goto_0
    return-object v0
.end method

.method public ഏ()Landroid/os/Parcelable;
    .locals 4

    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->㥁:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$ḓ;

    if-eqz v0, :cond_0

    new-instance v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$ḓ;

    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->㥁:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$ḓ;

    invoke-direct {v0, v1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$ḓ;-><init>(Landroidx/recyclerview/widget/StaggeredGridLayoutManager$ḓ;)V

    return-object v0

    :cond_0
    new-instance v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$ḓ;

    invoke-direct {v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$ḓ;-><init>()V

    iget-boolean v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->㫏:Z

    iput-boolean v1, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$ḓ;->ㄏ:Z

    iget-boolean v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ᰘ:Z

    iput-boolean v1, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$ḓ;->ಫ:Z

    iget-boolean v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ᱹ:Z

    iput-boolean v1, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$ḓ;->㧦:Z

    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ש:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$㺴;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    iget-object v3, v1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$㺴;->உ:[I

    if-eqz v3, :cond_1

    iput-object v3, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$ḓ;->ᆻ:[I

    array-length v3, v3

    iput v3, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$ḓ;->䆀:I

    iget-object v1, v1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$㺴;->䂻:Ljava/util/List;

    iput-object v1, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$ḓ;->ℓ:Ljava/util/List;

    goto :goto_0

    :cond_1
    iput v2, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$ḓ;->䆀:I

    :goto_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$ᓭ;->ർ()I

    move-result v1

    if-lez v1, :cond_5

    iget-boolean v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ᰘ:Z

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->㩇()I

    move-result v1

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ਣ()I

    move-result v1

    :goto_1
    iput v1, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$ḓ;->䂻:I

    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->㯇()I

    move-result v1

    iput v1, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$ḓ;->㚬:I

    iget v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->㭲:I

    iput v1, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$ḓ;->㺴:I

    new-array v1, v1, [I

    iput-object v1, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$ḓ;->ḓ:[I

    :goto_2
    iget v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->㭲:I

    if-ge v2, v1, :cond_6

    iget-boolean v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ᰘ:Z

    const/high16 v3, -0x80000000

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ḙ:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$䆀;

    aget-object v1, v1, v2

    invoke-virtual {v1, v3}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$䆀;->㹖(I)I

    move-result v1

    if-eq v1, v3, :cond_4

    iget-object v3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->㖪:L㚬/㲝/㺴/ಫ;

    invoke-virtual {v3}, L㚬/㲝/㺴/ಫ;->ㄏ()I

    move-result v3

    goto :goto_3

    :cond_3
    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ḙ:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$䆀;

    aget-object v1, v1, v2

    invoke-virtual {v1, v3}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$䆀;->ბ(I)I

    move-result v1

    if-eq v1, v3, :cond_4

    iget-object v3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->㖪:L㚬/㲝/㺴/ಫ;

    invoke-virtual {v3}, L㚬/㲝/㺴/ಫ;->ἥ()I

    move-result v3

    :goto_3
    sub-int/2addr v1, v3

    :cond_4
    iget-object v3, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$ḓ;->ḓ:[I

    aput v1, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_5
    const/4 v1, -0x1

    iput v1, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$ḓ;->䂻:I

    iput v1, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$ḓ;->㚬:I

    iput v2, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$ḓ;->㺴:I

    :cond_6
    return-object v0
.end method

.method public final വ(I)I
    .locals 4

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$ᓭ;->ർ()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    invoke-virtual {p0, v2}, Landroidx/recyclerview/widget/RecyclerView$ᓭ;->㥁(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroidx/recyclerview/widget/RecyclerView$ᓭ;->䋡(Landroid/view/View;)I

    move-result v3

    if-ltz v3, :cond_0

    if-ge v3, p1, :cond_0

    return v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public ඌ()Z
    .locals 2

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$ᓭ;->ᘚ()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public final წ(I)Landroidx/recyclerview/widget/StaggeredGridLayoutManager$㺴$உ;
    .locals 4

    new-instance v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$㺴$உ;

    invoke-direct {v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$㺴$உ;-><init>()V

    iget v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->㭲:I

    new-array v1, v1, [I

    iput-object v1, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$㺴$உ;->㺴:[I

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->㭲:I

    if-ge v1, v2, :cond_0

    iget-object v2, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$㺴$உ;->㺴:[I

    iget-object v3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ḙ:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$䆀;

    aget-object v3, v3, v1

    invoke-virtual {v3, p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$䆀;->ბ(I)I

    move-result v3

    sub-int/2addr v3, p1

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public ᄹ(Landroid/graphics/Rect;II)V
    .locals 4

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$ᓭ;->ග()I

    move-result v0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$ᓭ;->Ᏼ()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$ᓭ;->㠭()I

    move-result v1

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$ᓭ;->Ổ()I

    move-result v2

    add-int/2addr v1, v2

    iget v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ม:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    add-int/2addr p1, v1

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$ᓭ;->㽛()I

    move-result v1

    invoke-static {p3, p1, v1}, Landroidx/recyclerview/widget/RecyclerView$ᓭ;->ཇ(III)I

    move-result p1

    iget p3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->㲧:I

    iget v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->㭲:I

    mul-int p3, p3, v1

    add-int/2addr p3, v0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$ᓭ;->ಇ()I

    move-result v0

    invoke-static {p2, p3, v0}, Landroidx/recyclerview/widget/RecyclerView$ᓭ;->ཇ(III)I

    move-result p2

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    add-int/2addr p1, v0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$ᓭ;->ಇ()I

    move-result v0

    invoke-static {p2, p1, v0}, Landroidx/recyclerview/widget/RecyclerView$ᓭ;->ཇ(III)I

    move-result p2

    iget p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->㲧:I

    iget v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->㭲:I

    mul-int p1, p1, v0

    add-int/2addr p1, v1

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$ᓭ;->㽛()I

    move-result v0

    invoke-static {p3, p1, v0}, Landroidx/recyclerview/widget/RecyclerView$ᓭ;->ཇ(III)I

    move-result p1

    :goto_0
    invoke-virtual {p0, p2, p1}, Landroidx/recyclerview/widget/RecyclerView$ᓭ;->Ϋ(II)V

    return-void
.end method

.method public ᄺ(Landroid/os/Parcelable;)V
    .locals 1

    instance-of v0, p1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$ḓ;

    if-eqz v0, :cond_0

    check-cast p1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$ḓ;

    iput-object p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->㥁:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$ḓ;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$ᓭ;->ᐶ()V

    :cond_0
    return-void
.end method

.method public ᅚ(Z)V
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ᆻ(Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->㥁:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$ḓ;

    if-eqz v0, :cond_0

    iget-boolean v1, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$ḓ;->ㄏ:Z

    if-eq v1, p1, :cond_0

    iput-boolean p1, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$ḓ;->ㄏ:Z

    :cond_0
    iput-boolean p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->㫏:Z

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$ᓭ;->ᐶ()V

    return-void
.end method

.method public ᆻ(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->㥁:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$ḓ;

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ᓭ;->ᆻ(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public ም(I)V
    .locals 2

    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->㥁:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$ḓ;

    if-eqz v0, :cond_0

    iget v1, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$ḓ;->䂻:I

    if-eq v1, p1, :cond_0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$ḓ;->ಫ()V

    :cond_0
    iput p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ڈ:I

    const/high16 p1, -0x80000000

    iput p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->㰫:I

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$ᓭ;->ᐶ()V

    return-void
.end method

.method public ጜ()Landroid/view/View;
    .locals 12

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$ᓭ;->ർ()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    new-instance v2, Ljava/util/BitSet;

    iget v3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->㭲:I

    invoke-direct {v2, v3}, Ljava/util/BitSet;-><init>(I)V

    iget v3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->㭲:I

    const/4 v4, 0x0

    invoke-virtual {v2, v4, v3, v1}, Ljava/util/BitSet;->set(IIZ)V

    iget v3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ม:I

    const/4 v5, -0x1

    if-ne v3, v1, :cond_0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ඌ()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, -0x1

    :goto_0
    iget-boolean v6, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ಋ:Z

    if-eqz v6, :cond_1

    const/4 v6, -0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    move v6, v0

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v6, :cond_2

    const/4 v5, 0x1

    :cond_2
    :goto_2
    if-eq v0, v6, :cond_d

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$ᓭ;->㥁(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$㚬;

    iget-object v9, v8, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$㚬;->ḓ:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$䆀;

    iget v9, v9, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$䆀;->ḓ:I

    invoke-virtual {v2, v9}, Ljava/util/BitSet;->get(I)Z

    move-result v9

    if-eqz v9, :cond_4

    iget-object v9, v8, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$㚬;->ḓ:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$䆀;

    invoke-virtual {p0, v9}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->㒱(Landroidx/recyclerview/widget/StaggeredGridLayoutManager$䆀;)Z

    move-result v9

    if-eqz v9, :cond_3

    return-object v7

    :cond_3
    iget-object v9, v8, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$㚬;->ḓ:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$䆀;

    iget v9, v9, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$䆀;->ḓ:I

    invoke-virtual {v2, v9}, Ljava/util/BitSet;->clear(I)V

    :cond_4
    iget-boolean v9, v8, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$㚬;->䆀:Z

    if-eqz v9, :cond_5

    goto :goto_7

    :cond_5
    add-int v9, v0, v5

    if-eq v9, v6, :cond_c

    invoke-virtual {p0, v9}, Landroidx/recyclerview/widget/RecyclerView$ᓭ;->㥁(I)Landroid/view/View;

    move-result-object v9

    iget-boolean v10, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ಋ:Z

    if-eqz v10, :cond_7

    iget-object v10, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->㖪:L㚬/㲝/㺴/ಫ;

    invoke-virtual {v10, v7}, L㚬/㲝/㺴/ಫ;->㺴(Landroid/view/View;)I

    move-result v10

    iget-object v11, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->㖪:L㚬/㲝/㺴/ಫ;

    invoke-virtual {v11, v9}, L㚬/㲝/㺴/ಫ;->㺴(Landroid/view/View;)I

    move-result v11

    if-ge v10, v11, :cond_6

    return-object v7

    :cond_6
    if-ne v10, v11, :cond_9

    goto :goto_3

    :cond_7
    iget-object v10, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->㖪:L㚬/㲝/㺴/ಫ;

    invoke-virtual {v10, v7}, L㚬/㲝/㺴/ಫ;->ᆻ(Landroid/view/View;)I

    move-result v10

    iget-object v11, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->㖪:L㚬/㲝/㺴/ಫ;

    invoke-virtual {v11, v9}, L㚬/㲝/㺴/ಫ;->ᆻ(Landroid/view/View;)I

    move-result v11

    if-le v10, v11, :cond_8

    return-object v7

    :cond_8
    if-ne v10, v11, :cond_9

    :goto_3
    const/4 v10, 0x1

    goto :goto_4

    :cond_9
    const/4 v10, 0x0

    :goto_4
    if-eqz v10, :cond_c

    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$㚬;

    iget-object v8, v8, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$㚬;->ḓ:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$䆀;

    iget v8, v8, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$䆀;->ḓ:I

    iget-object v9, v9, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$㚬;->ḓ:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$䆀;

    iget v9, v9, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$䆀;->ḓ:I

    sub-int/2addr v8, v9

    if-gez v8, :cond_a

    const/4 v8, 0x1

    goto :goto_5

    :cond_a
    const/4 v8, 0x0

    :goto_5
    if-gez v3, :cond_b

    const/4 v9, 0x1

    goto :goto_6

    :cond_b
    const/4 v9, 0x0

    :goto_6
    if-eq v8, v9, :cond_c

    return-object v7

    :cond_c
    :goto_7
    add-int/2addr v0, v5

    goto :goto_2

    :cond_d
    const/4 v0, 0x0

    return-object v0
.end method

.method public ፄ(I)V
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ᆻ(Ljava/lang/String;)V

    iget v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->㭲:I

    if-eq p1, v0, :cond_1

    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->Ẉ()V

    iput p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->㭲:I

    new-instance p1, Ljava/util/BitSet;

    iget v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->㭲:I

    invoke-direct {p1, v0}, Ljava/util/BitSet;-><init>(I)V

    iput-object p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ᾦ:Ljava/util/BitSet;

    iget p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->㭲:I

    new-array p1, p1, [Landroidx/recyclerview/widget/StaggeredGridLayoutManager$䆀;

    iput-object p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ḙ:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$䆀;

    const/4 p1, 0x0

    :goto_0
    iget v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->㭲:I

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ḙ:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$䆀;

    new-instance v1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$䆀;

    invoke-direct {v1, p0, p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$䆀;-><init>(Landroidx/recyclerview/widget/StaggeredGridLayoutManager;I)V

    aput-object v1, v0, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$ᓭ;->ᐶ()V

    :cond_1
    return-void
.end method

.method public Ꭿ()Z
    .locals 1

    iget v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->㨃:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final ᐇ(I)V
    .locals 4

    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ㄬ:L㚬/㲝/㺴/䆀;

    iput p1, v0, L㚬/㲝/㺴/䆀;->ḓ:I

    iget-boolean v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ಋ:Z

    const/4 v2, 0x1

    const/4 v3, -0x1

    if-ne p1, v3, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-ne v1, p1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, -0x1

    :goto_1
    iput v2, v0, L㚬/㲝/㺴/䆀;->㺴:I

    return-void
.end method

.method public final ᑈ(Landroidx/recyclerview/widget/StaggeredGridLayoutManager$䂻;)V
    .locals 4

    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->㥁:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$ḓ;

    iget v1, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$ḓ;->㺴:I

    if-lez v1, :cond_3

    iget v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->㭲:I

    if-ne v1, v2, :cond_2

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->㭲:I

    if-ge v0, v1, :cond_3

    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ḙ:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$䆀;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$䆀;->ḓ()V

    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->㥁:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$ḓ;

    iget-object v2, v1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$ḓ;->ḓ:[I

    aget v2, v2, v0

    const/high16 v3, -0x80000000

    if-eq v2, v3, :cond_1

    iget-boolean v1, v1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$ḓ;->ಫ:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->㖪:L㚬/㲝/㺴/ಫ;

    invoke-virtual {v1}, L㚬/㲝/㺴/ಫ;->ㄏ()I

    move-result v1

    goto :goto_1

    :cond_0
    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->㖪:L㚬/㲝/㺴/ಫ;

    invoke-virtual {v1}, L㚬/㲝/㺴/ಫ;->ἥ()I

    move-result v1

    :goto_1
    add-int/2addr v2, v1

    :cond_1
    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ḙ:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$䆀;

    aget-object v1, v1, v0

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$䆀;->㢏(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$ḓ;->㧦()V

    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->㥁:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$ḓ;

    iget v1, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$ḓ;->㚬:I

    iput v1, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$ḓ;->䂻:I

    :cond_3
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->㥁:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$ḓ;

    iget-boolean v1, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$ḓ;->㧦:Z

    iput-boolean v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ᱹ:Z

    iget-boolean v0, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$ḓ;->ㄏ:Z

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ᅚ(Z)V

    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->䉁()V

    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->㥁:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$ḓ;

    iget v1, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$ḓ;->䂻:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_4

    iput v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ڈ:I

    iget-boolean v1, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$ḓ;->ಫ:Z

    goto :goto_2

    :cond_4
    iget-boolean v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ಋ:Z

    :goto_2
    iput-boolean v1, p1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$䂻;->㚬:Z

    iget p1, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$ḓ;->䆀:I

    const/4 v1, 0x1

    if-le p1, v1, :cond_5

    iget-object p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ש:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$㺴;

    iget-object v1, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$ḓ;->ᆻ:[I

    iput-object v1, p1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$㺴;->உ:[I

    iget-object v0, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$ḓ;->ℓ:Ljava/util/List;

    iput-object v0, p1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$㺴;->䂻:Ljava/util/List;

    :cond_5
    return-void
.end method

.method public final ᓇ(I)I
    .locals 2

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$ᓭ;->ർ()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$ᓭ;->㥁(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/RecyclerView$ᓭ;->䋡(Landroid/view/View;)I

    move-result v1

    if-ltz v1, :cond_0

    if-ge v1, p1, :cond_0

    return v1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public final ᓓ(Landroid/view/View;IIZ)V
    .locals 4

    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->㖆:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v0}, Landroidx/recyclerview/widget/RecyclerView$ᓭ;->ಫ(Landroid/view/View;Landroid/graphics/Rect;)V

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$㚬;

    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget-object v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->㖆:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, v3

    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iget v2, v2, Landroid/graphics/Rect;->right:I

    add-int/2addr v3, v2

    invoke-virtual {p0, p2, v1, v3}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->Ↄ(III)I

    move-result p2

    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget-object v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->㖆:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, v3

    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v3, v2

    invoke-virtual {p0, p3, v1, v3}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->Ↄ(III)I

    move-result p3

    if-eqz p4, :cond_0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroidx/recyclerview/widget/RecyclerView$ᓭ;->ᄂ(Landroid/view/View;IILandroidx/recyclerview/widget/RecyclerView$ბ;)Z

    move-result p4

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1, p2, p3, v0}, Landroidx/recyclerview/widget/RecyclerView$ᓭ;->Ṻ(Landroid/view/View;IILandroidx/recyclerview/widget/RecyclerView$ბ;)Z

    move-result p4

    :goto_0
    if-eqz p4, :cond_1

    invoke-virtual {p1, p2, p3}, Landroid/view/View;->measure(II)V

    :cond_1
    return-void
.end method

.method public ᓭ(IILandroidx/recyclerview/widget/RecyclerView$ಋ;Landroidx/recyclerview/widget/RecyclerView$ᓭ$㚬;)V
    .locals 4

    iget v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ม:I

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move p1, p2

    :goto_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$ᓭ;->ർ()I

    move-result p2

    if-eqz p2, :cond_7

    if-nez p1, :cond_1

    goto :goto_4

    :cond_1
    invoke-virtual {p0, p1, p3}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ᵹ(ILandroidx/recyclerview/widget/RecyclerView$ಋ;)V

    iget-object p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ỷ:[I

    if-eqz p1, :cond_2

    array-length p1, p1

    iget p2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->㭲:I

    if-ge p1, p2, :cond_3

    :cond_2
    iget p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->㭲:I

    new-array p1, p1, [I

    iput-object p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ỷ:[I

    :cond_3
    const/4 p1, 0x0

    const/4 p2, 0x0

    const/4 v0, 0x0

    :goto_1
    iget v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->㭲:I

    if-ge p2, v1, :cond_6

    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ㄬ:L㚬/㲝/㺴/䆀;

    iget v2, v1, L㚬/㲝/㺴/䆀;->㺴:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_4

    iget v1, v1, L㚬/㲝/㺴/䆀;->䆀:I

    iget-object v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ḙ:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$䆀;

    aget-object v2, v2, p2

    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$䆀;->ბ(I)I

    move-result v2

    goto :goto_2

    :cond_4
    iget-object v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ḙ:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$䆀;

    aget-object v2, v2, p2

    iget v1, v1, L㚬/㲝/㺴/䆀;->ᆻ:I

    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$䆀;->㹖(I)I

    move-result v1

    iget-object v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ㄬ:L㚬/㲝/㺴/䆀;

    iget v2, v2, L㚬/㲝/㺴/䆀;->ᆻ:I

    :goto_2
    sub-int/2addr v1, v2

    if-ltz v1, :cond_5

    iget-object v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ỷ:[I

    aput v1, v2, v0

    add-int/lit8 v0, v0, 0x1

    :cond_5
    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_6
    iget-object p2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ỷ:[I

    invoke-static {p2, p1, v0}, Ljava/util/Arrays;->sort([III)V

    :goto_3
    if-ge p1, v0, :cond_7

    iget-object p2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ㄬ:L㚬/㲝/㺴/䆀;

    invoke-virtual {p2, p3}, L㚬/㲝/㺴/䆀;->உ(Landroidx/recyclerview/widget/RecyclerView$ಋ;)Z

    move-result p2

    if-eqz p2, :cond_7

    iget-object p2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ㄬ:L㚬/㲝/㺴/䆀;

    iget p2, p2, L㚬/㲝/㺴/䆀;->㚬:I

    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ỷ:[I

    aget v1, v1, p1

    invoke-interface {p4, p2, v1}, Landroidx/recyclerview/widget/RecyclerView$ᓭ$㚬;->உ(II)V

    iget-object p2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ㄬ:L㚬/㲝/㺴/䆀;

    iget v1, p2, L㚬/㲝/㺴/䆀;->㚬:I

    iget v2, p2, L㚬/㲝/㺴/䆀;->㺴:I

    add-int/2addr v1, v2

    iput v1, p2, L㚬/㲝/㺴/䆀;->㚬:I

    add-int/lit8 p1, p1, 0x1

    goto :goto_3

    :cond_7
    :goto_4
    return-void
.end method

.method public ᖰ(ILandroidx/recyclerview/widget/RecyclerView$㢏;Landroidx/recyclerview/widget/RecyclerView$ಋ;)I
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ᨁ(ILandroidx/recyclerview/widget/RecyclerView$㢏;Landroidx/recyclerview/widget/RecyclerView$ಋ;)I

    move-result p1

    return p1
.end method

.method public ᚭ(Landroidx/recyclerview/widget/RecyclerView$ಋ;Landroidx/recyclerview/widget/StaggeredGridLayoutManager$䂻;)V
    .locals 1

    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ⶶ(Landroidx/recyclerview/widget/RecyclerView$ಋ;Landroidx/recyclerview/widget/StaggeredGridLayoutManager$䂻;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->㳖(Landroidx/recyclerview/widget/RecyclerView$ಋ;Landroidx/recyclerview/widget/StaggeredGridLayoutManager$䂻;)Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    :cond_1
    invoke-virtual {p2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$䂻;->உ()V

    const/4 p1, 0x0

    iput p1, p2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$䂻;->உ:I

    return-void
.end method

.method public final ᡳ(III)V
    .locals 6

    iget-boolean v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ಋ:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->㩇()I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ਣ()I

    move-result v0

    :goto_0
    const/16 v1, 0x8

    if-ne p3, v1, :cond_2

    if-ge p1, p2, :cond_1

    add-int/lit8 v2, p2, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, p1, 0x1

    move v3, p2

    goto :goto_2

    :cond_2
    add-int v2, p1, p2

    :goto_1
    move v3, p1

    :goto_2
    iget-object v4, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ש:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$㺴;

    invoke-virtual {v4, v3}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$㺴;->ℓ(I)I

    const/4 v4, 0x1

    if-eq p3, v4, :cond_5

    const/4 v5, 0x2

    if-eq p3, v5, :cond_4

    if-eq p3, v1, :cond_3

    goto :goto_3

    :cond_3
    iget-object p3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ש:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$㺴;

    invoke-virtual {p3, p1, v4}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$㺴;->㧦(II)V

    iget-object p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ש:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$㺴;

    invoke-virtual {p1, p2, v4}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$㺴;->ಫ(II)V

    goto :goto_3

    :cond_4
    iget-object p3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ש:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$㺴;

    invoke-virtual {p3, p1, p2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$㺴;->㧦(II)V

    goto :goto_3

    :cond_5
    iget-object p3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ש:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$㺴;

    invoke-virtual {p3, p1, p2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$㺴;->ಫ(II)V

    :goto_3
    if-gt v2, v0, :cond_6

    return-void

    :cond_6
    iget-boolean p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ಋ:Z

    if-eqz p1, :cond_7

    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ਣ()I

    move-result p1

    goto :goto_4

    :cond_7
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->㩇()I

    move-result p1

    :goto_4
    if-gt v3, p1, :cond_8

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$ᓭ;->ᐶ()V

    :cond_8
    return-void
.end method

.method public ᤍ()Z
    .locals 6

    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ḙ:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$䆀;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    const/high16 v2, -0x80000000

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$䆀;->㹖(I)I

    move-result v0

    const/4 v3, 0x1

    const/4 v4, 0x1

    :goto_0
    iget v5, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->㭲:I

    if-ge v4, v5, :cond_1

    iget-object v5, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ḙ:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$䆀;

    aget-object v5, v5, v4

    invoke-virtual {v5, v2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$䆀;->㹖(I)I

    move-result v5

    if-eq v5, v0, :cond_0

    return v1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    return v3
.end method

.method public ᨁ(ILandroidx/recyclerview/widget/RecyclerView$㢏;Landroidx/recyclerview/widget/RecyclerView$ಋ;)I
    .locals 2

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$ᓭ;->ർ()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0, p1, p3}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ᵹ(ILandroidx/recyclerview/widget/RecyclerView$ಋ;)V

    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ㄬ:L㚬/㲝/㺴/䆀;

    invoke-virtual {p0, p2, v0, p3}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ᵐ(Landroidx/recyclerview/widget/RecyclerView$㢏;L㚬/㲝/㺴/䆀;Landroidx/recyclerview/widget/RecyclerView$ಋ;)I

    move-result p3

    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ㄬ:L㚬/㲝/㺴/䆀;

    iget v0, v0, L㚬/㲝/㺴/䆀;->䂻:I

    if-ge v0, p3, :cond_1

    goto :goto_0

    :cond_1
    if-gez p1, :cond_2

    neg-int p1, p3

    goto :goto_0

    :cond_2
    move p1, p3

    :goto_0
    iget-object p3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->㖪:L㚬/㲝/㺴/ಫ;

    neg-int v0, p1

    invoke-virtual {p3, v0}, L㚬/㲝/㺴/ಫ;->㞘(I)V

    iget-boolean p3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ಋ:Z

    iput-boolean p3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ᰘ:Z

    iget-object p3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ㄬ:L㚬/㲝/㺴/䆀;

    iput v1, p3, L㚬/㲝/㺴/䆀;->䂻:I

    invoke-virtual {p0, p2, p3}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->㦗(Landroidx/recyclerview/widget/RecyclerView$㢏;L㚬/㲝/㺴/䆀;)V

    return p1

    :cond_3
    :goto_1
    return v1
.end method

.method public final ᯉ(II)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->㭲:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ḙ:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$䆀;

    aget-object v1, v1, v0

    iget-object v1, v1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$䆀;->உ:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ḙ:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$䆀;

    aget-object v1, v1, v0

    invoke-virtual {p0, v1, p1, p2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->㤌(Landroidx/recyclerview/widget/StaggeredGridLayoutManager$䆀;II)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public ᴇ(I)V
    .locals 2

    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ᓭ;->ᴇ(I)V

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->㭲:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ḙ:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$䆀;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$䆀;->㞘(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public ᵁ(I)V
    .locals 2

    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ᓭ;->ᵁ(I)V

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->㭲:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ḙ:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$䆀;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$䆀;->㞘(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final ᵐ(Landroidx/recyclerview/widget/RecyclerView$㢏;L㚬/㲝/㺴/䆀;Landroidx/recyclerview/widget/RecyclerView$ಋ;)I
    .locals 16

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    iget-object v0, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ᾦ:Ljava/util/BitSet;

    iget v1, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->㭲:I

    const/4 v9, 0x0

    const/4 v10, 0x1

    invoke-virtual {v0, v9, v1, v10}, Ljava/util/BitSet;->set(IIZ)V

    iget-object v0, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ㄬ:L㚬/㲝/㺴/䆀;

    iget-boolean v0, v0, L㚬/㲝/㺴/䆀;->ㄏ:Z

    if-eqz v0, :cond_1

    iget v0, v8, L㚬/㲝/㺴/䆀;->ḓ:I

    if-ne v0, v10, :cond_0

    const v0, 0x7fffffff

    const v11, 0x7fffffff

    goto :goto_1

    :cond_0
    const/high16 v0, -0x80000000

    const/high16 v11, -0x80000000

    goto :goto_1

    :cond_1
    iget v0, v8, L㚬/㲝/㺴/䆀;->ḓ:I

    if-ne v0, v10, :cond_2

    iget v0, v8, L㚬/㲝/㺴/䆀;->ᆻ:I

    iget v1, v8, L㚬/㲝/㺴/䆀;->䂻:I

    add-int/2addr v0, v1

    goto :goto_0

    :cond_2
    iget v0, v8, L㚬/㲝/㺴/䆀;->䆀:I

    iget v1, v8, L㚬/㲝/㺴/䆀;->䂻:I

    sub-int/2addr v0, v1

    :goto_0
    move v11, v0

    :goto_1
    iget v0, v8, L㚬/㲝/㺴/䆀;->ḓ:I

    invoke-virtual {v6, v0, v11}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ᯉ(II)V

    iget-boolean v0, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ಋ:Z

    if-eqz v0, :cond_3

    iget-object v0, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->㖪:L㚬/㲝/㺴/ಫ;

    invoke-virtual {v0}, L㚬/㲝/㺴/ಫ;->ㄏ()I

    move-result v0

    goto :goto_2

    :cond_3
    iget-object v0, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->㖪:L㚬/㲝/㺴/ಫ;

    invoke-virtual {v0}, L㚬/㲝/㺴/ಫ;->ἥ()I

    move-result v0

    :goto_2
    move v12, v0

    const/4 v0, 0x0

    :goto_3
    invoke-virtual/range {p2 .. p3}, L㚬/㲝/㺴/䆀;->உ(Landroidx/recyclerview/widget/RecyclerView$ಋ;)Z

    move-result v1

    const/4 v2, -0x1

    if-eqz v1, :cond_19

    iget-object v1, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ㄬ:L㚬/㲝/㺴/䆀;

    iget-boolean v1, v1, L㚬/㲝/㺴/䆀;->ㄏ:Z

    if-nez v1, :cond_4

    iget-object v1, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ᾦ:Ljava/util/BitSet;

    invoke-virtual {v1}, Ljava/util/BitSet;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_19

    :cond_4
    invoke-virtual {v8, v7}, L㚬/㲝/㺴/䆀;->䂻(Landroidx/recyclerview/widget/RecyclerView$㢏;)Landroid/view/View;

    move-result-object v13

    invoke-virtual {v13}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$㚬;

    invoke-virtual {v14}, Landroidx/recyclerview/widget/RecyclerView$ბ;->உ()I

    move-result v0

    iget-object v1, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ש:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$㺴;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$㺴;->ᆻ(I)I

    move-result v1

    if-ne v1, v2, :cond_5

    const/4 v3, 0x1

    goto :goto_4

    :cond_5
    const/4 v3, 0x0

    :goto_4
    if-eqz v3, :cond_7

    iget-boolean v1, v14, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$㚬;->䆀:Z

    if-eqz v1, :cond_6

    iget-object v1, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ḙ:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$䆀;

    aget-object v1, v1, v9

    goto :goto_5

    :cond_6
    invoke-virtual {v6, v8}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->㲲(L㚬/㲝/㺴/䆀;)Landroidx/recyclerview/widget/StaggeredGridLayoutManager$䆀;

    move-result-object v1

    :goto_5
    iget-object v4, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ש:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$㺴;

    invoke-virtual {v4, v0, v1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$㺴;->ཇ(ILandroidx/recyclerview/widget/StaggeredGridLayoutManager$䆀;)V

    goto :goto_6

    :cond_7
    iget-object v4, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ḙ:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$䆀;

    aget-object v1, v4, v1

    :goto_6
    move-object v15, v1

    iput-object v15, v14, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$㚬;->ḓ:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$䆀;

    iget v1, v8, L㚬/㲝/㺴/䆀;->ḓ:I

    if-ne v1, v10, :cond_8

    invoke-virtual {v6, v13}, Landroidx/recyclerview/widget/RecyclerView$ᓭ;->㺴(Landroid/view/View;)V

    goto :goto_7

    :cond_8
    invoke-virtual {v6, v13, v9}, Landroidx/recyclerview/widget/RecyclerView$ᓭ;->ḓ(Landroid/view/View;I)V

    :goto_7
    invoke-virtual {v6, v13, v14, v9}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->䃆(Landroid/view/View;Landroidx/recyclerview/widget/StaggeredGridLayoutManager$㚬;Z)V

    iget v1, v8, L㚬/㲝/㺴/䆀;->ḓ:I

    if-ne v1, v10, :cond_b

    iget-boolean v1, v14, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$㚬;->䆀:Z

    if-eqz v1, :cond_9

    invoke-virtual {v6, v12}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->㒺(I)I

    move-result v1

    goto :goto_8

    :cond_9
    invoke-virtual {v15, v12}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$䆀;->㹖(I)I

    move-result v1

    :goto_8
    iget-object v4, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->㖪:L㚬/㲝/㺴/ಫ;

    invoke-virtual {v4, v13}, L㚬/㲝/㺴/ಫ;->ḓ(Landroid/view/View;)I

    move-result v4

    add-int/2addr v4, v1

    if-eqz v3, :cond_a

    iget-boolean v5, v14, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$㚬;->䆀:Z

    if-eqz v5, :cond_a

    invoke-virtual {v6, v1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->㐇(I)Landroidx/recyclerview/widget/StaggeredGridLayoutManager$㺴$உ;

    move-result-object v5

    iput v2, v5, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$㺴$உ;->㚬:I

    iput v0, v5, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$㺴$உ;->䂻:I

    iget-object v9, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ש:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$㺴;

    invoke-virtual {v9, v5}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$㺴;->உ(Landroidx/recyclerview/widget/StaggeredGridLayoutManager$㺴$உ;)V

    :cond_a
    move v5, v4

    move v4, v1

    goto :goto_a

    :cond_b
    iget-boolean v1, v14, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$㚬;->䆀:Z

    if-eqz v1, :cond_c

    invoke-virtual {v6, v12}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->䈳(I)I

    move-result v1

    goto :goto_9

    :cond_c
    invoke-virtual {v15, v12}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$䆀;->ბ(I)I

    move-result v1

    :goto_9
    iget-object v4, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->㖪:L㚬/㲝/㺴/ಫ;

    invoke-virtual {v4, v13}, L㚬/㲝/㺴/ಫ;->ḓ(Landroid/view/View;)I

    move-result v4

    sub-int v4, v1, v4

    if-eqz v3, :cond_d

    iget-boolean v5, v14, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$㚬;->䆀:Z

    if-eqz v5, :cond_d

    invoke-virtual {v6, v1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->წ(I)Landroidx/recyclerview/widget/StaggeredGridLayoutManager$㺴$உ;

    move-result-object v5

    iput v10, v5, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$㺴$உ;->㚬:I

    iput v0, v5, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$㺴$உ;->䂻:I

    iget-object v9, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ש:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$㺴;

    invoke-virtual {v9, v5}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$㺴;->உ(Landroidx/recyclerview/widget/StaggeredGridLayoutManager$㺴$உ;)V

    :cond_d
    move v5, v1

    :goto_a
    iget-boolean v1, v14, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$㚬;->䆀:Z

    if-eqz v1, :cond_11

    iget v1, v8, L㚬/㲝/㺴/䆀;->㺴:I

    if-ne v1, v2, :cond_11

    if-eqz v3, :cond_f

    :cond_e
    :goto_b
    iput-boolean v10, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->Խ:Z

    goto :goto_d

    :cond_f
    iget v1, v8, L㚬/㲝/㺴/䆀;->ḓ:I

    if-ne v1, v10, :cond_10

    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ᤍ()Z

    move-result v1

    goto :goto_c

    :cond_10
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->㪦()Z

    move-result v1

    :goto_c
    xor-int/2addr v1, v10

    if-eqz v1, :cond_11

    iget-object v1, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ש:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$㺴;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$㺴;->䆀(I)Landroidx/recyclerview/widget/StaggeredGridLayoutManager$㺴$உ;

    move-result-object v0

    if-eqz v0, :cond_e

    iput-boolean v10, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$㺴$உ;->ḓ:Z

    goto :goto_b

    :cond_11
    :goto_d
    invoke-virtual {v6, v13, v14, v8}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->Ⳟ(Landroid/view/View;Landroidx/recyclerview/widget/StaggeredGridLayoutManager$㚬;L㚬/㲝/㺴/䆀;)V

    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ඌ()Z

    move-result v0

    if-eqz v0, :cond_13

    iget v0, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ม:I

    if-ne v0, v10, :cond_13

    iget-boolean v0, v14, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$㚬;->䆀:Z

    if-eqz v0, :cond_12

    iget-object v0, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->㢏:L㚬/㲝/㺴/ಫ;

    invoke-virtual {v0}, L㚬/㲝/㺴/ಫ;->ㄏ()I

    move-result v0

    goto :goto_e

    :cond_12
    iget-object v0, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->㢏:L㚬/㲝/㺴/ಫ;

    invoke-virtual {v0}, L㚬/㲝/㺴/ಫ;->ㄏ()I

    move-result v0

    iget v1, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->㭲:I

    sub-int/2addr v1, v10

    iget v2, v15, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$䆀;->ḓ:I

    sub-int/2addr v1, v2

    iget v2, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->㲧:I

    mul-int v1, v1, v2

    sub-int/2addr v0, v1

    :goto_e
    iget-object v1, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->㢏:L㚬/㲝/㺴/ಫ;

    invoke-virtual {v1, v13}, L㚬/㲝/㺴/ಫ;->ḓ(Landroid/view/View;)I

    move-result v1

    sub-int v1, v0, v1

    move v9, v0

    move v3, v1

    goto :goto_10

    :cond_13
    iget-boolean v0, v14, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$㚬;->䆀:Z

    if-eqz v0, :cond_14

    iget-object v0, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->㢏:L㚬/㲝/㺴/ಫ;

    invoke-virtual {v0}, L㚬/㲝/㺴/ಫ;->ἥ()I

    move-result v0

    goto :goto_f

    :cond_14
    iget v0, v15, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$䆀;->ḓ:I

    iget v1, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->㲧:I

    mul-int v0, v0, v1

    iget-object v1, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->㢏:L㚬/㲝/㺴/ಫ;

    invoke-virtual {v1}, L㚬/㲝/㺴/ಫ;->ἥ()I

    move-result v1

    add-int/2addr v0, v1

    :goto_f
    iget-object v1, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->㢏:L㚬/㲝/㺴/ಫ;

    invoke-virtual {v1, v13}, L㚬/㲝/㺴/ಫ;->ḓ(Landroid/view/View;)I

    move-result v1

    add-int/2addr v1, v0

    move v3, v0

    move v9, v1

    :goto_10
    iget v0, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ม:I

    if-ne v0, v10, :cond_15

    move-object/from16 v0, p0

    move-object v1, v13

    move v2, v3

    move v3, v4

    move v4, v9

    goto :goto_11

    :cond_15
    move-object/from16 v0, p0

    move-object v1, v13

    move v2, v4

    move v4, v5

    move v5, v9

    :goto_11
    invoke-virtual/range {v0 .. v5}, Landroidx/recyclerview/widget/RecyclerView$ᓭ;->㴩(Landroid/view/View;IIII)V

    iget-boolean v0, v14, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$㚬;->䆀:Z

    if-eqz v0, :cond_16

    iget-object v0, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ㄬ:L㚬/㲝/㺴/䆀;

    iget v0, v0, L㚬/㲝/㺴/䆀;->ḓ:I

    invoke-virtual {v6, v0, v11}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ᯉ(II)V

    goto :goto_12

    :cond_16
    iget-object v0, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ㄬ:L㚬/㲝/㺴/䆀;

    iget v0, v0, L㚬/㲝/㺴/䆀;->ḓ:I

    invoke-virtual {v6, v15, v0, v11}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->㤌(Landroidx/recyclerview/widget/StaggeredGridLayoutManager$䆀;II)V

    :goto_12
    iget-object v0, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ㄬ:L㚬/㲝/㺴/䆀;

    invoke-virtual {v6, v7, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->㦗(Landroidx/recyclerview/widget/RecyclerView$㢏;L㚬/㲝/㺴/䆀;)V

    iget-object v0, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ㄬ:L㚬/㲝/㺴/䆀;

    iget-boolean v0, v0, L㚬/㲝/㺴/䆀;->ℓ:Z

    if-eqz v0, :cond_18

    invoke-virtual {v13}, Landroid/view/View;->hasFocusable()Z

    move-result v0

    if-eqz v0, :cond_18

    iget-boolean v0, v14, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$㚬;->䆀:Z

    if-eqz v0, :cond_17

    iget-object v0, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ᾦ:Ljava/util/BitSet;

    invoke-virtual {v0}, Ljava/util/BitSet;->clear()V

    goto :goto_13

    :cond_17
    iget-object v0, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ᾦ:Ljava/util/BitSet;

    iget v1, v15, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$䆀;->ḓ:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Ljava/util/BitSet;->set(IZ)V

    goto :goto_14

    :cond_18
    :goto_13
    const/4 v3, 0x0

    :goto_14
    const/4 v0, 0x1

    const/4 v9, 0x0

    goto/16 :goto_3

    :cond_19
    const/4 v3, 0x0

    if-nez v0, :cond_1a

    iget-object v0, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ㄬ:L㚬/㲝/㺴/䆀;

    invoke-virtual {v6, v7, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->㦗(Landroidx/recyclerview/widget/RecyclerView$㢏;L㚬/㲝/㺴/䆀;)V

    :cond_1a
    iget-object v0, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ㄬ:L㚬/㲝/㺴/䆀;

    iget v0, v0, L㚬/㲝/㺴/䆀;->ḓ:I

    if-ne v0, v2, :cond_1b

    iget-object v0, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->㖪:L㚬/㲝/㺴/ಫ;

    invoke-virtual {v0}, L㚬/㲝/㺴/ಫ;->ἥ()I

    move-result v0

    invoke-virtual {v6, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->䈳(I)I

    move-result v0

    iget-object v1, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->㖪:L㚬/㲝/㺴/ಫ;

    invoke-virtual {v1}, L㚬/㲝/㺴/ಫ;->ἥ()I

    move-result v1

    sub-int/2addr v1, v0

    goto :goto_15

    :cond_1b
    iget-object v0, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->㖪:L㚬/㲝/㺴/ಫ;

    invoke-virtual {v0}, L㚬/㲝/㺴/ಫ;->ㄏ()I

    move-result v0

    invoke-virtual {v6, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->㒺(I)I

    move-result v0

    iget-object v1, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->㖪:L㚬/㲝/㺴/ಫ;

    invoke-virtual {v1}, L㚬/㲝/㺴/ಫ;->ㄏ()I

    move-result v1

    sub-int v1, v0, v1

    :goto_15
    if-lez v1, :cond_1c

    iget v0, v8, L㚬/㲝/㺴/䆀;->䂻:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v9

    goto :goto_16

    :cond_1c
    const/4 v9, 0x0

    :goto_16
    return v9
.end method

.method public ᵹ(ILandroidx/recyclerview/widget/RecyclerView$ಋ;)V
    .locals 4

    const/4 v0, 0x1

    if-lez p1, :cond_0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->㩇()I

    move-result v1

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, -0x1

    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ਣ()I

    move-result v2

    move v1, v2

    const/4 v2, -0x1

    :goto_0
    iget-object v3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ㄬ:L㚬/㲝/㺴/䆀;

    iput-boolean v0, v3, L㚬/㲝/㺴/䆀;->உ:Z

    invoke-virtual {p0, v1, p2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->㑮(ILandroidx/recyclerview/widget/RecyclerView$ಋ;)V

    invoke-virtual {p0, v2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ᐇ(I)V

    iget-object p2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ㄬ:L㚬/㲝/㺴/䆀;

    iget v0, p2, L㚬/㲝/㺴/䆀;->㺴:I

    add-int/2addr v1, v0

    iput v1, p2, L㚬/㲝/㺴/䆀;->㚬:I

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    iput p1, p2, L㚬/㲝/㺴/䆀;->䂻:I

    return-void
.end method

.method public final ḑ(Landroidx/recyclerview/widget/RecyclerView$㢏;Landroidx/recyclerview/widget/RecyclerView$ಋ;Z)V
    .locals 8

    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->㭢:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$䂻;

    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->㥁:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$ḓ;

    const/4 v2, -0x1

    if-nez v1, :cond_0

    iget v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ڈ:I

    if-eq v1, v2, :cond_1

    :cond_0
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$ಋ;->䂻()I

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ᓭ;->㗽(Landroidx/recyclerview/widget/RecyclerView$㢏;)V

    invoke-virtual {v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$䂻;->㚬()V

    return-void

    :cond_1
    iget-boolean v1, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$䂻;->ḓ:Z

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v1, :cond_3

    iget v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ڈ:I

    if-ne v1, v2, :cond_3

    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->㥁:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$ḓ;

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v1, 0x1

    :goto_1
    if-eqz v1, :cond_5

    invoke-virtual {v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$䂻;->㚬()V

    iget-object v5, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->㥁:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$ḓ;

    if-eqz v5, :cond_4

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ᑈ(Landroidx/recyclerview/widget/StaggeredGridLayoutManager$䂻;)V

    goto :goto_2

    :cond_4
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->䉁()V

    iget-boolean v5, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ಋ:Z

    iput-boolean v5, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$䂻;->㚬:Z

    :goto_2
    invoke-virtual {p0, p2, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ᚭ(Landroidx/recyclerview/widget/RecyclerView$ಋ;Landroidx/recyclerview/widget/StaggeredGridLayoutManager$䂻;)V

    iput-boolean v4, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$䂻;->ḓ:Z

    :cond_5
    iget-object v5, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->㥁:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$ḓ;

    if-nez v5, :cond_7

    iget v5, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ڈ:I

    if-ne v5, v2, :cond_7

    iget-boolean v5, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$䂻;->㚬:Z

    iget-boolean v6, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ᰘ:Z

    if-ne v5, v6, :cond_6

    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ඌ()Z

    move-result v5

    iget-boolean v6, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ᱹ:Z

    if-eq v5, v6, :cond_7

    :cond_6
    iget-object v5, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ש:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$㺴;

    invoke-virtual {v5}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$㺴;->䂻()V

    iput-boolean v4, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$䂻;->㺴:Z

    :cond_7
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$ᓭ;->ർ()I

    move-result v5

    if-lez v5, :cond_e

    iget-object v5, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->㥁:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$ḓ;

    if-eqz v5, :cond_8

    iget v5, v5, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$ḓ;->㺴:I

    if-ge v5, v4, :cond_e

    :cond_8
    iget-boolean v5, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$䂻;->㺴:Z

    if-eqz v5, :cond_a

    const/4 v1, 0x0

    :goto_3
    iget v5, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->㭲:I

    if-ge v1, v5, :cond_e

    iget-object v5, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ḙ:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$䆀;

    aget-object v5, v5, v1

    invoke-virtual {v5}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$䆀;->ḓ()V

    iget v5, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$䂻;->䂻:I

    const/high16 v6, -0x80000000

    if-eq v5, v6, :cond_9

    iget-object v6, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ḙ:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$䆀;

    aget-object v6, v6, v1

    invoke-virtual {v6, v5}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$䆀;->㢏(I)V

    :cond_9
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_a
    if-nez v1, :cond_c

    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->㭢:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$䂻;

    iget-object v1, v1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$䂻;->䆀:[I

    if-nez v1, :cond_b

    goto :goto_5

    :cond_b
    const/4 v1, 0x0

    :goto_4
    iget v5, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->㭲:I

    if-ge v1, v5, :cond_e

    iget-object v5, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ḙ:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$䆀;

    aget-object v5, v5, v1

    invoke-virtual {v5}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$䆀;->ḓ()V

    iget-object v6, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->㭢:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$䂻;

    iget-object v6, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$䂻;->䆀:[I

    aget v6, v6, v1

    invoke-virtual {v5, v6}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$䆀;->㢏(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_c
    :goto_5
    const/4 v1, 0x0

    :goto_6
    iget v5, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->㭲:I

    if-ge v1, v5, :cond_d

    iget-object v5, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ḙ:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$䆀;

    aget-object v5, v5, v1

    iget-boolean v6, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ಋ:Z

    iget v7, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$䂻;->䂻:I

    invoke-virtual {v5, v6, v7}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$䆀;->䂻(ZI)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_d
    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->㭢:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$䂻;

    iget-object v5, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ḙ:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$䆀;

    invoke-virtual {v1, v5}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$䂻;->㺴([Landroidx/recyclerview/widget/StaggeredGridLayoutManager$䆀;)V

    :cond_e
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ᓭ;->ม(Landroidx/recyclerview/widget/RecyclerView$㢏;)V

    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ㄬ:L㚬/㲝/㺴/䆀;

    iput-boolean v3, v1, L㚬/㲝/㺴/䆀;->உ:Z

    iput-boolean v3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->Խ:Z

    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->㢏:L㚬/㲝/㺴/ಫ;

    invoke-virtual {v1}, L㚬/㲝/㺴/ಫ;->ཇ()I

    move-result v1

    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->₲(I)V

    iget v1, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$䂻;->உ:I

    invoke-virtual {p0, v1, p2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->㑮(ILandroidx/recyclerview/widget/RecyclerView$ಋ;)V

    iget-boolean v1, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$䂻;->㚬:Z

    if-eqz v1, :cond_f

    invoke-virtual {p0, v2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ᐇ(I)V

    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ㄬ:L㚬/㲝/㺴/䆀;

    invoke-virtual {p0, p1, v1, p2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ᵐ(Landroidx/recyclerview/widget/RecyclerView$㢏;L㚬/㲝/㺴/䆀;Landroidx/recyclerview/widget/RecyclerView$ಋ;)I

    invoke-virtual {p0, v4}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ᐇ(I)V

    goto :goto_7

    :cond_f
    invoke-virtual {p0, v4}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ᐇ(I)V

    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ㄬ:L㚬/㲝/㺴/䆀;

    invoke-virtual {p0, p1, v1, p2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ᵐ(Landroidx/recyclerview/widget/RecyclerView$㢏;L㚬/㲝/㺴/䆀;Landroidx/recyclerview/widget/RecyclerView$ಋ;)I

    invoke-virtual {p0, v2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ᐇ(I)V

    :goto_7
    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ㄬ:L㚬/㲝/㺴/䆀;

    iget v2, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$䂻;->உ:I

    iget v5, v1, L㚬/㲝/㺴/䆀;->㺴:I

    add-int/2addr v2, v5

    iput v2, v1, L㚬/㲝/㺴/䆀;->㚬:I

    invoke-virtual {p0, p1, v1, p2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ᵐ(Landroidx/recyclerview/widget/RecyclerView$㢏;L㚬/㲝/㺴/䆀;Landroidx/recyclerview/widget/RecyclerView$ಋ;)I

    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ℭ()V

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$ᓭ;->ർ()I

    move-result v1

    if-lez v1, :cond_11

    iget-boolean v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ಋ:Z

    if-eqz v1, :cond_10

    invoke-virtual {p0, p1, p2, v4}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ѝ(Landroidx/recyclerview/widget/RecyclerView$㢏;Landroidx/recyclerview/widget/RecyclerView$ಋ;Z)V

    invoke-virtual {p0, p1, p2, v3}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ނ(Landroidx/recyclerview/widget/RecyclerView$㢏;Landroidx/recyclerview/widget/RecyclerView$ಋ;Z)V

    goto :goto_8

    :cond_10
    invoke-virtual {p0, p1, p2, v4}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ނ(Landroidx/recyclerview/widget/RecyclerView$㢏;Landroidx/recyclerview/widget/RecyclerView$ಋ;Z)V

    invoke-virtual {p0, p1, p2, v3}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ѝ(Landroidx/recyclerview/widget/RecyclerView$㢏;Landroidx/recyclerview/widget/RecyclerView$ಋ;Z)V

    :cond_11
    :goto_8
    if-eqz p3, :cond_14

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$ಋ;->ḓ()Z

    move-result p3

    if-nez p3, :cond_14

    iget p3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->㨃:I

    if-eqz p3, :cond_13

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$ᓭ;->ർ()I

    move-result p3

    if-lez p3, :cond_13

    iget-boolean p3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->Խ:Z

    if-nez p3, :cond_12

    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ጜ()Landroid/view/View;

    move-result-object p3

    if-eqz p3, :cond_13

    :cond_12
    const/4 p3, 0x1

    goto :goto_9

    :cond_13
    const/4 p3, 0x0

    :goto_9
    if-eqz p3, :cond_14

    iget-object p3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->䅚:Ljava/lang/Runnable;

    invoke-virtual {p0, p3}, Landroidx/recyclerview/widget/RecyclerView$ᓭ;->Ꭸ(Ljava/lang/Runnable;)Z

    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->㳗()Z

    move-result p3

    if-eqz p3, :cond_14

    goto :goto_a

    :cond_14
    const/4 v4, 0x0

    :goto_a
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$ಋ;->ḓ()Z

    move-result p3

    if-eqz p3, :cond_15

    iget-object p3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->㭢:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$䂻;

    invoke-virtual {p3}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$䂻;->㚬()V

    :cond_15
    iget-boolean p3, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$䂻;->㚬:Z

    iput-boolean p3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ᰘ:Z

    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ඌ()Z

    move-result p3

    iput-boolean p3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ᱹ:Z

    if-eqz v4, :cond_16

    iget-object p3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->㭢:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$䂻;

    invoke-virtual {p3}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$䂻;->㚬()V

    invoke-virtual {p0, p1, p2, v3}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ḑ(Landroidx/recyclerview/widget/RecyclerView$㢏;Landroidx/recyclerview/widget/RecyclerView$ಋ;Z)V

    :cond_16
    return-void
.end method

.method public ḙ(Landroidx/recyclerview/widget/RecyclerView$ಋ;)I
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->㠯(Landroidx/recyclerview/widget/RecyclerView$ಋ;)I

    move-result p1

    return p1
.end method

.method public final Ḣ(Landroid/view/View;)V
    .locals 2

    iget v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->㭲:I

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ḙ:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$䆀;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$䆀;->㖪(Landroid/view/View;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public Ẉ()V
    .locals 1

    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ש:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$㺴;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$㺴;->䂻()V

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$ᓭ;->ᐶ()V

    return-void
.end method

.method public ἥ(Landroidx/recyclerview/widget/RecyclerView$ბ;)Z
    .locals 0

    instance-of p1, p1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$㚬;

    return p1
.end method

.method public ₲(I)V
    .locals 1

    iget v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->㭲:I

    div-int v0, p1, v0

    iput v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->㲧:I

    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->㢏:L㚬/㲝/㺴/ಫ;

    invoke-virtual {v0}, L㚬/㲝/㺴/ಫ;->㧦()I

    move-result v0

    invoke-static {p1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    iput p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ർ:I

    return-void
.end method

.method public final ℭ()V
    .locals 9

    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->㢏:L㚬/㲝/㺴/ಫ;

    invoke-virtual {v0}, L㚬/㲝/㺴/ಫ;->㧦()I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$ᓭ;->ർ()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_3

    invoke-virtual {p0, v3}, Landroidx/recyclerview/widget/RecyclerView$ᓭ;->㥁(I)Landroid/view/View;

    move-result-object v4

    iget-object v5, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->㢏:L㚬/㲝/㺴/ಫ;

    invoke-virtual {v5, v4}, L㚬/㲝/㺴/ಫ;->ḓ(Landroid/view/View;)I

    move-result v5

    int-to-float v5, v5

    cmpg-float v6, v5, v0

    if-gez v6, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$㚬;

    invoke-virtual {v4}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$㚬;->䆀()Z

    move-result v4

    if-eqz v4, :cond_2

    const/high16 v4, 0x3f800000    # 1.0f

    mul-float v5, v5, v4

    iget v4, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->㭲:I

    int-to-float v4, v4

    div-float/2addr v5, v4

    :cond_2
    invoke-static {v0, v5}, Ljava/lang/Math;->max(FF)F

    move-result v0

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    iget v3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->㲧:I

    iget v4, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->㭲:I

    int-to-float v4, v4

    mul-float v0, v0, v4

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iget-object v4, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->㢏:L㚬/㲝/㺴/ಫ;

    invoke-virtual {v4}, L㚬/㲝/㺴/ಫ;->㧦()I

    move-result v4

    const/high16 v5, -0x80000000

    if-ne v4, v5, :cond_4

    iget-object v4, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->㢏:L㚬/㲝/㺴/ಫ;

    invoke-virtual {v4}, L㚬/㲝/㺴/ಫ;->ཇ()I

    move-result v4

    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    move-result v0

    :cond_4
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->₲(I)V

    iget v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->㲧:I

    if-ne v0, v3, :cond_5

    return-void

    :cond_5
    :goto_2
    if-ge v2, v1, :cond_9

    invoke-virtual {p0, v2}, Landroidx/recyclerview/widget/RecyclerView$ᓭ;->㥁(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$㚬;

    iget-boolean v5, v4, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$㚬;->䆀:Z

    if-eqz v5, :cond_6

    goto :goto_3

    :cond_6
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ඌ()Z

    move-result v5

    const/4 v6, 0x1

    if-eqz v5, :cond_7

    iget v5, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ม:I

    if-ne v5, v6, :cond_7

    iget v5, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->㭲:I

    add-int/lit8 v7, v5, -0x1

    iget-object v4, v4, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$㚬;->ḓ:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$䆀;

    iget v4, v4, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$䆀;->ḓ:I

    sub-int/2addr v7, v4

    neg-int v7, v7

    iget v8, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->㲧:I

    mul-int v7, v7, v8

    sub-int/2addr v5, v6

    sub-int/2addr v5, v4

    neg-int v4, v5

    mul-int v4, v4, v3

    sub-int/2addr v7, v4

    invoke-virtual {v0, v7}, Landroid/view/View;->offsetLeftAndRight(I)V

    goto :goto_3

    :cond_7
    iget-object v4, v4, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$㚬;->ḓ:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$䆀;

    iget v4, v4, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$䆀;->ḓ:I

    iget v5, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->㲧:I

    mul-int v5, v5, v4

    mul-int v4, v4, v3

    iget v7, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ม:I

    sub-int/2addr v5, v4

    if-ne v7, v6, :cond_8

    invoke-virtual {v0, v5}, Landroid/view/View;->offsetLeftAndRight(I)V

    goto :goto_3

    :cond_8
    invoke-virtual {v0, v5}, Landroid/view/View;->offsetTopAndBottom(I)V

    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_9
    return-void
.end method

.method public final Ↄ(III)I
    .locals 2

    if-nez p2, :cond_0

    if-nez p3, :cond_0

    return p1

    :cond_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_2

    const/high16 v1, 0x40000000    # 2.0f

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    return p1

    :cond_2
    :goto_0
    const/4 v1, 0x0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    sub-int/2addr p1, p2

    sub-int/2addr p1, p3

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-static {p1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    return p1
.end method

.method public Ⱉ(Z)Landroid/view/View;
    .locals 7

    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->㖪:L㚬/㲝/㺴/ಫ;

    invoke-virtual {v0}, L㚬/㲝/㺴/ಫ;->ἥ()I

    move-result v0

    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->㖪:L㚬/㲝/㺴/ಫ;

    invoke-virtual {v1}, L㚬/㲝/㺴/ಫ;->ㄏ()I

    move-result v1

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$ᓭ;->ർ()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    const/4 v3, 0x0

    :goto_0
    if-ltz v2, :cond_4

    invoke-virtual {p0, v2}, Landroidx/recyclerview/widget/RecyclerView$ᓭ;->㥁(I)Landroid/view/View;

    move-result-object v4

    iget-object v5, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->㖪:L㚬/㲝/㺴/ಫ;

    invoke-virtual {v5, v4}, L㚬/㲝/㺴/ಫ;->ᆻ(Landroid/view/View;)I

    move-result v5

    iget-object v6, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->㖪:L㚬/㲝/㺴/ಫ;

    invoke-virtual {v6, v4}, L㚬/㲝/㺴/ಫ;->㺴(Landroid/view/View;)I

    move-result v6

    if-le v6, v0, :cond_3

    if-lt v5, v1, :cond_0

    goto :goto_2

    :cond_0
    if-le v6, v1, :cond_2

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    if-nez v3, :cond_3

    move-object v3, v4

    goto :goto_2

    :cond_2
    :goto_1
    return-object v4

    :cond_3
    :goto_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_4
    return-object v3
.end method

.method public final Ⳟ(Landroid/view/View;Landroidx/recyclerview/widget/StaggeredGridLayoutManager$㚬;L㚬/㲝/㺴/䆀;)V
    .locals 1

    iget p3, p3, L㚬/㲝/㺴/䆀;->ḓ:I

    const/4 v0, 0x1

    if-ne p3, v0, :cond_1

    iget-boolean p3, p2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$㚬;->䆀:Z

    if-eqz p3, :cond_0

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->㸜(Landroid/view/View;)V

    goto :goto_0

    :cond_0
    iget-object p2, p2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$㚬;->ḓ:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$䆀;

    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$䆀;->உ(Landroid/view/View;)V

    goto :goto_0

    :cond_1
    iget-boolean p3, p2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$㚬;->䆀:Z

    if-eqz p3, :cond_2

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->Ḣ(Landroid/view/View;)V

    goto :goto_0

    :cond_2
    iget-object p2, p2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$㚬;->ḓ:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$䆀;

    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$䆀;->㖪(Landroid/view/View;)V

    :goto_0
    return-void
.end method

.method public ⶬ(Landroidx/recyclerview/widget/RecyclerView$㢏;Landroidx/recyclerview/widget/RecyclerView$ಋ;)I
    .locals 1

    iget v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ม:I

    if-nez v0, :cond_0

    iget p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->㭲:I

    return p1

    :cond_0
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$ᓭ;->ⶬ(Landroidx/recyclerview/widget/RecyclerView$㢏;Landroidx/recyclerview/widget/RecyclerView$ಋ;)I

    move-result p1

    return p1
.end method

.method public ⶶ(Landroidx/recyclerview/widget/RecyclerView$ಋ;Landroidx/recyclerview/widget/StaggeredGridLayoutManager$䂻;)Z
    .locals 5

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ಋ;->ḓ()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_f

    iget v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ڈ:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    goto/16 :goto_7

    :cond_0
    const/high16 v3, -0x80000000

    if-ltz v0, :cond_e

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ಋ;->䂻()I

    move-result p1

    if-lt v0, p1, :cond_1

    goto/16 :goto_6

    :cond_1
    iget-object p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->㥁:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$ḓ;

    const/4 v0, 0x1

    if-eqz p1, :cond_3

    iget v4, p1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$ḓ;->䂻:I

    if-eq v4, v2, :cond_3

    iget p1, p1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$ḓ;->㺴:I

    if-ge p1, v0, :cond_2

    goto :goto_0

    :cond_2
    iput v3, p2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$䂻;->䂻:I

    iget p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ڈ:I

    iput p1, p2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$䂻;->உ:I

    goto/16 :goto_5

    :cond_3
    :goto_0
    iget p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ڈ:I

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ᓭ;->ڈ(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_b

    iget-boolean v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ಋ:Z

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->㩇()I

    move-result v1

    goto :goto_1

    :cond_4
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ਣ()I

    move-result v1

    :goto_1
    iput v1, p2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$䂻;->உ:I

    iget v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->㰫:I

    if-eq v1, v3, :cond_6

    iget-boolean v1, p2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$䂻;->㚬:Z

    if-eqz v1, :cond_5

    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->㖪:L㚬/㲝/㺴/ಫ;

    invoke-virtual {v1}, L㚬/㲝/㺴/ಫ;->ㄏ()I

    move-result v1

    iget v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->㰫:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->㖪:L㚬/㲝/㺴/ಫ;

    invoke-virtual {v2, p1}, L㚬/㲝/㺴/ಫ;->㺴(Landroid/view/View;)I

    move-result p1

    goto :goto_2

    :cond_5
    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->㖪:L㚬/㲝/㺴/ಫ;

    invoke-virtual {v1}, L㚬/㲝/㺴/ಫ;->ἥ()I

    move-result v1

    iget v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->㰫:I

    add-int/2addr v1, v2

    iget-object v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->㖪:L㚬/㲝/㺴/ಫ;

    invoke-virtual {v2, p1}, L㚬/㲝/㺴/ಫ;->ᆻ(Landroid/view/View;)I

    move-result p1

    :goto_2
    sub-int/2addr v1, p1

    iput v1, p2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$䂻;->䂻:I

    return v0

    :cond_6
    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->㖪:L㚬/㲝/㺴/ಫ;

    invoke-virtual {v1, p1}, L㚬/㲝/㺴/ಫ;->ḓ(Landroid/view/View;)I

    move-result v1

    iget-object v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->㖪:L㚬/㲝/㺴/ಫ;

    invoke-virtual {v2}, L㚬/㲝/㺴/ಫ;->ཇ()I

    move-result v2

    if-le v1, v2, :cond_8

    iget-boolean p1, p2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$䂻;->㚬:Z

    if-eqz p1, :cond_7

    iget-object p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->㖪:L㚬/㲝/㺴/ಫ;

    invoke-virtual {p1}, L㚬/㲝/㺴/ಫ;->ㄏ()I

    move-result p1

    goto :goto_3

    :cond_7
    iget-object p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->㖪:L㚬/㲝/㺴/ಫ;

    invoke-virtual {p1}, L㚬/㲝/㺴/ಫ;->ἥ()I

    move-result p1

    :goto_3
    iput p1, p2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$䂻;->䂻:I

    return v0

    :cond_8
    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->㖪:L㚬/㲝/㺴/ಫ;

    invoke-virtual {v1, p1}, L㚬/㲝/㺴/ಫ;->ᆻ(Landroid/view/View;)I

    move-result v1

    iget-object v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->㖪:L㚬/㲝/㺴/ಫ;

    invoke-virtual {v2}, L㚬/㲝/㺴/ಫ;->ἥ()I

    move-result v2

    sub-int/2addr v1, v2

    if-gez v1, :cond_9

    neg-int p1, v1

    iput p1, p2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$䂻;->䂻:I

    return v0

    :cond_9
    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->㖪:L㚬/㲝/㺴/ಫ;

    invoke-virtual {v1}, L㚬/㲝/㺴/ಫ;->ㄏ()I

    move-result v1

    iget-object v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->㖪:L㚬/㲝/㺴/ಫ;

    invoke-virtual {v2, p1}, L㚬/㲝/㺴/ಫ;->㺴(Landroid/view/View;)I

    move-result p1

    sub-int/2addr v1, p1

    if-gez v1, :cond_a

    iput v1, p2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$䂻;->䂻:I

    return v0

    :cond_a
    iput v3, p2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$䂻;->䂻:I

    goto :goto_5

    :cond_b
    iget p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ڈ:I

    iput p1, p2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$䂻;->உ:I

    iget v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->㰫:I

    if-ne v2, v3, :cond_d

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ә(I)I

    move-result p1

    if-ne p1, v0, :cond_c

    const/4 v1, 0x1

    :cond_c
    iput-boolean v1, p2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$䂻;->㚬:Z

    invoke-virtual {p2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$䂻;->உ()V

    goto :goto_4

    :cond_d
    invoke-virtual {p2, v2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$䂻;->䂻(I)V

    :goto_4
    iput-boolean v0, p2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$䂻;->㺴:Z

    :goto_5
    return v0

    :cond_e
    :goto_6
    iput v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ڈ:I

    iput v3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->㰫:I

    :cond_f
    :goto_7
    return v1
.end method

.method public 〵(Landroidx/recyclerview/widget/RecyclerView$㢏;Landroidx/recyclerview/widget/RecyclerView$ಋ;Landroid/view/View;L㚬/ℓ/ἥ/ᾦ/㚬;)V
    .locals 6

    invoke-virtual {p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    instance-of p2, p1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$㚬;

    if-nez p2, :cond_0

    invoke-super {p0, p3, p4}, Landroidx/recyclerview/widget/RecyclerView$ᓭ;->ᥟ(Landroid/view/View;L㚬/ℓ/ἥ/ᾦ/㚬;)V

    return-void

    :cond_0
    check-cast p1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$㚬;

    iget p2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ม:I

    const/4 p3, 0x1

    if-nez p2, :cond_2

    invoke-virtual {p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$㚬;->ḓ()I

    move-result v0

    iget-boolean p1, p1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$㚬;->䆀:Z

    if-eqz p1, :cond_1

    iget p3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->㭲:I

    move v1, p3

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    :goto_0
    const/4 v2, -0x1

    const/4 v3, -0x1

    goto :goto_1

    :cond_2
    const/4 v0, -0x1

    const/4 v1, -0x1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$㚬;->ḓ()I

    move-result v2

    iget-boolean p1, p1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$㚬;->䆀:Z

    if-eqz p1, :cond_3

    iget p3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->㭲:I

    move v3, p3

    goto :goto_1

    :cond_3
    const/4 v3, 0x1

    :goto_1
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, L㚬/ℓ/ἥ/ᾦ/㚬$㚬;->உ(IIIIZZ)L㚬/ℓ/ἥ/ᾦ/㚬$㚬;

    move-result-object p1

    invoke-virtual {p4, p1}, L㚬/ℓ/ἥ/ᾦ/㚬;->ᘚ(Ljava/lang/Object;)V

    return-void
.end method

.method public ㅛ(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0

    iget-object p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ש:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$㺴;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$㺴;->䂻()V

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$ᓭ;->ᐶ()V

    return-void
.end method

.method public final 㐇(I)Landroidx/recyclerview/widget/StaggeredGridLayoutManager$㺴$உ;
    .locals 4

    new-instance v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$㺴$உ;

    invoke-direct {v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$㺴$உ;-><init>()V

    iget v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->㭲:I

    new-array v1, v1, [I

    iput-object v1, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$㺴$உ;->㺴:[I

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->㭲:I

    if-ge v1, v2, :cond_0

    iget-object v2, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$㺴$உ;->㺴:[I

    iget-object v3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ḙ:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$䆀;

    aget-object v3, v3, v1

    invoke-virtual {v3, p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$䆀;->㹖(I)I

    move-result v3

    sub-int v3, p1, v3

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public 㐱(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2

    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ᓭ;->㐱(Landroid/view/accessibility/AccessibilityEvent;)V

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$ᓭ;->ർ()I

    move-result v0

    if-lez v0, :cond_2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->㗁(Z)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->Ⱉ(Z)Landroid/view/View;

    move-result-object v0

    if-eqz v1, :cond_2

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/RecyclerView$ᓭ;->䋡(Landroid/view/View;)I

    move-result v1

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$ᓭ;->䋡(Landroid/view/View;)I

    move-result v0

    if-ge v1, v0, :cond_1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityEvent;->setFromIndex(I)V

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setToIndex(I)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setFromIndex(I)V

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityEvent;->setToIndex(I)V

    nop

    :cond_2
    :goto_0
    return-void
.end method

.method public final 㑮(ILandroidx/recyclerview/widget/RecyclerView$ಋ;)V
    .locals 4

    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ㄬ:L㚬/㲝/㺴/䆀;

    const/4 v1, 0x0

    iput v1, v0, L㚬/㲝/㺴/䆀;->䂻:I

    iput p1, v0, L㚬/㲝/㺴/䆀;->㚬:I

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$ᓭ;->Ӣ()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$ಋ;->㚬()I

    move-result p2

    const/4 v0, -0x1

    if-eq p2, v0, :cond_2

    iget-boolean v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ಋ:Z

    if-ge p2, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-ne v0, p1, :cond_1

    iget-object p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->㖪:L㚬/㲝/㺴/ಫ;

    invoke-virtual {p1}, L㚬/㲝/㺴/ಫ;->ཇ()I

    move-result p1

    goto :goto_1

    :cond_1
    iget-object p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->㖪:L㚬/㲝/㺴/ಫ;

    invoke-virtual {p1}, L㚬/㲝/㺴/ಫ;->ཇ()I

    move-result p1

    move p2, p1

    const/4 p1, 0x0

    goto :goto_2

    :cond_2
    const/4 p1, 0x0

    :goto_1
    const/4 p2, 0x0

    :goto_2
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$ᓭ;->Խ()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ㄬ:L㚬/㲝/㺴/䆀;

    iget-object v3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->㖪:L㚬/㲝/㺴/ಫ;

    invoke-virtual {v3}, L㚬/㲝/㺴/ಫ;->ἥ()I

    move-result v3

    sub-int/2addr v3, p2

    iput v3, v0, L㚬/㲝/㺴/䆀;->䆀:I

    iget-object p2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ㄬ:L㚬/㲝/㺴/䆀;

    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->㖪:L㚬/㲝/㺴/ಫ;

    invoke-virtual {v0}, L㚬/㲝/㺴/ಫ;->ㄏ()I

    move-result v0

    add-int/2addr v0, p1

    iput v0, p2, L㚬/㲝/㺴/䆀;->ᆻ:I

    goto :goto_3

    :cond_3
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ㄬ:L㚬/㲝/㺴/䆀;

    iget-object v3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->㖪:L㚬/㲝/㺴/ಫ;

    invoke-virtual {v3}, L㚬/㲝/㺴/ಫ;->ℓ()I

    move-result v3

    add-int/2addr v3, p1

    iput v3, v0, L㚬/㲝/㺴/䆀;->ᆻ:I

    iget-object p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ㄬ:L㚬/㲝/㺴/䆀;

    neg-int p2, p2

    iput p2, p1, L㚬/㲝/㺴/䆀;->䆀:I

    :goto_3
    iget-object p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ㄬ:L㚬/㲝/㺴/䆀;

    iput-boolean v1, p1, L㚬/㲝/㺴/䆀;->ℓ:Z

    iput-boolean v2, p1, L㚬/㲝/㺴/䆀;->உ:Z

    iget-object p2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->㖪:L㚬/㲝/㺴/ಫ;

    invoke-virtual {p2}, L㚬/㲝/㺴/ಫ;->㧦()I

    move-result p2

    if-nez p2, :cond_4

    iget-object p2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->㖪:L㚬/㲝/㺴/ಫ;

    invoke-virtual {p2}, L㚬/㲝/㺴/ಫ;->ℓ()I

    move-result p2

    if-nez p2, :cond_4

    const/4 v1, 0x1

    :cond_4
    iput-boolean v1, p1, L㚬/㲝/㺴/䆀;->ㄏ:Z

    return-void
.end method

.method public final 㒱(Landroidx/recyclerview/widget/StaggeredGridLayoutManager$䆀;)Z
    .locals 3

    iget-boolean v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ಋ:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$䆀;->㧦()I

    move-result v0

    iget-object v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->㖪:L㚬/㲝/㺴/ಫ;

    invoke-virtual {v2}, L㚬/㲝/㺴/ಫ;->ㄏ()I

    move-result v2

    if-ge v0, v2, :cond_1

    iget-object v0, p1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$䆀;->உ:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$䆀;->ཇ(Landroid/view/View;)Landroidx/recyclerview/widget/StaggeredGridLayoutManager$㚬;

    move-result-object p1

    iget-boolean p1, p1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$㚬;->䆀:Z

    xor-int/lit8 p1, p1, 0x1

    return p1

    :cond_0
    invoke-virtual {p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$䆀;->ᓭ()I

    move-result v0

    iget-object v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->㖪:L㚬/㲝/㺴/ಫ;

    invoke-virtual {v2}, L㚬/㲝/㺴/ಫ;->ἥ()I

    move-result v2

    if-le v0, v2, :cond_1

    iget-object v0, p1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$䆀;->உ:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$䆀;->ཇ(Landroid/view/View;)Landroidx/recyclerview/widget/StaggeredGridLayoutManager$㚬;

    move-result-object p1

    iget-boolean p1, p1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$㚬;->䆀:Z

    xor-int/lit8 p1, p1, 0x1

    return p1

    :cond_1
    return v1
.end method

.method public 㒶(Landroidx/recyclerview/widget/RecyclerView$ಋ;)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ᓭ;->㒶(Landroidx/recyclerview/widget/RecyclerView$ಋ;)V

    const/4 p1, -0x1

    iput p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ڈ:I

    const/high16 p1, -0x80000000

    iput p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->㰫:I

    const/4 p1, 0x0

    iput-object p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->㥁:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$ḓ;

    iget-object p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->㭢:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$䂻;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$䂻;->㚬()V

    return-void
.end method

.method public final 㒺(I)I
    .locals 3

    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ḙ:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$䆀;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$䆀;->㹖(I)I

    move-result v0

    const/4 v1, 0x1

    :goto_0
    iget v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->㭲:I

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ḙ:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$䆀;

    aget-object v2, v2, v1

    invoke-virtual {v2, p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$䆀;->㹖(I)I

    move-result v2

    if-le v2, v0, :cond_0

    move v0, v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public 㓎(Landroidx/recyclerview/widget/RecyclerView;III)V
    .locals 0

    const/16 p1, 0x8

    invoke-virtual {p0, p2, p3, p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ᡳ(III)V

    return-void
.end method

.method public 㖪(Landroidx/recyclerview/widget/RecyclerView$ಋ;)I
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->㧚(Landroidx/recyclerview/widget/RecyclerView$ಋ;)I

    move-result p1

    return p1
.end method

.method public 㗁(Z)Landroid/view/View;
    .locals 8

    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->㖪:L㚬/㲝/㺴/ಫ;

    invoke-virtual {v0}, L㚬/㲝/㺴/ಫ;->ἥ()I

    move-result v0

    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->㖪:L㚬/㲝/㺴/ಫ;

    invoke-virtual {v1}, L㚬/㲝/㺴/ಫ;->ㄏ()I

    move-result v1

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$ᓭ;->ർ()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_4

    invoke-virtual {p0, v4}, Landroidx/recyclerview/widget/RecyclerView$ᓭ;->㥁(I)Landroid/view/View;

    move-result-object v5

    iget-object v6, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->㖪:L㚬/㲝/㺴/ಫ;

    invoke-virtual {v6, v5}, L㚬/㲝/㺴/ಫ;->ᆻ(Landroid/view/View;)I

    move-result v6

    iget-object v7, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->㖪:L㚬/㲝/㺴/ಫ;

    invoke-virtual {v7, v5}, L㚬/㲝/㺴/ಫ;->㺴(Landroid/view/View;)I

    move-result v7

    if-le v7, v0, :cond_3

    if-lt v6, v1, :cond_0

    goto :goto_2

    :cond_0
    if-ge v6, v0, :cond_2

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    if-nez v3, :cond_3

    move-object v3, v5

    goto :goto_2

    :cond_2
    :goto_1
    return-object v5

    :cond_3
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_4
    return-object v3
.end method

.method public 㜷(I)V
    .locals 1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "invalid orientation."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ᆻ(Ljava/lang/String;)V

    iget v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ม:I

    if-ne p1, v0, :cond_2

    return-void

    :cond_2
    iput p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ม:I

    iget-object p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->㖪:L㚬/㲝/㺴/ಫ;

    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->㢏:L㚬/㲝/㺴/ಫ;

    iput-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->㖪:L㚬/㲝/㺴/ಫ;

    iput-object p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->㢏:L㚬/㲝/㺴/ಫ;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$ᓭ;->ᐶ()V

    return-void
.end method

.method public 㝒(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 0

    const/4 p1, 0x1

    invoke-virtual {p0, p2, p3, p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ᡳ(III)V

    return-void
.end method

.method public 㞘(Landroidx/recyclerview/widget/RecyclerView$ಋ;)I
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->㧚(Landroidx/recyclerview/widget/RecyclerView$ಋ;)I

    move-result p1

    return p1
.end method

.method public final 㞜(I)I
    .locals 3

    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ḙ:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$䆀;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$䆀;->㹖(I)I

    move-result v0

    const/4 v1, 0x1

    :goto_0
    iget v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->㭲:I

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ḙ:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$䆀;

    aget-object v2, v2, v1

    invoke-virtual {v2, p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$䆀;->㹖(I)I

    move-result v2

    if-ge v2, v0, :cond_0

    move v0, v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public final 㠯(Landroidx/recyclerview/widget/RecyclerView$ಋ;)I
    .locals 6

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$ᓭ;->ർ()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->㖪:L㚬/㲝/㺴/ಫ;

    iget-boolean v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->Ԁ:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->㗁(Z)Landroid/view/View;

    move-result-object v2

    iget-boolean v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->Ԁ:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->Ⱉ(Z)Landroid/view/View;

    move-result-object v3

    iget-boolean v5, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->Ԁ:Z

    move-object v0, p1

    move-object v4, p0

    invoke-static/range {v0 .. v5}, L㚬/㲝/㺴/㹖;->உ(Landroidx/recyclerview/widget/RecyclerView$ಋ;L㚬/㲝/㺴/ಫ;Landroid/view/View;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView$ᓭ;Z)I

    move-result p1

    return p1
.end method

.method public 㢏(Landroidx/recyclerview/widget/RecyclerView$ಋ;)I
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->䊉(Landroidx/recyclerview/widget/RecyclerView$ಋ;)I

    move-result p1

    return p1
.end method

.method public final 㤌(Landroidx/recyclerview/widget/StaggeredGridLayoutManager$䆀;II)V
    .locals 3

    invoke-virtual {p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$䆀;->ಫ()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-ne p2, v2, :cond_0

    invoke-virtual {p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$䆀;->ᓭ()I

    move-result p2

    add-int/2addr p2, v0

    if-gt p2, p3, :cond_1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$䆀;->㧦()I

    move-result p2

    sub-int/2addr p2, v0

    if-lt p2, p3, :cond_1

    :goto_0
    iget-object p2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ᾦ:Ljava/util/BitSet;

    iget p1, p1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$䆀;->ḓ:I

    invoke-virtual {p2, p1, v1}, Ljava/util/BitSet;->set(IZ)V

    :cond_1
    return-void
.end method

.method public 㦄(Landroid/view/View;ILandroidx/recyclerview/widget/RecyclerView$㢏;Landroidx/recyclerview/widget/RecyclerView$ಋ;)Landroid/view/View;
    .locals 8

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$ᓭ;->ർ()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ᓭ;->ᾦ(Landroid/view/View;)Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_1

    return-object v1

    :cond_1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->䉁()V

    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ਚ(I)I

    move-result p2

    const/high16 v0, -0x80000000

    if-ne p2, v0, :cond_2

    return-object v1

    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$㚬;

    iget-boolean v2, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$㚬;->䆀:Z

    iget-object v0, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$㚬;->ḓ:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$䆀;

    const/4 v3, 0x1

    if-ne p2, v3, :cond_3

    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->㩇()I

    move-result v4

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ਣ()I

    move-result v4

    :goto_0
    invoke-virtual {p0, v4, p4}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->㑮(ILandroidx/recyclerview/widget/RecyclerView$ಋ;)V

    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ᐇ(I)V

    iget-object v5, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ㄬ:L㚬/㲝/㺴/䆀;

    iget v6, v5, L㚬/㲝/㺴/䆀;->㺴:I

    add-int/2addr v6, v4

    iput v6, v5, L㚬/㲝/㺴/䆀;->㚬:I

    const v6, 0x3eaaaaab

    iget-object v7, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->㖪:L㚬/㲝/㺴/ಫ;

    invoke-virtual {v7}, L㚬/㲝/㺴/ಫ;->ཇ()I

    move-result v7

    int-to-float v7, v7

    mul-float v7, v7, v6

    float-to-int v6, v7

    iput v6, v5, L㚬/㲝/㺴/䆀;->䂻:I

    iget-object v5, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ㄬ:L㚬/㲝/㺴/䆀;

    iput-boolean v3, v5, L㚬/㲝/㺴/䆀;->ℓ:Z

    const/4 v6, 0x0

    iput-boolean v6, v5, L㚬/㲝/㺴/䆀;->உ:Z

    invoke-virtual {p0, p3, v5, p4}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ᵐ(Landroidx/recyclerview/widget/RecyclerView$㢏;L㚬/㲝/㺴/䆀;Landroidx/recyclerview/widget/RecyclerView$ಋ;)I

    iget-boolean p3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ಋ:Z

    iput-boolean p3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ᰘ:Z

    if-nez v2, :cond_4

    invoke-virtual {v0, v4, p2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$䆀;->ἥ(II)Landroid/view/View;

    move-result-object p3

    if-eqz p3, :cond_4

    if-eq p3, p1, :cond_4

    return-object p3

    :cond_4
    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->Ձ(I)Z

    move-result p3

    if-eqz p3, :cond_6

    iget p3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->㭲:I

    sub-int/2addr p3, v3

    :goto_1
    if-ltz p3, :cond_8

    iget-object p4, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ḙ:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$䆀;

    aget-object p4, p4, p3

    invoke-virtual {p4, v4, p2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$䆀;->ἥ(II)Landroid/view/View;

    move-result-object p4

    if-eqz p4, :cond_5

    if-eq p4, p1, :cond_5

    return-object p4

    :cond_5
    add-int/lit8 p3, p3, -0x1

    goto :goto_1

    :cond_6
    const/4 p3, 0x0

    :goto_2
    iget p4, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->㭲:I

    if-ge p3, p4, :cond_8

    iget-object p4, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ḙ:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$䆀;

    aget-object p4, p4, p3

    invoke-virtual {p4, v4, p2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$䆀;->ἥ(II)Landroid/view/View;

    move-result-object p4

    if-eqz p4, :cond_7

    if-eq p4, p1, :cond_7

    return-object p4

    :cond_7
    add-int/lit8 p3, p3, 0x1

    goto :goto_2

    :cond_8
    iget-boolean p3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->㫏:Z

    xor-int/2addr p3, v3

    const/4 p4, -0x1

    if-ne p2, p4, :cond_9

    const/4 p4, 0x1

    goto :goto_3

    :cond_9
    const/4 p4, 0x0

    :goto_3
    if-ne p3, p4, :cond_a

    const/4 p3, 0x1

    goto :goto_4

    :cond_a
    const/4 p3, 0x0

    :goto_4
    if-nez v2, :cond_c

    if-eqz p3, :cond_b

    invoke-virtual {v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$䆀;->䆀()I

    move-result p4

    goto :goto_5

    :cond_b
    invoke-virtual {v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$䆀;->ᆻ()I

    move-result p4

    :goto_5
    invoke-virtual {p0, p4}, Landroidx/recyclerview/widget/RecyclerView$ᓭ;->ڈ(I)Landroid/view/View;

    move-result-object p4

    if-eqz p4, :cond_c

    if-eq p4, p1, :cond_c

    return-object p4

    :cond_c
    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->Ձ(I)Z

    move-result p2

    if-eqz p2, :cond_10

    iget p2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->㭲:I

    sub-int/2addr p2, v3

    :goto_6
    if-ltz p2, :cond_13

    iget p4, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$䆀;->ḓ:I

    if-ne p2, p4, :cond_d

    goto :goto_8

    :cond_d
    iget-object p4, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ḙ:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$䆀;

    if-eqz p3, :cond_e

    aget-object p4, p4, p2

    invoke-virtual {p4}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$䆀;->䆀()I

    move-result p4

    goto :goto_7

    :cond_e
    aget-object p4, p4, p2

    invoke-virtual {p4}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$䆀;->ᆻ()I

    move-result p4

    :goto_7
    invoke-virtual {p0, p4}, Landroidx/recyclerview/widget/RecyclerView$ᓭ;->ڈ(I)Landroid/view/View;

    move-result-object p4

    if-eqz p4, :cond_f

    if-eq p4, p1, :cond_f

    return-object p4

    :cond_f
    :goto_8
    add-int/lit8 p2, p2, -0x1

    goto :goto_6

    :cond_10
    :goto_9
    iget p2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->㭲:I

    if-ge v6, p2, :cond_13

    iget-object p2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ḙ:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$䆀;

    if-eqz p3, :cond_11

    aget-object p2, p2, v6

    invoke-virtual {p2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$䆀;->䆀()I

    move-result p2

    goto :goto_a

    :cond_11
    aget-object p2, p2, v6

    invoke-virtual {p2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$䆀;->ᆻ()I

    move-result p2

    :goto_a
    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ᓭ;->ڈ(I)Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_12

    if-eq p2, p1, :cond_12

    return-object p2

    :cond_12
    add-int/lit8 v6, v6, 0x1

    goto :goto_9

    :cond_13
    return-object v1
.end method

.method public final 㦗(Landroidx/recyclerview/widget/RecyclerView$㢏;L㚬/㲝/㺴/䆀;)V
    .locals 2

    iget-boolean v0, p2, L㚬/㲝/㺴/䆀;->உ:Z

    if-eqz v0, :cond_6

    iget-boolean v0, p2, L㚬/㲝/㺴/䆀;->ㄏ:Z

    if-eqz v0, :cond_0

    goto :goto_4

    :cond_0
    iget v0, p2, L㚬/㲝/㺴/䆀;->䂻:I

    const/4 v1, -0x1

    if-nez v0, :cond_2

    iget v0, p2, L㚬/㲝/㺴/䆀;->ḓ:I

    if-ne v0, v1, :cond_1

    :goto_0
    iget p2, p2, L㚬/㲝/㺴/䆀;->ᆻ:I

    :goto_1
    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->㷵(Landroidx/recyclerview/widget/RecyclerView$㢏;I)V

    goto :goto_4

    :cond_1
    :goto_2
    iget p2, p2, L㚬/㲝/㺴/䆀;->䆀:I

    :goto_3
    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->䃤(Landroidx/recyclerview/widget/RecyclerView$㢏;I)V

    goto :goto_4

    :cond_2
    iget v0, p2, L㚬/㲝/㺴/䆀;->ḓ:I

    if-ne v0, v1, :cond_4

    iget v0, p2, L㚬/㲝/㺴/䆀;->䆀:I

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->㭭(I)I

    move-result v1

    sub-int/2addr v0, v1

    if-gez v0, :cond_3

    goto :goto_0

    :cond_3
    iget v1, p2, L㚬/㲝/㺴/䆀;->ᆻ:I

    iget p2, p2, L㚬/㲝/㺴/䆀;->䂻:I

    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    sub-int p2, v1, p2

    goto :goto_1

    :cond_4
    iget v0, p2, L㚬/㲝/㺴/䆀;->ᆻ:I

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->㞜(I)I

    move-result v0

    iget v1, p2, L㚬/㲝/㺴/䆀;->ᆻ:I

    sub-int/2addr v0, v1

    if-gez v0, :cond_5

    goto :goto_2

    :cond_5
    iget v1, p2, L㚬/㲝/㺴/䆀;->䆀:I

    iget p2, p2, L㚬/㲝/㺴/䆀;->䂻:I

    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    add-int/2addr p2, v1

    goto :goto_3

    :cond_6
    :goto_4
    return-void
.end method

.method public final 㧚(Landroidx/recyclerview/widget/RecyclerView$ಋ;)I
    .locals 7

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$ᓭ;->ർ()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->㖪:L㚬/㲝/㺴/ಫ;

    iget-boolean v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->Ԁ:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->㗁(Z)Landroid/view/View;

    move-result-object v2

    iget-boolean v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->Ԁ:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->Ⱉ(Z)Landroid/view/View;

    move-result-object v3

    iget-boolean v5, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->Ԁ:Z

    iget-boolean v6, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ಋ:Z

    move-object v0, p1

    move-object v4, p0

    invoke-static/range {v0 .. v6}, L㚬/㲝/㺴/㹖;->䂻(Landroidx/recyclerview/widget/RecyclerView$ಋ;L㚬/㲝/㺴/ಫ;Landroid/view/View;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView$ᓭ;ZZ)I

    move-result p1

    return p1
.end method

.method public 㧦()Z
    .locals 1

    iget v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ม:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public 㨃(Landroid/view/ViewGroup$LayoutParams;)Landroidx/recyclerview/widget/RecyclerView$ბ;
    .locals 1

    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_0

    new-instance v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$㚬;

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v0, p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$㚬;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    return-object v0

    :cond_0
    new-instance v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$㚬;

    invoke-direct {v0, p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$㚬;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public 㩇()I
    .locals 1

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$ᓭ;->ർ()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$ᓭ;->㥁(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$ᓭ;->䋡(Landroid/view/View;)I

    move-result v0

    :goto_0
    return v0
.end method

.method public 㪦()Z
    .locals 6

    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ḙ:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$䆀;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    const/high16 v2, -0x80000000

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$䆀;->ბ(I)I

    move-result v0

    const/4 v3, 0x1

    const/4 v4, 0x1

    :goto_0
    iget v5, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->㭲:I

    if-ge v4, v5, :cond_1

    iget-object v5, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ḙ:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$䆀;

    aget-object v5, v5, v4

    invoke-virtual {v5, v2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$䆀;->ბ(I)I

    move-result v5

    if-eq v5, v0, :cond_0

    return v1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    return v3
.end method

.method public final 㭭(I)I
    .locals 3

    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ḙ:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$䆀;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$䆀;->ბ(I)I

    move-result v0

    const/4 v1, 0x1

    :goto_0
    iget v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->㭲:I

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ḙ:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$䆀;

    aget-object v2, v2, v1

    invoke-virtual {v2, p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$䆀;->ბ(I)I

    move-result v2

    if-le v2, v0, :cond_0

    move v0, v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public 㭲(Landroidx/recyclerview/widget/RecyclerView$ಋ;)I
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->䊉(Landroidx/recyclerview/widget/RecyclerView$ಋ;)I

    move-result p1

    return p1
.end method

.method public 㯇()I
    .locals 2

    iget-boolean v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ಋ:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->Ⱉ(Z)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->㗁(Z)Landroid/view/View;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_1

    const/4 v0, -0x1

    goto :goto_1

    :cond_1
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$ᓭ;->䋡(Landroid/view/View;)I

    move-result v0

    :goto_1
    return v0
.end method

.method public 㰫()Landroidx/recyclerview/widget/RecyclerView$ბ;
    .locals 3

    iget v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ม:I

    const/4 v1, -0x2

    const/4 v2, -0x1

    if-nez v0, :cond_0

    new-instance v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$㚬;

    invoke-direct {v0, v1, v2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$㚬;-><init>(II)V

    return-object v0

    :cond_0
    new-instance v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$㚬;

    invoke-direct {v0, v2, v1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$㚬;-><init>(II)V

    return-object v0
.end method

.method public 㲝(Landroidx/recyclerview/widget/RecyclerView$ಋ;)I
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->㠯(Landroidx/recyclerview/widget/RecyclerView$ಋ;)I

    move-result p1

    return p1
.end method

.method public final 㲲(L㚬/㲝/㺴/䆀;)Landroidx/recyclerview/widget/StaggeredGridLayoutManager$䆀;
    .locals 7

    iget v0, p1, L㚬/㲝/㺴/䆀;->ḓ:I

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->Ձ(I)Z

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    iget v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->㭲:I

    sub-int/2addr v0, v2

    const/4 v3, -0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    iget v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->㭲:I

    const/4 v3, 0x1

    :goto_0
    iget p1, p1, L㚬/㲝/㺴/䆀;->ḓ:I

    const/4 v4, 0x0

    if-ne p1, v2, :cond_3

    const p1, 0x7fffffff

    iget-object v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->㖪:L㚬/㲝/㺴/ಫ;

    invoke-virtual {v2}, L㚬/㲝/㺴/ಫ;->ἥ()I

    move-result v2

    :goto_1
    if-eq v0, v1, :cond_2

    iget-object v5, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ḙ:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$䆀;

    aget-object v5, v5, v0

    invoke-virtual {v5, v2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$䆀;->㹖(I)I

    move-result v6

    if-ge v6, p1, :cond_1

    move-object v4, v5

    move p1, v6

    :cond_1
    add-int/2addr v0, v3

    goto :goto_1

    :cond_2
    return-object v4

    :cond_3
    const/high16 p1, -0x80000000

    iget-object v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->㖪:L㚬/㲝/㺴/ಫ;

    invoke-virtual {v2}, L㚬/㲝/㺴/ಫ;->ㄏ()I

    move-result v2

    :goto_2
    if-eq v0, v1, :cond_5

    iget-object v5, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ḙ:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$䆀;

    aget-object v5, v5, v0

    invoke-virtual {v5, v2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$䆀;->ბ(I)I

    move-result v6

    if-le v6, p1, :cond_4

    move-object v4, v5

    move p1, v6

    :cond_4
    add-int/2addr v0, v3

    goto :goto_2

    :cond_5
    return-object v4
.end method

.method public 㲶(Landroidx/recyclerview/widget/RecyclerView$㢏;Landroidx/recyclerview/widget/RecyclerView$ಋ;)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ḑ(Landroidx/recyclerview/widget/RecyclerView$㢏;Landroidx/recyclerview/widget/RecyclerView$ಋ;Z)V

    return-void
.end method

.method public final 㳖(Landroidx/recyclerview/widget/RecyclerView$ಋ;Landroidx/recyclerview/widget/StaggeredGridLayoutManager$䂻;)Z
    .locals 1

    iget-boolean v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ᰘ:Z

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ಋ;->䂻()I

    move-result p1

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ᓇ(I)I

    move-result p1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->വ(I)I

    move-result p1

    :goto_0
    iput p1, p2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$䂻;->உ:I

    const/high16 p1, -0x80000000

    iput p1, p2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$䂻;->䂻:I

    const/4 p1, 0x1

    return p1
.end method

.method public 㳗()Z
    .locals 7

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$ᓭ;->ർ()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_7

    iget v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->㨃:I

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$ᓭ;->ਬ()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_3

    :cond_0
    iget-boolean v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ಋ:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->㩇()I

    move-result v0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ਣ()I

    move-result v2

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ਣ()I

    move-result v0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->㩇()I

    move-result v2

    :goto_0
    const/4 v3, 0x1

    if-nez v0, :cond_2

    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ጜ()Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_2

    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ש:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$㺴;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$㺴;->䂻()V

    :goto_1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$ᓭ;->ࢫ()V

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$ᓭ;->ᐶ()V

    return v3

    :cond_2
    iget-boolean v4, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->Խ:Z

    if-nez v4, :cond_3

    return v1

    :cond_3
    iget-boolean v4, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ಋ:Z

    const/4 v5, -0x1

    if-eqz v4, :cond_4

    const/4 v4, -0x1

    goto :goto_2

    :cond_4
    const/4 v4, 0x1

    :goto_2
    iget-object v6, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ש:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$㺴;

    add-int/2addr v2, v3

    invoke-virtual {v6, v0, v2, v4, v3}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$㺴;->ḓ(IIIZ)Landroidx/recyclerview/widget/StaggeredGridLayoutManager$㺴$உ;

    move-result-object v6

    if-nez v6, :cond_5

    iput-boolean v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->Խ:Z

    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ש:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$㺴;

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$㺴;->㺴(I)I

    return v1

    :cond_5
    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ש:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$㺴;

    iget v2, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$㺴$உ;->䂻:I

    mul-int/lit8 v4, v4, -0x1

    invoke-virtual {v1, v0, v2, v4, v3}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$㺴;->ḓ(IIIZ)Landroidx/recyclerview/widget/StaggeredGridLayoutManager$㺴$உ;

    move-result-object v0

    if-nez v0, :cond_6

    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ש:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$㺴;

    iget v1, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$㺴$உ;->䂻:I

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$㺴;->㺴(I)I

    goto :goto_1

    :cond_6
    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ש:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$㺴;

    iget v0, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$㺴$உ;->䂻:I

    add-int/2addr v0, v3

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$㺴;->㺴(I)I

    goto :goto_1

    :cond_7
    :goto_3
    return v1
.end method

.method public 㷚(I)V
    .locals 0

    if-nez p1, :cond_0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->㳗()Z

    :cond_0
    return-void
.end method

.method public final 㷵(Landroidx/recyclerview/widget/RecyclerView$㢏;I)V
    .locals 6

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$ᓭ;->ർ()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_5

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$ᓭ;->㥁(I)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->㖪:L㚬/㲝/㺴/ಫ;

    invoke-virtual {v3, v2}, L㚬/㲝/㺴/ಫ;->ᆻ(Landroid/view/View;)I

    move-result v3

    if-lt v3, p2, :cond_5

    iget-object v3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->㖪:L㚬/㲝/㺴/ಫ;

    invoke-virtual {v3, v2}, L㚬/㲝/㺴/ಫ;->㲝(Landroid/view/View;)I

    move-result v3

    if-lt v3, p2, :cond_5

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$㚬;

    iget-boolean v4, v3, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$㚬;->䆀:Z

    if-eqz v4, :cond_2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_1
    iget v5, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->㭲:I

    if-ge v4, v5, :cond_1

    iget-object v5, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ḙ:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$䆀;

    aget-object v5, v5, v4

    iget-object v5, v5, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$䆀;->உ:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ne v5, v1, :cond_0

    return-void

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    iget v4, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->㭲:I

    if-ge v3, v4, :cond_4

    iget-object v4, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ḙ:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$䆀;

    aget-object v4, v4, v3

    invoke-virtual {v4}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$䆀;->㭲()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_2
    iget-object v4, v3, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$㚬;->ḓ:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$䆀;

    iget-object v4, v4, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$䆀;->உ:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ne v4, v1, :cond_3

    return-void

    :cond_3
    iget-object v3, v3, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$㚬;->ḓ:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$䆀;

    invoke-virtual {v3}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$䆀;->㭲()V

    :cond_4
    invoke-virtual {p0, v2, p1}, Landroidx/recyclerview/widget/RecyclerView$ᓭ;->Ⅎ(Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView$㢏;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_5
    return-void
.end method

.method public final 㸜(Landroid/view/View;)V
    .locals 2

    iget v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->㭲:I

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ḙ:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$䆀;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$䆀;->உ(Landroid/view/View;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public 㹖()Z
    .locals 2

    iget v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ม:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public 㼲(Landroidx/recyclerview/widget/RecyclerView;IILjava/lang/Object;)V
    .locals 0

    const/4 p1, 0x4

    invoke-virtual {p0, p2, p3, p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ᡳ(III)V

    return-void
.end method

.method public final 䃆(Landroid/view/View;Landroidx/recyclerview/widget/StaggeredGridLayoutManager$㚬;Z)V
    .locals 6

    iget-boolean v0, p2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$㚬;->䆀:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ม:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ർ:I

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$ᓭ;->ᗼ()I

    move-result v0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$ᓭ;->ϣ()I

    move-result v2

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$ᓭ;->ග()I

    move-result v3

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$ᓭ;->Ᏼ()I

    move-result v4

    add-int/2addr v3, v4

    iget p2, p2, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    invoke-static {v0, v2, v3, p2, v1}, Landroidx/recyclerview/widget/RecyclerView$ᓭ;->㖆(IIIIZ)I

    move-result p2

    iget v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ർ:I

    invoke-virtual {p0, p1, p2, v0, p3}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ᓓ(Landroid/view/View;IIZ)V

    goto :goto_2

    :cond_1
    iget v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ม:I

    const/4 v2, 0x0

    if-ne v0, v1, :cond_2

    iget v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->㲧:I

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$ᓭ;->ϣ()I

    move-result v3

    iget v4, p2, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    invoke-static {v0, v3, v2, v4, v2}, Landroidx/recyclerview/widget/RecyclerView$ᓭ;->㖆(IIIIZ)I

    move-result v0

    :goto_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$ᓭ;->ᇿ()I

    move-result v2

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$ᓭ;->ᣑ()I

    move-result v3

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$ᓭ;->㠭()I

    move-result v4

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$ᓭ;->Ổ()I

    move-result v5

    add-int/2addr v4, v5

    iget p2, p2, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    invoke-static {v2, v3, v4, p2, v1}, Landroidx/recyclerview/widget/RecyclerView$ᓭ;->㖆(IIIIZ)I

    move-result p2

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$ᓭ;->ᗼ()I

    move-result v0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$ᓭ;->ϣ()I

    move-result v3

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$ᓭ;->ග()I

    move-result v4

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$ᓭ;->Ᏼ()I

    move-result v5

    add-int/2addr v4, v5

    iget v5, p2, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    invoke-static {v0, v3, v4, v5, v1}, Landroidx/recyclerview/widget/RecyclerView$ᓭ;->㖆(IIIIZ)I

    move-result v0

    iget v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->㲧:I

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$ᓭ;->ᣑ()I

    move-result v3

    iget p2, p2, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    invoke-static {v1, v3, v2, p2, v2}, Landroidx/recyclerview/widget/RecyclerView$ᓭ;->㖆(IIIIZ)I

    move-result p2

    :goto_1
    invoke-virtual {p0, p1, v0, p2, p3}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ᓓ(Landroid/view/View;IIZ)V

    :goto_2
    return-void
.end method

.method public final 䃤(Landroidx/recyclerview/widget/RecyclerView$㢏;I)V
    .locals 5

    :goto_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$ᓭ;->ർ()I

    move-result v0

    if-lez v0, :cond_5

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$ᓭ;->㥁(I)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->㖪:L㚬/㲝/㺴/ಫ;

    invoke-virtual {v2, v1}, L㚬/㲝/㺴/ಫ;->㺴(Landroid/view/View;)I

    move-result v2

    if-gt v2, p2, :cond_5

    iget-object v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->㖪:L㚬/㲝/㺴/ಫ;

    invoke-virtual {v2, v1}, L㚬/㲝/㺴/ಫ;->ბ(Landroid/view/View;)I

    move-result v2

    if-gt v2, p2, :cond_5

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$㚬;

    iget-boolean v3, v2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$㚬;->䆀:Z

    const/4 v4, 0x1

    if-eqz v3, :cond_2

    const/4 v2, 0x0

    :goto_1
    iget v3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->㭲:I

    if-ge v2, v3, :cond_1

    iget-object v3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ḙ:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$䆀;

    aget-object v3, v3, v2

    iget-object v3, v3, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$䆀;->உ:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ne v3, v4, :cond_0

    return-void

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    iget v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->㭲:I

    if-ge v0, v2, :cond_4

    iget-object v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ḙ:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$䆀;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$䆀;->ḙ()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    iget-object v0, v2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$㚬;->ḓ:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$䆀;

    iget-object v0, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$䆀;->உ:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne v0, v4, :cond_3

    return-void

    :cond_3
    iget-object v0, v2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$㚬;->ḓ:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$䆀;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$䆀;->ḙ()V

    :cond_4
    invoke-virtual {p0, v1, p1}, Landroidx/recyclerview/widget/RecyclerView$ᓭ;->Ⅎ(Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView$㢏;)V

    goto :goto_0

    :cond_5
    return-void
.end method

.method public final 䈳(I)I
    .locals 3

    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ḙ:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$䆀;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$䆀;->ბ(I)I

    move-result v0

    const/4 v1, 0x1

    :goto_0
    iget v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->㭲:I

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ḙ:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$䆀;

    aget-object v2, v2, v1

    invoke-virtual {v2, p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$䆀;->ბ(I)I

    move-result v2

    if-ge v2, v0, :cond_0

    move v0, v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public final 䉁()V
    .locals 2

    iget v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ม:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ඌ()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->㫏:Z

    xor-int/2addr v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    iget-boolean v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->㫏:Z

    :goto_1
    iput-boolean v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ಋ:Z

    return-void
.end method

.method public 䉄(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ಋ;I)V
    .locals 0

    new-instance p2, L㚬/㲝/㺴/ᆻ;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p2, p1}, L㚬/㲝/㺴/ᆻ;-><init>(Landroid/content/Context;)V

    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/RecyclerView$㫏;->ბ(I)V

    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ᓭ;->㚫(Landroidx/recyclerview/widget/RecyclerView$㫏;)V

    return-void
.end method

.method public final 䊉(Landroidx/recyclerview/widget/RecyclerView$ಋ;)I
    .locals 6

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$ᓭ;->ർ()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->㖪:L㚬/㲝/㺴/ಫ;

    iget-boolean v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->Ԁ:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->㗁(Z)Landroid/view/View;

    move-result-object v2

    iget-boolean v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->Ԁ:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->Ⱉ(Z)Landroid/view/View;

    move-result-object v3

    iget-boolean v5, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->Ԁ:Z

    move-object v0, p1

    move-object v4, p0

    invoke-static/range {v0 .. v5}, L㚬/㲝/㺴/㹖;->㚬(Landroidx/recyclerview/widget/RecyclerView$ಋ;L㚬/㲝/㺴/ಫ;Landroid/view/View;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView$ᓭ;Z)I

    move-result p1

    return p1
.end method
