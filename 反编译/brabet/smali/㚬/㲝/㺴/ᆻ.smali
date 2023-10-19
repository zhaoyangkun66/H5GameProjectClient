.class public L㚬/㲝/㺴/ᆻ;
.super Landroidx/recyclerview/widget/RecyclerView$㫏;
.source ""


# instance fields
.field public final ಫ:Landroid/view/animation/DecelerateInterpolator;

.field public ཇ:F

.field public ბ:I

.field public ᓭ:I

.field public ἥ:Z

.field public final ㄏ:Landroid/view/animation/LinearInterpolator;

.field public 㧦:Landroid/graphics/PointF;

.field public final 㹖:Landroid/util/DisplayMetrics;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$㫏;-><init>()V

    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    iput-object v0, p0, L㚬/㲝/㺴/ᆻ;->ㄏ:Landroid/view/animation/LinearInterpolator;

    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object v0, p0, L㚬/㲝/㺴/ᆻ;->ಫ:Landroid/view/animation/DecelerateInterpolator;

    const/4 v0, 0x0

    iput-boolean v0, p0, L㚬/㲝/㺴/ᆻ;->ἥ:Z

    iput v0, p0, L㚬/㲝/㺴/ᆻ;->ᓭ:I

    iput v0, p0, L㚬/㲝/㺴/ᆻ;->ბ:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iput-object p1, p0, L㚬/㲝/㺴/ᆻ;->㹖:Landroid/util/DisplayMetrics;

    return-void
.end method


# virtual methods
.method public ڈ(Landroidx/recyclerview/widget/RecyclerView$㫏$உ;)V
    .locals 4

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$㫏;->䆀()I

    move-result v0

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$㫏;->உ(I)Landroid/graphics/PointF;

    move-result-object v0

    if-eqz v0, :cond_1

    iget v1, v0, Landroid/graphics/PointF;->x:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    iget v1, v0, Landroid/graphics/PointF;->y:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$㫏;->ㄏ(Landroid/graphics/PointF;)V

    iput-object v0, p0, L㚬/㲝/㺴/ᆻ;->㧦:Landroid/graphics/PointF;

    iget v1, v0, Landroid/graphics/PointF;->x:F

    const v2, 0x461c4000    # 10000.0f

    mul-float v1, v1, v2

    float-to-int v1, v1

    iput v1, p0, L㚬/㲝/㺴/ᆻ;->ᓭ:I

    iget v0, v0, Landroid/graphics/PointF;->y:F

    mul-float v0, v0, v2

    float-to-int v0, v0

    iput v0, p0, L㚬/㲝/㺴/ᆻ;->ბ:I

    const/16 v0, 0x2710

    invoke-virtual {p0, v0}, L㚬/㲝/㺴/ᆻ;->㲧(I)I

    move-result v0

    iget v1, p0, L㚬/㲝/㺴/ᆻ;->ᓭ:I

    int-to-float v1, v1

    const v2, 0x3f99999a    # 1.2f

    mul-float v1, v1, v2

    float-to-int v1, v1

    iget v3, p0, L㚬/㲝/㺴/ᆻ;->ბ:I

    int-to-float v3, v3

    mul-float v3, v3, v2

    float-to-int v3, v3

    int-to-float v0, v0

    mul-float v0, v0, v2

    float-to-int v0, v0

    iget-object v2, p0, L㚬/㲝/㺴/ᆻ;->ㄏ:Landroid/view/animation/LinearInterpolator;

    invoke-virtual {p1, v1, v3, v0, v2}, Landroidx/recyclerview/widget/RecyclerView$㫏$உ;->㺴(IIILandroid/view/animation/Interpolator;)V

    return-void

    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$㫏;->䆀()I

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$㫏$உ;->䂻(I)V

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$㫏;->㞘()V

    return-void
.end method

.method public final ಋ()F
    .locals 1

    iget-boolean v0, p0, L㚬/㲝/㺴/ᆻ;->ἥ:Z

    if-nez v0, :cond_0

    iget-object v0, p0, L㚬/㲝/㺴/ᆻ;->㹖:Landroid/util/DisplayMetrics;

    invoke-virtual {p0, v0}, L㚬/㲝/㺴/ᆻ;->㢏(Landroid/util/DisplayMetrics;)F

    move-result v0

    iput v0, p0, L㚬/㲝/㺴/ᆻ;->ཇ:F

    const/4 v0, 0x1

    iput-boolean v0, p0, L㚬/㲝/㺴/ᆻ;->ἥ:Z

    :cond_0
    iget v0, p0, L㚬/㲝/㺴/ᆻ;->ཇ:F

    return v0
.end method

.method public ม(I)I
    .locals 4

    invoke-virtual {p0, p1}, L㚬/㲝/㺴/ᆻ;->㲧(I)I

    move-result p1

    int-to-double v0, p1

    const-wide v2, 0x3fd57a786c22680aL    # 0.3356

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int p1, v0

    return p1
.end method

.method public ཇ()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, L㚬/㲝/㺴/ᆻ;->ბ:I

    iput v0, p0, L㚬/㲝/㺴/ᆻ;->ᓭ:I

    const/4 v0, 0x0

    iput-object v0, p0, L㚬/㲝/㺴/ᆻ;->㧦:Landroid/graphics/PointF;

    return-void
.end method

.method public ᓭ(Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView$ಋ;Landroidx/recyclerview/widget/RecyclerView$㫏$உ;)V
    .locals 2

    invoke-virtual {p0}, L㚬/㲝/㺴/ᆻ;->㫏()I

    move-result p2

    invoke-virtual {p0, p1, p2}, L㚬/㲝/㺴/ᆻ;->ḙ(Landroid/view/View;I)I

    move-result p2

    invoke-virtual {p0}, L㚬/㲝/㺴/ᆻ;->ᾦ()I

    move-result v0

    invoke-virtual {p0, p1, v0}, L㚬/㲝/㺴/ᆻ;->㖪(Landroid/view/View;I)I

    move-result p1

    mul-int v0, p2, p2

    mul-int v1, p1, p1

    add-int/2addr v0, v1

    int-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-int v0, v0

    invoke-virtual {p0, v0}, L㚬/㲝/㺴/ᆻ;->ม(I)I

    move-result v0

    if-lez v0, :cond_0

    neg-int p2, p2

    neg-int p1, p1

    iget-object v1, p0, L㚬/㲝/㺴/ᆻ;->ಫ:Landroid/view/animation/DecelerateInterpolator;

    invoke-virtual {p3, p2, p1, v0, v1}, Landroidx/recyclerview/widget/RecyclerView$㫏$உ;->㺴(IIILandroid/view/animation/Interpolator;)V

    :cond_0
    return-void
.end method

.method public ḙ(Landroid/view/View;I)I
    .locals 10

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$㫏;->ḓ()Landroidx/recyclerview/widget/RecyclerView$ᓭ;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$ᓭ;->㧦()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView$ბ;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$ᓭ;->㮕(Landroid/view/View;)I

    move-result v2

    iget v3, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    sub-int v5, v2, v3

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$ᓭ;->ᭊ(Landroid/view/View;)I

    move-result p1

    iget v1, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int v6, p1, v1

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$ᓭ;->ග()I

    move-result v7

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$ᓭ;->ᗼ()I

    move-result p1

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$ᓭ;->Ᏼ()I

    move-result v0

    sub-int v8, p1, v0

    move-object v4, p0

    move v9, p2

    invoke-virtual/range {v4 .. v9}, L㚬/㲝/㺴/ᆻ;->㭲(IIIII)I

    move-result p1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public ἥ()V
    .locals 0

    return-void
.end method

.method public ᾦ()I
    .locals 3

    iget-object v0, p0, L㚬/㲝/㺴/ᆻ;->㧦:Landroid/graphics/PointF;

    if-eqz v0, :cond_2

    iget v0, v0, Landroid/graphics/PointF;->y:F

    const/4 v1, 0x0

    cmpl-float v2, v0, v1

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, -0x1

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x0

    :goto_1
    return v0
.end method

.method public final ㄬ(II)I
    .locals 0

    sub-int p2, p1, p2

    mul-int p1, p1, p2

    if-gtz p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    return p2
.end method

.method public 㖪(Landroid/view/View;I)I
    .locals 10

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$㫏;->ḓ()Landroidx/recyclerview/widget/RecyclerView$ᓭ;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$ᓭ;->㹖()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView$ბ;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$ᓭ;->㟘(Landroid/view/View;)I

    move-result v2

    iget v3, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    sub-int v5, v2, v3

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$ᓭ;->ỷ(Landroid/view/View;)I

    move-result p1

    iget v1, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int v6, p1, v1

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$ᓭ;->㠭()I

    move-result v7

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$ᓭ;->ᇿ()I

    move-result p1

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$ᓭ;->Ổ()I

    move-result v0

    sub-int v8, p1, v0

    move-object v4, p0

    move v9, p2

    invoke-virtual/range {v4 .. v9}, L㚬/㲝/㺴/ᆻ;->㭲(IIIII)I

    move-result p1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public 㢏(Landroid/util/DisplayMetrics;)F
    .locals 1

    iget p1, p1, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float p1, p1

    const/high16 v0, 0x41c80000    # 25.0f

    div-float/2addr v0, p1

    return v0
.end method

.method public 㫏()I
    .locals 3

    iget-object v0, p0, L㚬/㲝/㺴/ᆻ;->㧦:Landroid/graphics/PointF;

    if-eqz v0, :cond_2

    iget v0, v0, Landroid/graphics/PointF;->x:F

    const/4 v1, 0x0

    cmpl-float v2, v0, v1

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, -0x1

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x0

    :goto_1
    return v0
.end method

.method public 㭲(IIIII)I
    .locals 1

    const/4 v0, -0x1

    if-eq p5, v0, :cond_4

    if-eqz p5, :cond_1

    const/4 p1, 0x1

    if-ne p5, p1, :cond_0

    sub-int/2addr p4, p2

    return p4

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "snap preference should be one of the constants defined in SmoothScroller, starting with SNAP_"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    sub-int/2addr p3, p1

    if-lez p3, :cond_2

    return p3

    :cond_2
    sub-int/2addr p4, p2

    if-gez p4, :cond_3

    return p4

    :cond_3
    const/4 p1, 0x0

    return p1

    :cond_4
    sub-int/2addr p3, p1

    return p3
.end method

.method public 㲧(I)I
    .locals 2

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {p0}, L㚬/㲝/㺴/ᆻ;->ಋ()F

    move-result v0

    mul-float p1, p1, v0

    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int p1, v0

    return p1
.end method

.method public 㹖(IILandroidx/recyclerview/widget/RecyclerView$ಋ;Landroidx/recyclerview/widget/RecyclerView$㫏$உ;)V
    .locals 0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$㫏;->㚬()I

    move-result p3

    if-nez p3, :cond_0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$㫏;->㞘()V

    return-void

    :cond_0
    iget p3, p0, L㚬/㲝/㺴/ᆻ;->ᓭ:I

    invoke-virtual {p0, p3, p1}, L㚬/㲝/㺴/ᆻ;->ㄬ(II)I

    move-result p1

    iput p1, p0, L㚬/㲝/㺴/ᆻ;->ᓭ:I

    iget p1, p0, L㚬/㲝/㺴/ᆻ;->ბ:I

    invoke-virtual {p0, p1, p2}, L㚬/㲝/㺴/ᆻ;->ㄬ(II)I

    move-result p1

    iput p1, p0, L㚬/㲝/㺴/ᆻ;->ბ:I

    iget p2, p0, L㚬/㲝/㺴/ᆻ;->ᓭ:I

    if-nez p2, :cond_1

    if-nez p1, :cond_1

    invoke-virtual {p0, p4}, L㚬/㲝/㺴/ᆻ;->ڈ(Landroidx/recyclerview/widget/RecyclerView$㫏$உ;)V

    :cond_1
    return-void
.end method
