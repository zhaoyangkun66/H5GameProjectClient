.class public abstract L㚬/䂻/ბ/உ;
.super Landroid/view/ViewGroup;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        L㚬/䂻/ბ/உ$உ;
    }
.end annotation


# instance fields
.field public ᆻ:L㚬/ℓ/ἥ/ม;

.field public ḓ:L㚬/䂻/ბ/㚬;

.field public ℓ:Z

.field public ㄏ:Z

.field public final 㚬:Landroid/content/Context;

.field public 㺴:Landroidx/appcompat/widget/ActionMenuView;

.field public final 䂻:L㚬/䂻/ბ/உ$உ;

.field public 䆀:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, L㚬/䂻/ბ/உ;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p2, L㚬/䂻/ბ/உ$உ;

    invoke-direct {p2, p0}, L㚬/䂻/ბ/உ$உ;-><init>(L㚬/䂻/ბ/உ;)V

    iput-object p2, p0, L㚬/䂻/ბ/உ;->䂻:L㚬/䂻/ბ/உ$உ;

    new-instance p2, Landroid/util/TypedValue;

    invoke-direct {p2}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p3

    sget v0, L㚬/䂻/உ;->உ:I

    const/4 v1, 0x1

    invoke-virtual {p3, v0, p2, v1}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result p3

    if-eqz p3, :cond_0

    iget p3, p2, Landroid/util/TypedValue;->resourceId:I

    if-eqz p3, :cond_0

    new-instance p3, Landroid/view/ContextThemeWrapper;

    iget p2, p2, Landroid/util/TypedValue;->resourceId:I

    invoke-direct {p3, p1, p2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object p3, p0, L㚬/䂻/ბ/உ;->㚬:Landroid/content/Context;

    goto :goto_0

    :cond_0
    iput-object p1, p0, L㚬/䂻/ბ/உ;->㚬:Landroid/content/Context;

    :goto_0
    return-void
.end method

.method public static synthetic உ(L㚬/䂻/ბ/உ;I)V
    .locals 0

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method

.method public static 㺴(IIZ)I
    .locals 0

    if-eqz p2, :cond_0

    sub-int/2addr p0, p1

    goto :goto_0

    :cond_0
    add-int/2addr p0, p1

    :goto_0
    return p0
.end method

.method public static synthetic 䂻(L㚬/䂻/ბ/உ;I)V
    .locals 0

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public getAnimatedVisibility()I
    .locals 1

    iget-object v0, p0, L㚬/䂻/ბ/உ;->ᆻ:L㚬/ℓ/ἥ/ม;

    if-eqz v0, :cond_0

    iget-object v0, p0, L㚬/䂻/ბ/உ;->䂻:L㚬/䂻/ბ/உ$உ;

    iget v0, v0, L㚬/䂻/ბ/உ$உ;->䂻:I

    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    return v0
.end method

.method public getContentHeight()I
    .locals 1

    iget v0, p0, L㚬/䂻/ბ/உ;->䆀:I

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 5

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, L㚬/䂻/ಫ;->உ:[I

    sget v2, L㚬/䂻/உ;->㚬:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v1, v2, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    sget v1, L㚬/䂻/ಫ;->ಫ:I

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v1

    invoke-virtual {p0, v1}, L㚬/䂻/ბ/உ;->setContentHeight(I)V

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    iget-object v0, p0, L㚬/䂻/ბ/உ;->ḓ:L㚬/䂻/ბ/㚬;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, L㚬/䂻/ბ/㚬;->ש(Landroid/content/res/Configuration;)V

    :cond_0
    return-void
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x9

    if-ne v0, v2, :cond_0

    iput-boolean v1, p0, L㚬/䂻/ბ/உ;->ㄏ:Z

    :cond_0
    iget-boolean v3, p0, L㚬/䂻/ბ/உ;->ㄏ:Z

    const/4 v4, 0x1

    if-nez v3, :cond_1

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onHoverEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    if-ne v0, v2, :cond_1

    if-nez p1, :cond_1

    iput-boolean v4, p0, L㚬/䂻/ბ/உ;->ㄏ:Z

    :cond_1
    const/16 p1, 0xa

    if-eq v0, p1, :cond_2

    const/4 p1, 0x3

    if-ne v0, p1, :cond_3

    :cond_2
    iput-boolean v1, p0, L㚬/䂻/ბ/உ;->ㄏ:Z

    :cond_3
    return v4
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iput-boolean v1, p0, L㚬/䂻/ბ/உ;->ℓ:Z

    :cond_0
    iget-boolean v2, p0, L㚬/䂻/ბ/உ;->ℓ:Z

    const/4 v3, 0x1

    if-nez v2, :cond_1

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    if-nez v0, :cond_1

    if-nez p1, :cond_1

    iput-boolean v3, p0, L㚬/䂻/ბ/உ;->ℓ:Z

    :cond_1
    if-eq v0, v3, :cond_2

    const/4 p1, 0x3

    if-ne v0, p1, :cond_3

    :cond_2
    iput-boolean v1, p0, L㚬/䂻/ბ/உ;->ℓ:Z

    :cond_3
    return v3
.end method

.method public abstract setContentHeight(I)V
.end method

.method public setVisibility(I)V
    .locals 1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-eq p1, v0, :cond_1

    iget-object v0, p0, L㚬/䂻/ბ/உ;->ᆻ:L㚬/ℓ/ἥ/ม;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, L㚬/ℓ/ἥ/ม;->䂻()V

    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public ḓ(Landroid/view/View;IIIZ)I
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    sub-int/2addr p4, v1

    div-int/lit8 p4, p4, 0x2

    add-int/2addr p3, p4

    if-eqz p5, :cond_0

    sub-int p4, p2, v0

    add-int/2addr v1, p3

    invoke-virtual {p1, p4, p3, p2, v1}, Landroid/view/View;->layout(IIII)V

    goto :goto_0

    :cond_0
    add-int p4, p2, v0

    add-int/2addr v1, p3

    invoke-virtual {p1, p2, p3, p4, v1}, Landroid/view/View;->layout(IIII)V

    :goto_0
    if-eqz p5, :cond_1

    neg-int v0, v0

    :cond_1
    return v0
.end method

.method public 㚬(Landroid/view/View;III)I
    .locals 1

    const/high16 v0, -0x80000000

    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-virtual {p1, v0, p3}, Landroid/view/View;->measure(II)V

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    sub-int/2addr p2, p1

    sub-int/2addr p2, p4

    const/4 p1, 0x0

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    return p1
.end method

.method public 䆀(IJ)L㚬/ℓ/ἥ/ม;
    .locals 2

    iget-object v0, p0, L㚬/䂻/ბ/உ;->ᆻ:L㚬/ℓ/ἥ/ม;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, L㚬/ℓ/ἥ/ม;->䂻()V

    :cond_0
    const/4 v0, 0x0

    if-nez p1, :cond_2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setAlpha(F)V

    :cond_1
    invoke-static {p0}, L㚬/ℓ/ἥ/㭲;->㚬(Landroid/view/View;)L㚬/ℓ/ἥ/ม;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, L㚬/ℓ/ἥ/ม;->உ(F)L㚬/ℓ/ἥ/ม;

    invoke-virtual {v0, p2, p3}, L㚬/ℓ/ἥ/ม;->㺴(J)L㚬/ℓ/ἥ/ม;

    iget-object p2, p0, L㚬/䂻/ბ/உ;->䂻:L㚬/䂻/ბ/உ$உ;

    invoke-virtual {p2, v0, p1}, L㚬/䂻/ბ/உ$உ;->㺴(L㚬/ℓ/ἥ/ม;I)L㚬/䂻/ბ/உ$உ;

    invoke-virtual {v0, p2}, L㚬/ℓ/ἥ/ม;->䆀(L㚬/ℓ/ἥ/㲧;)L㚬/ℓ/ἥ/ม;

    return-object v0

    :cond_2
    invoke-static {p0}, L㚬/ℓ/ἥ/㭲;->㚬(Landroid/view/View;)L㚬/ℓ/ἥ/ม;

    move-result-object v1

    invoke-virtual {v1, v0}, L㚬/ℓ/ἥ/ม;->உ(F)L㚬/ℓ/ἥ/ม;

    invoke-virtual {v1, p2, p3}, L㚬/ℓ/ἥ/ม;->㺴(J)L㚬/ℓ/ἥ/ม;

    iget-object p2, p0, L㚬/䂻/ბ/உ;->䂻:L㚬/䂻/ბ/உ$உ;

    invoke-virtual {p2, v1, p1}, L㚬/䂻/ბ/உ$உ;->㺴(L㚬/ℓ/ἥ/ม;I)L㚬/䂻/ბ/உ$உ;

    invoke-virtual {v1, p2}, L㚬/ℓ/ἥ/ม;->䆀(L㚬/ℓ/ἥ/㲧;)L㚬/ℓ/ἥ/ม;

    return-object v1
.end method
