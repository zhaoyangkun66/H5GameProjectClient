.class public L㺴/㚬/உ/䂻/ᱹ/㹖;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        L㺴/㚬/உ/䂻/ᱹ/㹖$䂻;,
        L㺴/㚬/உ/䂻/ᱹ/㹖$உ;
    }
.end annotation


# instance fields
.field public final உ:[L㺴/㚬/உ/䂻/ᱹ/ἥ;

.field public final ᆻ:[F

.field public final ḓ:L㺴/㚬/உ/䂻/ᱹ/ἥ;

.field public final 㚬:[Landroid/graphics/Matrix;

.field public final 㺴:Landroid/graphics/PointF;

.field public final 䂻:[Landroid/graphics/Matrix;

.field public final 䆀:[F


# direct methods
.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    new-array v1, v0, [L㺴/㚬/உ/䂻/ᱹ/ἥ;

    iput-object v1, p0, L㺴/㚬/உ/䂻/ᱹ/㹖;->உ:[L㺴/㚬/உ/䂻/ᱹ/ἥ;

    new-array v1, v0, [Landroid/graphics/Matrix;

    iput-object v1, p0, L㺴/㚬/உ/䂻/ᱹ/㹖;->䂻:[Landroid/graphics/Matrix;

    new-array v1, v0, [Landroid/graphics/Matrix;

    iput-object v1, p0, L㺴/㚬/உ/䂻/ᱹ/㹖;->㚬:[Landroid/graphics/Matrix;

    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1}, Landroid/graphics/PointF;-><init>()V

    iput-object v1, p0, L㺴/㚬/உ/䂻/ᱹ/㹖;->㺴:Landroid/graphics/PointF;

    new-instance v1, L㺴/㚬/உ/䂻/ᱹ/ἥ;

    invoke-direct {v1}, L㺴/㚬/உ/䂻/ᱹ/ἥ;-><init>()V

    iput-object v1, p0, L㺴/㚬/உ/䂻/ᱹ/㹖;->ḓ:L㺴/㚬/உ/䂻/ᱹ/ἥ;

    const/4 v1, 0x2

    new-array v2, v1, [F

    iput-object v2, p0, L㺴/㚬/உ/䂻/ᱹ/㹖;->䆀:[F

    new-array v1, v1, [F

    iput-object v1, p0, L㺴/㚬/உ/䂻/ᱹ/㹖;->ᆻ:[F

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, L㺴/㚬/உ/䂻/ᱹ/㹖;->உ:[L㺴/㚬/உ/䂻/ᱹ/ἥ;

    new-instance v3, L㺴/㚬/உ/䂻/ᱹ/ἥ;

    invoke-direct {v3}, L㺴/㚬/உ/䂻/ᱹ/ἥ;-><init>()V

    aput-object v3, v2, v1

    iget-object v2, p0, L㺴/㚬/உ/䂻/ᱹ/㹖;->䂻:[Landroid/graphics/Matrix;

    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    aput-object v3, v2, v1

    iget-object v2, p0, L㺴/㚬/உ/䂻/ᱹ/㹖;->㚬:[Landroid/graphics/Matrix;

    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public final உ(I)F
    .locals 0

    add-int/lit8 p1, p1, 0x1

    mul-int/lit8 p1, p1, 0x5a

    int-to-float p1, p1

    return p1
.end method

.method public final ಫ(IL㺴/㚬/உ/䂻/ᱹ/㧦;)L㺴/㚬/உ/䂻/ᱹ/䆀;
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    invoke-virtual {p2}, L㺴/㚬/உ/䂻/ᱹ/㧦;->ᓭ()L㺴/㚬/உ/䂻/ᱹ/䆀;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-virtual {p2}, L㺴/㚬/உ/䂻/ᱹ/㧦;->ბ()L㺴/㚬/உ/䂻/ᱹ/䆀;

    move-result-object p1

    return-object p1

    :cond_1
    invoke-virtual {p2}, L㺴/㚬/உ/䂻/ᱹ/㧦;->ཇ()L㺴/㚬/உ/䂻/ᱹ/䆀;

    move-result-object p1

    return-object p1

    :cond_2
    invoke-virtual {p2}, L㺴/㚬/உ/䂻/ᱹ/㧦;->ℓ()L㺴/㚬/உ/䂻/ᱹ/䆀;

    move-result-object p1

    return-object p1
.end method

.method public final ᆻ(IL㺴/㚬/உ/䂻/ᱹ/㧦;)L㺴/㚬/உ/䂻/ᱹ/㚬;
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    invoke-virtual {p2}, L㺴/㚬/உ/䂻/ᱹ/㧦;->ḙ()L㺴/㚬/உ/䂻/ᱹ/㚬;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-virtual {p2}, L㺴/㚬/உ/䂻/ᱹ/㧦;->㞘()L㺴/㚬/உ/䂻/ᱹ/㚬;

    move-result-object p1

    return-object p1

    :cond_1
    invoke-virtual {p2}, L㺴/㚬/உ/䂻/ᱹ/㧦;->ಫ()L㺴/㚬/உ/䂻/ᱹ/㚬;

    move-result-object p1

    return-object p1

    :cond_2
    invoke-virtual {p2}, L㺴/㚬/உ/䂻/ᱹ/㧦;->㹖()L㺴/㚬/உ/䂻/ᱹ/㚬;

    move-result-object p1

    return-object p1
.end method

.method public ḓ(L㺴/㚬/உ/䂻/ᱹ/㧦;FLandroid/graphics/RectF;L㺴/㚬/உ/䂻/ᱹ/㹖$உ;Landroid/graphics/Path;)V
    .locals 7

    invoke-virtual {p5}, Landroid/graphics/Path;->rewind()V

    new-instance v6, L㺴/㚬/உ/䂻/ᱹ/㹖$䂻;

    move-object v0, v6

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, L㺴/㚬/உ/䂻/ᱹ/㹖$䂻;-><init>(L㺴/㚬/உ/䂻/ᱹ/㧦;FLandroid/graphics/RectF;L㺴/㚬/உ/䂻/ᱹ/㹖$உ;Landroid/graphics/Path;)V

    const/4 p1, 0x0

    const/4 p2, 0x0

    :goto_0
    const/4 p3, 0x4

    if-ge p2, p3, :cond_0

    invoke-virtual {p0, v6, p2}, L㺴/㚬/உ/䂻/ᱹ/㹖;->㧦(L㺴/㚬/உ/䂻/ᱹ/㹖$䂻;I)V

    invoke-virtual {p0, p2}, L㺴/㚬/உ/䂻/ᱹ/㹖;->㹖(I)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    if-ge p1, p3, :cond_1

    invoke-virtual {p0, v6, p1}, L㺴/㚬/உ/䂻/ᱹ/㹖;->䂻(L㺴/㚬/உ/䂻/ᱹ/㹖$䂻;I)V

    invoke-virtual {p0, v6, p1}, L㺴/㚬/உ/䂻/ᱹ/㹖;->㚬(L㺴/㚬/உ/䂻/ᱹ/㹖$䂻;I)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {p5}, Landroid/graphics/Path;->close()V

    return-void
.end method

.method public final ℓ(IL㺴/㚬/உ/䂻/ᱹ/㧦;)L㺴/㚬/உ/䂻/ᱹ/㺴;
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    invoke-virtual {p2}, L㺴/㚬/உ/䂻/ᱹ/㧦;->㭲()L㺴/㚬/உ/䂻/ᱹ/㺴;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-virtual {p2}, L㺴/㚬/உ/䂻/ᱹ/㧦;->㲝()L㺴/㚬/உ/䂻/ᱹ/㺴;

    move-result-object p1

    return-object p1

    :cond_1
    invoke-virtual {p2}, L㺴/㚬/உ/䂻/ᱹ/㧦;->ㄏ()L㺴/㚬/உ/䂻/ᱹ/㺴;

    move-result-object p1

    return-object p1

    :cond_2
    invoke-virtual {p2}, L㺴/㚬/உ/䂻/ᱹ/㧦;->㧦()L㺴/㚬/உ/䂻/ᱹ/㺴;

    move-result-object p1

    return-object p1
.end method

.method public final ㄏ(Landroid/graphics/RectF;I)F
    .locals 4

    iget-object v0, p0, L㺴/㚬/உ/䂻/ᱹ/㹖;->䆀:[F

    iget-object v1, p0, L㺴/㚬/உ/䂻/ᱹ/㹖;->உ:[L㺴/㚬/உ/䂻/ᱹ/ἥ;

    aget-object v2, v1, p2

    iget v2, v2, L㺴/㚬/உ/䂻/ᱹ/ἥ;->㚬:F

    const/4 v3, 0x0

    aput v2, v0, v3

    aget-object v1, v1, p2

    iget v1, v1, L㺴/㚬/உ/䂻/ᱹ/ἥ;->㺴:F

    const/4 v2, 0x1

    aput v1, v0, v2

    iget-object v1, p0, L㺴/㚬/உ/䂻/ᱹ/㹖;->䂻:[Landroid/graphics/Matrix;

    aget-object v1, v1, p2

    invoke-virtual {v1, v0}, Landroid/graphics/Matrix;->mapPoints([F)V

    if-eq p2, v2, :cond_0

    const/4 v0, 0x3

    if-eq p2, v0, :cond_0

    invoke-virtual {p1}, Landroid/graphics/RectF;->centerY()F

    move-result p1

    iget-object p2, p0, L㺴/㚬/உ/䂻/ᱹ/㹖;->䆀:[F

    aget p2, p2, v2

    :goto_0
    sub-float/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    return p1

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/RectF;->centerX()F

    move-result p1

    iget-object p2, p0, L㺴/㚬/உ/䂻/ᱹ/㹖;->䆀:[F

    aget p2, p2, v3

    goto :goto_0
.end method

.method public final 㚬(L㺴/㚬/உ/䂻/ᱹ/㹖$䂻;I)V
    .locals 7

    add-int/lit8 v0, p2, 0x1

    rem-int/lit8 v0, v0, 0x4

    iget-object v1, p0, L㺴/㚬/உ/䂻/ᱹ/㹖;->䆀:[F

    iget-object v2, p0, L㺴/㚬/உ/䂻/ᱹ/㹖;->உ:[L㺴/㚬/உ/䂻/ᱹ/ἥ;

    aget-object v2, v2, p2

    invoke-virtual {v2}, L㺴/㚬/உ/䂻/ᱹ/ἥ;->ℓ()F

    move-result v2

    const/4 v3, 0x0

    aput v2, v1, v3

    iget-object v1, p0, L㺴/㚬/உ/䂻/ᱹ/㹖;->䆀:[F

    iget-object v2, p0, L㺴/㚬/உ/䂻/ᱹ/㹖;->உ:[L㺴/㚬/உ/䂻/ᱹ/ἥ;

    aget-object v2, v2, p2

    invoke-virtual {v2}, L㺴/㚬/உ/䂻/ᱹ/ἥ;->ㄏ()F

    move-result v2

    const/4 v4, 0x1

    aput v2, v1, v4

    iget-object v1, p0, L㺴/㚬/உ/䂻/ᱹ/㹖;->䂻:[Landroid/graphics/Matrix;

    aget-object v1, v1, p2

    iget-object v2, p0, L㺴/㚬/உ/䂻/ᱹ/㹖;->䆀:[F

    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->mapPoints([F)V

    iget-object v1, p0, L㺴/㚬/உ/䂻/ᱹ/㹖;->ᆻ:[F

    iget-object v2, p0, L㺴/㚬/உ/䂻/ᱹ/㹖;->உ:[L㺴/㚬/உ/䂻/ᱹ/ἥ;

    aget-object v2, v2, v0

    invoke-virtual {v2}, L㺴/㚬/உ/䂻/ᱹ/ἥ;->ಫ()F

    move-result v2

    aput v2, v1, v3

    iget-object v1, p0, L㺴/㚬/உ/䂻/ᱹ/㹖;->ᆻ:[F

    iget-object v2, p0, L㺴/㚬/உ/䂻/ᱹ/㹖;->உ:[L㺴/㚬/உ/䂻/ᱹ/ἥ;

    aget-object v2, v2, v0

    invoke-virtual {v2}, L㺴/㚬/உ/䂻/ᱹ/ἥ;->㧦()F

    move-result v2

    aput v2, v1, v4

    iget-object v1, p0, L㺴/㚬/உ/䂻/ᱹ/㹖;->䂻:[Landroid/graphics/Matrix;

    aget-object v0, v1, v0

    iget-object v1, p0, L㺴/㚬/உ/䂻/ᱹ/㹖;->ᆻ:[F

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapPoints([F)V

    iget-object v0, p0, L㺴/㚬/உ/䂻/ᱹ/㹖;->䆀:[F

    aget v1, v0, v3

    iget-object v2, p0, L㺴/㚬/உ/䂻/ᱹ/㹖;->ᆻ:[F

    aget v3, v2, v3

    sub-float/2addr v1, v3

    float-to-double v5, v1

    aget v0, v0, v4

    aget v1, v2, v4

    sub-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v5, v6, v0, v1}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v0

    double-to-float v0, v0

    const v1, 0x3a83126f    # 0.001f

    sub-float/2addr v0, v1

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iget-object v2, p1, L㺴/㚬/உ/䂻/ᱹ/㹖$䂻;->㚬:Landroid/graphics/RectF;

    invoke-virtual {p0, v2, p2}, L㺴/㚬/உ/䂻/ᱹ/㹖;->ㄏ(Landroid/graphics/RectF;I)F

    move-result v2

    iget-object v3, p0, L㺴/㚬/உ/䂻/ᱹ/㹖;->ḓ:L㺴/㚬/உ/䂻/ᱹ/ἥ;

    invoke-virtual {v3, v1, v1}, L㺴/㚬/உ/䂻/ᱹ/ἥ;->ἥ(FF)V

    iget-object v1, p1, L㺴/㚬/உ/䂻/ᱹ/㹖$䂻;->உ:L㺴/㚬/உ/䂻/ᱹ/㧦;

    invoke-virtual {p0, p2, v1}, L㺴/㚬/உ/䂻/ᱹ/㹖;->ಫ(IL㺴/㚬/உ/䂻/ᱹ/㧦;)L㺴/㚬/உ/䂻/ᱹ/䆀;

    move-result-object v1

    iget v3, p1, L㺴/㚬/உ/䂻/ᱹ/㹖$䂻;->ḓ:F

    iget-object v4, p0, L㺴/㚬/உ/䂻/ᱹ/㹖;->ḓ:L㺴/㚬/உ/䂻/ᱹ/ἥ;

    invoke-virtual {v1, v0, v2, v3, v4}, L㺴/㚬/உ/䂻/ᱹ/䆀;->உ(FFFL㺴/㚬/உ/䂻/ᱹ/ἥ;)V

    iget-object v0, p0, L㺴/㚬/உ/䂻/ᱹ/㹖;->ḓ:L㺴/㚬/உ/䂻/ᱹ/ἥ;

    iget-object v1, p0, L㺴/㚬/உ/䂻/ᱹ/㹖;->㚬:[Landroid/graphics/Matrix;

    aget-object v1, v1, p2

    iget-object v2, p1, L㺴/㚬/உ/䂻/ᱹ/㹖$䂻;->䂻:Landroid/graphics/Path;

    invoke-virtual {v0, v1, v2}, L㺴/㚬/உ/䂻/ᱹ/ἥ;->㺴(Landroid/graphics/Matrix;Landroid/graphics/Path;)V

    iget-object p1, p1, L㺴/㚬/உ/䂻/ᱹ/㹖$䂻;->㺴:L㺴/㚬/உ/䂻/ᱹ/㹖$உ;

    if-eqz p1, :cond_0

    iget-object v0, p0, L㺴/㚬/உ/䂻/ᱹ/㹖;->ḓ:L㺴/㚬/உ/䂻/ᱹ/ἥ;

    iget-object v1, p0, L㺴/㚬/உ/䂻/ᱹ/㹖;->㚬:[Landroid/graphics/Matrix;

    aget-object v1, v1, p2

    invoke-interface {p1, v0, v1, p2}, L㺴/㚬/உ/䂻/ᱹ/㹖$உ;->உ(L㺴/㚬/உ/䂻/ᱹ/ἥ;Landroid/graphics/Matrix;I)V

    :cond_0
    return-void
.end method

.method public final 㧦(L㺴/㚬/உ/䂻/ᱹ/㹖$䂻;I)V
    .locals 7

    iget-object v0, p1, L㺴/㚬/உ/䂻/ᱹ/㹖$䂻;->உ:L㺴/㚬/உ/䂻/ᱹ/㧦;

    invoke-virtual {p0, p2, v0}, L㺴/㚬/உ/䂻/ᱹ/㹖;->ᆻ(IL㺴/㚬/உ/䂻/ᱹ/㧦;)L㺴/㚬/உ/䂻/ᱹ/㚬;

    move-result-object v6

    iget-object v0, p1, L㺴/㚬/உ/䂻/ᱹ/㹖$䂻;->உ:L㺴/㚬/உ/䂻/ᱹ/㧦;

    invoke-virtual {p0, p2, v0}, L㺴/㚬/உ/䂻/ᱹ/㹖;->ℓ(IL㺴/㚬/உ/䂻/ᱹ/㧦;)L㺴/㚬/உ/䂻/ᱹ/㺴;

    move-result-object v1

    iget-object v0, p0, L㺴/㚬/உ/䂻/ᱹ/㹖;->உ:[L㺴/㚬/உ/䂻/ᱹ/ἥ;

    aget-object v2, v0, p2

    iget v4, p1, L㺴/㚬/உ/䂻/ᱹ/㹖$䂻;->ḓ:F

    iget-object v5, p1, L㺴/㚬/உ/䂻/ᱹ/㹖$䂻;->㚬:Landroid/graphics/RectF;

    const/high16 v3, 0x42b40000    # 90.0f

    invoke-virtual/range {v1 .. v6}, L㺴/㚬/உ/䂻/ᱹ/㺴;->䂻(L㺴/㚬/உ/䂻/ᱹ/ἥ;FFLandroid/graphics/RectF;L㺴/㚬/உ/䂻/ᱹ/㚬;)V

    invoke-virtual {p0, p2}, L㺴/㚬/உ/䂻/ᱹ/㹖;->உ(I)F

    move-result v0

    iget-object v1, p0, L㺴/㚬/உ/䂻/ᱹ/㹖;->䂻:[Landroid/graphics/Matrix;

    aget-object v1, v1, p2

    invoke-virtual {v1}, Landroid/graphics/Matrix;->reset()V

    iget-object p1, p1, L㺴/㚬/உ/䂻/ᱹ/㹖$䂻;->㚬:Landroid/graphics/RectF;

    iget-object v1, p0, L㺴/㚬/உ/䂻/ᱹ/㹖;->㺴:Landroid/graphics/PointF;

    invoke-virtual {p0, p2, p1, v1}, L㺴/㚬/உ/䂻/ᱹ/㹖;->䆀(ILandroid/graphics/RectF;Landroid/graphics/PointF;)V

    iget-object p1, p0, L㺴/㚬/உ/䂻/ᱹ/㹖;->䂻:[Landroid/graphics/Matrix;

    aget-object p1, p1, p2

    iget-object v1, p0, L㺴/㚬/உ/䂻/ᱹ/㹖;->㺴:Landroid/graphics/PointF;

    iget v2, v1, Landroid/graphics/PointF;->x:F

    iget v1, v1, Landroid/graphics/PointF;->y:F

    invoke-virtual {p1, v2, v1}, Landroid/graphics/Matrix;->setTranslate(FF)V

    iget-object p1, p0, L㺴/㚬/உ/䂻/ᱹ/㹖;->䂻:[Landroid/graphics/Matrix;

    aget-object p1, p1, p2

    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->preRotate(F)Z

    return-void
.end method

.method public final 㹖(I)V
    .locals 5

    iget-object v0, p0, L㺴/㚬/உ/䂻/ᱹ/㹖;->䆀:[F

    iget-object v1, p0, L㺴/㚬/உ/䂻/ᱹ/㹖;->உ:[L㺴/㚬/உ/䂻/ᱹ/ἥ;

    aget-object v1, v1, p1

    invoke-virtual {v1}, L㺴/㚬/உ/䂻/ᱹ/ἥ;->ℓ()F

    move-result v1

    const/4 v2, 0x0

    aput v1, v0, v2

    iget-object v0, p0, L㺴/㚬/உ/䂻/ᱹ/㹖;->䆀:[F

    iget-object v1, p0, L㺴/㚬/உ/䂻/ᱹ/㹖;->உ:[L㺴/㚬/உ/䂻/ᱹ/ἥ;

    aget-object v1, v1, p1

    invoke-virtual {v1}, L㺴/㚬/உ/䂻/ᱹ/ἥ;->ㄏ()F

    move-result v1

    const/4 v3, 0x1

    aput v1, v0, v3

    iget-object v0, p0, L㺴/㚬/உ/䂻/ᱹ/㹖;->䂻:[Landroid/graphics/Matrix;

    aget-object v0, v0, p1

    iget-object v1, p0, L㺴/㚬/உ/䂻/ᱹ/㹖;->䆀:[F

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapPoints([F)V

    invoke-virtual {p0, p1}, L㺴/㚬/உ/䂻/ᱹ/㹖;->உ(I)F

    move-result v0

    iget-object v1, p0, L㺴/㚬/உ/䂻/ᱹ/㹖;->㚬:[Landroid/graphics/Matrix;

    aget-object v1, v1, p1

    invoke-virtual {v1}, Landroid/graphics/Matrix;->reset()V

    iget-object v1, p0, L㺴/㚬/உ/䂻/ᱹ/㹖;->㚬:[Landroid/graphics/Matrix;

    aget-object v1, v1, p1

    iget-object v4, p0, L㺴/㚬/உ/䂻/ᱹ/㹖;->䆀:[F

    aget v2, v4, v2

    aget v3, v4, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Matrix;->setTranslate(FF)V

    iget-object v1, p0, L㺴/㚬/உ/䂻/ᱹ/㹖;->㚬:[Landroid/graphics/Matrix;

    aget-object p1, v1, p1

    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->preRotate(F)Z

    return-void
.end method

.method public 㺴(L㺴/㚬/உ/䂻/ᱹ/㧦;FLandroid/graphics/RectF;Landroid/graphics/Path;)V
    .locals 6

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, L㺴/㚬/உ/䂻/ᱹ/㹖;->ḓ(L㺴/㚬/உ/䂻/ᱹ/㧦;FLandroid/graphics/RectF;L㺴/㚬/உ/䂻/ᱹ/㹖$உ;Landroid/graphics/Path;)V

    return-void
.end method

.method public final 䂻(L㺴/㚬/உ/䂻/ᱹ/㹖$䂻;I)V
    .locals 4

    iget-object v0, p0, L㺴/㚬/உ/䂻/ᱹ/㹖;->䆀:[F

    iget-object v1, p0, L㺴/㚬/உ/䂻/ᱹ/㹖;->உ:[L㺴/㚬/உ/䂻/ᱹ/ἥ;

    aget-object v1, v1, p2

    invoke-virtual {v1}, L㺴/㚬/உ/䂻/ᱹ/ἥ;->ಫ()F

    move-result v1

    const/4 v2, 0x0

    aput v1, v0, v2

    iget-object v0, p0, L㺴/㚬/உ/䂻/ᱹ/㹖;->䆀:[F

    iget-object v1, p0, L㺴/㚬/உ/䂻/ᱹ/㹖;->உ:[L㺴/㚬/உ/䂻/ᱹ/ἥ;

    aget-object v1, v1, p2

    invoke-virtual {v1}, L㺴/㚬/உ/䂻/ᱹ/ἥ;->㧦()F

    move-result v1

    const/4 v3, 0x1

    aput v1, v0, v3

    iget-object v0, p0, L㺴/㚬/உ/䂻/ᱹ/㹖;->䂻:[Landroid/graphics/Matrix;

    aget-object v0, v0, p2

    iget-object v1, p0, L㺴/㚬/உ/䂻/ᱹ/㹖;->䆀:[F

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapPoints([F)V

    iget-object v0, p1, L㺴/㚬/உ/䂻/ᱹ/㹖$䂻;->䂻:Landroid/graphics/Path;

    iget-object v1, p0, L㺴/㚬/உ/䂻/ᱹ/㹖;->䆀:[F

    if-nez p2, :cond_0

    aget v2, v1, v2

    aget v1, v1, v3

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Path;->moveTo(FF)V

    goto :goto_0

    :cond_0
    aget v2, v1, v2

    aget v1, v1, v3

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Path;->lineTo(FF)V

    :goto_0
    iget-object v0, p0, L㺴/㚬/உ/䂻/ᱹ/㹖;->உ:[L㺴/㚬/உ/䂻/ᱹ/ἥ;

    aget-object v0, v0, p2

    iget-object v1, p0, L㺴/㚬/உ/䂻/ᱹ/㹖;->䂻:[Landroid/graphics/Matrix;

    aget-object v1, v1, p2

    iget-object v2, p1, L㺴/㚬/உ/䂻/ᱹ/㹖$䂻;->䂻:Landroid/graphics/Path;

    invoke-virtual {v0, v1, v2}, L㺴/㚬/உ/䂻/ᱹ/ἥ;->㺴(Landroid/graphics/Matrix;Landroid/graphics/Path;)V

    iget-object p1, p1, L㺴/㚬/உ/䂻/ᱹ/㹖$䂻;->㺴:L㺴/㚬/உ/䂻/ᱹ/㹖$உ;

    if-eqz p1, :cond_1

    iget-object v0, p0, L㺴/㚬/உ/䂻/ᱹ/㹖;->உ:[L㺴/㚬/உ/䂻/ᱹ/ἥ;

    aget-object v0, v0, p2

    iget-object v1, p0, L㺴/㚬/உ/䂻/ᱹ/㹖;->䂻:[Landroid/graphics/Matrix;

    aget-object v1, v1, p2

    invoke-interface {p1, v0, v1, p2}, L㺴/㚬/உ/䂻/ᱹ/㹖$உ;->䂻(L㺴/㚬/உ/䂻/ᱹ/ἥ;Landroid/graphics/Matrix;I)V

    :cond_1
    return-void
.end method

.method public final 䆀(ILandroid/graphics/RectF;Landroid/graphics/PointF;)V
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    iget p1, p2, Landroid/graphics/RectF;->right:F

    :goto_0
    iget p2, p2, Landroid/graphics/RectF;->top:F

    :goto_1
    invoke-virtual {p3, p1, p2}, Landroid/graphics/PointF;->set(FF)V

    goto :goto_3

    :cond_0
    iget p1, p2, Landroid/graphics/RectF;->left:F

    goto :goto_0

    :cond_1
    iget p1, p2, Landroid/graphics/RectF;->left:F

    goto :goto_2

    :cond_2
    iget p1, p2, Landroid/graphics/RectF;->right:F

    :goto_2
    iget p2, p2, Landroid/graphics/RectF;->bottom:F

    goto :goto_1

    :goto_3
    return-void
.end method
