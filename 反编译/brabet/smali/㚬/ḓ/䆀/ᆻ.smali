.class public L㚬/ḓ/䆀/ᆻ;
.super Landroid/graphics/drawable/Drawable;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        L㚬/ḓ/䆀/ᆻ$உ;
    }
.end annotation


# static fields
.field public static 㞘:L㚬/ḓ/䆀/ᆻ$உ;

.field public static final 㲝:D


# instance fields
.field public final உ:I

.field public ಫ:F

.field public final ཇ:I

.field public ბ:Z

.field public ᆻ:Landroid/graphics/Path;

.field public ᓭ:Z

.field public final ḓ:Landroid/graphics/RectF;

.field public final ἥ:I

.field public ℓ:F

.field public ㄏ:F

.field public 㚬:Landroid/graphics/Paint;

.field public 㧦:Landroid/content/res/ColorStateList;

.field public 㹖:Z

.field public 㺴:Landroid/graphics/Paint;

.field public 䂻:Landroid/graphics/Paint;

.field public 䆀:F


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const-wide v0, 0x4046800000000000L    # 45.0

    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    sput-wide v0, L㚬/ḓ/䆀/ᆻ;->㲝:D

    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;Landroid/content/res/ColorStateList;FFF)V
    .locals 2

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, L㚬/ḓ/䆀/ᆻ;->㹖:Z

    iput-boolean v0, p0, L㚬/ḓ/䆀/ᆻ;->ᓭ:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, L㚬/ḓ/䆀/ᆻ;->ბ:Z

    sget v1, L㚬/ḓ/䂻;->㺴:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, L㚬/ḓ/䆀/ᆻ;->ἥ:I

    sget v1, L㚬/ḓ/䂻;->㚬:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, L㚬/ḓ/䆀/ᆻ;->ཇ:I

    sget v1, L㚬/ḓ/㚬;->உ:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, L㚬/ḓ/䆀/ᆻ;->உ:I

    new-instance p1, Landroid/graphics/Paint;

    const/4 v1, 0x5

    invoke-direct {p1, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, L㚬/ḓ/䆀/ᆻ;->䂻:Landroid/graphics/Paint;

    invoke-virtual {p0, p2}, L㚬/ḓ/䆀/ᆻ;->ཇ(Landroid/content/res/ColorStateList;)V

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, L㚬/ḓ/䆀/ᆻ;->㚬:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/high16 p1, 0x3f000000    # 0.5f

    add-float/2addr p3, p1

    float-to-int p1, p3

    int-to-float p1, p1

    iput p1, p0, L㚬/ḓ/䆀/ᆻ;->䆀:F

    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, L㚬/ḓ/䆀/ᆻ;->ḓ:Landroid/graphics/RectF;

    new-instance p1, Landroid/graphics/Paint;

    iget-object p2, p0, L㚬/ḓ/䆀/ᆻ;->㚬:Landroid/graphics/Paint;

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    iput-object p1, p0, L㚬/ḓ/䆀/ᆻ;->㺴:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    invoke-virtual {p0, p4, p5}, L㚬/ḓ/䆀/ᆻ;->㭲(FF)V

    return-void
.end method

.method public static 㚬(FFZ)F
    .locals 6

    if-eqz p2, :cond_0

    float-to-double v0, p0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    sget-wide v4, L㚬/ḓ/䆀/ᆻ;->㲝:D

    sub-double/2addr v2, v4

    float-to-double p0, p1

    mul-double v2, v2, p0

    add-double/2addr v0, v2

    double-to-float p0, v0

    :cond_0
    return p0
.end method

.method public static 㺴(FFZ)F
    .locals 6

    const/high16 v0, 0x3fc00000    # 1.5f

    mul-float p0, p0, v0

    if-eqz p2, :cond_0

    float-to-double v0, p0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    sget-wide v4, L㚬/ḓ/䆀/ᆻ;->㲝:D

    sub-double/2addr v2, v4

    float-to-double p0, p1

    mul-double v2, v2, p0

    add-double/2addr v0, v2

    double-to-float p0, v0

    :cond_0
    return p0
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 4

    iget-boolean v0, p0, L㚬/ḓ/䆀/ᆻ;->㹖:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p0, v0}, L㚬/ḓ/䆀/ᆻ;->உ(Landroid/graphics/Rect;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, L㚬/ḓ/䆀/ᆻ;->㹖:Z

    :cond_0
    iget v0, p0, L㚬/ḓ/䆀/ᆻ;->ಫ:F

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v0}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual {p0, p1}, L㚬/ḓ/䆀/ᆻ;->ḓ(Landroid/graphics/Canvas;)V

    iget v0, p0, L㚬/ḓ/䆀/ᆻ;->ಫ:F

    neg-float v0, v0

    div-float/2addr v0, v1

    invoke-virtual {p1, v2, v0}, Landroid/graphics/Canvas;->translate(FF)V

    sget-object v0, L㚬/ḓ/䆀/ᆻ;->㞘:L㚬/ḓ/䆀/ᆻ$உ;

    iget-object v1, p0, L㚬/ḓ/䆀/ᆻ;->ḓ:Landroid/graphics/RectF;

    iget v2, p0, L㚬/ḓ/䆀/ᆻ;->䆀:F

    iget-object v3, p0, L㚬/ḓ/䆀/ᆻ;->䂻:Landroid/graphics/Paint;

    invoke-interface {v0, p1, v1, v2, v3}, L㚬/ḓ/䆀/ᆻ$உ;->உ(Landroid/graphics/Canvas;Landroid/graphics/RectF;FLandroid/graphics/Paint;)V

    return-void
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, -0x3

    return v0
.end method

.method public getPadding(Landroid/graphics/Rect;)Z
    .locals 4

    iget v0, p0, L㚬/ḓ/䆀/ᆻ;->ℓ:F

    iget v1, p0, L㚬/ḓ/䆀/ᆻ;->䆀:F

    iget-boolean v2, p0, L㚬/ḓ/䆀/ᆻ;->ᓭ:Z

    invoke-static {v0, v1, v2}, L㚬/ḓ/䆀/ᆻ;->㺴(FFZ)F

    move-result v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    iget v1, p0, L㚬/ḓ/䆀/ᆻ;->ℓ:F

    iget v2, p0, L㚬/ḓ/䆀/ᆻ;->䆀:F

    iget-boolean v3, p0, L㚬/ḓ/䆀/ᆻ;->ᓭ:Z

    invoke-static {v1, v2, v3}, L㚬/ḓ/䆀/ᆻ;->㚬(FFZ)F

    move-result v1

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v1, v1

    invoke-virtual {p1, v1, v0, v1, v0}, Landroid/graphics/Rect;->set(IIII)V

    const/4 p1, 0x1

    return p1
.end method

.method public isStateful()Z
    .locals 1

    iget-object v0, p0, L㚬/ḓ/䆀/ᆻ;->㧦:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onBoundsChange(Landroid/graphics/Rect;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, L㚬/ḓ/䆀/ᆻ;->㹖:Z

    return-void
.end method

.method public onStateChange([I)Z
    .locals 2

    iget-object v0, p0, L㚬/ḓ/䆀/ᆻ;->㧦:Landroid/content/res/ColorStateList;

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result p1

    iget-object v0, p0, L㚬/ḓ/䆀/ᆻ;->䂻:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    if-ne v0, p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-object v0, p0, L㚬/ḓ/䆀/ᆻ;->䂻:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    const/4 p1, 0x1

    iput-boolean p1, p0, L㚬/ḓ/䆀/ᆻ;->㹖:Z

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return p1
.end method

.method public setAlpha(I)V
    .locals 1

    iget-object v0, p0, L㚬/ḓ/䆀/ᆻ;->䂻:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v0, p0, L㚬/ḓ/䆀/ᆻ;->㚬:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v0, p0, L㚬/ḓ/䆀/ᆻ;->㺴:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    iget-object v0, p0, L㚬/ḓ/䆀/ᆻ;->䂻:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    return-void
.end method

.method public final உ(Landroid/graphics/Rect;)V
    .locals 6

    iget v0, p0, L㚬/ḓ/䆀/ᆻ;->ℓ:F

    const/high16 v1, 0x3fc00000    # 1.5f

    mul-float v1, v1, v0

    iget-object v2, p0, L㚬/ḓ/䆀/ᆻ;->ḓ:Landroid/graphics/RectF;

    iget v3, p1, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    add-float/2addr v3, v0

    iget v4, p1, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    add-float/2addr v4, v1

    iget v5, p1, Landroid/graphics/Rect;->right:I

    int-to-float v5, v5

    sub-float/2addr v5, v0

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float p1, p1

    sub-float/2addr p1, v1

    invoke-virtual {v2, v3, v4, v5, p1}, Landroid/graphics/RectF;->set(FFFF)V

    invoke-virtual {p0}, L㚬/ḓ/䆀/ᆻ;->䂻()V

    return-void
.end method

.method public ಫ()F
    .locals 5

    iget v0, p0, L㚬/ḓ/䆀/ᆻ;->ℓ:F

    iget v1, p0, L㚬/ḓ/䆀/ᆻ;->䆀:F

    iget v2, p0, L㚬/ḓ/䆀/ᆻ;->உ:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    const/high16 v2, 0x3fc00000    # 1.5f

    mul-float v3, v0, v2

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    add-float/2addr v1, v3

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    mul-float v0, v0, v4

    iget v1, p0, L㚬/ḓ/䆀/ᆻ;->ℓ:F

    mul-float v1, v1, v2

    iget v2, p0, L㚬/ḓ/䆀/ᆻ;->உ:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    mul-float v1, v1, v4

    add-float/2addr v0, v1

    return v0
.end method

.method public final ཇ(Landroid/content/res/ColorStateList;)V
    .locals 3

    if-nez p1, :cond_0

    const/4 p1, 0x0

    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    :cond_0
    iput-object p1, p0, L㚬/ḓ/䆀/ᆻ;->㧦:Landroid/content/res/ColorStateList;

    iget-object v0, p0, L㚬/ḓ/䆀/ᆻ;->䂻:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object v1

    iget-object v2, p0, L㚬/ḓ/䆀/ᆻ;->㧦:Landroid/content/res/ColorStateList;

    invoke-virtual {v2}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method public ბ(F)V
    .locals 3

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_1

    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr p1, v0

    float-to-int p1, p1

    int-to-float p1, p1

    iget v0, p0, L㚬/ḓ/䆀/ᆻ;->䆀:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    return-void

    :cond_0
    iput p1, p0, L㚬/ḓ/䆀/ᆻ;->䆀:F

    const/4 p1, 0x1

    iput-boolean p1, p0, L㚬/ḓ/䆀/ᆻ;->㹖:Z

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid radius "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, ". Must be >= 0"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public ᆻ()F
    .locals 1

    iget v0, p0, L㚬/ḓ/䆀/ᆻ;->䆀:F

    return v0
.end method

.method public ᓭ(Landroid/content/res/ColorStateList;)V
    .locals 0

    invoke-virtual {p0, p1}, L㚬/ḓ/䆀/ᆻ;->ཇ(Landroid/content/res/ColorStateList;)V

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public final ḓ(Landroid/graphics/Canvas;)V
    .locals 12

    iget v0, p0, L㚬/ḓ/䆀/ᆻ;->䆀:F

    neg-float v1, v0

    iget v2, p0, L㚬/ḓ/䆀/ᆻ;->ㄏ:F

    sub-float/2addr v1, v2

    iget v2, p0, L㚬/ḓ/䆀/ᆻ;->உ:I

    int-to-float v2, v2

    add-float/2addr v0, v2

    iget v2, p0, L㚬/ḓ/䆀/ᆻ;->ಫ:F

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    add-float/2addr v0, v2

    iget-object v2, p0, L㚬/ḓ/䆀/ᆻ;->ḓ:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    mul-float v9, v0, v3

    sub-float/2addr v2, v9

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    cmpl-float v2, v2, v5

    if-lez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    iget-object v6, p0, L㚬/ḓ/䆀/ᆻ;->ḓ:Landroid/graphics/RectF;

    invoke-virtual {v6}, Landroid/graphics/RectF;->height()F

    move-result v6

    sub-float/2addr v6, v9

    cmpl-float v5, v6, v5

    if-lez v5, :cond_1

    const/4 v10, 0x1

    goto :goto_1

    :cond_1
    const/4 v10, 0x0

    :goto_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v11

    iget-object v3, p0, L㚬/ḓ/䆀/ᆻ;->ḓ:Landroid/graphics/RectF;

    iget v4, v3, Landroid/graphics/RectF;->left:F

    add-float/2addr v4, v0

    iget v3, v3, Landroid/graphics/RectF;->top:F

    add-float/2addr v3, v0

    invoke-virtual {p1, v4, v3}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v3, p0, L㚬/ḓ/䆀/ᆻ;->ᆻ:Landroid/graphics/Path;

    iget-object v4, p0, L㚬/ḓ/䆀/ᆻ;->㚬:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    if-eqz v2, :cond_2

    const/4 v4, 0x0

    iget-object v3, p0, L㚬/ḓ/䆀/ᆻ;->ḓ:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    sub-float v6, v3, v9

    iget v3, p0, L㚬/ḓ/䆀/ᆻ;->䆀:F

    neg-float v7, v3

    iget-object v8, p0, L㚬/ḓ/䆀/ᆻ;->㺴:Landroid/graphics/Paint;

    move-object v3, p1

    move v5, v1

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_2
    invoke-virtual {p1, v11}, Landroid/graphics/Canvas;->restoreToCount(I)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v11

    iget-object v3, p0, L㚬/ḓ/䆀/ᆻ;->ḓ:Landroid/graphics/RectF;

    iget v4, v3, Landroid/graphics/RectF;->right:F

    sub-float/2addr v4, v0

    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v3, v0

    invoke-virtual {p1, v4, v3}, Landroid/graphics/Canvas;->translate(FF)V

    const/high16 v3, 0x43340000    # 180.0f

    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->rotate(F)V

    iget-object v3, p0, L㚬/ḓ/䆀/ᆻ;->ᆻ:Landroid/graphics/Path;

    iget-object v4, p0, L㚬/ḓ/䆀/ᆻ;->㚬:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    if-eqz v2, :cond_3

    const/4 v4, 0x0

    iget-object v2, p0, L㚬/ḓ/䆀/ᆻ;->ḓ:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    sub-float v6, v2, v9

    iget v2, p0, L㚬/ḓ/䆀/ᆻ;->䆀:F

    neg-float v2, v2

    iget v3, p0, L㚬/ḓ/䆀/ᆻ;->ㄏ:F

    add-float v7, v2, v3

    iget-object v8, p0, L㚬/ḓ/䆀/ᆻ;->㺴:Landroid/graphics/Paint;

    move-object v3, p1

    move v5, v1

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_3
    invoke-virtual {p1, v11}, Landroid/graphics/Canvas;->restoreToCount(I)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v2

    iget-object v3, p0, L㚬/ḓ/䆀/ᆻ;->ḓ:Landroid/graphics/RectF;

    iget v4, v3, Landroid/graphics/RectF;->left:F

    add-float/2addr v4, v0

    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v3, v0

    invoke-virtual {p1, v4, v3}, Landroid/graphics/Canvas;->translate(FF)V

    const/high16 v3, 0x43870000    # 270.0f

    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->rotate(F)V

    iget-object v3, p0, L㚬/ḓ/䆀/ᆻ;->ᆻ:Landroid/graphics/Path;

    iget-object v4, p0, L㚬/ḓ/䆀/ᆻ;->㚬:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    if-eqz v10, :cond_4

    const/4 v4, 0x0

    iget-object v3, p0, L㚬/ḓ/䆀/ᆻ;->ḓ:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    sub-float v6, v3, v9

    iget v3, p0, L㚬/ḓ/䆀/ᆻ;->䆀:F

    neg-float v7, v3

    iget-object v8, p0, L㚬/ḓ/䆀/ᆻ;->㺴:Landroid/graphics/Paint;

    move-object v3, p1

    move v5, v1

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_4
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v2

    iget-object v3, p0, L㚬/ḓ/䆀/ᆻ;->ḓ:Landroid/graphics/RectF;

    iget v4, v3, Landroid/graphics/RectF;->right:F

    sub-float/2addr v4, v0

    iget v3, v3, Landroid/graphics/RectF;->top:F

    add-float/2addr v3, v0

    invoke-virtual {p1, v4, v3}, Landroid/graphics/Canvas;->translate(FF)V

    const/high16 v0, 0x42b40000    # 90.0f

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->rotate(F)V

    iget-object v0, p0, L㚬/ḓ/䆀/ᆻ;->ᆻ:Landroid/graphics/Path;

    iget-object v3, p0, L㚬/ḓ/䆀/ᆻ;->㚬:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    if-eqz v10, :cond_5

    const/4 v4, 0x0

    iget-object v0, p0, L㚬/ḓ/䆀/ᆻ;->ḓ:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    sub-float v6, v0, v9

    iget v0, p0, L㚬/ḓ/䆀/ᆻ;->䆀:F

    neg-float v7, v0

    iget-object v8, p0, L㚬/ḓ/䆀/ᆻ;->㺴:Landroid/graphics/Paint;

    move-object v3, p1

    move v5, v1

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_5
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void
.end method

.method public final ḙ(F)I
    .locals 2

    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr p1, v0

    float-to-int p1, p1

    rem-int/lit8 v0, p1, 0x2

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    sub-int/2addr p1, v1

    :cond_0
    return p1
.end method

.method public ἥ(Z)V
    .locals 0

    iput-boolean p1, p0, L㚬/ḓ/䆀/ᆻ;->ᓭ:Z

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public ℓ(Landroid/graphics/Rect;)V
    .locals 0

    invoke-virtual {p0, p1}, L㚬/ḓ/䆀/ᆻ;->getPadding(Landroid/graphics/Rect;)Z

    return-void
.end method

.method public ㄏ()F
    .locals 1

    iget v0, p0, L㚬/ḓ/䆀/ᆻ;->ℓ:F

    return v0
.end method

.method public 㞘(F)V
    .locals 1

    iget v0, p0, L㚬/ḓ/䆀/ᆻ;->ℓ:F

    invoke-virtual {p0, p1, v0}, L㚬/ḓ/䆀/ᆻ;->㭲(FF)V

    return-void
.end method

.method public 㧦()F
    .locals 4

    iget v0, p0, L㚬/ḓ/䆀/ᆻ;->ℓ:F

    iget v1, p0, L㚬/ḓ/䆀/ᆻ;->䆀:F

    iget v2, p0, L㚬/ḓ/䆀/ᆻ;->உ:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float v3, v0, v2

    add-float/2addr v1, v3

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    mul-float v0, v0, v2

    iget v1, p0, L㚬/ḓ/䆀/ᆻ;->ℓ:F

    iget v3, p0, L㚬/ḓ/䆀/ᆻ;->உ:I

    int-to-float v3, v3

    add-float/2addr v1, v3

    mul-float v1, v1, v2

    add-float/2addr v0, v1

    return v0
.end method

.method public final 㭲(FF)V
    .locals 3

    const-string v0, ". Must be >= 0"

    const/4 v1, 0x0

    cmpg-float v2, p1, v1

    if-ltz v2, :cond_4

    cmpg-float v1, p2, v1

    if-ltz v1, :cond_3

    invoke-virtual {p0, p1}, L㚬/ḓ/䆀/ᆻ;->ḙ(F)I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {p0, p2}, L㚬/ḓ/䆀/ᆻ;->ḙ(F)I

    move-result p2

    int-to-float p2, p2

    const/4 v0, 0x1

    cmpl-float v1, p1, p2

    if-lez v1, :cond_1

    iget-boolean p1, p0, L㚬/ḓ/䆀/ᆻ;->ბ:Z

    if-nez p1, :cond_0

    iput-boolean v0, p0, L㚬/ḓ/䆀/ᆻ;->ბ:Z

    :cond_0
    move p1, p2

    :cond_1
    iget v1, p0, L㚬/ḓ/䆀/ᆻ;->ಫ:F

    cmpl-float v1, v1, p1

    if-nez v1, :cond_2

    iget v1, p0, L㚬/ḓ/䆀/ᆻ;->ℓ:F

    cmpl-float v1, v1, p2

    if-nez v1, :cond_2

    return-void

    :cond_2
    iput p1, p0, L㚬/ḓ/䆀/ᆻ;->ಫ:F

    iput p2, p0, L㚬/ḓ/䆀/ᆻ;->ℓ:F

    const/high16 p2, 0x3fc00000    # 1.5f

    mul-float p1, p1, p2

    iget p2, p0, L㚬/ḓ/䆀/ᆻ;->உ:I

    int-to-float p2, p2

    add-float/2addr p1, p2

    const/high16 p2, 0x3f000000    # 0.5f

    add-float/2addr p1, p2

    float-to-int p1, p1

    int-to-float p1, p1

    iput p1, p0, L㚬/ḓ/䆀/ᆻ;->ㄏ:F

    iput-boolean v0, p0, L㚬/ḓ/䆀/ᆻ;->㹖:Z

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid max shadow size "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid shadow size "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public 㲝(F)V
    .locals 1

    iget v0, p0, L㚬/ḓ/䆀/ᆻ;->ಫ:F

    invoke-virtual {p0, v0, p1}, L㚬/ḓ/䆀/ᆻ;->㭲(FF)V

    return-void
.end method

.method public 㹖()F
    .locals 1

    iget v0, p0, L㚬/ḓ/䆀/ᆻ;->ಫ:F

    return v0
.end method

.method public final 䂻()V
    .locals 25

    move-object/from16 v0, p0

    new-instance v1, Landroid/graphics/RectF;

    iget v2, v0, L㚬/ḓ/䆀/ᆻ;->䆀:F

    neg-float v3, v2

    neg-float v4, v2

    invoke-direct {v1, v3, v4, v2, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2, v1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    iget v3, v0, L㚬/ḓ/䆀/ᆻ;->ㄏ:F

    neg-float v4, v3

    neg-float v3, v3

    invoke-virtual {v2, v4, v3}, Landroid/graphics/RectF;->inset(FF)V

    iget-object v3, v0, L㚬/ḓ/䆀/ᆻ;->ᆻ:Landroid/graphics/Path;

    if-nez v3, :cond_0

    new-instance v3, Landroid/graphics/Path;

    invoke-direct {v3}, Landroid/graphics/Path;-><init>()V

    iput-object v3, v0, L㚬/ḓ/䆀/ᆻ;->ᆻ:Landroid/graphics/Path;

    goto :goto_0

    :cond_0
    invoke-virtual {v3}, Landroid/graphics/Path;->reset()V

    :goto_0
    iget-object v3, v0, L㚬/ḓ/䆀/ᆻ;->ᆻ:Landroid/graphics/Path;

    sget-object v4, Landroid/graphics/Path$FillType;->EVEN_ODD:Landroid/graphics/Path$FillType;

    invoke-virtual {v3, v4}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    iget-object v3, v0, L㚬/ḓ/䆀/ᆻ;->ᆻ:Landroid/graphics/Path;

    iget v4, v0, L㚬/ḓ/䆀/ᆻ;->䆀:F

    neg-float v4, v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v3, v0, L㚬/ḓ/䆀/ᆻ;->ᆻ:Landroid/graphics/Path;

    iget v4, v0, L㚬/ḓ/䆀/ᆻ;->ㄏ:F

    neg-float v4, v4

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Path;->rLineTo(FF)V

    iget-object v3, v0, L㚬/ḓ/䆀/ᆻ;->ᆻ:Landroid/graphics/Path;

    const/high16 v4, 0x43340000    # 180.0f

    const/high16 v6, 0x42b40000    # 90.0f

    const/4 v7, 0x0

    invoke-virtual {v3, v2, v4, v6, v7}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FFZ)V

    iget-object v2, v0, L㚬/ḓ/䆀/ᆻ;->ᆻ:Landroid/graphics/Path;

    const/high16 v3, 0x43870000    # 270.0f

    const/high16 v4, -0x3d4c0000    # -90.0f

    invoke-virtual {v2, v1, v3, v4, v7}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FFZ)V

    iget-object v1, v0, L㚬/ḓ/䆀/ᆻ;->ᆻ:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->close()V

    iget v1, v0, L㚬/ḓ/䆀/ᆻ;->䆀:F

    iget v2, v0, L㚬/ḓ/䆀/ᆻ;->ㄏ:F

    add-float/2addr v2, v1

    div-float/2addr v1, v2

    iget-object v2, v0, L㚬/ḓ/䆀/ᆻ;->㚬:Landroid/graphics/Paint;

    new-instance v3, Landroid/graphics/RadialGradient;

    const/4 v9, 0x0

    const/4 v10, 0x0

    iget v4, v0, L㚬/ḓ/䆀/ᆻ;->䆀:F

    iget v6, v0, L㚬/ḓ/䆀/ᆻ;->ㄏ:F

    add-float v11, v4, v6

    const/4 v4, 0x3

    new-array v12, v4, [I

    iget v6, v0, L㚬/ḓ/䆀/ᆻ;->ἥ:I

    aput v6, v12, v7

    const/4 v15, 0x1

    aput v6, v12, v15

    iget v6, v0, L㚬/ḓ/䆀/ᆻ;->ཇ:I

    const/16 v16, 0x2

    aput v6, v12, v16

    new-array v13, v4, [F

    aput v5, v13, v7

    aput v1, v13, v15

    const/high16 v1, 0x3f800000    # 1.0f

    aput v1, v13, v16

    sget-object v14, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v8, v3

    invoke-direct/range {v8 .. v14}, Landroid/graphics/RadialGradient;-><init>(FFF[I[FLandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    iget-object v1, v0, L㚬/ḓ/䆀/ᆻ;->㺴:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/LinearGradient;

    const/16 v18, 0x0

    iget v3, v0, L㚬/ḓ/䆀/ᆻ;->䆀:F

    neg-float v5, v3

    iget v6, v0, L㚬/ḓ/䆀/ᆻ;->ㄏ:F

    add-float v19, v5, v6

    const/16 v20, 0x0

    neg-float v3, v3

    sub-float v21, v3, v6

    new-array v3, v4, [I

    iget v5, v0, L㚬/ḓ/䆀/ᆻ;->ἥ:I

    aput v5, v3, v7

    aput v5, v3, v15

    iget v5, v0, L㚬/ḓ/䆀/ᆻ;->ཇ:I

    aput v5, v3, v16

    new-array v4, v4, [F

    fill-array-data v4, :array_0

    sget-object v24, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object/from16 v17, v2

    move-object/from16 v22, v3

    move-object/from16 v23, v4

    invoke-direct/range {v17 .. v24}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    iget-object v1, v0, L㚬/ḓ/䆀/ᆻ;->㺴:Landroid/graphics/Paint;

    invoke-virtual {v1, v7}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f000000    # 0.5f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public 䆀()Landroid/content/res/ColorStateList;
    .locals 1

    iget-object v0, p0, L㚬/ḓ/䆀/ᆻ;->㧦:Landroid/content/res/ColorStateList;

    return-object v0
.end method
