.class public Landroidx/recyclerview/widget/LinearLayoutManager;
.super Landroidx/recyclerview/widget/RecyclerView$ᓭ;
.source ""

# interfaces
.implements Landroidx/recyclerview/widget/RecyclerView$㫏$䂻;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/recyclerview/widget/LinearLayoutManager$䂻;,
        Landroidx/recyclerview/widget/LinearLayoutManager$உ;,
        Landroidx/recyclerview/widget/LinearLayoutManager$㺴;,
        Landroidx/recyclerview/widget/LinearLayoutManager$㚬;
    }
.end annotation


# instance fields
.field public final ש:Landroidx/recyclerview/widget/LinearLayoutManager$உ;

.field public ڈ:Z

.field public ಋ:I

.field public ม:Z

.field public ᰘ:I

.field public ᱹ:[I

.field public ḙ:Landroidx/recyclerview/widget/LinearLayoutManager$㚬;

.field public ᾦ:I

.field public ㄬ:Z

.field public 㖪:L㚬/㲝/㺴/ಫ;

.field public 㢏:Z

.field public final 㨃:Landroidx/recyclerview/widget/LinearLayoutManager$䂻;

.field public 㫏:Z

.field public 㭲:I

.field public 㰫:Landroidx/recyclerview/widget/LinearLayoutManager$㺴;

.field public 㲧:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;IZ)V
    .locals 1

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ᓭ;-><init>()V

    const/4 p1, 0x1

    iput p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->㭲:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->ม:Z

    iput-boolean v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->㲧:Z

    iput-boolean v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->ㄬ:Z

    iput-boolean p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->㫏:Z

    const/4 p1, -0x1

    iput p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->ಋ:I

    const/high16 p1, -0x80000000

    iput p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->ᾦ:I

    const/4 p1, 0x0

    iput-object p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->㰫:Landroidx/recyclerview/widget/LinearLayoutManager$㺴;

    new-instance p1, Landroidx/recyclerview/widget/LinearLayoutManager$உ;

    invoke-direct {p1}, Landroidx/recyclerview/widget/LinearLayoutManager$உ;-><init>()V

    iput-object p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->ש:Landroidx/recyclerview/widget/LinearLayoutManager$உ;

    new-instance p1, Landroidx/recyclerview/widget/LinearLayoutManager$䂻;

    invoke-direct {p1}, Landroidx/recyclerview/widget/LinearLayoutManager$䂻;-><init>()V

    iput-object p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->㨃:Landroidx/recyclerview/widget/LinearLayoutManager$䂻;

    const/4 p1, 0x2

    iput p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->ᰘ:I

    new-array p1, p1, [I

    iput-object p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->ᱹ:[I

    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->䃤(I)V

    invoke-virtual {p0, p3}, Landroidx/recyclerview/widget/LinearLayoutManager;->ℭ(Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 2

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ᓭ;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->㭲:I

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->ม:Z

    iput-boolean v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->㲧:Z

    iput-boolean v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->ㄬ:Z

    iput-boolean v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->㫏:Z

    const/4 v0, -0x1

    iput v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->ಋ:I

    const/high16 v0, -0x80000000

    iput v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->ᾦ:I

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->㰫:Landroidx/recyclerview/widget/LinearLayoutManager$㺴;

    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager$உ;

    invoke-direct {v0}, Landroidx/recyclerview/widget/LinearLayoutManager$உ;-><init>()V

    iput-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->ש:Landroidx/recyclerview/widget/LinearLayoutManager$உ;

    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager$䂻;

    invoke-direct {v0}, Landroidx/recyclerview/widget/LinearLayoutManager$䂻;-><init>()V

    iput-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->㨃:Landroidx/recyclerview/widget/LinearLayoutManager$䂻;

    const/4 v0, 0x2

    iput v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->ᰘ:I

    new-array v0, v0, [I

    iput-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->ᱹ:[I

    invoke-static {p1, p2, p3, p4}, Landroidx/recyclerview/widget/RecyclerView$ᓭ;->ἃ(Landroid/content/Context;Landroid/util/AttributeSet;II)Landroidx/recyclerview/widget/RecyclerView$ᓭ$㺴;

    move-result-object p1

    iget p2, p1, Landroidx/recyclerview/widget/RecyclerView$ᓭ$㺴;->உ:I

    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->䃤(I)V

    iget-boolean p2, p1, Landroidx/recyclerview/widget/RecyclerView$ᓭ$㺴;->㚬:Z

    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->ℭ(Z)V

    iget-boolean p1, p1, Landroidx/recyclerview/widget/RecyclerView$ᓭ$㺴;->㺴:Z

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->䉁(Z)V

    return-void
.end method


# virtual methods
.method public ѝ(Landroidx/recyclerview/widget/RecyclerView$㢏;Landroidx/recyclerview/widget/RecyclerView$ಋ;III)Landroid/view/View;
    .locals 5

    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->㒱()V

    iget-object p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->㖪:L㚬/㲝/㺴/ಫ;

    invoke-virtual {p1}, L㚬/㲝/㺴/ಫ;->ἥ()I

    move-result p1

    iget-object p2, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->㖪:L㚬/㲝/㺴/ಫ;

    invoke-virtual {p2}, L㚬/㲝/㺴/ಫ;->ㄏ()I

    move-result p2

    if-le p4, p3, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    const/4 v1, 0x0

    move-object v2, v1

    :goto_1
    if-eq p3, p4, :cond_5

    invoke-virtual {p0, p3}, Landroidx/recyclerview/widget/RecyclerView$ᓭ;->㥁(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroidx/recyclerview/widget/RecyclerView$ᓭ;->䋡(Landroid/view/View;)I

    move-result v4

    if-ltz v4, :cond_4

    if-ge v4, p5, :cond_4

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroidx/recyclerview/widget/RecyclerView$ბ;

    invoke-virtual {v4}, Landroidx/recyclerview/widget/RecyclerView$ბ;->㚬()Z

    move-result v4

    if-eqz v4, :cond_1

    if-nez v2, :cond_4

    move-object v2, v3

    goto :goto_3

    :cond_1
    iget-object v4, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->㖪:L㚬/㲝/㺴/ಫ;

    invoke-virtual {v4, v3}, L㚬/㲝/㺴/ಫ;->ᆻ(Landroid/view/View;)I

    move-result v4

    if-ge v4, p2, :cond_3

    iget-object v4, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->㖪:L㚬/㲝/㺴/ಫ;

    invoke-virtual {v4, v3}, L㚬/㲝/㺴/ಫ;->㺴(Landroid/view/View;)I

    move-result v4

    if-ge v4, p1, :cond_2

    goto :goto_2

    :cond_2
    return-object v3

    :cond_3
    :goto_2
    if-nez v1, :cond_4

    move-object v1, v3

    :cond_4
    :goto_3
    add-int/2addr p3, v0

    goto :goto_1

    :cond_5
    if-eqz v1, :cond_6

    goto :goto_4

    :cond_6
    move-object v1, v2

    :goto_4
    return-object v1
.end method

.method public ә(I)I
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
    iget p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->㭲:I

    if-ne p1, v1, :cond_1

    goto :goto_0

    :cond_1
    const/high16 v1, -0x80000000

    :goto_0
    return v1

    :cond_2
    iget p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->㭲:I

    if-nez p1, :cond_3

    goto :goto_1

    :cond_3
    const/high16 v1, -0x80000000

    :goto_1
    return v1

    :cond_4
    iget p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->㭲:I

    if-ne p1, v1, :cond_5

    goto :goto_2

    :cond_5
    const/high16 v0, -0x80000000

    :goto_2
    return v0

    :cond_6
    iget p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->㭲:I

    if-nez p1, :cond_7

    goto :goto_3

    :cond_7
    const/high16 v0, -0x80000000

    :goto_3
    return v0

    :cond_8
    iget p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->㭲:I

    if-ne p1, v1, :cond_9

    return v1

    :cond_9
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->ᡳ()Z

    move-result p1

    if-eqz p1, :cond_a

    return v0

    :cond_a
    return v1

    :cond_b
    iget p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->㭲:I

    if-ne p1, v1, :cond_c

    return v0

    :cond_c
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->ᡳ()Z

    move-result p1

    if-eqz p1, :cond_d

    return v1

    :cond_d
    return v0
.end method

.method public final Ձ(Landroidx/recyclerview/widget/RecyclerView$㢏;II)V
    .locals 4

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$ᓭ;->ർ()I

    move-result v0

    if-gez p2, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->㖪:L㚬/㲝/㺴/ಫ;

    invoke-virtual {v1}, L㚬/㲝/㺴/ಫ;->ℓ()I

    move-result v1

    sub-int/2addr v1, p2

    add-int/2addr v1, p3

    iget-boolean p2, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->㲧:Z

    if-eqz p2, :cond_3

    const/4 p2, 0x0

    const/4 p3, 0x0

    :goto_0
    if-ge p3, v0, :cond_6

    invoke-virtual {p0, p3}, Landroidx/recyclerview/widget/RecyclerView$ᓭ;->㥁(I)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->㖪:L㚬/㲝/㺴/ಫ;

    invoke-virtual {v3, v2}, L㚬/㲝/㺴/ಫ;->ᆻ(Landroid/view/View;)I

    move-result v3

    if-lt v3, v1, :cond_2

    iget-object v3, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->㖪:L㚬/㲝/㺴/ಫ;

    invoke-virtual {v3, v2}, L㚬/㲝/㺴/ಫ;->㲝(Landroid/view/View;)I

    move-result v2

    if-ge v2, v1, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    invoke-virtual {p0, p1, p2, p3}, Landroidx/recyclerview/widget/LinearLayoutManager;->ḑ(Landroidx/recyclerview/widget/RecyclerView$㢏;II)V

    return-void

    :cond_3
    add-int/lit8 v0, v0, -0x1

    move p2, v0

    :goto_2
    if-ltz p2, :cond_6

    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ᓭ;->㥁(I)Landroid/view/View;

    move-result-object p3

    iget-object v2, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->㖪:L㚬/㲝/㺴/ಫ;

    invoke-virtual {v2, p3}, L㚬/㲝/㺴/ಫ;->ᆻ(Landroid/view/View;)I

    move-result v2

    if-lt v2, v1, :cond_5

    iget-object v2, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->㖪:L㚬/㲝/㺴/ಫ;

    invoke-virtual {v2, p3}, L㚬/㲝/㺴/ಫ;->㲝(Landroid/view/View;)I

    move-result p3

    if-ge p3, v1, :cond_4

    goto :goto_3

    :cond_4
    add-int/lit8 p2, p2, -0x1

    goto :goto_2

    :cond_5
    :goto_3
    invoke-virtual {p0, p1, v0, p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->ḑ(Landroidx/recyclerview/widget/RecyclerView$㢏;II)V

    :cond_6
    return-void
.end method

.method public ڈ(I)Landroid/view/View;
    .locals 2

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$ᓭ;->ർ()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/RecyclerView$ᓭ;->㥁(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/RecyclerView$ᓭ;->䋡(Landroid/view/View;)I

    move-result v1

    sub-int v1, p1, v1

    if-ltz v1, :cond_1

    if-ge v1, v0, :cond_1

    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/RecyclerView$ᓭ;->㥁(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$ᓭ;->䋡(Landroid/view/View;)I

    move-result v1

    if-ne v1, p1, :cond_1

    return-object v0

    :cond_1
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ᓭ;->ڈ(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public ڪ()Z
    .locals 2

    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->㰫:Landroidx/recyclerview/widget/LinearLayoutManager$㺴;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->㢏:Z

    iget-boolean v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->ㄬ:Z

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final ܙ()Landroid/view/View;
    .locals 2

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$ᓭ;->ർ()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->Ⱉ(II)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public final ނ(Landroidx/recyclerview/widget/RecyclerView$㢏;Landroidx/recyclerview/widget/RecyclerView$ಋ;)Landroid/view/View;
    .locals 1

    iget-boolean v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->㲧:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->䊉(Landroidx/recyclerview/widget/RecyclerView$㢏;Landroidx/recyclerview/widget/RecyclerView$ಋ;)Landroid/view/View;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->ᵐ(Landroidx/recyclerview/widget/RecyclerView$㢏;Landroidx/recyclerview/widget/RecyclerView$ಋ;)Landroid/view/View;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public ޒ(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$㢏;)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$ᓭ;->ޒ(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$㢏;)V

    iget-boolean p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->ڈ:Z

    if-eqz p1, :cond_0

    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ᓭ;->㗽(Landroidx/recyclerview/widget/RecyclerView$㢏;)V

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$㢏;->㚬()V

    :cond_0
    return-void
.end method

.method public ঔ(ILandroidx/recyclerview/widget/RecyclerView$㢏;Landroidx/recyclerview/widget/RecyclerView$ಋ;)I
    .locals 1

    iget v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->㭲:I

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Landroidx/recyclerview/widget/LinearLayoutManager;->㷵(ILandroidx/recyclerview/widget/RecyclerView$㢏;Landroidx/recyclerview/widget/RecyclerView$ಋ;)I

    move-result p1

    return p1
.end method

.method public ਚ(ZZ)Landroid/view/View;
    .locals 2

    iget-boolean v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->㲧:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$ᓭ;->ർ()I

    move-result v1

    :goto_0
    invoke-virtual {p0, v0, v1, p1, p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->㗁(IIZZ)Landroid/view/View;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$ᓭ;->ർ()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, -0x1

    goto :goto_0
.end method

.method public final ਣ(Landroidx/recyclerview/widget/RecyclerView$㢏;Landroidx/recyclerview/widget/RecyclerView$ಋ;)Landroid/view/View;
    .locals 1

    iget-boolean v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->㲧:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->ᵐ(Landroidx/recyclerview/widget/RecyclerView$㢏;Landroidx/recyclerview/widget/RecyclerView$ಋ;)Landroid/view/View;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->䊉(Landroidx/recyclerview/widget/RecyclerView$㢏;Landroidx/recyclerview/widget/RecyclerView$ಋ;)Landroid/view/View;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public உ(I)Landroid/graphics/PointF;
    .locals 3

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$ᓭ;->ർ()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$ᓭ;->㥁(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/RecyclerView$ᓭ;->䋡(Landroid/view/View;)I

    move-result v1

    const/4 v2, 0x1

    if-ge p1, v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    iget-boolean p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->㲧:Z

    if-eq v0, p1, :cond_2

    const/4 v2, -0x1

    :cond_2
    iget p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->㭲:I

    const/4 v0, 0x0

    if-nez p1, :cond_3

    new-instance p1, Landroid/graphics/PointF;

    int-to-float v1, v2

    invoke-direct {p1, v1, v0}, Landroid/graphics/PointF;-><init>(FF)V

    return-object p1

    :cond_3
    new-instance p1, Landroid/graphics/PointF;

    int-to-float v1, v2

    invoke-direct {p1, v0, v1}, Landroid/graphics/PointF;-><init>(FF)V

    return-object p1
.end method

.method public ഏ()Landroid/os/Parcelable;
    .locals 4

    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->㰫:Landroidx/recyclerview/widget/LinearLayoutManager$㺴;

    if-eqz v0, :cond_0

    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager$㺴;

    iget-object v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->㰫:Landroidx/recyclerview/widget/LinearLayoutManager$㺴;

    invoke-direct {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager$㺴;-><init>(Landroidx/recyclerview/widget/LinearLayoutManager$㺴;)V

    return-object v0

    :cond_0
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager$㺴;

    invoke-direct {v0}, Landroidx/recyclerview/widget/LinearLayoutManager$㺴;-><init>()V

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$ᓭ;->ർ()I

    move-result v1

    if-lez v1, :cond_2

    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->㒱()V

    iget-boolean v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->㢏:Z

    iget-boolean v2, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->㲧:Z

    xor-int/2addr v1, v2

    iput-boolean v1, v0, Landroidx/recyclerview/widget/LinearLayoutManager$㺴;->㺴:Z

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->㭭()Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->㖪:L㚬/㲝/㺴/ಫ;

    invoke-virtual {v2}, L㚬/㲝/㺴/ಫ;->ㄏ()I

    move-result v2

    iget-object v3, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->㖪:L㚬/㲝/㺴/ಫ;

    invoke-virtual {v3, v1}, L㚬/㲝/㺴/ಫ;->㺴(Landroid/view/View;)I

    move-result v3

    sub-int/2addr v2, v3

    iput v2, v0, Landroidx/recyclerview/widget/LinearLayoutManager$㺴;->㚬:I

    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/RecyclerView$ᓭ;->䋡(Landroid/view/View;)I

    move-result v1

    iput v1, v0, Landroidx/recyclerview/widget/LinearLayoutManager$㺴;->䂻:I

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->㞜()Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/RecyclerView$ᓭ;->䋡(Landroid/view/View;)I

    move-result v2

    iput v2, v0, Landroidx/recyclerview/widget/LinearLayoutManager$㺴;->䂻:I

    iget-object v2, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->㖪:L㚬/㲝/㺴/ಫ;

    invoke-virtual {v2, v1}, L㚬/㲝/㺴/ಫ;->ᆻ(Landroid/view/View;)I

    move-result v1

    iget-object v2, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->㖪:L㚬/㲝/㺴/ಫ;

    invoke-virtual {v2}, L㚬/㲝/㺴/ಫ;->ἥ()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, v0, Landroidx/recyclerview/widget/LinearLayoutManager$㺴;->㚬:I

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager$㺴;->㧦()V

    :goto_0
    return-object v0
.end method

.method public വ()I
    .locals 4

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$ᓭ;->ർ()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, -0x1

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v2, v3, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->㗁(IIZZ)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$ᓭ;->䋡(Landroid/view/View;)I

    move-result v2

    :goto_0
    return v2
.end method

.method public final ඌ(Landroidx/recyclerview/widget/RecyclerView$㢏;Landroidx/recyclerview/widget/RecyclerView$ಋ;II)V
    .locals 15

    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual/range {p2 .. p2}, Landroidx/recyclerview/widget/RecyclerView$ಋ;->ᆻ()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$ᓭ;->ർ()I

    move-result v3

    if-eqz v3, :cond_8

    invoke-virtual/range {p2 .. p2}, Landroidx/recyclerview/widget/RecyclerView$ಋ;->ḓ()Z

    move-result v3

    if-nez v3, :cond_8

    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->ڪ()Z

    move-result v3

    if-nez v3, :cond_0

    goto/16 :goto_3

    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroidx/recyclerview/widget/RecyclerView$㢏;->㧦()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {p0, v5}, Landroidx/recyclerview/widget/RecyclerView$ᓭ;->㥁(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {p0, v6}, Landroidx/recyclerview/widget/RecyclerView$ᓭ;->䋡(Landroid/view/View;)I

    move-result v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    :goto_0
    if-ge v7, v4, :cond_5

    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroidx/recyclerview/widget/RecyclerView$㰫;

    invoke-virtual {v10}, Landroidx/recyclerview/widget/RecyclerView$㰫;->㢏()Z

    move-result v11

    if-eqz v11, :cond_1

    goto :goto_2

    :cond_1
    invoke-virtual {v10}, Landroidx/recyclerview/widget/RecyclerView$㰫;->ἥ()I

    move-result v11

    const/4 v12, 0x1

    if-ge v11, v6, :cond_2

    const/4 v11, 0x1

    goto :goto_1

    :cond_2
    const/4 v11, 0x0

    :goto_1
    iget-boolean v13, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->㲧:Z

    const/4 v14, -0x1

    if-eq v11, v13, :cond_3

    const/4 v12, -0x1

    :cond_3
    iget-object v11, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->㖪:L㚬/㲝/㺴/ಫ;

    iget-object v10, v10, Landroidx/recyclerview/widget/RecyclerView$㰫;->உ:Landroid/view/View;

    invoke-virtual {v11, v10}, L㚬/㲝/㺴/ಫ;->ḓ(Landroid/view/View;)I

    move-result v10

    if-ne v12, v14, :cond_4

    add-int/2addr v8, v10

    goto :goto_2

    :cond_4
    add-int/2addr v9, v10

    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_5
    iget-object v4, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->ḙ:Landroidx/recyclerview/widget/LinearLayoutManager$㚬;

    iput-object v3, v4, Landroidx/recyclerview/widget/LinearLayoutManager$㚬;->㹖:Ljava/util/List;

    if-lez v8, :cond_6

    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->㞜()Landroid/view/View;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroidx/recyclerview/widget/RecyclerView$ᓭ;->䋡(Landroid/view/View;)I

    move-result v3

    move/from16 v4, p3

    invoke-virtual {p0, v3, v4}, Landroidx/recyclerview/widget/LinearLayoutManager;->㳖(II)V

    iget-object v3, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->ḙ:Landroidx/recyclerview/widget/LinearLayoutManager$㚬;

    iput v8, v3, Landroidx/recyclerview/widget/LinearLayoutManager$㚬;->ℓ:I

    iput v5, v3, Landroidx/recyclerview/widget/LinearLayoutManager$㚬;->㚬:I

    invoke-virtual {v3}, Landroidx/recyclerview/widget/LinearLayoutManager$㚬;->உ()V

    iget-object v3, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->ḙ:Landroidx/recyclerview/widget/LinearLayoutManager$㚬;

    invoke-virtual {p0, v1, v3, v2, v5}, Landroidx/recyclerview/widget/LinearLayoutManager;->㠯(Landroidx/recyclerview/widget/RecyclerView$㢏;Landroidx/recyclerview/widget/LinearLayoutManager$㚬;Landroidx/recyclerview/widget/RecyclerView$ಋ;Z)I

    :cond_6
    if-lez v9, :cond_7

    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->㭭()Landroid/view/View;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroidx/recyclerview/widget/RecyclerView$ᓭ;->䋡(Landroid/view/View;)I

    move-result v3

    move/from16 v4, p4

    invoke-virtual {p0, v3, v4}, Landroidx/recyclerview/widget/LinearLayoutManager;->ፄ(II)V

    iget-object v3, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->ḙ:Landroidx/recyclerview/widget/LinearLayoutManager$㚬;

    iput v9, v3, Landroidx/recyclerview/widget/LinearLayoutManager$㚬;->ℓ:I

    iput v5, v3, Landroidx/recyclerview/widget/LinearLayoutManager$㚬;->㚬:I

    invoke-virtual {v3}, Landroidx/recyclerview/widget/LinearLayoutManager$㚬;->உ()V

    iget-object v3, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->ḙ:Landroidx/recyclerview/widget/LinearLayoutManager$㚬;

    invoke-virtual {p0, v1, v3, v2, v5}, Landroidx/recyclerview/widget/LinearLayoutManager;->㠯(Landroidx/recyclerview/widget/RecyclerView$㢏;Landroidx/recyclerview/widget/LinearLayoutManager$㚬;Landroidx/recyclerview/widget/RecyclerView$ಋ;Z)I

    :cond_7
    iget-object v1, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->ḙ:Landroidx/recyclerview/widget/LinearLayoutManager$㚬;

    const/4 v2, 0x0

    iput-object v2, v1, Landroidx/recyclerview/widget/LinearLayoutManager$㚬;->㹖:Ljava/util/List;

    :cond_8
    :goto_3
    return-void
.end method

.method public ბ(ILandroidx/recyclerview/widget/RecyclerView$ᓭ$㚬;)V
    .locals 5

    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->㰫:Landroidx/recyclerview/widget/LinearLayoutManager$㺴;

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager$㺴;->ಫ()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->㰫:Landroidx/recyclerview/widget/LinearLayoutManager$㺴;

    iget-boolean v3, v0, Landroidx/recyclerview/widget/LinearLayoutManager$㺴;->㺴:Z

    iget v0, v0, Landroidx/recyclerview/widget/LinearLayoutManager$㺴;->䂻:I

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->㦗()V

    iget-boolean v3, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->㲧:Z

    iget v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->ಋ:I

    if-ne v0, v1, :cond_2

    if-eqz v3, :cond_1

    add-int/lit8 v0, p1, -0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :cond_2
    :goto_0
    if-eqz v3, :cond_3

    goto :goto_1

    :cond_3
    const/4 v1, 0x1

    :goto_1
    const/4 v3, 0x0

    :goto_2
    iget v4, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->ᰘ:I

    if-ge v3, v4, :cond_4

    if-ltz v0, :cond_4

    if-ge v0, p1, :cond_4

    invoke-interface {p2, v0, v2}, Landroidx/recyclerview/widget/RecyclerView$ᓭ$㚬;->உ(II)V

    add-int/2addr v0, v1

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_4
    return-void
.end method

.method public წ()I
    .locals 3

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$ᓭ;->ർ()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v0, v1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->㗁(IIZZ)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$ᓭ;->䋡(Landroid/view/View;)I

    move-result v0

    :goto_0
    return v0
.end method

.method public ᄺ(Landroid/os/Parcelable;)V
    .locals 1

    instance-of v0, p1, Landroidx/recyclerview/widget/LinearLayoutManager$㺴;

    if-eqz v0, :cond_0

    check-cast p1, Landroidx/recyclerview/widget/LinearLayoutManager$㺴;

    iput-object p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->㰫:Landroidx/recyclerview/widget/LinearLayoutManager$㺴;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$ᓭ;->ᐶ()V

    :cond_0
    return-void
.end method

.method public final ᅚ(IIZLandroidx/recyclerview/widget/RecyclerView$ಋ;)V
    .locals 4

    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->ḙ:Landroidx/recyclerview/widget/LinearLayoutManager$㚬;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->Ḣ()Z

    move-result v1

    iput-boolean v1, v0, Landroidx/recyclerview/widget/LinearLayoutManager$㚬;->ἥ:Z

    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->ḙ:Landroidx/recyclerview/widget/LinearLayoutManager$㚬;

    iput p1, v0, Landroidx/recyclerview/widget/LinearLayoutManager$㚬;->䆀:I

    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->ᱹ:[I

    const/4 v1, 0x0

    aput v1, v0, v1

    const/4 v2, 0x1

    aput v1, v0, v2

    invoke-virtual {p0, p4, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->㸜(Landroidx/recyclerview/widget/RecyclerView$ಋ;[I)V

    iget-object p4, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->ᱹ:[I

    aget p4, p4, v1

    invoke-static {v1, p4}, Ljava/lang/Math;->max(II)I

    move-result p4

    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->ᱹ:[I

    aget v0, v0, v2

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    if-ne p1, v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    iget-object p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->ḙ:Landroidx/recyclerview/widget/LinearLayoutManager$㚬;

    if-eqz v1, :cond_1

    move v3, v0

    goto :goto_0

    :cond_1
    move v3, p4

    :goto_0
    iput v3, p1, Landroidx/recyclerview/widget/LinearLayoutManager$㚬;->ℓ:I

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    move p4, v0

    :goto_1
    iput p4, p1, Landroidx/recyclerview/widget/LinearLayoutManager$㚬;->ㄏ:I

    const/4 p4, -0x1

    if-eqz v1, :cond_4

    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->㖪:L㚬/㲝/㺴/ಫ;

    invoke-virtual {v0}, L㚬/㲝/㺴/ಫ;->ಫ()I

    move-result v0

    add-int/2addr v3, v0

    iput v3, p1, Landroidx/recyclerview/widget/LinearLayoutManager$㚬;->ℓ:I

    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->㭭()Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->ḙ:Landroidx/recyclerview/widget/LinearLayoutManager$㚬;

    iget-boolean v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->㲧:Z

    if-eqz v1, :cond_3

    const/4 v2, -0x1

    :cond_3
    iput v2, v0, Landroidx/recyclerview/widget/LinearLayoutManager$㚬;->ḓ:I

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ᓭ;->䋡(Landroid/view/View;)I

    move-result p4

    iget-object v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->ḙ:Landroidx/recyclerview/widget/LinearLayoutManager$㚬;

    iget v2, v1, Landroidx/recyclerview/widget/LinearLayoutManager$㚬;->ḓ:I

    add-int/2addr p4, v2

    iput p4, v0, Landroidx/recyclerview/widget/LinearLayoutManager$㚬;->㺴:I

    iget-object p4, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->㖪:L㚬/㲝/㺴/ಫ;

    invoke-virtual {p4, p1}, L㚬/㲝/㺴/ಫ;->㺴(Landroid/view/View;)I

    move-result p4

    iput p4, v1, Landroidx/recyclerview/widget/LinearLayoutManager$㚬;->䂻:I

    iget-object p4, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->㖪:L㚬/㲝/㺴/ಫ;

    invoke-virtual {p4, p1}, L㚬/㲝/㺴/ಫ;->㺴(Landroid/view/View;)I

    move-result p1

    iget-object p4, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->㖪:L㚬/㲝/㺴/ಫ;

    invoke-virtual {p4}, L㚬/㲝/㺴/ಫ;->ㄏ()I

    move-result p4

    sub-int/2addr p1, p4

    goto :goto_3

    :cond_4
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->㞜()Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->ḙ:Landroidx/recyclerview/widget/LinearLayoutManager$㚬;

    iget v1, v0, Landroidx/recyclerview/widget/LinearLayoutManager$㚬;->ℓ:I

    iget-object v3, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->㖪:L㚬/㲝/㺴/ಫ;

    invoke-virtual {v3}, L㚬/㲝/㺴/ಫ;->ἥ()I

    move-result v3

    add-int/2addr v1, v3

    iput v1, v0, Landroidx/recyclerview/widget/LinearLayoutManager$㚬;->ℓ:I

    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->ḙ:Landroidx/recyclerview/widget/LinearLayoutManager$㚬;

    iget-boolean v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->㲧:Z

    if-eqz v1, :cond_5

    goto :goto_2

    :cond_5
    const/4 v2, -0x1

    :goto_2
    iput v2, v0, Landroidx/recyclerview/widget/LinearLayoutManager$㚬;->ḓ:I

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ᓭ;->䋡(Landroid/view/View;)I

    move-result p4

    iget-object v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->ḙ:Landroidx/recyclerview/widget/LinearLayoutManager$㚬;

    iget v2, v1, Landroidx/recyclerview/widget/LinearLayoutManager$㚬;->ḓ:I

    add-int/2addr p4, v2

    iput p4, v0, Landroidx/recyclerview/widget/LinearLayoutManager$㚬;->㺴:I

    iget-object p4, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->㖪:L㚬/㲝/㺴/ಫ;

    invoke-virtual {p4, p1}, L㚬/㲝/㺴/ಫ;->ᆻ(Landroid/view/View;)I

    move-result p4

    iput p4, v1, Landroidx/recyclerview/widget/LinearLayoutManager$㚬;->䂻:I

    iget-object p4, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->㖪:L㚬/㲝/㺴/ಫ;

    invoke-virtual {p4, p1}, L㚬/㲝/㺴/ಫ;->ᆻ(Landroid/view/View;)I

    move-result p1

    neg-int p1, p1

    iget-object p4, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->㖪:L㚬/㲝/㺴/ಫ;

    invoke-virtual {p4}, L㚬/㲝/㺴/ಫ;->ἥ()I

    move-result p4

    add-int/2addr p1, p4

    :goto_3
    iget-object p4, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->ḙ:Landroidx/recyclerview/widget/LinearLayoutManager$㚬;

    iput p2, p4, Landroidx/recyclerview/widget/LinearLayoutManager$㚬;->㚬:I

    if-eqz p3, :cond_6

    sub-int/2addr p2, p1

    iput p2, p4, Landroidx/recyclerview/widget/LinearLayoutManager$㚬;->㚬:I

    :cond_6
    iput p1, p4, Landroidx/recyclerview/widget/LinearLayoutManager$㚬;->ᆻ:I

    return-void
.end method

.method public ᆻ(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->㰫:Landroidx/recyclerview/widget/LinearLayoutManager$㺴;

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ᓭ;->ᆻ(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public ም(I)V
    .locals 0

    iput p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->ಋ:I

    const/high16 p1, -0x80000000

    iput p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->ᾦ:I

    iget-object p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->㰫:Landroidx/recyclerview/widget/LinearLayoutManager$㺴;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroidx/recyclerview/widget/LinearLayoutManager$㺴;->㧦()V

    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$ᓭ;->ᐶ()V

    return-void
.end method

.method public ጜ()Z
    .locals 1

    iget-boolean v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->㫏:Z

    return v0
.end method

.method public final ፄ(II)V
    .locals 3

    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->ḙ:Landroidx/recyclerview/widget/LinearLayoutManager$㚬;

    iget-object v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->㖪:L㚬/㲝/㺴/ಫ;

    invoke-virtual {v1}, L㚬/㲝/㺴/ಫ;->ㄏ()I

    move-result v1

    sub-int/2addr v1, p2

    iput v1, v0, Landroidx/recyclerview/widget/LinearLayoutManager$㚬;->㚬:I

    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->ḙ:Landroidx/recyclerview/widget/LinearLayoutManager$㚬;

    iget-boolean v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->㲧:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    const/4 v1, -0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    :goto_0
    iput v1, v0, Landroidx/recyclerview/widget/LinearLayoutManager$㚬;->ḓ:I

    iput p1, v0, Landroidx/recyclerview/widget/LinearLayoutManager$㚬;->㺴:I

    iput v2, v0, Landroidx/recyclerview/widget/LinearLayoutManager$㚬;->䆀:I

    iput p2, v0, Landroidx/recyclerview/widget/LinearLayoutManager$㚬;->䂻:I

    const/high16 p1, -0x80000000

    iput p1, v0, Landroidx/recyclerview/widget/LinearLayoutManager$㚬;->ᆻ:I

    return-void
.end method

.method public Ꭿ()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final ᐇ(Landroidx/recyclerview/widget/RecyclerView$ಋ;Landroidx/recyclerview/widget/LinearLayoutManager$உ;)Z
    .locals 4

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ಋ;->ḓ()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_f

    iget v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->ಋ:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    goto/16 :goto_6

    :cond_0
    const/high16 v3, -0x80000000

    if-ltz v0, :cond_e

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ಋ;->䂻()I

    move-result p1

    if-lt v0, p1, :cond_1

    goto/16 :goto_5

    :cond_1
    iget p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->ಋ:I

    iput p1, p2, Landroidx/recyclerview/widget/LinearLayoutManager$உ;->䂻:I

    iget-object p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->㰫:Landroidx/recyclerview/widget/LinearLayoutManager$㺴;

    const/4 v0, 0x1

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroidx/recyclerview/widget/LinearLayoutManager$㺴;->ಫ()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->㰫:Landroidx/recyclerview/widget/LinearLayoutManager$㺴;

    iget-boolean p1, p1, Landroidx/recyclerview/widget/LinearLayoutManager$㺴;->㺴:Z

    iput-boolean p1, p2, Landroidx/recyclerview/widget/LinearLayoutManager$உ;->㺴:Z

    if-eqz p1, :cond_2

    iget-object p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->㖪:L㚬/㲝/㺴/ಫ;

    invoke-virtual {p1}, L㚬/㲝/㺴/ಫ;->ㄏ()I

    move-result p1

    iget-object v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->㰫:Landroidx/recyclerview/widget/LinearLayoutManager$㺴;

    iget v1, v1, Landroidx/recyclerview/widget/LinearLayoutManager$㺴;->㚬:I

    sub-int/2addr p1, v1

    goto :goto_0

    :cond_2
    iget-object p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->㖪:L㚬/㲝/㺴/ಫ;

    invoke-virtual {p1}, L㚬/㲝/㺴/ಫ;->ἥ()I

    move-result p1

    iget-object v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->㰫:Landroidx/recyclerview/widget/LinearLayoutManager$㺴;

    iget v1, v1, Landroidx/recyclerview/widget/LinearLayoutManager$㺴;->㚬:I

    add-int/2addr p1, v1

    :goto_0
    iput p1, p2, Landroidx/recyclerview/widget/LinearLayoutManager$உ;->㚬:I

    return v0

    :cond_3
    iget p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->ᾦ:I

    if-ne p1, v3, :cond_c

    iget p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->ಋ:I

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->ڈ(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_8

    iget-object v2, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->㖪:L㚬/㲝/㺴/ಫ;

    invoke-virtual {v2, p1}, L㚬/㲝/㺴/ಫ;->ḓ(Landroid/view/View;)I

    move-result v2

    iget-object v3, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->㖪:L㚬/㲝/㺴/ಫ;

    invoke-virtual {v3}, L㚬/㲝/㺴/ಫ;->ཇ()I

    move-result v3

    if-le v2, v3, :cond_4

    invoke-virtual {p2}, Landroidx/recyclerview/widget/LinearLayoutManager$உ;->உ()V

    return v0

    :cond_4
    iget-object v2, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->㖪:L㚬/㲝/㺴/ಫ;

    invoke-virtual {v2, p1}, L㚬/㲝/㺴/ಫ;->ᆻ(Landroid/view/View;)I

    move-result v2

    iget-object v3, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->㖪:L㚬/㲝/㺴/ಫ;

    invoke-virtual {v3}, L㚬/㲝/㺴/ಫ;->ἥ()I

    move-result v3

    sub-int/2addr v2, v3

    if-gez v2, :cond_5

    iget-object p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->㖪:L㚬/㲝/㺴/ಫ;

    invoke-virtual {p1}, L㚬/㲝/㺴/ಫ;->ἥ()I

    move-result p1

    iput p1, p2, Landroidx/recyclerview/widget/LinearLayoutManager$உ;->㚬:I

    iput-boolean v1, p2, Landroidx/recyclerview/widget/LinearLayoutManager$உ;->㺴:Z

    return v0

    :cond_5
    iget-object v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->㖪:L㚬/㲝/㺴/ಫ;

    invoke-virtual {v1}, L㚬/㲝/㺴/ಫ;->ㄏ()I

    move-result v1

    iget-object v2, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->㖪:L㚬/㲝/㺴/ಫ;

    invoke-virtual {v2, p1}, L㚬/㲝/㺴/ಫ;->㺴(Landroid/view/View;)I

    move-result v2

    sub-int/2addr v1, v2

    if-gez v1, :cond_6

    iget-object p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->㖪:L㚬/㲝/㺴/ಫ;

    invoke-virtual {p1}, L㚬/㲝/㺴/ಫ;->ㄏ()I

    move-result p1

    iput p1, p2, Landroidx/recyclerview/widget/LinearLayoutManager$உ;->㚬:I

    iput-boolean v0, p2, Landroidx/recyclerview/widget/LinearLayoutManager$உ;->㺴:Z

    return v0

    :cond_6
    iget-boolean v1, p2, Landroidx/recyclerview/widget/LinearLayoutManager$உ;->㺴:Z

    if-eqz v1, :cond_7

    iget-object v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->㖪:L㚬/㲝/㺴/ಫ;

    invoke-virtual {v1, p1}, L㚬/㲝/㺴/ಫ;->㺴(Landroid/view/View;)I

    move-result p1

    iget-object v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->㖪:L㚬/㲝/㺴/ಫ;

    invoke-virtual {v1}, L㚬/㲝/㺴/ಫ;->ᓭ()I

    move-result v1

    add-int/2addr p1, v1

    goto :goto_1

    :cond_7
    iget-object v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->㖪:L㚬/㲝/㺴/ಫ;

    invoke-virtual {v1, p1}, L㚬/㲝/㺴/ಫ;->ᆻ(Landroid/view/View;)I

    move-result p1

    :goto_1
    iput p1, p2, Landroidx/recyclerview/widget/LinearLayoutManager$உ;->㚬:I

    goto :goto_3

    :cond_8
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$ᓭ;->ർ()I

    move-result p1

    if-lez p1, :cond_b

    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/RecyclerView$ᓭ;->㥁(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ᓭ;->䋡(Landroid/view/View;)I

    move-result p1

    iget v2, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->ಋ:I

    if-ge v2, p1, :cond_9

    const/4 p1, 0x1

    goto :goto_2

    :cond_9
    const/4 p1, 0x0

    :goto_2
    iget-boolean v2, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->㲧:Z

    if-ne p1, v2, :cond_a

    const/4 v1, 0x1

    :cond_a
    iput-boolean v1, p2, Landroidx/recyclerview/widget/LinearLayoutManager$உ;->㺴:Z

    :cond_b
    invoke-virtual {p2}, Landroidx/recyclerview/widget/LinearLayoutManager$உ;->உ()V

    :goto_3
    return v0

    :cond_c
    iget-boolean p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->㲧:Z

    iput-boolean p1, p2, Landroidx/recyclerview/widget/LinearLayoutManager$உ;->㺴:Z

    if-eqz p1, :cond_d

    iget-object p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->㖪:L㚬/㲝/㺴/ಫ;

    invoke-virtual {p1}, L㚬/㲝/㺴/ಫ;->ㄏ()I

    move-result p1

    iget v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->ᾦ:I

    sub-int/2addr p1, v1

    goto :goto_4

    :cond_d
    iget-object p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->㖪:L㚬/㲝/㺴/ಫ;

    invoke-virtual {p1}, L㚬/㲝/㺴/ಫ;->ἥ()I

    move-result p1

    iget v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->ᾦ:I

    add-int/2addr p1, v1

    :goto_4
    iput p1, p2, Landroidx/recyclerview/widget/LinearLayoutManager$உ;->㚬:I

    return v0

    :cond_e
    :goto_5
    iput v2, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->ಋ:I

    iput v3, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->ᾦ:I

    :cond_f
    :goto_6
    return v1
.end method

.method public ᑈ(Landroidx/recyclerview/widget/RecyclerView$ಋ;Landroidx/recyclerview/widget/LinearLayoutManager$㚬;Landroidx/recyclerview/widget/RecyclerView$ᓭ$㚬;)V
    .locals 1

    iget v0, p2, Landroidx/recyclerview/widget/LinearLayoutManager$㚬;->㺴:I

    if-ltz v0, :cond_0

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ಋ;->䂻()I

    move-result p1

    if-ge v0, p1, :cond_0

    const/4 p1, 0x0

    iget p2, p2, Landroidx/recyclerview/widget/LinearLayoutManager$㚬;->ᆻ:I

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-interface {p3, v0, p1}, Landroidx/recyclerview/widget/RecyclerView$ᓭ$㚬;->உ(II)V

    :cond_0
    return-void
.end method

.method public final ᓇ()Landroid/view/View;
    .locals 1

    iget-boolean v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->㲧:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->ܙ()Landroid/view/View;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->㧚()Landroid/view/View;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public ᓓ(Landroidx/recyclerview/widget/RecyclerView$㢏;Landroidx/recyclerview/widget/RecyclerView$ಋ;Landroidx/recyclerview/widget/LinearLayoutManager$உ;I)V
    .locals 0

    return-void
.end method

.method public ᓭ(IILandroidx/recyclerview/widget/RecyclerView$ಋ;Landroidx/recyclerview/widget/RecyclerView$ᓭ$㚬;)V
    .locals 1

    iget v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->㭲:I

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move p1, p2

    :goto_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$ᓭ;->ർ()I

    move-result p2

    if-eqz p2, :cond_3

    if-nez p1, :cond_1

    goto :goto_2

    :cond_1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->㒱()V

    const/4 p2, 0x1

    if-lez p1, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, -0x1

    :goto_1
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    invoke-virtual {p0, v0, p1, p2, p3}, Landroidx/recyclerview/widget/LinearLayoutManager;->ᅚ(IIZLandroidx/recyclerview/widget/RecyclerView$ಋ;)V

    iget-object p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->ḙ:Landroidx/recyclerview/widget/LinearLayoutManager$㚬;

    invoke-virtual {p0, p3, p1, p4}, Landroidx/recyclerview/widget/LinearLayoutManager;->ᑈ(Landroidx/recyclerview/widget/RecyclerView$ಋ;Landroidx/recyclerview/widget/LinearLayoutManager$㚬;Landroidx/recyclerview/widget/RecyclerView$ᓭ$㚬;)V

    :cond_3
    :goto_2
    return-void
.end method

.method public ᖰ(ILandroidx/recyclerview/widget/RecyclerView$㢏;Landroidx/recyclerview/widget/RecyclerView$ಋ;)I
    .locals 2

    iget v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->㭲:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Landroidx/recyclerview/widget/LinearLayoutManager;->㷵(ILandroidx/recyclerview/widget/RecyclerView$㢏;Landroidx/recyclerview/widget/RecyclerView$ಋ;)I

    move-result p1

    return p1
.end method

.method public ᡳ()Z
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

.method public final ᤍ(Landroidx/recyclerview/widget/RecyclerView$ಋ;)I
    .locals 6

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$ᓭ;->ർ()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->㒱()V

    iget-object v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->㖪:L㚬/㲝/㺴/ಫ;

    iget-boolean v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->㫏:Z

    const/4 v2, 0x1

    xor-int/2addr v0, v2

    invoke-virtual {p0, v0, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->㐇(ZZ)Landroid/view/View;

    move-result-object v3

    iget-boolean v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->㫏:Z

    xor-int/2addr v0, v2

    invoke-virtual {p0, v0, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->ਚ(ZZ)Landroid/view/View;

    move-result-object v4

    iget-boolean v5, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->㫏:Z

    move-object v0, p1

    move-object v2, v3

    move-object v3, v4

    move-object v4, p0

    invoke-static/range {v0 .. v5}, L㚬/㲝/㺴/㹖;->உ(Landroidx/recyclerview/widget/RecyclerView$ಋ;L㚬/㲝/㺴/ಫ;Landroid/view/View;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView$ᓭ;Z)I

    move-result p1

    return p1
.end method

.method public final ᨁ(Landroidx/recyclerview/widget/RecyclerView$㢏;Landroidx/recyclerview/widget/RecyclerView$ಋ;Landroidx/recyclerview/widget/LinearLayoutManager$உ;)Z
    .locals 4

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$ᓭ;->ർ()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$ᓭ;->ᣝ()Landroid/view/View;

    move-result-object v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {p3, v0, p2}, Landroidx/recyclerview/widget/LinearLayoutManager$உ;->㺴(Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView$ಋ;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$ᓭ;->䋡(Landroid/view/View;)I

    move-result p1

    invoke-virtual {p3, v0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager$உ;->㚬(Landroid/view/View;I)V

    return v2

    :cond_1
    iget-boolean v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->㢏:Z

    iget-boolean v3, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->ㄬ:Z

    if-eq v0, v3, :cond_2

    return v1

    :cond_2
    iget-boolean v0, p3, Landroidx/recyclerview/widget/LinearLayoutManager$உ;->㺴:Z

    if-eqz v0, :cond_3

    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->ނ(Landroidx/recyclerview/widget/RecyclerView$㢏;Landroidx/recyclerview/widget/RecyclerView$ಋ;)Landroid/view/View;

    move-result-object p1

    goto :goto_0

    :cond_3
    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->ਣ(Landroidx/recyclerview/widget/RecyclerView$㢏;Landroidx/recyclerview/widget/RecyclerView$ಋ;)Landroid/view/View;

    move-result-object p1

    :goto_0
    if-eqz p1, :cond_8

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ᓭ;->䋡(Landroid/view/View;)I

    move-result v0

    invoke-virtual {p3, p1, v0}, Landroidx/recyclerview/widget/LinearLayoutManager$உ;->䂻(Landroid/view/View;I)V

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$ಋ;->ḓ()Z

    move-result p2

    if-nez p2, :cond_7

    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->ڪ()Z

    move-result p2

    if-eqz p2, :cond_7

    iget-object p2, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->㖪:L㚬/㲝/㺴/ಫ;

    invoke-virtual {p2, p1}, L㚬/㲝/㺴/ಫ;->ᆻ(Landroid/view/View;)I

    move-result p2

    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->㖪:L㚬/㲝/㺴/ಫ;

    invoke-virtual {v0}, L㚬/㲝/㺴/ಫ;->ㄏ()I

    move-result v0

    if-ge p2, v0, :cond_4

    iget-object p2, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->㖪:L㚬/㲝/㺴/ಫ;

    invoke-virtual {p2, p1}, L㚬/㲝/㺴/ಫ;->㺴(Landroid/view/View;)I

    move-result p1

    iget-object p2, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->㖪:L㚬/㲝/㺴/ಫ;

    invoke-virtual {p2}, L㚬/㲝/㺴/ಫ;->ἥ()I

    move-result p2

    if-ge p1, p2, :cond_5

    :cond_4
    const/4 v1, 0x1

    :cond_5
    if-eqz v1, :cond_7

    iget-boolean p1, p3, Landroidx/recyclerview/widget/LinearLayoutManager$உ;->㺴:Z

    if-eqz p1, :cond_6

    iget-object p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->㖪:L㚬/㲝/㺴/ಫ;

    invoke-virtual {p1}, L㚬/㲝/㺴/ಫ;->ㄏ()I

    move-result p1

    goto :goto_1

    :cond_6
    iget-object p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->㖪:L㚬/㲝/㺴/ಫ;

    invoke-virtual {p1}, L㚬/㲝/㺴/ಫ;->ἥ()I

    move-result p1

    :goto_1
    iput p1, p3, Landroidx/recyclerview/widget/LinearLayoutManager$உ;->㚬:I

    :cond_7
    return v2

    :cond_8
    return v1
.end method

.method public final ᯉ(Landroidx/recyclerview/widget/LinearLayoutManager$உ;)V
    .locals 1

    iget v0, p1, Landroidx/recyclerview/widget/LinearLayoutManager$உ;->䂻:I

    iget p1, p1, Landroidx/recyclerview/widget/LinearLayoutManager$உ;->㚬:I

    invoke-virtual {p0, v0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->ፄ(II)V

    return-void
.end method

.method public ᯕ()Z
    .locals 2

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$ᓭ;->ᣑ()I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$ᓭ;->ϣ()I

    move-result v0

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$ᓭ;->ᨧ()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final ᵐ(Landroidx/recyclerview/widget/RecyclerView$㢏;Landroidx/recyclerview/widget/RecyclerView$ಋ;)Landroid/view/View;
    .locals 7

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$ᓭ;->ർ()I

    move-result v0

    add-int/lit8 v4, v0, -0x1

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$ಋ;->䂻()I

    move-result v6

    const/4 v5, -0x1

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-virtual/range {v1 .. v6}, Landroidx/recyclerview/widget/LinearLayoutManager;->ѝ(Landroidx/recyclerview/widget/RecyclerView$㢏;Landroidx/recyclerview/widget/RecyclerView$ಋ;III)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public final ᵹ(Landroidx/recyclerview/widget/RecyclerView$㢏;II)V
    .locals 4

    if-gez p2, :cond_0

    return-void

    :cond_0
    sub-int/2addr p2, p3

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$ᓭ;->ർ()I

    move-result p3

    iget-boolean v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->㲧:Z

    if-eqz v0, :cond_3

    add-int/lit8 p3, p3, -0x1

    move v0, p3

    :goto_0
    if-ltz v0, :cond_6

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$ᓭ;->㥁(I)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->㖪:L㚬/㲝/㺴/ಫ;

    invoke-virtual {v2, v1}, L㚬/㲝/㺴/ಫ;->㺴(Landroid/view/View;)I

    move-result v2

    if-gt v2, p2, :cond_2

    iget-object v2, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->㖪:L㚬/㲝/㺴/ಫ;

    invoke-virtual {v2, v1}, L㚬/㲝/㺴/ಫ;->ბ(Landroid/view/View;)I

    move-result v1

    if-le v1, p2, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    :goto_1
    invoke-virtual {p0, p1, p3, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->ḑ(Landroidx/recyclerview/widget/RecyclerView$㢏;II)V

    return-void

    :cond_3
    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_2
    if-ge v1, p3, :cond_6

    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/RecyclerView$ᓭ;->㥁(I)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->㖪:L㚬/㲝/㺴/ಫ;

    invoke-virtual {v3, v2}, L㚬/㲝/㺴/ಫ;->㺴(Landroid/view/View;)I

    move-result v3

    if-gt v3, p2, :cond_5

    iget-object v3, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->㖪:L㚬/㲝/㺴/ಫ;

    invoke-virtual {v3, v2}, L㚬/㲝/㺴/ಫ;->ბ(Landroid/view/View;)I

    move-result v2

    if-le v2, p2, :cond_4

    goto :goto_3

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_5
    :goto_3
    invoke-virtual {p0, p1, v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->ḑ(Landroidx/recyclerview/widget/RecyclerView$㢏;II)V

    :cond_6
    return-void
.end method

.method public final ḑ(Landroidx/recyclerview/widget/RecyclerView$㢏;II)V
    .locals 0

    if-ne p2, p3, :cond_0

    return-void

    :cond_0
    if-le p3, p2, :cond_1

    add-int/lit8 p3, p3, -0x1

    :goto_0
    if-lt p3, p2, :cond_2

    invoke-virtual {p0, p3, p1}, Landroidx/recyclerview/widget/RecyclerView$ᓭ;->ཌྷ(ILandroidx/recyclerview/widget/RecyclerView$㢏;)V

    add-int/lit8 p3, p3, -0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-le p2, p3, :cond_2

    invoke-virtual {p0, p2, p1}, Landroidx/recyclerview/widget/RecyclerView$ᓭ;->ཌྷ(ILandroidx/recyclerview/widget/RecyclerView$㢏;)V

    add-int/lit8 p2, p2, -0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method public ḙ(Landroidx/recyclerview/widget/RecyclerView$ಋ;)I
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->ᤍ(Landroidx/recyclerview/widget/RecyclerView$ಋ;)I

    move-result p1

    return p1
.end method

.method public Ḣ()Z
    .locals 1

    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->㖪:L㚬/㲝/㺴/ಫ;

    invoke-virtual {v0}, L㚬/㲝/㺴/ಫ;->㧦()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->㖪:L㚬/㲝/㺴/ಫ;

    invoke-virtual {v0}, L㚬/㲝/㺴/ಫ;->ℓ()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public Ẉ(Landroidx/recyclerview/widget/RecyclerView$㢏;Landroidx/recyclerview/widget/RecyclerView$ಋ;Landroidx/recyclerview/widget/LinearLayoutManager$㚬;Landroidx/recyclerview/widget/LinearLayoutManager$䂻;)V
    .locals 7

    invoke-virtual {p3, p1}, Landroidx/recyclerview/widget/LinearLayoutManager$㚬;->㺴(Landroidx/recyclerview/widget/RecyclerView$㢏;)Landroid/view/View;

    move-result-object p1

    const/4 p2, 0x1

    if-nez p1, :cond_0

    iput-boolean p2, p4, Landroidx/recyclerview/widget/LinearLayoutManager$䂻;->䂻:Z

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroidx/recyclerview/widget/RecyclerView$ბ;

    iget-object v0, p3, Landroidx/recyclerview/widget/LinearLayoutManager$㚬;->㹖:Ljava/util/List;

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-nez v0, :cond_3

    iget-boolean v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->㲧:Z

    iget v3, p3, Landroidx/recyclerview/widget/LinearLayoutManager$㚬;->䆀:I

    if-ne v3, v1, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    if-ne v0, v3, :cond_2

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ᓭ;->㺴(Landroid/view/View;)V

    goto :goto_2

    :cond_2
    invoke-virtual {p0, p1, v2}, Landroidx/recyclerview/widget/RecyclerView$ᓭ;->ḓ(Landroid/view/View;I)V

    goto :goto_2

    :cond_3
    iget-boolean v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->㲧:Z

    iget v3, p3, Landroidx/recyclerview/widget/LinearLayoutManager$㚬;->䆀:I

    if-ne v3, v1, :cond_4

    const/4 v3, 0x1

    goto :goto_1

    :cond_4
    const/4 v3, 0x0

    :goto_1
    if-ne v0, v3, :cond_5

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ᓭ;->䂻(Landroid/view/View;)V

    goto :goto_2

    :cond_5
    invoke-virtual {p0, p1, v2}, Landroidx/recyclerview/widget/RecyclerView$ᓭ;->㚬(Landroid/view/View;I)V

    :goto_2
    invoke-virtual {p0, p1, v2, v2}, Landroidx/recyclerview/widget/RecyclerView$ᓭ;->ᓟ(Landroid/view/View;II)V

    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->㖪:L㚬/㲝/㺴/ಫ;

    invoke-virtual {v0, p1}, L㚬/㲝/㺴/ಫ;->ḓ(Landroid/view/View;)I

    move-result v0

    iput v0, p4, Landroidx/recyclerview/widget/LinearLayoutManager$䂻;->உ:I

    iget v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->㭲:I

    if-ne v0, p2, :cond_8

    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->ᡳ()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$ᓭ;->ᗼ()I

    move-result v0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$ᓭ;->Ᏼ()I

    move-result v2

    sub-int/2addr v0, v2

    iget-object v2, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->㖪:L㚬/㲝/㺴/ಫ;

    invoke-virtual {v2, p1}, L㚬/㲝/㺴/ಫ;->䆀(Landroid/view/View;)I

    move-result v2

    sub-int v2, v0, v2

    goto :goto_3

    :cond_6
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$ᓭ;->ග()I

    move-result v2

    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->㖪:L㚬/㲝/㺴/ಫ;

    invoke-virtual {v0, p1}, L㚬/㲝/㺴/ಫ;->䆀(Landroid/view/View;)I

    move-result v0

    add-int/2addr v0, v2

    :goto_3
    iget v3, p3, Landroidx/recyclerview/widget/LinearLayoutManager$㚬;->䆀:I

    iget p3, p3, Landroidx/recyclerview/widget/LinearLayoutManager$㚬;->䂻:I

    if-ne v3, v1, :cond_7

    iget v1, p4, Landroidx/recyclerview/widget/LinearLayoutManager$䂻;->உ:I

    sub-int v1, p3, v1

    move v5, p3

    move v4, v0

    move v3, v1

    goto :goto_4

    :cond_7
    iget v1, p4, Landroidx/recyclerview/widget/LinearLayoutManager$䂻;->உ:I

    add-int/2addr v1, p3

    move v3, p3

    move v4, v0

    move v5, v1

    goto :goto_4

    :cond_8
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$ᓭ;->㠭()I

    move-result v0

    iget-object v2, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->㖪:L㚬/㲝/㺴/ಫ;

    invoke-virtual {v2, p1}, L㚬/㲝/㺴/ಫ;->䆀(Landroid/view/View;)I

    move-result v2

    add-int/2addr v2, v0

    iget v3, p3, Landroidx/recyclerview/widget/LinearLayoutManager$㚬;->䆀:I

    iget p3, p3, Landroidx/recyclerview/widget/LinearLayoutManager$㚬;->䂻:I

    if-ne v3, v1, :cond_9

    iget v1, p4, Landroidx/recyclerview/widget/LinearLayoutManager$䂻;->உ:I

    sub-int v1, p3, v1

    move v4, p3

    move v3, v0

    move v5, v2

    move v2, v1

    goto :goto_4

    :cond_9
    iget v1, p4, Landroidx/recyclerview/widget/LinearLayoutManager$䂻;->உ:I

    add-int/2addr v1, p3

    move v3, v0

    move v4, v1

    move v5, v2

    move v2, p3

    :goto_4
    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroidx/recyclerview/widget/RecyclerView$ᓭ;->㴩(Landroid/view/View;IIII)V

    invoke-virtual {v6}, Landroidx/recyclerview/widget/RecyclerView$ბ;->㚬()Z

    move-result p3

    if-nez p3, :cond_a

    invoke-virtual {v6}, Landroidx/recyclerview/widget/RecyclerView$ბ;->䂻()Z

    move-result p3

    if-eqz p3, :cond_b

    :cond_a
    iput-boolean p2, p4, Landroidx/recyclerview/widget/LinearLayoutManager$䂻;->㚬:Z

    :cond_b
    invoke-virtual {p1}, Landroid/view/View;->hasFocusable()Z

    move-result p1

    iput-boolean p1, p4, Landroidx/recyclerview/widget/LinearLayoutManager$䂻;->㺴:Z

    return-void
.end method

.method public ℭ(Z)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->ᆻ(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->ม:Z

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->ม:Z

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$ᓭ;->ᐶ()V

    return-void
.end method

.method public Ⱉ(II)Landroid/view/View;
    .locals 3

    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->㒱()V

    if-le p2, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    if-ge p2, p1, :cond_1

    const/4 v0, -0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_2

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ᓭ;->㥁(I)Landroid/view/View;

    move-result-object p1

    return-object p1

    :cond_2
    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->㖪:L㚬/㲝/㺴/ಫ;

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ᓭ;->㥁(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, L㚬/㲝/㺴/ಫ;->ᆻ(Landroid/view/View;)I

    move-result v0

    iget-object v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->㖪:L㚬/㲝/㺴/ಫ;

    invoke-virtual {v1}, L㚬/㲝/㺴/ಫ;->ἥ()I

    move-result v1

    if-ge v0, v1, :cond_3

    const/16 v0, 0x4104

    const/16 v1, 0x4004

    goto :goto_1

    :cond_3
    const/16 v0, 0x1041

    const/16 v1, 0x1001

    :goto_1
    iget v2, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->㭲:I

    if-nez v2, :cond_4

    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView$ᓭ;->ḓ:L㚬/㲝/㺴/ᓭ;

    goto :goto_2

    :cond_4
    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView$ᓭ;->䆀:L㚬/㲝/㺴/ᓭ;

    :goto_2
    invoke-virtual {v2, p1, p2, v0, v1}, L㚬/㲝/㺴/ᓭ;->உ(IIII)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public final Ⳟ(Landroidx/recyclerview/widget/RecyclerView$ಋ;)I
    .locals 6

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$ᓭ;->ർ()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->㒱()V

    iget-object v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->㖪:L㚬/㲝/㺴/ಫ;

    iget-boolean v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->㫏:Z

    const/4 v2, 0x1

    xor-int/2addr v0, v2

    invoke-virtual {p0, v0, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->㐇(ZZ)Landroid/view/View;

    move-result-object v3

    iget-boolean v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->㫏:Z

    xor-int/2addr v0, v2

    invoke-virtual {p0, v0, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->ਚ(ZZ)Landroid/view/View;

    move-result-object v4

    iget-boolean v5, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->㫏:Z

    move-object v0, p1

    move-object v2, v3

    move-object v3, v4

    move-object v4, p0

    invoke-static/range {v0 .. v5}, L㚬/㲝/㺴/㹖;->㚬(Landroidx/recyclerview/widget/RecyclerView$ಋ;L㚬/㲝/㺴/ಫ;Landroid/view/View;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView$ᓭ;Z)I

    move-result p1

    return p1
.end method

.method public final ⶶ(Landroidx/recyclerview/widget/LinearLayoutManager$உ;)V
    .locals 1

    iget v0, p1, Landroidx/recyclerview/widget/LinearLayoutManager$உ;->䂻:I

    iget p1, p1, Landroidx/recyclerview/widget/LinearLayoutManager$உ;->㚬:I

    invoke-virtual {p0, v0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->㳖(II)V

    return-void
.end method

.method public 㐇(ZZ)Landroid/view/View;
    .locals 2

    iget-boolean v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->㲧:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$ᓭ;->ർ()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, -0x1

    :goto_0
    invoke-virtual {p0, v0, v1, p1, p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->㗁(IIZZ)Landroid/view/View;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$ᓭ;->ർ()I

    move-result v1

    goto :goto_0
.end method

.method public 㐱(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ᓭ;->㐱(Landroid/view/accessibility/AccessibilityEvent;)V

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$ᓭ;->ർ()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->წ()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setFromIndex(I)V

    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->വ()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setToIndex(I)V

    :cond_0
    return-void
.end method

.method public 㒱()V
    .locals 1

    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->ḙ:Landroidx/recyclerview/widget/LinearLayoutManager$㚬;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->㳗()Landroidx/recyclerview/widget/LinearLayoutManager$㚬;

    move-result-object v0

    iput-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->ḙ:Landroidx/recyclerview/widget/LinearLayoutManager$㚬;

    :cond_0
    return-void
.end method

.method public 㒶(Landroidx/recyclerview/widget/RecyclerView$ಋ;)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ᓭ;->㒶(Landroidx/recyclerview/widget/RecyclerView$ಋ;)V

    const/4 p1, 0x0

    iput-object p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->㰫:Landroidx/recyclerview/widget/LinearLayoutManager$㺴;

    const/4 p1, -0x1

    iput p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->ಋ:I

    const/high16 p1, -0x80000000

    iput p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->ᾦ:I

    iget-object p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->ש:Landroidx/recyclerview/widget/LinearLayoutManager$உ;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/LinearLayoutManager$உ;->ḓ()V

    return-void
.end method

.method public final 㒺(ILandroidx/recyclerview/widget/RecyclerView$㢏;Landroidx/recyclerview/widget/RecyclerView$ಋ;Z)I
    .locals 1

    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->㖪:L㚬/㲝/㺴/ಫ;

    invoke-virtual {v0}, L㚬/㲝/㺴/ಫ;->ἥ()I

    move-result v0

    sub-int v0, p1, v0

    if-lez v0, :cond_1

    invoke-virtual {p0, v0, p2, p3}, Landroidx/recyclerview/widget/LinearLayoutManager;->㷵(ILandroidx/recyclerview/widget/RecyclerView$㢏;Landroidx/recyclerview/widget/RecyclerView$ಋ;)I

    move-result p2

    neg-int p2, p2

    add-int/2addr p1, p2

    if-eqz p4, :cond_0

    iget-object p3, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->㖪:L㚬/㲝/㺴/ಫ;

    invoke-virtual {p3}, L㚬/㲝/㺴/ಫ;->ἥ()I

    move-result p3

    sub-int/2addr p1, p3

    if-lez p1, :cond_0

    iget-object p3, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->㖪:L㚬/㲝/㺴/ಫ;

    neg-int p4, p1

    invoke-virtual {p3, p4}, L㚬/㲝/㺴/ಫ;->㞘(I)V

    sub-int/2addr p2, p1

    :cond_0
    return p2

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public 㖪(Landroidx/recyclerview/widget/RecyclerView$ಋ;)I
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->㪦(Landroidx/recyclerview/widget/RecyclerView$ಋ;)I

    move-result p1

    return p1
.end method

.method public 㗁(IIZZ)Landroid/view/View;
    .locals 1

    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->㒱()V

    const/16 v0, 0x140

    if-eqz p3, :cond_0

    const/16 p3, 0x6003

    goto :goto_0

    :cond_0
    const/16 p3, 0x140

    :goto_0
    if-eqz p4, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    iget p4, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->㭲:I

    if-nez p4, :cond_2

    iget-object p4, p0, Landroidx/recyclerview/widget/RecyclerView$ᓭ;->ḓ:L㚬/㲝/㺴/ᓭ;

    goto :goto_2

    :cond_2
    iget-object p4, p0, Landroidx/recyclerview/widget/RecyclerView$ᓭ;->䆀:L㚬/㲝/㺴/ᓭ;

    :goto_2
    invoke-virtual {p4, p1, p2, p3, v0}, L㚬/㲝/㺴/ᓭ;->உ(IIII)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public final 㜷(Landroidx/recyclerview/widget/RecyclerView$㢏;Landroidx/recyclerview/widget/RecyclerView$ಋ;Landroidx/recyclerview/widget/LinearLayoutManager$உ;)V
    .locals 1

    invoke-virtual {p0, p2, p3}, Landroidx/recyclerview/widget/LinearLayoutManager;->ᐇ(Landroidx/recyclerview/widget/RecyclerView$ಋ;Landroidx/recyclerview/widget/LinearLayoutManager$உ;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Landroidx/recyclerview/widget/LinearLayoutManager;->ᨁ(Landroidx/recyclerview/widget/RecyclerView$㢏;Landroidx/recyclerview/widget/RecyclerView$ಋ;Landroidx/recyclerview/widget/LinearLayoutManager$உ;)Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    :cond_1
    invoke-virtual {p3}, Landroidx/recyclerview/widget/LinearLayoutManager$உ;->உ()V

    iget-boolean p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->ㄬ:Z

    if-eqz p1, :cond_2

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$ಋ;->䂻()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    iput p1, p3, Landroidx/recyclerview/widget/LinearLayoutManager$உ;->䂻:I

    return-void
.end method

.method public 㞘(Landroidx/recyclerview/widget/RecyclerView$ಋ;)I
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->㪦(Landroidx/recyclerview/widget/RecyclerView$ಋ;)I

    move-result p1

    return p1
.end method

.method public final 㞜()Landroid/view/View;
    .locals 1

    iget-boolean v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->㲧:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$ᓭ;->ർ()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$ᓭ;->㥁(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public 㠯(Landroidx/recyclerview/widget/RecyclerView$㢏;Landroidx/recyclerview/widget/LinearLayoutManager$㚬;Landroidx/recyclerview/widget/RecyclerView$ಋ;Z)I
    .locals 7

    iget v0, p2, Landroidx/recyclerview/widget/LinearLayoutManager$㚬;->㚬:I

    iget v1, p2, Landroidx/recyclerview/widget/LinearLayoutManager$㚬;->ᆻ:I

    const/high16 v2, -0x80000000

    if-eq v1, v2, :cond_1

    if-gez v0, :cond_0

    add-int/2addr v1, v0

    iput v1, p2, Landroidx/recyclerview/widget/LinearLayoutManager$㚬;->ᆻ:I

    :cond_0
    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->䃆(Landroidx/recyclerview/widget/RecyclerView$㢏;Landroidx/recyclerview/widget/LinearLayoutManager$㚬;)V

    :cond_1
    iget v1, p2, Landroidx/recyclerview/widget/LinearLayoutManager$㚬;->㚬:I

    iget v3, p2, Landroidx/recyclerview/widget/LinearLayoutManager$㚬;->ℓ:I

    add-int/2addr v1, v3

    iget-object v3, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->㨃:Landroidx/recyclerview/widget/LinearLayoutManager$䂻;

    :cond_2
    iget-boolean v4, p2, Landroidx/recyclerview/widget/LinearLayoutManager$㚬;->ἥ:Z

    if-nez v4, :cond_3

    if-lez v1, :cond_9

    :cond_3
    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/LinearLayoutManager$㚬;->㚬(Landroidx/recyclerview/widget/RecyclerView$ಋ;)Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-virtual {v3}, Landroidx/recyclerview/widget/LinearLayoutManager$䂻;->உ()V

    invoke-virtual {p0, p1, p3, p2, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;->Ẉ(Landroidx/recyclerview/widget/RecyclerView$㢏;Landroidx/recyclerview/widget/RecyclerView$ಋ;Landroidx/recyclerview/widget/LinearLayoutManager$㚬;Landroidx/recyclerview/widget/LinearLayoutManager$䂻;)V

    iget-boolean v4, v3, Landroidx/recyclerview/widget/LinearLayoutManager$䂻;->䂻:Z

    if-eqz v4, :cond_4

    goto :goto_0

    :cond_4
    iget v4, p2, Landroidx/recyclerview/widget/LinearLayoutManager$㚬;->䂻:I

    iget v5, v3, Landroidx/recyclerview/widget/LinearLayoutManager$䂻;->உ:I

    iget v6, p2, Landroidx/recyclerview/widget/LinearLayoutManager$㚬;->䆀:I

    mul-int v5, v5, v6

    add-int/2addr v4, v5

    iput v4, p2, Landroidx/recyclerview/widget/LinearLayoutManager$㚬;->䂻:I

    iget-boolean v4, v3, Landroidx/recyclerview/widget/LinearLayoutManager$䂻;->㚬:Z

    if-eqz v4, :cond_5

    iget-object v4, p2, Landroidx/recyclerview/widget/LinearLayoutManager$㚬;->㹖:Ljava/util/List;

    if-nez v4, :cond_5

    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView$ಋ;->ḓ()Z

    move-result v4

    if-nez v4, :cond_6

    :cond_5
    iget v4, p2, Landroidx/recyclerview/widget/LinearLayoutManager$㚬;->㚬:I

    iget v5, v3, Landroidx/recyclerview/widget/LinearLayoutManager$䂻;->உ:I

    sub-int/2addr v4, v5

    iput v4, p2, Landroidx/recyclerview/widget/LinearLayoutManager$㚬;->㚬:I

    sub-int/2addr v1, v5

    :cond_6
    iget v4, p2, Landroidx/recyclerview/widget/LinearLayoutManager$㚬;->ᆻ:I

    if-eq v4, v2, :cond_8

    iget v5, v3, Landroidx/recyclerview/widget/LinearLayoutManager$䂻;->உ:I

    add-int/2addr v4, v5

    iput v4, p2, Landroidx/recyclerview/widget/LinearLayoutManager$㚬;->ᆻ:I

    iget v5, p2, Landroidx/recyclerview/widget/LinearLayoutManager$㚬;->㚬:I

    if-gez v5, :cond_7

    add-int/2addr v4, v5

    iput v4, p2, Landroidx/recyclerview/widget/LinearLayoutManager$㚬;->ᆻ:I

    :cond_7
    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->䃆(Landroidx/recyclerview/widget/RecyclerView$㢏;Landroidx/recyclerview/widget/LinearLayoutManager$㚬;)V

    :cond_8
    if-eqz p4, :cond_2

    iget-boolean v4, v3, Landroidx/recyclerview/widget/LinearLayoutManager$䂻;->㺴:Z

    if-eqz v4, :cond_2

    :cond_9
    :goto_0
    iget p1, p2, Landroidx/recyclerview/widget/LinearLayoutManager$㚬;->㚬:I

    sub-int/2addr v0, p1

    return v0
.end method

.method public 㢏(Landroidx/recyclerview/widget/RecyclerView$ಋ;)I
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->Ⳟ(Landroidx/recyclerview/widget/RecyclerView$ಋ;)I

    move-result p1

    return p1
.end method

.method public 㦄(Landroid/view/View;ILandroidx/recyclerview/widget/RecyclerView$㢏;Landroidx/recyclerview/widget/RecyclerView$ಋ;)Landroid/view/View;
    .locals 3

    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->㦗()V

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$ᓭ;->ർ()I

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->ә(I)I

    move-result p1

    const/high16 p2, -0x80000000

    if-ne p1, p2, :cond_1

    return-object v0

    :cond_1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->㒱()V

    const v1, 0x3eaaaaab

    iget-object v2, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->㖪:L㚬/㲝/㺴/ಫ;

    invoke-virtual {v2}, L㚬/㲝/㺴/ಫ;->ཇ()I

    move-result v2

    int-to-float v2, v2

    mul-float v2, v2, v1

    float-to-int v1, v2

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v1, v2, p4}, Landroidx/recyclerview/widget/LinearLayoutManager;->ᅚ(IIZLandroidx/recyclerview/widget/RecyclerView$ಋ;)V

    iget-object v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->ḙ:Landroidx/recyclerview/widget/LinearLayoutManager$㚬;

    iput p2, v1, Landroidx/recyclerview/widget/LinearLayoutManager$㚬;->ᆻ:I

    iput-boolean v2, v1, Landroidx/recyclerview/widget/LinearLayoutManager$㚬;->உ:Z

    const/4 p2, 0x1

    invoke-virtual {p0, p3, v1, p4, p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->㠯(Landroidx/recyclerview/widget/RecyclerView$㢏;Landroidx/recyclerview/widget/LinearLayoutManager$㚬;Landroidx/recyclerview/widget/RecyclerView$ಋ;Z)I

    const/4 p2, -0x1

    if-ne p1, p2, :cond_2

    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->ᓇ()Landroid/view/View;

    move-result-object p3

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->㯇()Landroid/view/View;

    move-result-object p3

    :goto_0
    if-ne p1, p2, :cond_3

    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->㞜()Landroid/view/View;

    move-result-object p1

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->㭭()Landroid/view/View;

    move-result-object p1

    :goto_1
    invoke-virtual {p1}, Landroid/view/View;->hasFocusable()Z

    move-result p2

    if-eqz p2, :cond_5

    if-nez p3, :cond_4

    return-object v0

    :cond_4
    return-object p1

    :cond_5
    return-object p3
.end method

.method public final 㦗()V
    .locals 2

    iget v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->㭲:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->ᡳ()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->ม:Z

    xor-int/2addr v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    iget-boolean v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->ม:Z

    :goto_1
    iput-boolean v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->㲧:Z

    return-void
.end method

.method public final 㧚()Landroid/view/View;
    .locals 2

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$ᓭ;->ർ()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->Ⱉ(II)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public 㧦()Z
    .locals 1

    iget v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->㭲:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final 㩇(ILandroidx/recyclerview/widget/RecyclerView$㢏;Landroidx/recyclerview/widget/RecyclerView$ಋ;Z)I
    .locals 1

    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->㖪:L㚬/㲝/㺴/ಫ;

    invoke-virtual {v0}, L㚬/㲝/㺴/ಫ;->ㄏ()I

    move-result v0

    sub-int/2addr v0, p1

    if-lez v0, :cond_1

    neg-int v0, v0

    invoke-virtual {p0, v0, p2, p3}, Landroidx/recyclerview/widget/LinearLayoutManager;->㷵(ILandroidx/recyclerview/widget/RecyclerView$㢏;Landroidx/recyclerview/widget/RecyclerView$ಋ;)I

    move-result p2

    neg-int p2, p2

    add-int/2addr p1, p2

    if-eqz p4, :cond_0

    iget-object p3, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->㖪:L㚬/㲝/㺴/ಫ;

    invoke-virtual {p3}, L㚬/㲝/㺴/ಫ;->ㄏ()I

    move-result p3

    sub-int/2addr p3, p1

    if-lez p3, :cond_0

    iget-object p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->㖪:L㚬/㲝/㺴/ಫ;

    invoke-virtual {p1, p3}, L㚬/㲝/㺴/ಫ;->㞘(I)V

    add-int/2addr p3, p2

    return p3

    :cond_0
    return p2

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public final 㪦(Landroidx/recyclerview/widget/RecyclerView$ಋ;)I
    .locals 7

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$ᓭ;->ർ()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->㒱()V

    iget-object v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->㖪:L㚬/㲝/㺴/ಫ;

    iget-boolean v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->㫏:Z

    const/4 v2, 0x1

    xor-int/2addr v0, v2

    invoke-virtual {p0, v0, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->㐇(ZZ)Landroid/view/View;

    move-result-object v3

    iget-boolean v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->㫏:Z

    xor-int/2addr v0, v2

    invoke-virtual {p0, v0, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->ਚ(ZZ)Landroid/view/View;

    move-result-object v4

    iget-boolean v5, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->㫏:Z

    iget-boolean v6, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->㲧:Z

    move-object v0, p1

    move-object v2, v3

    move-object v3, v4

    move-object v4, p0

    invoke-static/range {v0 .. v6}, L㚬/㲝/㺴/㹖;->䂻(Landroidx/recyclerview/widget/RecyclerView$ಋ;L㚬/㲝/㺴/ಫ;Landroid/view/View;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView$ᓭ;ZZ)I

    move-result p1

    return p1
.end method

.method public final 㭭()Landroid/view/View;
    .locals 1

    iget-boolean v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->㲧:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$ᓭ;->ർ()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$ᓭ;->㥁(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public 㭲(Landroidx/recyclerview/widget/RecyclerView$ಋ;)I
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->Ⳟ(Landroidx/recyclerview/widget/RecyclerView$ಋ;)I

    move-result p1

    return p1
.end method

.method public final 㯇()Landroid/view/View;
    .locals 1

    iget-boolean v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->㲧:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->㧚()Landroid/view/View;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->ܙ()Landroid/view/View;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public 㰫()Landroidx/recyclerview/widget/RecyclerView$ბ;
    .locals 2

    new-instance v0, Landroidx/recyclerview/widget/RecyclerView$ბ;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroidx/recyclerview/widget/RecyclerView$ბ;-><init>(II)V

    return-object v0
.end method

.method public 㲝(Landroidx/recyclerview/widget/RecyclerView$ಋ;)I
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->ᤍ(Landroidx/recyclerview/widget/RecyclerView$ಋ;)I

    move-result p1

    return p1
.end method

.method public 㲲()I
    .locals 1

    iget v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->㭲:I

    return v0
.end method

.method public 㲶(Landroidx/recyclerview/widget/RecyclerView$㢏;Landroidx/recyclerview/widget/RecyclerView$ಋ;)V
    .locals 8

    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->㰫:Landroidx/recyclerview/widget/LinearLayoutManager$㺴;

    const/4 v1, -0x1

    if-nez v0, :cond_0

    iget v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->ಋ:I

    if-eq v0, v1, :cond_1

    :cond_0
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$ಋ;->䂻()I

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ᓭ;->㗽(Landroidx/recyclerview/widget/RecyclerView$㢏;)V

    return-void

    :cond_1
    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->㰫:Landroidx/recyclerview/widget/LinearLayoutManager$㺴;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager$㺴;->ಫ()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->㰫:Landroidx/recyclerview/widget/LinearLayoutManager$㺴;

    iget v0, v0, Landroidx/recyclerview/widget/LinearLayoutManager$㺴;->䂻:I

    iput v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->ಋ:I

    :cond_2
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->㒱()V

    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->ḙ:Landroidx/recyclerview/widget/LinearLayoutManager$㚬;

    const/4 v2, 0x0

    iput-boolean v2, v0, Landroidx/recyclerview/widget/LinearLayoutManager$㚬;->உ:Z

    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->㦗()V

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$ᓭ;->ᣝ()Landroid/view/View;

    move-result-object v0

    iget-object v3, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->ש:Landroidx/recyclerview/widget/LinearLayoutManager$உ;

    iget-boolean v4, v3, Landroidx/recyclerview/widget/LinearLayoutManager$உ;->ḓ:Z

    const/4 v5, 0x1

    if-eqz v4, :cond_5

    iget v4, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->ಋ:I

    if-ne v4, v1, :cond_5

    iget-object v4, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->㰫:Landroidx/recyclerview/widget/LinearLayoutManager$㺴;

    if-eqz v4, :cond_3

    goto :goto_0

    :cond_3
    if-eqz v0, :cond_6

    iget-object v3, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->㖪:L㚬/㲝/㺴/ಫ;

    invoke-virtual {v3, v0}, L㚬/㲝/㺴/ಫ;->ᆻ(Landroid/view/View;)I

    move-result v3

    iget-object v4, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->㖪:L㚬/㲝/㺴/ಫ;

    invoke-virtual {v4}, L㚬/㲝/㺴/ಫ;->ㄏ()I

    move-result v4

    if-ge v3, v4, :cond_4

    iget-object v3, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->㖪:L㚬/㲝/㺴/ಫ;

    invoke-virtual {v3, v0}, L㚬/㲝/㺴/ಫ;->㺴(Landroid/view/View;)I

    move-result v3

    iget-object v4, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->㖪:L㚬/㲝/㺴/ಫ;

    invoke-virtual {v4}, L㚬/㲝/㺴/ಫ;->ἥ()I

    move-result v4

    if-gt v3, v4, :cond_6

    :cond_4
    iget-object v3, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->ש:Landroidx/recyclerview/widget/LinearLayoutManager$உ;

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$ᓭ;->䋡(Landroid/view/View;)I

    move-result v4

    invoke-virtual {v3, v0, v4}, Landroidx/recyclerview/widget/LinearLayoutManager$உ;->㚬(Landroid/view/View;I)V

    goto :goto_1

    :cond_5
    :goto_0
    invoke-virtual {v3}, Landroidx/recyclerview/widget/LinearLayoutManager$உ;->ḓ()V

    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->ש:Landroidx/recyclerview/widget/LinearLayoutManager$உ;

    iget-boolean v3, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->㲧:Z

    iget-boolean v4, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->ㄬ:Z

    xor-int/2addr v3, v4

    iput-boolean v3, v0, Landroidx/recyclerview/widget/LinearLayoutManager$உ;->㺴:Z

    invoke-virtual {p0, p1, p2, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->㜷(Landroidx/recyclerview/widget/RecyclerView$㢏;Landroidx/recyclerview/widget/RecyclerView$ಋ;Landroidx/recyclerview/widget/LinearLayoutManager$உ;)V

    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->ש:Landroidx/recyclerview/widget/LinearLayoutManager$உ;

    iput-boolean v5, v0, Landroidx/recyclerview/widget/LinearLayoutManager$உ;->ḓ:Z

    :cond_6
    :goto_1
    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->ḙ:Landroidx/recyclerview/widget/LinearLayoutManager$㚬;

    iget v3, v0, Landroidx/recyclerview/widget/LinearLayoutManager$㚬;->㧦:I

    if-ltz v3, :cond_7

    const/4 v3, 0x1

    goto :goto_2

    :cond_7
    const/4 v3, -0x1

    :goto_2
    iput v3, v0, Landroidx/recyclerview/widget/LinearLayoutManager$㚬;->䆀:I

    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->ᱹ:[I

    aput v2, v0, v2

    aput v2, v0, v5

    invoke-virtual {p0, p2, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->㸜(Landroidx/recyclerview/widget/RecyclerView$ಋ;[I)V

    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->ᱹ:[I

    aget v0, v0, v2

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget-object v3, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->㖪:L㚬/㲝/㺴/ಫ;

    invoke-virtual {v3}, L㚬/㲝/㺴/ಫ;->ἥ()I

    move-result v3

    add-int/2addr v0, v3

    iget-object v3, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->ᱹ:[I

    aget v3, v3, v5

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    iget-object v4, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->㖪:L㚬/㲝/㺴/ಫ;

    invoke-virtual {v4}, L㚬/㲝/㺴/ಫ;->ಫ()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$ಋ;->ḓ()Z

    move-result v4

    if-eqz v4, :cond_a

    iget v4, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->ಋ:I

    if-eq v4, v1, :cond_a

    iget v6, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->ᾦ:I

    const/high16 v7, -0x80000000

    if-eq v6, v7, :cond_a

    invoke-virtual {p0, v4}, Landroidx/recyclerview/widget/LinearLayoutManager;->ڈ(I)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_a

    iget-boolean v6, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->㲧:Z

    if-eqz v6, :cond_8

    iget-object v6, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->㖪:L㚬/㲝/㺴/ಫ;

    invoke-virtual {v6}, L㚬/㲝/㺴/ಫ;->ㄏ()I

    move-result v6

    iget-object v7, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->㖪:L㚬/㲝/㺴/ಫ;

    invoke-virtual {v7, v4}, L㚬/㲝/㺴/ಫ;->㺴(Landroid/view/View;)I

    move-result v4

    sub-int/2addr v6, v4

    iget v4, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->ᾦ:I

    goto :goto_3

    :cond_8
    iget-object v6, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->㖪:L㚬/㲝/㺴/ಫ;

    invoke-virtual {v6, v4}, L㚬/㲝/㺴/ಫ;->ᆻ(Landroid/view/View;)I

    move-result v4

    iget-object v6, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->㖪:L㚬/㲝/㺴/ಫ;

    invoke-virtual {v6}, L㚬/㲝/㺴/ಫ;->ἥ()I

    move-result v6

    sub-int/2addr v4, v6

    iget v6, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->ᾦ:I

    :goto_3
    sub-int/2addr v6, v4

    if-lez v6, :cond_9

    add-int/2addr v0, v6

    goto :goto_4

    :cond_9
    sub-int/2addr v3, v6

    :cond_a
    :goto_4
    iget-object v4, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->ש:Landroidx/recyclerview/widget/LinearLayoutManager$உ;

    iget-boolean v6, v4, Landroidx/recyclerview/widget/LinearLayoutManager$உ;->㺴:Z

    if-eqz v6, :cond_c

    iget-boolean v6, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->㲧:Z

    if-eqz v6, :cond_d

    :cond_b
    const/4 v1, 0x1

    goto :goto_5

    :cond_c
    iget-boolean v6, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->㲧:Z

    if-eqz v6, :cond_b

    :cond_d
    :goto_5
    invoke-virtual {p0, p1, p2, v4, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->ᓓ(Landroidx/recyclerview/widget/RecyclerView$㢏;Landroidx/recyclerview/widget/RecyclerView$ಋ;Landroidx/recyclerview/widget/LinearLayoutManager$உ;I)V

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ᓭ;->ม(Landroidx/recyclerview/widget/RecyclerView$㢏;)V

    iget-object v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->ḙ:Landroidx/recyclerview/widget/LinearLayoutManager$㚬;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->Ḣ()Z

    move-result v4

    iput-boolean v4, v1, Landroidx/recyclerview/widget/LinearLayoutManager$㚬;->ἥ:Z

    iget-object v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->ḙ:Landroidx/recyclerview/widget/LinearLayoutManager$㚬;

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$ಋ;->ḓ()Z

    move-result v4

    iput-boolean v4, v1, Landroidx/recyclerview/widget/LinearLayoutManager$㚬;->ಫ:Z

    iget-object v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->ḙ:Landroidx/recyclerview/widget/LinearLayoutManager$㚬;

    iput v2, v1, Landroidx/recyclerview/widget/LinearLayoutManager$㚬;->ㄏ:I

    iget-object v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->ש:Landroidx/recyclerview/widget/LinearLayoutManager$உ;

    iget-boolean v4, v1, Landroidx/recyclerview/widget/LinearLayoutManager$உ;->㺴:Z

    if-eqz v4, :cond_f

    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->ⶶ(Landroidx/recyclerview/widget/LinearLayoutManager$உ;)V

    iget-object v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->ḙ:Landroidx/recyclerview/widget/LinearLayoutManager$㚬;

    iput v0, v1, Landroidx/recyclerview/widget/LinearLayoutManager$㚬;->ℓ:I

    invoke-virtual {p0, p1, v1, p2, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->㠯(Landroidx/recyclerview/widget/RecyclerView$㢏;Landroidx/recyclerview/widget/LinearLayoutManager$㚬;Landroidx/recyclerview/widget/RecyclerView$ಋ;Z)I

    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->ḙ:Landroidx/recyclerview/widget/LinearLayoutManager$㚬;

    iget v1, v0, Landroidx/recyclerview/widget/LinearLayoutManager$㚬;->䂻:I

    iget v4, v0, Landroidx/recyclerview/widget/LinearLayoutManager$㚬;->㺴:I

    iget v0, v0, Landroidx/recyclerview/widget/LinearLayoutManager$㚬;->㚬:I

    if-lez v0, :cond_e

    add-int/2addr v3, v0

    :cond_e
    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->ש:Landroidx/recyclerview/widget/LinearLayoutManager$உ;

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->ᯉ(Landroidx/recyclerview/widget/LinearLayoutManager$உ;)V

    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->ḙ:Landroidx/recyclerview/widget/LinearLayoutManager$㚬;

    iput v3, v0, Landroidx/recyclerview/widget/LinearLayoutManager$㚬;->ℓ:I

    iget v3, v0, Landroidx/recyclerview/widget/LinearLayoutManager$㚬;->㺴:I

    iget v6, v0, Landroidx/recyclerview/widget/LinearLayoutManager$㚬;->ḓ:I

    add-int/2addr v3, v6

    iput v3, v0, Landroidx/recyclerview/widget/LinearLayoutManager$㚬;->㺴:I

    invoke-virtual {p0, p1, v0, p2, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->㠯(Landroidx/recyclerview/widget/RecyclerView$㢏;Landroidx/recyclerview/widget/LinearLayoutManager$㚬;Landroidx/recyclerview/widget/RecyclerView$ಋ;Z)I

    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->ḙ:Landroidx/recyclerview/widget/LinearLayoutManager$㚬;

    iget v3, v0, Landroidx/recyclerview/widget/LinearLayoutManager$㚬;->䂻:I

    iget v0, v0, Landroidx/recyclerview/widget/LinearLayoutManager$㚬;->㚬:I

    if-lez v0, :cond_11

    invoke-virtual {p0, v4, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->㳖(II)V

    iget-object v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->ḙ:Landroidx/recyclerview/widget/LinearLayoutManager$㚬;

    iput v0, v1, Landroidx/recyclerview/widget/LinearLayoutManager$㚬;->ℓ:I

    invoke-virtual {p0, p1, v1, p2, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->㠯(Landroidx/recyclerview/widget/RecyclerView$㢏;Landroidx/recyclerview/widget/LinearLayoutManager$㚬;Landroidx/recyclerview/widget/RecyclerView$ಋ;Z)I

    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->ḙ:Landroidx/recyclerview/widget/LinearLayoutManager$㚬;

    iget v1, v0, Landroidx/recyclerview/widget/LinearLayoutManager$㚬;->䂻:I

    goto :goto_6

    :cond_f
    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->ᯉ(Landroidx/recyclerview/widget/LinearLayoutManager$உ;)V

    iget-object v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->ḙ:Landroidx/recyclerview/widget/LinearLayoutManager$㚬;

    iput v3, v1, Landroidx/recyclerview/widget/LinearLayoutManager$㚬;->ℓ:I

    invoke-virtual {p0, p1, v1, p2, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->㠯(Landroidx/recyclerview/widget/RecyclerView$㢏;Landroidx/recyclerview/widget/LinearLayoutManager$㚬;Landroidx/recyclerview/widget/RecyclerView$ಋ;Z)I

    iget-object v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->ḙ:Landroidx/recyclerview/widget/LinearLayoutManager$㚬;

    iget v3, v1, Landroidx/recyclerview/widget/LinearLayoutManager$㚬;->䂻:I

    iget v4, v1, Landroidx/recyclerview/widget/LinearLayoutManager$㚬;->㺴:I

    iget v1, v1, Landroidx/recyclerview/widget/LinearLayoutManager$㚬;->㚬:I

    if-lez v1, :cond_10

    add-int/2addr v0, v1

    :cond_10
    iget-object v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->ש:Landroidx/recyclerview/widget/LinearLayoutManager$உ;

    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->ⶶ(Landroidx/recyclerview/widget/LinearLayoutManager$உ;)V

    iget-object v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->ḙ:Landroidx/recyclerview/widget/LinearLayoutManager$㚬;

    iput v0, v1, Landroidx/recyclerview/widget/LinearLayoutManager$㚬;->ℓ:I

    iget v0, v1, Landroidx/recyclerview/widget/LinearLayoutManager$㚬;->㺴:I

    iget v6, v1, Landroidx/recyclerview/widget/LinearLayoutManager$㚬;->ḓ:I

    add-int/2addr v0, v6

    iput v0, v1, Landroidx/recyclerview/widget/LinearLayoutManager$㚬;->㺴:I

    invoke-virtual {p0, p1, v1, p2, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->㠯(Landroidx/recyclerview/widget/RecyclerView$㢏;Landroidx/recyclerview/widget/LinearLayoutManager$㚬;Landroidx/recyclerview/widget/RecyclerView$ಋ;Z)I

    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->ḙ:Landroidx/recyclerview/widget/LinearLayoutManager$㚬;

    iget v1, v0, Landroidx/recyclerview/widget/LinearLayoutManager$㚬;->䂻:I

    iget v0, v0, Landroidx/recyclerview/widget/LinearLayoutManager$㚬;->㚬:I

    if-lez v0, :cond_11

    invoke-virtual {p0, v4, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;->ፄ(II)V

    iget-object v3, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->ḙ:Landroidx/recyclerview/widget/LinearLayoutManager$㚬;

    iput v0, v3, Landroidx/recyclerview/widget/LinearLayoutManager$㚬;->ℓ:I

    invoke-virtual {p0, p1, v3, p2, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->㠯(Landroidx/recyclerview/widget/RecyclerView$㢏;Landroidx/recyclerview/widget/LinearLayoutManager$㚬;Landroidx/recyclerview/widget/RecyclerView$ಋ;Z)I

    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->ḙ:Landroidx/recyclerview/widget/LinearLayoutManager$㚬;

    iget v3, v0, Landroidx/recyclerview/widget/LinearLayoutManager$㚬;->䂻:I

    :cond_11
    :goto_6
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$ᓭ;->ർ()I

    move-result v0

    if-lez v0, :cond_13

    iget-boolean v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->㲧:Z

    iget-boolean v4, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->ㄬ:Z

    xor-int/2addr v0, v4

    if-eqz v0, :cond_12

    invoke-virtual {p0, v3, p1, p2, v5}, Landroidx/recyclerview/widget/LinearLayoutManager;->㩇(ILandroidx/recyclerview/widget/RecyclerView$㢏;Landroidx/recyclerview/widget/RecyclerView$ಋ;Z)I

    move-result v0

    add-int/2addr v1, v0

    add-int/2addr v3, v0

    invoke-virtual {p0, v1, p1, p2, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->㒺(ILandroidx/recyclerview/widget/RecyclerView$㢏;Landroidx/recyclerview/widget/RecyclerView$ಋ;Z)I

    move-result v0

    goto :goto_7

    :cond_12
    invoke-virtual {p0, v1, p1, p2, v5}, Landroidx/recyclerview/widget/LinearLayoutManager;->㒺(ILandroidx/recyclerview/widget/RecyclerView$㢏;Landroidx/recyclerview/widget/RecyclerView$ಋ;Z)I

    move-result v0

    add-int/2addr v1, v0

    add-int/2addr v3, v0

    invoke-virtual {p0, v3, p1, p2, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->㩇(ILandroidx/recyclerview/widget/RecyclerView$㢏;Landroidx/recyclerview/widget/RecyclerView$ಋ;Z)I

    move-result v0

    :goto_7
    add-int/2addr v1, v0

    add-int/2addr v3, v0

    :cond_13
    invoke-virtual {p0, p1, p2, v1, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;->ඌ(Landroidx/recyclerview/widget/RecyclerView$㢏;Landroidx/recyclerview/widget/RecyclerView$ಋ;II)V

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$ಋ;->ḓ()Z

    move-result p1

    if-nez p1, :cond_14

    iget-object p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->㖪:L㚬/㲝/㺴/ಫ;

    invoke-virtual {p1}, L㚬/㲝/㺴/ಫ;->㭲()V

    goto :goto_8

    :cond_14
    iget-object p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->ש:Landroidx/recyclerview/widget/LinearLayoutManager$உ;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/LinearLayoutManager$உ;->ḓ()V

    :goto_8
    iget-boolean p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->ㄬ:Z

    iput-boolean p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->㢏:Z

    return-void
.end method

.method public final 㳖(II)V
    .locals 2

    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->ḙ:Landroidx/recyclerview/widget/LinearLayoutManager$㚬;

    iget-object v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->㖪:L㚬/㲝/㺴/ಫ;

    invoke-virtual {v1}, L㚬/㲝/㺴/ಫ;->ἥ()I

    move-result v1

    sub-int v1, p2, v1

    iput v1, v0, Landroidx/recyclerview/widget/LinearLayoutManager$㚬;->㚬:I

    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->ḙ:Landroidx/recyclerview/widget/LinearLayoutManager$㚬;

    iput p1, v0, Landroidx/recyclerview/widget/LinearLayoutManager$㚬;->㺴:I

    iget-boolean p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->㲧:Z

    const/4 v1, -0x1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    :goto_0
    iput p1, v0, Landroidx/recyclerview/widget/LinearLayoutManager$㚬;->ḓ:I

    iput v1, v0, Landroidx/recyclerview/widget/LinearLayoutManager$㚬;->䆀:I

    iput p2, v0, Landroidx/recyclerview/widget/LinearLayoutManager$㚬;->䂻:I

    const/high16 p1, -0x80000000

    iput p1, v0, Landroidx/recyclerview/widget/LinearLayoutManager$㚬;->ᆻ:I

    return-void
.end method

.method public 㳗()Landroidx/recyclerview/widget/LinearLayoutManager$㚬;
    .locals 1

    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager$㚬;

    invoke-direct {v0}, Landroidx/recyclerview/widget/LinearLayoutManager$㚬;-><init>()V

    return-object v0
.end method

.method public 㷵(ILandroidx/recyclerview/widget/RecyclerView$㢏;Landroidx/recyclerview/widget/RecyclerView$ಋ;)I
    .locals 5

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$ᓭ;->ർ()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->㒱()V

    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->ḙ:Landroidx/recyclerview/widget/LinearLayoutManager$㚬;

    const/4 v2, 0x1

    iput-boolean v2, v0, Landroidx/recyclerview/widget/LinearLayoutManager$㚬;->உ:Z

    if-lez p1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    :goto_0
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v3

    invoke-virtual {p0, v0, v3, v2, p3}, Landroidx/recyclerview/widget/LinearLayoutManager;->ᅚ(IIZLandroidx/recyclerview/widget/RecyclerView$ಋ;)V

    iget-object v2, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->ḙ:Landroidx/recyclerview/widget/LinearLayoutManager$㚬;

    iget v4, v2, Landroidx/recyclerview/widget/LinearLayoutManager$㚬;->ᆻ:I

    invoke-virtual {p0, p2, v2, p3, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->㠯(Landroidx/recyclerview/widget/RecyclerView$㢏;Landroidx/recyclerview/widget/LinearLayoutManager$㚬;Landroidx/recyclerview/widget/RecyclerView$ಋ;Z)I

    move-result p2

    add-int/2addr v4, p2

    if-gez v4, :cond_2

    return v1

    :cond_2
    if-le v3, v4, :cond_3

    mul-int p1, v0, v4

    :cond_3
    iget-object p2, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->㖪:L㚬/㲝/㺴/ಫ;

    neg-int p3, p1

    invoke-virtual {p2, p3}, L㚬/㲝/㺴/ಫ;->㞘(I)V

    iget-object p2, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->ḙ:Landroidx/recyclerview/widget/LinearLayoutManager$㚬;

    iput p1, p2, Landroidx/recyclerview/widget/LinearLayoutManager$㚬;->㧦:I

    return p1

    :cond_4
    :goto_1
    return v1
.end method

.method public 㸜(Landroidx/recyclerview/widget/RecyclerView$ಋ;[I)V
    .locals 3

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->䈳(Landroidx/recyclerview/widget/RecyclerView$ಋ;)I

    move-result p1

    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->ḙ:Landroidx/recyclerview/widget/LinearLayoutManager$㚬;

    iget v0, v0, Landroidx/recyclerview/widget/LinearLayoutManager$㚬;->䆀:I

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    move v0, p1

    const/4 p1, 0x0

    :goto_0
    aput p1, p2, v1

    const/4 p1, 0x1

    aput v0, p2, p1

    return-void
.end method

.method public 㹖()Z
    .locals 2

    iget v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->㭲:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public final 䃆(Landroidx/recyclerview/widget/RecyclerView$㢏;Landroidx/recyclerview/widget/LinearLayoutManager$㚬;)V
    .locals 3

    iget-boolean v0, p2, Landroidx/recyclerview/widget/LinearLayoutManager$㚬;->உ:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p2, Landroidx/recyclerview/widget/LinearLayoutManager$㚬;->ἥ:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget v0, p2, Landroidx/recyclerview/widget/LinearLayoutManager$㚬;->ᆻ:I

    iget v1, p2, Landroidx/recyclerview/widget/LinearLayoutManager$㚬;->ㄏ:I

    iget p2, p2, Landroidx/recyclerview/widget/LinearLayoutManager$㚬;->䆀:I

    const/4 v2, -0x1

    if-ne p2, v2, :cond_1

    invoke-virtual {p0, p1, v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->Ձ(Landroidx/recyclerview/widget/RecyclerView$㢏;II)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1, v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->ᵹ(Landroidx/recyclerview/widget/RecyclerView$㢏;II)V

    :cond_2
    :goto_0
    return-void
.end method

.method public 䃤(I)V
    .locals 3

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid orientation:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->ᆻ(Ljava/lang/String;)V

    iget v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->㭲:I

    if-ne p1, v0, :cond_2

    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->㖪:L㚬/㲝/㺴/ಫ;

    if-nez v0, :cond_3

    :cond_2
    invoke-static {p0, p1}, L㚬/㲝/㺴/ಫ;->䂻(Landroidx/recyclerview/widget/RecyclerView$ᓭ;I)L㚬/㲝/㺴/ಫ;

    move-result-object v0

    iput-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->㖪:L㚬/㲝/㺴/ಫ;

    iget-object v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->ש:Landroidx/recyclerview/widget/LinearLayoutManager$உ;

    iput-object v0, v1, Landroidx/recyclerview/widget/LinearLayoutManager$உ;->உ:L㚬/㲝/㺴/ಫ;

    iput p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->㭲:I

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$ᓭ;->ᐶ()V

    :cond_3
    return-void
.end method

.method public 䈳(Landroidx/recyclerview/widget/RecyclerView$ಋ;)I
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ಋ;->㺴()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->㖪:L㚬/㲝/㺴/ಫ;

    invoke-virtual {p1}, L㚬/㲝/㺴/ಫ;->ཇ()I

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public 䉁(Z)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->ᆻ(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->ㄬ:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->ㄬ:Z

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$ᓭ;->ᐶ()V

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

.method public final 䊉(Landroidx/recyclerview/widget/RecyclerView$㢏;Landroidx/recyclerview/widget/RecyclerView$ಋ;)Landroid/view/View;
    .locals 6

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$ᓭ;->ർ()I

    move-result v4

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$ಋ;->䂻()I

    move-result v5

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Landroidx/recyclerview/widget/LinearLayoutManager;->ѝ(Landroidx/recyclerview/widget/RecyclerView$㢏;Landroidx/recyclerview/widget/RecyclerView$ಋ;III)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method
