.class public L㚬/ḓ/䆀/䂻;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements L㚬/ḓ/䆀/ḓ;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public உ(L㚬/ḓ/䆀/㺴;)F
    .locals 0

    invoke-virtual {p0, p1}, L㚬/ḓ/䆀/䂻;->ᓭ(L㚬/ḓ/䆀/㺴;)L㚬/ḓ/䆀/䆀;

    move-result-object p1

    invoke-virtual {p1}, L㚬/ḓ/䆀/䆀;->㚬()F

    move-result p1

    return p1
.end method

.method public ಫ(L㚬/ḓ/䆀/㺴;)V
    .locals 1

    invoke-virtual {p0, p1}, L㚬/ḓ/䆀/䂻;->உ(L㚬/ḓ/䆀/㺴;)F

    move-result v0

    invoke-virtual {p0, p1, v0}, L㚬/ḓ/䆀/䂻;->ἥ(L㚬/ḓ/䆀/㺴;F)V

    return-void
.end method

.method public ཇ()V
    .locals 0

    return-void
.end method

.method public ბ(L㚬/ḓ/䆀/㺴;)V
    .locals 4

    invoke-interface {p1}, L㚬/ḓ/䆀/㺴;->㚬()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-interface {p1, v0, v0, v0, v0}, L㚬/ḓ/䆀/㺴;->உ(IIII)V

    return-void

    :cond_0
    invoke-virtual {p0, p1}, L㚬/ḓ/䆀/䂻;->உ(L㚬/ḓ/䆀/㺴;)F

    move-result v0

    invoke-virtual {p0, p1}, L㚬/ḓ/䆀/䂻;->䂻(L㚬/ḓ/䆀/㺴;)F

    move-result v1

    invoke-interface {p1}, L㚬/ḓ/䆀/㺴;->ᆻ()Z

    move-result v2

    invoke-static {v0, v1, v2}, L㚬/ḓ/䆀/ᆻ;->㚬(FFZ)F

    move-result v2

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    invoke-interface {p1}, L㚬/ḓ/䆀/㺴;->ᆻ()Z

    move-result v3

    invoke-static {v0, v1, v3}, L㚬/ḓ/䆀/ᆻ;->㺴(FFZ)F

    move-result v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    invoke-interface {p1, v2, v0, v2, v0}, L㚬/ḓ/䆀/㺴;->உ(IIII)V

    return-void
.end method

.method public ᆻ(L㚬/ḓ/䆀/㺴;F)V
    .locals 0

    invoke-interface {p1}, L㚬/ḓ/䆀/㺴;->䂻()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/view/View;->setElevation(F)V

    return-void
.end method

.method public final ᓭ(L㚬/ḓ/䆀/㺴;)L㚬/ḓ/䆀/䆀;
    .locals 0

    invoke-interface {p1}, L㚬/ḓ/䆀/㺴;->㺴()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, L㚬/ḓ/䆀/䆀;

    return-object p1
.end method

.method public ḓ(L㚬/ḓ/䆀/㺴;)V
    .locals 1

    invoke-virtual {p0, p1}, L㚬/ḓ/䆀/䂻;->உ(L㚬/ḓ/䆀/㺴;)F

    move-result v0

    invoke-virtual {p0, p1, v0}, L㚬/ḓ/䆀/䂻;->ἥ(L㚬/ḓ/䆀/㺴;F)V

    return-void
.end method

.method public ἥ(L㚬/ḓ/䆀/㺴;F)V
    .locals 3

    invoke-virtual {p0, p1}, L㚬/ḓ/䆀/䂻;->ᓭ(L㚬/ḓ/䆀/㺴;)L㚬/ḓ/䆀/䆀;

    move-result-object v0

    invoke-interface {p1}, L㚬/ḓ/䆀/㺴;->㚬()Z

    move-result v1

    invoke-interface {p1}, L㚬/ḓ/䆀/㺴;->ᆻ()Z

    move-result v2

    invoke-virtual {v0, p2, v1, v2}, L㚬/ḓ/䆀/䆀;->ᆻ(FZZ)V

    invoke-virtual {p0, p1}, L㚬/ḓ/䆀/䂻;->ბ(L㚬/ḓ/䆀/㺴;)V

    return-void
.end method

.method public ℓ(L㚬/ḓ/䆀/㺴;Landroid/content/Context;Landroid/content/res/ColorStateList;FFF)V
    .locals 0

    new-instance p2, L㚬/ḓ/䆀/䆀;

    invoke-direct {p2, p3, p4}, L㚬/ḓ/䆀/䆀;-><init>(Landroid/content/res/ColorStateList;F)V

    invoke-interface {p1, p2}, L㚬/ḓ/䆀/㺴;->䆀(Landroid/graphics/drawable/Drawable;)V

    invoke-interface {p1}, L㚬/ḓ/䆀/㺴;->䂻()Landroid/view/View;

    move-result-object p2

    const/4 p3, 0x1

    invoke-virtual {p2, p3}, Landroid/view/View;->setClipToOutline(Z)V

    invoke-virtual {p2, p5}, Landroid/view/View;->setElevation(F)V

    invoke-virtual {p0, p1, p6}, L㚬/ḓ/䆀/䂻;->ἥ(L㚬/ḓ/䆀/㺴;F)V

    return-void
.end method

.method public ㄏ(L㚬/ḓ/䆀/㺴;F)V
    .locals 0

    invoke-virtual {p0, p1}, L㚬/ḓ/䆀/䂻;->ᓭ(L㚬/ḓ/䆀/㺴;)L㚬/ḓ/䆀/䆀;

    move-result-object p1

    invoke-virtual {p1, p2}, L㚬/ḓ/䆀/䆀;->ℓ(F)V

    return-void
.end method

.method public 㚬(L㚬/ḓ/䆀/㺴;)F
    .locals 1

    invoke-virtual {p0, p1}, L㚬/ḓ/䆀/䂻;->䂻(L㚬/ḓ/䆀/㺴;)F

    move-result p1

    const/high16 v0, 0x40000000    # 2.0f

    mul-float p1, p1, v0

    return p1
.end method

.method public 㧦(L㚬/ḓ/䆀/㺴;Landroid/content/res/ColorStateList;)V
    .locals 0

    invoke-virtual {p0, p1}, L㚬/ḓ/䆀/䂻;->ᓭ(L㚬/ḓ/䆀/㺴;)L㚬/ḓ/䆀/䆀;

    move-result-object p1

    invoke-virtual {p1, p2}, L㚬/ḓ/䆀/䆀;->䆀(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public 㹖(L㚬/ḓ/䆀/㺴;)F
    .locals 0

    invoke-interface {p1}, L㚬/ḓ/䆀/㺴;->䂻()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getElevation()F

    move-result p1

    return p1
.end method

.method public 㺴(L㚬/ḓ/䆀/㺴;)F
    .locals 1

    invoke-virtual {p0, p1}, L㚬/ḓ/䆀/䂻;->䂻(L㚬/ḓ/䆀/㺴;)F

    move-result p1

    const/high16 v0, 0x40000000    # 2.0f

    mul-float p1, p1, v0

    return p1
.end method

.method public 䂻(L㚬/ḓ/䆀/㺴;)F
    .locals 0

    invoke-virtual {p0, p1}, L㚬/ḓ/䆀/䂻;->ᓭ(L㚬/ḓ/䆀/㺴;)L㚬/ḓ/䆀/䆀;

    move-result-object p1

    invoke-virtual {p1}, L㚬/ḓ/䆀/䆀;->㺴()F

    move-result p1

    return p1
.end method

.method public 䆀(L㚬/ḓ/䆀/㺴;)Landroid/content/res/ColorStateList;
    .locals 0

    invoke-virtual {p0, p1}, L㚬/ḓ/䆀/䂻;->ᓭ(L㚬/ḓ/䆀/㺴;)L㚬/ḓ/䆀/䆀;

    move-result-object p1

    invoke-virtual {p1}, L㚬/ḓ/䆀/䆀;->䂻()Landroid/content/res/ColorStateList;

    move-result-object p1

    return-object p1
.end method
