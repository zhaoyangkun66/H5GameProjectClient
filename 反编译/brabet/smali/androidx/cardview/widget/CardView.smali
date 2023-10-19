.class public Landroidx/cardview/widget/CardView;
.super Landroid/widget/FrameLayout;
.source ""


# static fields
.field public static final ಫ:L㚬/ḓ/䆀/ḓ;

.field public static final ㄏ:[I


# instance fields
.field public final ᆻ:Landroid/graphics/Rect;

.field public ḓ:I

.field public final ℓ:L㚬/ḓ/䆀/㺴;

.field public 㚬:Z

.field public 㺴:I

.field public 䂻:Z

.field public final 䆀:Landroid/graphics/Rect;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x1010031

    aput v2, v0, v1

    sput-object v0, Landroidx/cardview/widget/CardView;->ㄏ:[I

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    new-instance v0, L㚬/ḓ/䆀/䂻;

    invoke-direct {v0}, L㚬/ḓ/䆀/䂻;-><init>()V

    :goto_0
    sput-object v0, Landroidx/cardview/widget/CardView;->ಫ:L㚬/ḓ/䆀/ḓ;

    goto :goto_1

    :cond_0
    const/16 v1, 0x11

    if-lt v0, v1, :cond_1

    new-instance v0, L㚬/ḓ/䆀/உ;

    invoke-direct {v0}, L㚬/ḓ/䆀/உ;-><init>()V

    goto :goto_0

    :cond_1
    new-instance v0, L㚬/ḓ/䆀/㚬;

    invoke-direct {v0}, L㚬/ḓ/䆀/㚬;-><init>()V

    goto :goto_0

    :goto_1
    sget-object v0, Landroidx/cardview/widget/CardView;->ಫ:L㚬/ḓ/䆀/ḓ;

    invoke-interface {v0}, L㚬/ḓ/䆀/ḓ;->ཇ()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    sget v0, L㚬/ḓ/உ;->உ:I

    invoke-direct {p0, p1, p2, v0}, Landroidx/cardview/widget/CardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 9

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroidx/cardview/widget/CardView;->䆀:Landroid/graphics/Rect;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Landroidx/cardview/widget/CardView;->ᆻ:Landroid/graphics/Rect;

    new-instance v3, Landroidx/cardview/widget/CardView$உ;

    invoke-direct {v3, p0}, Landroidx/cardview/widget/CardView$உ;-><init>(Landroidx/cardview/widget/CardView;)V

    iput-object v3, p0, Landroidx/cardview/widget/CardView;->ℓ:L㚬/ḓ/䆀/㺴;

    sget-object v1, L㚬/ḓ/ḓ;->உ:[I

    sget v2, L㚬/ḓ/㺴;->உ:I

    invoke-virtual {p1, p2, v1, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    sget p3, L㚬/ḓ/ḓ;->㺴:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p3

    :goto_0
    move-object v5, p3

    goto :goto_2

    :cond_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p3

    sget-object v1, Landroidx/cardview/widget/CardView;->ㄏ:[I

    invoke-virtual {p3, v1}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object p3

    invoke-virtual {p3, v2, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    invoke-virtual {p3}, Landroid/content/res/TypedArray;->recycle()V

    const/4 p3, 0x3

    new-array p3, p3, [F

    invoke-static {v1, p3}, Landroid/graphics/Color;->colorToHSV(I[F)V

    const/4 v1, 0x2

    aget p3, p3, v1

    const/high16 v1, 0x3f000000    # 0.5f

    cmpl-float p3, p3, v1

    if-lez p3, :cond_1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget v1, L㚬/ḓ/䂻;->䂻:I

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget v1, L㚬/ḓ/䂻;->உ:I

    :goto_1
    invoke-virtual {p3, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p3

    invoke-static {p3}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p3

    goto :goto_0

    :goto_2
    sget p3, L㚬/ḓ/ḓ;->ḓ:I

    const/4 v1, 0x0

    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v6

    sget p3, L㚬/ḓ/ḓ;->䆀:I

    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v7

    sget p3, L㚬/ḓ/ḓ;->ᆻ:I

    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p3

    sget v1, L㚬/ḓ/ḓ;->ㄏ:I

    invoke-virtual {p2, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Landroidx/cardview/widget/CardView;->䂻:Z

    sget v1, L㚬/ḓ/ḓ;->ℓ:I

    const/4 v4, 0x1

    invoke-virtual {p2, v1, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Landroidx/cardview/widget/CardView;->㚬:Z

    sget v1, L㚬/ḓ/ḓ;->ಫ:I

    invoke-virtual {p2, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    sget v4, L㚬/ḓ/ḓ;->㹖:I

    invoke-virtual {p2, v4, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, v0, Landroid/graphics/Rect;->left:I

    sget v4, L㚬/ḓ/ḓ;->ཇ:I

    invoke-virtual {p2, v4, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, v0, Landroid/graphics/Rect;->top:I

    sget v4, L㚬/ḓ/ḓ;->ἥ:I

    invoke-virtual {p2, v4, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, v0, Landroid/graphics/Rect;->right:I

    sget v4, L㚬/ḓ/ḓ;->㧦:I

    invoke-virtual {p2, v4, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    cmpl-float v0, v7, p3

    if-lez v0, :cond_2

    move v8, v7

    goto :goto_3

    :cond_2
    move v8, p3

    :goto_3
    sget p3, L㚬/ḓ/ḓ;->䂻:I

    invoke-virtual {p2, p3, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Landroidx/cardview/widget/CardView;->㺴:I

    sget p3, L㚬/ḓ/ḓ;->㚬:I

    invoke-virtual {p2, p3, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Landroidx/cardview/widget/CardView;->ḓ:I

    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    sget-object v2, Landroidx/cardview/widget/CardView;->ಫ:L㚬/ḓ/䆀/ḓ;

    move-object v4, p1

    invoke-interface/range {v2 .. v8}, L㚬/ḓ/䆀/ḓ;->ℓ(L㚬/ḓ/䆀/㺴;Landroid/content/Context;Landroid/content/res/ColorStateList;FFF)V

    return-void
.end method

.method public static synthetic ḓ(Landroidx/cardview/widget/CardView;I)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setMinimumHeight(I)V

    return-void
.end method

.method public static synthetic 㚬(Landroidx/cardview/widget/CardView;IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    return-void
.end method

.method public static synthetic 㺴(Landroidx/cardview/widget/CardView;I)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setMinimumWidth(I)V

    return-void
.end method


# virtual methods
.method public getCardBackgroundColor()Landroid/content/res/ColorStateList;
    .locals 2

    sget-object v0, Landroidx/cardview/widget/CardView;->ಫ:L㚬/ḓ/䆀/ḓ;

    iget-object v1, p0, Landroidx/cardview/widget/CardView;->ℓ:L㚬/ḓ/䆀/㺴;

    invoke-interface {v0, v1}, L㚬/ḓ/䆀/ḓ;->䆀(L㚬/ḓ/䆀/㺴;)Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0
.end method

.method public getCardElevation()F
    .locals 2

    sget-object v0, Landroidx/cardview/widget/CardView;->ಫ:L㚬/ḓ/䆀/ḓ;

    iget-object v1, p0, Landroidx/cardview/widget/CardView;->ℓ:L㚬/ḓ/䆀/㺴;

    invoke-interface {v0, v1}, L㚬/ḓ/䆀/ḓ;->㹖(L㚬/ḓ/䆀/㺴;)F

    move-result v0

    return v0
.end method

.method public getContentPaddingBottom()I
    .locals 1

    iget-object v0, p0, Landroidx/cardview/widget/CardView;->䆀:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    return v0
.end method

.method public getContentPaddingLeft()I
    .locals 1

    iget-object v0, p0, Landroidx/cardview/widget/CardView;->䆀:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    return v0
.end method

.method public getContentPaddingRight()I
    .locals 1

    iget-object v0, p0, Landroidx/cardview/widget/CardView;->䆀:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    return v0
.end method

.method public getContentPaddingTop()I
    .locals 1

    iget-object v0, p0, Landroidx/cardview/widget/CardView;->䆀:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    return v0
.end method

.method public getMaxCardElevation()F
    .locals 2

    sget-object v0, Landroidx/cardview/widget/CardView;->ಫ:L㚬/ḓ/䆀/ḓ;

    iget-object v1, p0, Landroidx/cardview/widget/CardView;->ℓ:L㚬/ḓ/䆀/㺴;

    invoke-interface {v0, v1}, L㚬/ḓ/䆀/ḓ;->உ(L㚬/ḓ/䆀/㺴;)F

    move-result v0

    return v0
.end method

.method public getPreventCornerOverlap()Z
    .locals 1

    iget-boolean v0, p0, Landroidx/cardview/widget/CardView;->㚬:Z

    return v0
.end method

.method public getRadius()F
    .locals 2

    sget-object v0, Landroidx/cardview/widget/CardView;->ಫ:L㚬/ḓ/䆀/ḓ;

    iget-object v1, p0, Landroidx/cardview/widget/CardView;->ℓ:L㚬/ḓ/䆀/㺴;

    invoke-interface {v0, v1}, L㚬/ḓ/䆀/ḓ;->䂻(L㚬/ḓ/䆀/㺴;)F

    move-result v0

    return v0
.end method

.method public getUseCompatPadding()Z
    .locals 1

    iget-boolean v0, p0, Landroidx/cardview/widget/CardView;->䂻:Z

    return v0
.end method

.method public onMeasure(II)V
    .locals 6

    sget-object v0, Landroidx/cardview/widget/CardView;->ಫ:L㚬/ḓ/䆀/ḓ;

    instance-of v1, v0, L㚬/ḓ/䆀/䂻;

    if-nez v1, :cond_2

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    const/high16 v3, -0x80000000

    if-eq v1, v3, :cond_0

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v4, p0, Landroidx/cardview/widget/CardView;->ℓ:L㚬/ḓ/䆀/㺴;

    invoke-interface {v0, v4}, L㚬/ḓ/䆀/ḓ;->㺴(L㚬/ḓ/䆀/㺴;)F

    move-result v4

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v4, v4

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    invoke-static {v4, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-static {p1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    :goto_0
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    if-eq v1, v3, :cond_1

    if-eq v1, v2, :cond_1

    goto :goto_1

    :cond_1
    iget-object v2, p0, Landroidx/cardview/widget/CardView;->ℓ:L㚬/ḓ/䆀/㺴;

    invoke-interface {v0, v2}, L㚬/ḓ/䆀/ḓ;->㚬(L㚬/ḓ/䆀/㺴;)F

    move-result v0

    float-to-double v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v0, v2

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    invoke-static {v0, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    invoke-static {p2, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    :cond_2
    :goto_1
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void
.end method

.method public setCardBackgroundColor(I)V
    .locals 2

    sget-object v0, Landroidx/cardview/widget/CardView;->ಫ:L㚬/ḓ/䆀/ḓ;

    iget-object v1, p0, Landroidx/cardview/widget/CardView;->ℓ:L㚬/ḓ/䆀/㺴;

    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-interface {v0, v1, p1}, L㚬/ḓ/䆀/ḓ;->㧦(L㚬/ḓ/䆀/㺴;Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setCardBackgroundColor(Landroid/content/res/ColorStateList;)V
    .locals 2

    sget-object v0, Landroidx/cardview/widget/CardView;->ಫ:L㚬/ḓ/䆀/ḓ;

    iget-object v1, p0, Landroidx/cardview/widget/CardView;->ℓ:L㚬/ḓ/䆀/㺴;

    invoke-interface {v0, v1, p1}, L㚬/ḓ/䆀/ḓ;->㧦(L㚬/ḓ/䆀/㺴;Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setCardElevation(F)V
    .locals 2

    sget-object v0, Landroidx/cardview/widget/CardView;->ಫ:L㚬/ḓ/䆀/ḓ;

    iget-object v1, p0, Landroidx/cardview/widget/CardView;->ℓ:L㚬/ḓ/䆀/㺴;

    invoke-interface {v0, v1, p1}, L㚬/ḓ/䆀/ḓ;->ᆻ(L㚬/ḓ/䆀/㺴;F)V

    return-void
.end method

.method public setMaxCardElevation(F)V
    .locals 2

    sget-object v0, Landroidx/cardview/widget/CardView;->ಫ:L㚬/ḓ/䆀/ḓ;

    iget-object v1, p0, Landroidx/cardview/widget/CardView;->ℓ:L㚬/ḓ/䆀/㺴;

    invoke-interface {v0, v1, p1}, L㚬/ḓ/䆀/ḓ;->ἥ(L㚬/ḓ/䆀/㺴;F)V

    return-void
.end method

.method public setMinimumHeight(I)V
    .locals 0

    iput p1, p0, Landroidx/cardview/widget/CardView;->ḓ:I

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setMinimumHeight(I)V

    return-void
.end method

.method public setMinimumWidth(I)V
    .locals 0

    iput p1, p0, Landroidx/cardview/widget/CardView;->㺴:I

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setMinimumWidth(I)V

    return-void
.end method

.method public setPadding(IIII)V
    .locals 0

    return-void
.end method

.method public setPaddingRelative(IIII)V
    .locals 0

    return-void
.end method

.method public setPreventCornerOverlap(Z)V
    .locals 1

    iget-boolean v0, p0, Landroidx/cardview/widget/CardView;->㚬:Z

    if-eq p1, v0, :cond_0

    iput-boolean p1, p0, Landroidx/cardview/widget/CardView;->㚬:Z

    sget-object p1, Landroidx/cardview/widget/CardView;->ಫ:L㚬/ḓ/䆀/ḓ;

    iget-object v0, p0, Landroidx/cardview/widget/CardView;->ℓ:L㚬/ḓ/䆀/㺴;

    invoke-interface {p1, v0}, L㚬/ḓ/䆀/ḓ;->ಫ(L㚬/ḓ/䆀/㺴;)V

    :cond_0
    return-void
.end method

.method public setRadius(F)V
    .locals 2

    sget-object v0, Landroidx/cardview/widget/CardView;->ಫ:L㚬/ḓ/䆀/ḓ;

    iget-object v1, p0, Landroidx/cardview/widget/CardView;->ℓ:L㚬/ḓ/䆀/㺴;

    invoke-interface {v0, v1, p1}, L㚬/ḓ/䆀/ḓ;->ㄏ(L㚬/ḓ/䆀/㺴;F)V

    return-void
.end method

.method public setUseCompatPadding(Z)V
    .locals 1

    iget-boolean v0, p0, Landroidx/cardview/widget/CardView;->䂻:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Landroidx/cardview/widget/CardView;->䂻:Z

    sget-object p1, Landroidx/cardview/widget/CardView;->ಫ:L㚬/ḓ/䆀/ḓ;

    iget-object v0, p0, Landroidx/cardview/widget/CardView;->ℓ:L㚬/ḓ/䆀/㺴;

    invoke-interface {p1, v0}, L㚬/ḓ/䆀/ḓ;->ḓ(L㚬/ḓ/䆀/㺴;)V

    :cond_0
    return-void
.end method
