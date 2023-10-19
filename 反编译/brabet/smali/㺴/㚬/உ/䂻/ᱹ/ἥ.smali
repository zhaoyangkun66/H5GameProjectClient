.class public L㺴/㚬/உ/䂻/ᱹ/ἥ;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        L㺴/㚬/உ/䂻/ᱹ/ἥ$㺴;,
        L㺴/㚬/உ/䂻/ᱹ/ἥ$ḓ;,
        L㺴/㚬/உ/䂻/ᱹ/ἥ$䆀;,
        L㺴/㚬/உ/䂻/ᱹ/ἥ$䂻;,
        L㺴/㚬/உ/䂻/ᱹ/ἥ$㚬;,
        L㺴/㚬/உ/䂻/ᱹ/ἥ$ᆻ;
    }
.end annotation


# instance fields
.field public உ:F
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public final ᆻ:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "L\u3eb4/\u36ac/\u0b89/\u40bb/\u1c79/\u1f25$\u4180;",
            ">;"
        }
    .end annotation
.end field

.field public ḓ:F
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public final ℓ:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "L\u3eb4/\u36ac/\u0b89/\u40bb/\u1c79/\u1f25$\u11bb;",
            ">;"
        }
    .end annotation
.end field

.field public 㚬:F
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public 㺴:F
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public 䂻:F
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public 䆀:F
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, L㺴/㚬/உ/䂻/ᱹ/ἥ;->ᆻ:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, L㺴/㚬/உ/䂻/ᱹ/ἥ;->ℓ:Ljava/util/List;

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, L㺴/㚬/உ/䂻/ᱹ/ἥ;->ἥ(FF)V

    return-void
.end method


# virtual methods
.method public உ(FFFFFF)V
    .locals 4

    new-instance v0, L㺴/㚬/உ/䂻/ᱹ/ἥ$㺴;

    invoke-direct {v0, p1, p2, p3, p4}, L㺴/㚬/உ/䂻/ᱹ/ἥ$㺴;-><init>(FFFF)V

    invoke-static {v0, p5}, L㺴/㚬/உ/䂻/ᱹ/ἥ$㺴;->䆀(L㺴/㚬/உ/䂻/ᱹ/ἥ$㺴;F)V

    invoke-static {v0, p6}, L㺴/㚬/உ/䂻/ᱹ/ἥ$㺴;->ᆻ(L㺴/㚬/உ/䂻/ᱹ/ἥ$㺴;F)V

    iget-object v1, p0, L㺴/㚬/உ/䂻/ᱹ/ἥ;->ᆻ:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, L㺴/㚬/உ/䂻/ᱹ/ἥ$䂻;

    invoke-direct {v1, v0}, L㺴/㚬/உ/䂻/ᱹ/ἥ$䂻;-><init>(L㺴/㚬/உ/䂻/ᱹ/ἥ$㺴;)V

    add-float v0, p5, p6

    const/4 v2, 0x0

    cmpg-float p6, p6, v2

    if-gez p6, :cond_0

    const/4 p6, 0x1

    goto :goto_0

    :cond_0
    const/4 p6, 0x0

    :goto_0
    const/high16 v2, 0x43b40000    # 360.0f

    const/high16 v3, 0x43340000    # 180.0f

    if-eqz p6, :cond_1

    add-float/2addr p5, v3

    rem-float/2addr p5, v2

    :cond_1
    if-eqz p6, :cond_2

    add-float/2addr v3, v0

    rem-float/2addr v3, v2

    goto :goto_1

    :cond_2
    move v3, v0

    :goto_1
    invoke-virtual {p0, v1, p5, v3}, L㺴/㚬/உ/䂻/ᱹ/ἥ;->㚬(L㺴/㚬/உ/䂻/ᱹ/ἥ$ᆻ;FF)V

    add-float p5, p1, p3

    const/high16 p6, 0x3f000000    # 0.5f

    mul-float p5, p5, p6

    sub-float/2addr p3, p1

    const/high16 p1, 0x40000000    # 2.0f

    div-float/2addr p3, p1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    double-to-float v2, v2

    mul-float p3, p3, v2

    add-float/2addr p5, p3

    invoke-virtual {p0, p5}, L㺴/㚬/உ/䂻/ᱹ/ἥ;->㲝(F)V

    add-float p3, p2, p4

    mul-float p3, p3, p6

    sub-float/2addr p4, p2

    div-float/2addr p4, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Math;->sin(D)D

    move-result-wide p1

    double-to-float p1, p1

    mul-float p4, p4, p1

    add-float/2addr p3, p4

    invoke-virtual {p0, p3}, L㺴/㚬/உ/䂻/ᱹ/ἥ;->㞘(F)V

    return-void
.end method

.method public ಫ()F
    .locals 1

    iget v0, p0, L㺴/㚬/உ/䂻/ᱹ/ἥ;->உ:F

    return v0
.end method

.method public ཇ(FFFF)V
    .locals 0

    invoke-virtual {p0, p1}, L㺴/㚬/உ/䂻/ᱹ/ἥ;->㭲(F)V

    invoke-virtual {p0, p2}, L㺴/㚬/உ/䂻/ᱹ/ἥ;->ḙ(F)V

    invoke-virtual {p0, p1}, L㺴/㚬/உ/䂻/ᱹ/ἥ;->㲝(F)V

    invoke-virtual {p0, p2}, L㺴/㚬/உ/䂻/ᱹ/ἥ;->㞘(F)V

    invoke-virtual {p0, p3}, L㺴/㚬/உ/䂻/ᱹ/ἥ;->ᓭ(F)V

    add-float/2addr p3, p4

    const/high16 p1, 0x43b40000    # 360.0f

    rem-float/2addr p3, p1

    invoke-virtual {p0, p3}, L㺴/㚬/உ/䂻/ᱹ/ἥ;->ბ(F)V

    iget-object p1, p0, L㺴/㚬/உ/䂻/ᱹ/ἥ;->ᆻ:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    iget-object p1, p0, L㺴/㚬/உ/䂻/ᱹ/ἥ;->ℓ:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    return-void
.end method

.method public final ბ(F)V
    .locals 0

    iput p1, p0, L㺴/㚬/உ/䂻/ᱹ/ἥ;->䆀:F

    return-void
.end method

.method public final ᆻ()F
    .locals 1

    iget v0, p0, L㺴/㚬/உ/䂻/ᱹ/ἥ;->䆀:F

    return v0
.end method

.method public final ᓭ(F)V
    .locals 0

    iput p1, p0, L㺴/㚬/உ/䂻/ᱹ/ἥ;->ḓ:F

    return-void
.end method

.method public ḓ(Landroid/graphics/Matrix;)L㺴/㚬/உ/䂻/ᱹ/ἥ$ᆻ;
    .locals 2

    invoke-virtual {p0}, L㺴/㚬/உ/䂻/ᱹ/ἥ;->ᆻ()F

    move-result v0

    invoke-virtual {p0, v0}, L㺴/㚬/உ/䂻/ᱹ/ἥ;->䂻(F)V

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, L㺴/㚬/உ/䂻/ᱹ/ἥ;->ℓ:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v1, L㺴/㚬/உ/䂻/ᱹ/ἥ$உ;

    invoke-direct {v1, p0, v0, p1}, L㺴/㚬/உ/䂻/ᱹ/ἥ$உ;-><init>(L㺴/㚬/உ/䂻/ᱹ/ἥ;Ljava/util/List;Landroid/graphics/Matrix;)V

    return-object v1
.end method

.method public final ḙ(F)V
    .locals 0

    iput p1, p0, L㺴/㚬/உ/䂻/ᱹ/ἥ;->䂻:F

    return-void
.end method

.method public ἥ(FF)V
    .locals 2

    const/high16 v0, 0x43870000    # 270.0f

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, L㺴/㚬/உ/䂻/ᱹ/ἥ;->ཇ(FFFF)V

    return-void
.end method

.method public ℓ()F
    .locals 1

    iget v0, p0, L㺴/㚬/உ/䂻/ᱹ/ἥ;->㚬:F

    return v0
.end method

.method public ㄏ()F
    .locals 1

    iget v0, p0, L㺴/㚬/உ/䂻/ᱹ/ἥ;->㺴:F

    return v0
.end method

.method public final 㚬(L㺴/㚬/உ/䂻/ᱹ/ἥ$ᆻ;FF)V
    .locals 0

    invoke-virtual {p0, p2}, L㺴/㚬/உ/䂻/ᱹ/ἥ;->䂻(F)V

    iget-object p2, p0, L㺴/㚬/உ/䂻/ᱹ/ἥ;->ℓ:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, p3}, L㺴/㚬/உ/䂻/ᱹ/ἥ;->ᓭ(F)V

    return-void
.end method

.method public final 㞘(F)V
    .locals 0

    iput p1, p0, L㺴/㚬/உ/䂻/ᱹ/ἥ;->㺴:F

    return-void
.end method

.method public 㧦()F
    .locals 1

    iget v0, p0, L㺴/㚬/உ/䂻/ᱹ/ἥ;->䂻:F

    return v0
.end method

.method public final 㭲(F)V
    .locals 0

    iput p1, p0, L㺴/㚬/உ/䂻/ᱹ/ἥ;->உ:F

    return-void
.end method

.method public final 㲝(F)V
    .locals 0

    iput p1, p0, L㺴/㚬/உ/䂻/ᱹ/ἥ;->㚬:F

    return-void
.end method

.method public 㹖(FF)V
    .locals 4

    new-instance v0, L㺴/㚬/உ/䂻/ᱹ/ἥ$ḓ;

    invoke-direct {v0}, L㺴/㚬/உ/䂻/ᱹ/ἥ$ḓ;-><init>()V

    invoke-static {v0, p1}, L㺴/㚬/உ/䂻/ᱹ/ἥ$ḓ;->㚬(L㺴/㚬/உ/䂻/ᱹ/ἥ$ḓ;F)F

    invoke-static {v0, p2}, L㺴/㚬/உ/䂻/ᱹ/ἥ$ḓ;->ḓ(L㺴/㚬/உ/䂻/ᱹ/ἥ$ḓ;F)F

    iget-object v1, p0, L㺴/㚬/உ/䂻/ᱹ/ἥ;->ᆻ:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, L㺴/㚬/உ/䂻/ᱹ/ἥ$㚬;

    invoke-virtual {p0}, L㺴/㚬/உ/䂻/ᱹ/ἥ;->ℓ()F

    move-result v2

    invoke-virtual {p0}, L㺴/㚬/உ/䂻/ᱹ/ἥ;->ㄏ()F

    move-result v3

    invoke-direct {v1, v0, v2, v3}, L㺴/㚬/உ/䂻/ᱹ/ἥ$㚬;-><init>(L㺴/㚬/உ/䂻/ᱹ/ἥ$ḓ;FF)V

    invoke-virtual {v1}, L㺴/㚬/உ/䂻/ᱹ/ἥ$㚬;->㚬()F

    move-result v0

    const/high16 v2, 0x43870000    # 270.0f

    add-float/2addr v0, v2

    invoke-virtual {v1}, L㺴/㚬/உ/䂻/ᱹ/ἥ$㚬;->㚬()F

    move-result v3

    add-float/2addr v3, v2

    invoke-virtual {p0, v1, v0, v3}, L㺴/㚬/உ/䂻/ᱹ/ἥ;->㚬(L㺴/㚬/உ/䂻/ᱹ/ἥ$ᆻ;FF)V

    invoke-virtual {p0, p1}, L㺴/㚬/உ/䂻/ᱹ/ἥ;->㲝(F)V

    invoke-virtual {p0, p2}, L㺴/㚬/உ/䂻/ᱹ/ἥ;->㞘(F)V

    return-void
.end method

.method public 㺴(Landroid/graphics/Matrix;Landroid/graphics/Path;)V
    .locals 3

    iget-object v0, p0, L㺴/㚬/உ/䂻/ᱹ/ἥ;->ᆻ:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, L㺴/㚬/உ/䂻/ᱹ/ἥ;->ᆻ:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, L㺴/㚬/உ/䂻/ᱹ/ἥ$䆀;

    invoke-virtual {v2, p1, p2}, L㺴/㚬/உ/䂻/ᱹ/ἥ$䆀;->உ(Landroid/graphics/Matrix;Landroid/graphics/Path;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final 䂻(F)V
    .locals 6

    invoke-virtual {p0}, L㺴/㚬/உ/䂻/ᱹ/ἥ;->䆀()F

    move-result v0

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, L㺴/㚬/உ/䂻/ᱹ/ἥ;->䆀()F

    move-result v0

    sub-float v0, p1, v0

    const/high16 v1, 0x43b40000    # 360.0f

    add-float/2addr v0, v1

    rem-float/2addr v0, v1

    const/high16 v1, 0x43340000    # 180.0f

    cmpl-float v1, v0, v1

    if-lez v1, :cond_1

    return-void

    :cond_1
    new-instance v1, L㺴/㚬/உ/䂻/ᱹ/ἥ$㺴;

    invoke-virtual {p0}, L㺴/㚬/உ/䂻/ᱹ/ἥ;->ℓ()F

    move-result v2

    invoke-virtual {p0}, L㺴/㚬/உ/䂻/ᱹ/ἥ;->ㄏ()F

    move-result v3

    invoke-virtual {p0}, L㺴/㚬/உ/䂻/ᱹ/ἥ;->ℓ()F

    move-result v4

    invoke-virtual {p0}, L㺴/㚬/உ/䂻/ᱹ/ἥ;->ㄏ()F

    move-result v5

    invoke-direct {v1, v2, v3, v4, v5}, L㺴/㚬/உ/䂻/ᱹ/ἥ$㺴;-><init>(FFFF)V

    invoke-virtual {p0}, L㺴/㚬/உ/䂻/ᱹ/ἥ;->䆀()F

    move-result v2

    invoke-static {v1, v2}, L㺴/㚬/உ/䂻/ᱹ/ἥ$㺴;->䆀(L㺴/㚬/உ/䂻/ᱹ/ἥ$㺴;F)V

    invoke-static {v1, v0}, L㺴/㚬/உ/䂻/ᱹ/ἥ$㺴;->ᆻ(L㺴/㚬/உ/䂻/ᱹ/ἥ$㺴;F)V

    iget-object v0, p0, L㺴/㚬/உ/䂻/ᱹ/ἥ;->ℓ:Ljava/util/List;

    new-instance v2, L㺴/㚬/உ/䂻/ᱹ/ἥ$䂻;

    invoke-direct {v2, v1}, L㺴/㚬/உ/䂻/ᱹ/ἥ$䂻;-><init>(L㺴/㚬/உ/䂻/ᱹ/ἥ$㺴;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, p1}, L㺴/㚬/உ/䂻/ᱹ/ἥ;->ᓭ(F)V

    return-void
.end method

.method public final 䆀()F
    .locals 1

    iget v0, p0, L㺴/㚬/உ/䂻/ᱹ/ἥ;->ḓ:F

    return v0
.end method
