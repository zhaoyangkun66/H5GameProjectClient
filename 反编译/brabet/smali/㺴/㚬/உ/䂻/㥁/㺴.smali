.class public L㺴/㚬/உ/䂻/㥁/㺴;
.super Landroid/widget/FrameLayout;
.source ""


# static fields
.field public static final ᆻ:Landroid/view/View$OnTouchListener;


# instance fields
.field public final ḓ:F

.field public 㚬:L㺴/㚬/உ/䂻/㥁/䂻;

.field public 㺴:I

.field public 䂻:L㺴/㚬/உ/䂻/㥁/㚬;

.field public final 䆀:F


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, L㺴/㚬/உ/䂻/㥁/㺴$உ;

    invoke-direct {v0}, L㺴/㚬/உ/䂻/㥁/㺴$உ;-><init>()V

    sput-object v0, L㺴/㚬/உ/䂻/㥁/㺴;->ᆻ:Landroid/view/View$OnTouchListener;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const/4 v0, 0x0

    invoke-static {p1, p2, v0, v0}, L㺴/㚬/உ/䂻/ᾦ/ᆻ;->䆀(Landroid/content/Context;Landroid/util/AttributeSet;II)Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    sget-object v1, L㺴/㚬/உ/䂻/㧦;->㛒:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    sget p2, L㺴/㚬/உ/䂻/㧦;->㪦:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    int-to-float p2, p2

    invoke-static {p0, p2}, L㚬/ℓ/ἥ/㭲;->ⶬ(Landroid/view/View;F)V

    :cond_0
    sget p2, L㺴/㚬/உ/䂻/㧦;->ᑈ:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, L㺴/㚬/உ/䂻/㥁/㺴;->㺴:I

    sget p2, L㺴/㚬/உ/䂻/㧦;->ᤍ:I

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    iput p2, p0, L㺴/㚬/உ/䂻/㥁/㺴;->ḓ:F

    sget p2, L㺴/㚬/உ/䂻/㧦;->㸜:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    iput p2, p0, L㺴/㚬/உ/䂻/㥁/㺴;->䆀:F

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    sget-object p1, L㺴/㚬/உ/䂻/㥁/㺴;->ᆻ:Landroid/view/View$OnTouchListener;

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setFocusable(Z)V

    return-void
.end method


# virtual methods
.method public getActionTextColorAlpha()F
    .locals 1

    iget v0, p0, L㺴/㚬/உ/䂻/㥁/㺴;->䆀:F

    return v0
.end method

.method public getAnimationMode()I
    .locals 1

    iget v0, p0, L㺴/㚬/உ/䂻/㥁/㺴;->㺴:I

    return v0
.end method

.method public getBackgroundOverlayColorAlpha()F
    .locals 1

    iget v0, p0, L㺴/㚬/உ/䂻/㥁/㺴;->ḓ:F

    return v0
.end method

.method public onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    iget-object v0, p0, L㺴/㚬/உ/䂻/㥁/㺴;->㚬:L㺴/㚬/உ/䂻/㥁/䂻;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, L㺴/㚬/உ/䂻/㥁/䂻;->onViewAttachedToWindow(Landroid/view/View;)V

    :cond_0
    invoke-static {p0}, L㚬/ℓ/ἥ/㭲;->㽛(Landroid/view/View;)V

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    iget-object v0, p0, L㺴/㚬/உ/䂻/㥁/㺴;->㚬:L㺴/㚬/உ/䂻/㥁/䂻;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, L㺴/㚬/உ/䂻/㥁/䂻;->onViewDetachedFromWindow(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public onLayout(ZIIII)V
    .locals 6

    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    iget-object v0, p0, L㺴/㚬/உ/䂻/㥁/㺴;->䂻:L㺴/㚬/உ/䂻/㥁/㚬;

    if-eqz v0, :cond_0

    move-object v1, p0

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, L㺴/㚬/உ/䂻/㥁/㚬;->உ(Landroid/view/View;IIII)V

    :cond_0
    return-void
.end method

.method public setAnimationMode(I)V
    .locals 0

    iput p1, p0, L㺴/㚬/உ/䂻/㥁/㺴;->㺴:I

    return-void
.end method

.method public setOnAttachStateChangeListener(L㺴/㚬/உ/䂻/㥁/䂻;)V
    .locals 0

    iput-object p1, p0, L㺴/㚬/உ/䂻/㥁/㺴;->㚬:L㺴/㚬/உ/䂻/㥁/䂻;

    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    sget-object v0, L㺴/㚬/உ/䂻/㥁/㺴;->ᆻ:Landroid/view/View$OnTouchListener;

    :goto_0
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setOnLayoutChangeListener(L㺴/㚬/உ/䂻/㥁/㚬;)V
    .locals 0

    iput-object p1, p0, L㺴/㚬/உ/䂻/㥁/㺴;->䂻:L㺴/㚬/உ/䂻/㥁/㚬;

    return-void
.end method
