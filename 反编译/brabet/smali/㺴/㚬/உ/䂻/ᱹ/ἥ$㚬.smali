.class public L㺴/㚬/உ/䂻/ᱹ/ἥ$㚬;
.super L㺴/㚬/உ/䂻/ᱹ/ἥ$ᆻ;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = L㺴/㚬/உ/䂻/ᱹ/ἥ;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "\u36ac"
.end annotation


# instance fields
.field public final 㚬:F

.field public final 㺴:F

.field public final 䂻:L㺴/㚬/உ/䂻/ᱹ/ἥ$ḓ;


# direct methods
.method public constructor <init>(L㺴/㚬/உ/䂻/ᱹ/ἥ$ḓ;FF)V
    .locals 0

    invoke-direct {p0}, L㺴/㚬/உ/䂻/ᱹ/ἥ$ᆻ;-><init>()V

    iput-object p1, p0, L㺴/㚬/உ/䂻/ᱹ/ἥ$㚬;->䂻:L㺴/㚬/உ/䂻/ᱹ/ἥ$ḓ;

    iput p2, p0, L㺴/㚬/உ/䂻/ᱹ/ἥ$㚬;->㚬:F

    iput p3, p0, L㺴/㚬/உ/䂻/ᱹ/ἥ$㚬;->㺴:F

    return-void
.end method


# virtual methods
.method public உ(Landroid/graphics/Matrix;L㺴/㚬/உ/䂻/ᰘ/உ;ILandroid/graphics/Canvas;)V
    .locals 5

    iget-object v0, p0, L㺴/㚬/உ/䂻/ᱹ/ἥ$㚬;->䂻:L㺴/㚬/உ/䂻/ᱹ/ἥ$ḓ;

    invoke-static {v0}, L㺴/㚬/உ/䂻/ᱹ/ἥ$ḓ;->㺴(L㺴/㚬/உ/䂻/ᱹ/ἥ$ḓ;)F

    move-result v0

    iget v1, p0, L㺴/㚬/உ/䂻/ᱹ/ἥ$㚬;->㺴:F

    sub-float/2addr v0, v1

    iget-object v1, p0, L㺴/㚬/உ/䂻/ᱹ/ἥ$㚬;->䂻:L㺴/㚬/உ/䂻/ᱹ/ἥ$ḓ;

    invoke-static {v1}, L㺴/㚬/உ/䂻/ᱹ/ἥ$ḓ;->䂻(L㺴/㚬/உ/䂻/ᱹ/ἥ$ḓ;)F

    move-result v1

    iget v2, p0, L㺴/㚬/உ/䂻/ᱹ/ἥ$㚬;->㚬:F

    sub-float/2addr v1, v2

    new-instance v2, Landroid/graphics/RectF;

    float-to-double v3, v0

    float-to-double v0, v1

    invoke-static {v3, v4, v0, v1}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v0

    double-to-float v0, v0

    const/4 v1, 0x0

    invoke-direct {v2, v1, v1, v0, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0, p1}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    iget p1, p0, L㺴/㚬/உ/䂻/ᱹ/ἥ$㚬;->㚬:F

    iget v1, p0, L㺴/㚬/உ/䂻/ᱹ/ἥ$㚬;->㺴:F

    invoke-virtual {v0, p1, v1}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    invoke-virtual {p0}, L㺴/㚬/உ/䂻/ᱹ/ἥ$㚬;->㚬()F

    move-result p1

    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->preRotate(F)Z

    invoke-virtual {p2, p4, v0, v2, p3}, L㺴/㚬/உ/䂻/ᰘ/உ;->䂻(Landroid/graphics/Canvas;Landroid/graphics/Matrix;Landroid/graphics/RectF;I)V

    return-void
.end method

.method public 㚬()F
    .locals 3

    iget-object v0, p0, L㺴/㚬/உ/䂻/ᱹ/ἥ$㚬;->䂻:L㺴/㚬/உ/䂻/ᱹ/ἥ$ḓ;

    invoke-static {v0}, L㺴/㚬/உ/䂻/ᱹ/ἥ$ḓ;->㺴(L㺴/㚬/உ/䂻/ᱹ/ἥ$ḓ;)F

    move-result v0

    iget v1, p0, L㺴/㚬/உ/䂻/ᱹ/ἥ$㚬;->㺴:F

    sub-float/2addr v0, v1

    iget-object v1, p0, L㺴/㚬/உ/䂻/ᱹ/ἥ$㚬;->䂻:L㺴/㚬/உ/䂻/ᱹ/ἥ$ḓ;

    invoke-static {v1}, L㺴/㚬/உ/䂻/ᱹ/ἥ$ḓ;->䂻(L㺴/㚬/உ/䂻/ᱹ/ἥ$ḓ;)F

    move-result v1

    iget v2, p0, L㺴/㚬/உ/䂻/ᱹ/ἥ$㚬;->㚬:F

    sub-float/2addr v1, v2

    div-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->atan(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method
