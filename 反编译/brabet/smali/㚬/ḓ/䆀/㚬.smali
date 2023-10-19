.class public L㚬/ḓ/䆀/㚬;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements L㚬/ḓ/䆀/ḓ;


# instance fields
.field public final உ:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, L㚬/ḓ/䆀/㚬;->உ:Landroid/graphics/RectF;

    return-void
.end method


# virtual methods
.method public உ(L㚬/ḓ/䆀/㺴;)F
    .locals 0

    invoke-virtual {p0, p1}, L㚬/ḓ/䆀/㚬;->ბ(L㚬/ḓ/䆀/㺴;)L㚬/ḓ/䆀/ᆻ;

    move-result-object p1

    invoke-virtual {p1}, L㚬/ḓ/䆀/ᆻ;->ㄏ()F

    move-result p1

    return p1
.end method

.method public ಫ(L㚬/ḓ/䆀/㺴;)V
    .locals 2

    invoke-virtual {p0, p1}, L㚬/ḓ/䆀/㚬;->ბ(L㚬/ḓ/䆀/㺴;)L㚬/ḓ/䆀/ᆻ;

    move-result-object v0

    invoke-interface {p1}, L㚬/ḓ/䆀/㺴;->ᆻ()Z

    move-result v1

    invoke-virtual {v0, v1}, L㚬/ḓ/䆀/ᆻ;->ἥ(Z)V

    invoke-virtual {p0, p1}, L㚬/ḓ/䆀/㚬;->㲝(L㚬/ḓ/䆀/㺴;)V

    return-void
.end method

.method public ཇ()V
    .locals 1

    new-instance v0, L㚬/ḓ/䆀/㚬$உ;

    invoke-direct {v0, p0}, L㚬/ḓ/䆀/㚬$உ;-><init>(L㚬/ḓ/䆀/㚬;)V

    sput-object v0, L㚬/ḓ/䆀/ᆻ;->㞘:L㚬/ḓ/䆀/ᆻ$உ;

    return-void
.end method

.method public final ბ(L㚬/ḓ/䆀/㺴;)L㚬/ḓ/䆀/ᆻ;
    .locals 0

    invoke-interface {p1}, L㚬/ḓ/䆀/㺴;->㺴()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, L㚬/ḓ/䆀/ᆻ;

    return-object p1
.end method

.method public ᆻ(L㚬/ḓ/䆀/㺴;F)V
    .locals 0

    invoke-virtual {p0, p1}, L㚬/ḓ/䆀/㚬;->ბ(L㚬/ḓ/䆀/㺴;)L㚬/ḓ/䆀/ᆻ;

    move-result-object p1

    invoke-virtual {p1, p2}, L㚬/ḓ/䆀/ᆻ;->㞘(F)V

    return-void
.end method

.method public final ᓭ(Landroid/content/Context;Landroid/content/res/ColorStateList;FFF)L㚬/ḓ/䆀/ᆻ;
    .locals 7

    new-instance v6, L㚬/ḓ/䆀/ᆻ;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    move-object v0, v6

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, L㚬/ḓ/䆀/ᆻ;-><init>(Landroid/content/res/Resources;Landroid/content/res/ColorStateList;FFF)V

    return-object v6
.end method

.method public ḓ(L㚬/ḓ/䆀/㺴;)V
    .locals 0

    return-void
.end method

.method public ἥ(L㚬/ḓ/䆀/㺴;F)V
    .locals 1

    invoke-virtual {p0, p1}, L㚬/ḓ/䆀/㚬;->ბ(L㚬/ḓ/䆀/㺴;)L㚬/ḓ/䆀/ᆻ;

    move-result-object v0

    invoke-virtual {v0, p2}, L㚬/ḓ/䆀/ᆻ;->㲝(F)V

    invoke-virtual {p0, p1}, L㚬/ḓ/䆀/㚬;->㲝(L㚬/ḓ/䆀/㺴;)V

    return-void
.end method

.method public ℓ(L㚬/ḓ/䆀/㺴;Landroid/content/Context;Landroid/content/res/ColorStateList;FFF)V
    .locals 6

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    invoke-virtual/range {v0 .. v5}, L㚬/ḓ/䆀/㚬;->ᓭ(Landroid/content/Context;Landroid/content/res/ColorStateList;FFF)L㚬/ḓ/䆀/ᆻ;

    move-result-object p2

    invoke-interface {p1}, L㚬/ḓ/䆀/㺴;->ᆻ()Z

    move-result p3

    invoke-virtual {p2, p3}, L㚬/ḓ/䆀/ᆻ;->ἥ(Z)V

    invoke-interface {p1, p2}, L㚬/ḓ/䆀/㺴;->䆀(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0, p1}, L㚬/ḓ/䆀/㚬;->㲝(L㚬/ḓ/䆀/㺴;)V

    return-void
.end method

.method public ㄏ(L㚬/ḓ/䆀/㺴;F)V
    .locals 1

    invoke-virtual {p0, p1}, L㚬/ḓ/䆀/㚬;->ბ(L㚬/ḓ/䆀/㺴;)L㚬/ḓ/䆀/ᆻ;

    move-result-object v0

    invoke-virtual {v0, p2}, L㚬/ḓ/䆀/ᆻ;->ბ(F)V

    invoke-virtual {p0, p1}, L㚬/ḓ/䆀/㚬;->㲝(L㚬/ḓ/䆀/㺴;)V

    return-void
.end method

.method public 㚬(L㚬/ḓ/䆀/㺴;)F
    .locals 0

    invoke-virtual {p0, p1}, L㚬/ḓ/䆀/㚬;->ბ(L㚬/ḓ/䆀/㺴;)L㚬/ḓ/䆀/ᆻ;

    move-result-object p1

    invoke-virtual {p1}, L㚬/ḓ/䆀/ᆻ;->ಫ()F

    move-result p1

    return p1
.end method

.method public 㧦(L㚬/ḓ/䆀/㺴;Landroid/content/res/ColorStateList;)V
    .locals 0

    invoke-virtual {p0, p1}, L㚬/ḓ/䆀/㚬;->ბ(L㚬/ḓ/䆀/㺴;)L㚬/ḓ/䆀/ᆻ;

    move-result-object p1

    invoke-virtual {p1, p2}, L㚬/ḓ/䆀/ᆻ;->ᓭ(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public 㲝(L㚬/ḓ/䆀/㺴;)V
    .locals 4

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p0, p1}, L㚬/ḓ/䆀/㚬;->ბ(L㚬/ḓ/䆀/㺴;)L㚬/ḓ/䆀/ᆻ;

    move-result-object v1

    invoke-virtual {v1, v0}, L㚬/ḓ/䆀/ᆻ;->ℓ(Landroid/graphics/Rect;)V

    invoke-virtual {p0, p1}, L㚬/ḓ/䆀/㚬;->㺴(L㚬/ḓ/䆀/㺴;)F

    move-result v1

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v1, v1

    invoke-virtual {p0, p1}, L㚬/ḓ/䆀/㚬;->㚬(L㚬/ḓ/䆀/㺴;)F

    move-result v2

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    invoke-interface {p1, v1, v2}, L㚬/ḓ/䆀/㺴;->ḓ(II)V

    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget v2, v0, Landroid/graphics/Rect;->top:I

    iget v3, v0, Landroid/graphics/Rect;->right:I

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    invoke-interface {p1, v1, v2, v3, v0}, L㚬/ḓ/䆀/㺴;->உ(IIII)V

    return-void
.end method

.method public 㹖(L㚬/ḓ/䆀/㺴;)F
    .locals 0

    invoke-virtual {p0, p1}, L㚬/ḓ/䆀/㚬;->ბ(L㚬/ḓ/䆀/㺴;)L㚬/ḓ/䆀/ᆻ;

    move-result-object p1

    invoke-virtual {p1}, L㚬/ḓ/䆀/ᆻ;->㹖()F

    move-result p1

    return p1
.end method

.method public 㺴(L㚬/ḓ/䆀/㺴;)F
    .locals 0

    invoke-virtual {p0, p1}, L㚬/ḓ/䆀/㚬;->ბ(L㚬/ḓ/䆀/㺴;)L㚬/ḓ/䆀/ᆻ;

    move-result-object p1

    invoke-virtual {p1}, L㚬/ḓ/䆀/ᆻ;->㧦()F

    move-result p1

    return p1
.end method

.method public 䂻(L㚬/ḓ/䆀/㺴;)F
    .locals 0

    invoke-virtual {p0, p1}, L㚬/ḓ/䆀/㚬;->ბ(L㚬/ḓ/䆀/㺴;)L㚬/ḓ/䆀/ᆻ;

    move-result-object p1

    invoke-virtual {p1}, L㚬/ḓ/䆀/ᆻ;->ᆻ()F

    move-result p1

    return p1
.end method

.method public 䆀(L㚬/ḓ/䆀/㺴;)Landroid/content/res/ColorStateList;
    .locals 0

    invoke-virtual {p0, p1}, L㚬/ḓ/䆀/㚬;->ბ(L㚬/ḓ/䆀/㺴;)L㚬/ḓ/䆀/ᆻ;

    move-result-object p1

    invoke-virtual {p1}, L㚬/ḓ/䆀/ᆻ;->䆀()Landroid/content/res/ColorStateList;

    move-result-object p1

    return-object p1
.end method
