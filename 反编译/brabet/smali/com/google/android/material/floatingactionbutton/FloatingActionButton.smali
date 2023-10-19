.class public Lcom/google/android/material/floatingactionbutton/FloatingActionButton;
.super L㺴/㚬/உ/䂻/ᾦ/ㄏ;
.source ""

# interfaces
.implements L㚬/ℓ/ἥ/㞘;
.implements L㚬/ℓ/ཇ/㹖;
.implements L㺴/㚬/உ/䂻/㫏/உ;
.implements L㺴/㚬/உ/䂻/ᱹ/ཇ;


# annotations
.annotation runtime Landroidx/coordinatorlayout/widget/CoordinatorLayout$㺴;
    value = Lcom/google/android/material/floatingactionbutton/FloatingActionButton$Behavior;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/floatingactionbutton/FloatingActionButton$㚬;,
        Lcom/google/android/material/floatingactionbutton/FloatingActionButton$㺴;,
        Lcom/google/android/material/floatingactionbutton/FloatingActionButton$BaseBehavior;,
        Lcom/google/android/material/floatingactionbutton/FloatingActionButton$Behavior;,
        Lcom/google/android/material/floatingactionbutton/FloatingActionButton$䂻;
    }
.end annotation


# instance fields
.field public ಫ:I

.field public final ཇ:Landroid/graphics/Rect;

.field public final ბ:L㺴/㚬/உ/䂻/㫏/䂻;

.field public ᆻ:Landroid/content/res/ColorStateList;

.field public final ᓭ:L㚬/䂻/ბ/ཇ;

.field public ḓ:Landroid/content/res/ColorStateList;

.field public final ἥ:Landroid/graphics/Rect;

.field public ℓ:I

.field public ㄏ:I

.field public 㚬:Landroid/content/res/ColorStateList;

.field public 㧦:I

.field public 㲝:L㺴/㚬/உ/䂻/ಋ/䂻;

.field public 㹖:Z

.field public 㺴:Landroid/graphics/PorterDuff$Mode;

.field public 䆀:Landroid/graphics/PorterDuff$Mode;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private getImpl()L㺴/㚬/உ/䂻/ಋ/䂻;
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->㲝:L㺴/㚬/உ/䂻/ಋ/䂻;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->ℓ()L㺴/㚬/உ/䂻/ಋ/䂻;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->㲝:L㺴/㚬/உ/䂻/ಋ/䂻;

    :cond_0
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->㲝:L㺴/㚬/உ/䂻/ಋ/䂻;

    return-object v0
.end method

.method public static synthetic 㚬(Lcom/google/android/material/floatingactionbutton/FloatingActionButton;)I
    .locals 0

    iget p0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->ಫ:I

    return p0
.end method

.method public static 㞘(II)I
    .locals 2

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_1

    if-eqz v0, :cond_2

    const/high16 p0, 0x40000000    # 2.0f

    if-ne v0, p0, :cond_0

    move p0, p1

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    :cond_1
    invoke-static {p0, p1}, Ljava/lang/Math;->min(II)I

    move-result p0

    :cond_2
    :goto_0
    return p0
.end method

.method public static synthetic 㺴(Lcom/google/android/material/floatingactionbutton/FloatingActionButton;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/ImageButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method


# virtual methods
.method public drawableStateChanged()V
    .locals 2

    invoke-super {p0}, Landroid/widget/ImageButton;->drawableStateChanged()V

    invoke-direct {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getImpl()L㺴/㚬/உ/䂻/ಋ/䂻;

    move-result-object v0

    invoke-virtual {p0}, Landroid/widget/ImageButton;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, L㺴/㚬/உ/䂻/ಋ/䂻;->ڈ([I)V

    return-void
.end method

.method public getBackgroundTintList()Landroid/content/res/ColorStateList;
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->㚬:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getBackgroundTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->㺴:Landroid/graphics/PorterDuff$Mode;

    return-object v0
.end method

.method public getCompatElevation()F
    .locals 1

    invoke-direct {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getImpl()L㺴/㚬/உ/䂻/ಋ/䂻;

    move-result-object v0

    invoke-virtual {v0}, L㺴/㚬/உ/䂻/ಋ/䂻;->ἥ()F

    move-result v0

    return v0
.end method

.method public getCompatHoveredFocusedTranslationZ()F
    .locals 1

    invoke-direct {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getImpl()L㺴/㚬/உ/䂻/ಋ/䂻;

    move-result-object v0

    invoke-virtual {v0}, L㺴/㚬/உ/䂻/ಋ/䂻;->ბ()F

    move-result v0

    return v0
.end method

.method public getCompatPressedTranslationZ()F
    .locals 1

    invoke-direct {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getImpl()L㺴/㚬/உ/䂻/ಋ/䂻;

    move-result-object v0

    invoke-virtual {v0}, L㺴/㚬/உ/䂻/ಋ/䂻;->㭲()F

    move-result v0

    return v0
.end method

.method public getContentBackground()Landroid/graphics/drawable/Drawable;
    .locals 1

    invoke-direct {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getImpl()L㺴/㚬/உ/䂻/ಋ/䂻;

    move-result-object v0

    invoke-virtual {v0}, L㺴/㚬/உ/䂻/ಋ/䂻;->ಫ()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getCustomSize()I
    .locals 1

    iget v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->ㄏ:I

    return v0
.end method

.method public getExpandedComponentIdHint()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->ბ:L㺴/㚬/உ/䂻/㫏/䂻;

    invoke-virtual {v0}, L㺴/㚬/உ/䂻/㫏/䂻;->உ()I

    move-result v0

    return v0
.end method

.method public getHideMotionSpec()L㺴/㚬/உ/䂻/㹖/ℓ;
    .locals 1

    invoke-direct {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getImpl()L㺴/㚬/உ/䂻/ಋ/䂻;

    move-result-object v0

    invoke-virtual {v0}, L㺴/㚬/உ/䂻/ಋ/䂻;->ᓭ()L㺴/㚬/உ/䂻/㹖/ℓ;

    move-result-object v0

    return-object v0
.end method

.method public getRippleColor()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->ᆻ:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getRippleColorStateList()Landroid/content/res/ColorStateList;
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->ᆻ:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getShapeAppearanceModel()L㺴/㚬/உ/䂻/ᱹ/㧦;
    .locals 1

    invoke-direct {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getImpl()L㺴/㚬/உ/䂻/ಋ/䂻;

    move-result-object v0

    invoke-virtual {v0}, L㺴/㚬/உ/䂻/ಋ/䂻;->ḙ()L㺴/㚬/உ/䂻/ᱹ/㧦;

    move-result-object v0

    invoke-static {v0}, L㚬/ℓ/㹖/ᆻ;->㚬(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v0, L㺴/㚬/உ/䂻/ᱹ/㧦;

    return-object v0
.end method

.method public getShowMotionSpec()L㺴/㚬/உ/䂻/㹖/ℓ;
    .locals 1

    invoke-direct {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getImpl()L㺴/㚬/உ/䂻/ಋ/䂻;

    move-result-object v0

    invoke-virtual {v0}, L㺴/㚬/உ/䂻/ಋ/䂻;->㖪()L㺴/㚬/உ/䂻/㹖/ℓ;

    move-result-object v0

    return-object v0
.end method

.method public getSize()I
    .locals 1

    iget v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->ℓ:I

    return v0
.end method

.method public getSizeDimension()I
    .locals 1

    iget v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->ℓ:I

    invoke-virtual {p0, v0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->㧦(I)I

    move-result v0

    return v0
.end method

.method public getSupportBackgroundTintList()Landroid/content/res/ColorStateList;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getBackgroundTintList()Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0
.end method

.method public getSupportBackgroundTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getBackgroundTintMode()Landroid/graphics/PorterDuff$Mode;

    move-result-object v0

    return-object v0
.end method

.method public getSupportImageTintList()Landroid/content/res/ColorStateList;
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->ḓ:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getSupportImageTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->䆀:Landroid/graphics/PorterDuff$Mode;

    return-object v0
.end method

.method public getUseCompatPadding()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->㹖:Z

    return v0
.end method

.method public jumpDrawablesToCurrentState()V
    .locals 1

    invoke-super {p0}, Landroid/widget/ImageButton;->jumpDrawablesToCurrentState()V

    invoke-direct {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getImpl()L㺴/㚬/உ/䂻/ಋ/䂻;

    move-result-object v0

    invoke-virtual {v0}, L㺴/㚬/உ/䂻/ಋ/䂻;->ㄬ()V

    return-void
.end method

.method public onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Landroid/widget/ImageButton;->onAttachedToWindow()V

    invoke-direct {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getImpl()L㺴/㚬/உ/䂻/ಋ/䂻;

    move-result-object v0

    invoke-virtual {v0}, L㺴/㚬/உ/䂻/ಋ/䂻;->㫏()V

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Landroid/widget/ImageButton;->onDetachedFromWindow()V

    invoke-direct {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getImpl()L㺴/㚬/உ/䂻/ಋ/䂻;

    move-result-object v0

    invoke-virtual {v0}, L㺴/㚬/உ/䂻/ಋ/䂻;->ᾦ()V

    return-void
.end method

.method public onMeasure(II)V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getSizeDimension()I

    move-result v0

    iget v1, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->㧦:I

    sub-int v1, v0, v1

    div-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->ಫ:I

    invoke-direct {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getImpl()L㺴/㚬/உ/䂻/ಋ/䂻;

    move-result-object v1

    invoke-virtual {v1}, L㺴/㚬/உ/䂻/ಋ/䂻;->㽛()V

    invoke-static {v0, p1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->㞘(II)I

    move-result p1

    invoke-static {v0, p2}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->㞘(II)I

    move-result p2

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    iget-object p2, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->ἥ:Landroid/graphics/Rect;

    iget v0, p2, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, p1

    iget v1, p2, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, v1

    iget v1, p2, Landroid/graphics/Rect;->top:I

    add-int/2addr p1, v1

    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    add-int/2addr p1, p2

    invoke-virtual {p0, v0, p1}, Landroid/widget/ImageButton;->setMeasuredDimension(II)V

    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2

    instance-of v0, p1, L㺴/㚬/உ/䂻/ർ/உ;

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/widget/ImageButton;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void

    :cond_0
    check-cast p1, L㺴/㚬/உ/䂻/ർ/உ;

    invoke-virtual {p1}, L㚬/ಫ/உ/உ;->ಫ()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/widget/ImageButton;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->ბ:L㺴/㚬/உ/䂻/㫏/䂻;

    iget-object p1, p1, L㺴/㚬/உ/䂻/ർ/உ;->㺴:L㚬/䆀/ᆻ;

    const-string v1, "expandableWidgetHelper"

    invoke-virtual {p1, v1}, L㚬/䆀/ᆻ;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, L㚬/ℓ/㹖/ᆻ;->㚬(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Landroid/os/Bundle;

    invoke-virtual {v0, p1}, L㺴/㚬/உ/䂻/㫏/䂻;->㚬(Landroid/os/Bundle;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    invoke-super {p0}, Landroid/widget/ImageButton;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    :cond_0
    new-instance v1, L㺴/㚬/உ/䂻/ർ/உ;

    invoke-direct {v1, v0}, L㺴/㚬/உ/䂻/ർ/உ;-><init>(Landroid/os/Parcelable;)V

    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->ბ:L㺴/㚬/உ/䂻/㫏/䂻;

    invoke-virtual {v0}, L㺴/㚬/உ/䂻/㫏/䂻;->㺴()Landroid/os/Bundle;

    const/4 v0, 0x0

    throw v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->ཇ:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->ㄏ(Landroid/graphics/Rect;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->ཇ:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ImageButton;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public setBackgroundColor(I)V
    .locals 1

    const-string p1, "FloatingActionButton"

    const-string v0, "Setting a custom background is not supported."

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    const-string p1, "FloatingActionButton"

    const-string v0, "Setting a custom background is not supported."

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setBackgroundResource(I)V
    .locals 1

    const-string p1, "FloatingActionButton"

    const-string v0, "Setting a custom background is not supported."

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setBackgroundTintList(Landroid/content/res/ColorStateList;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->㚬:Landroid/content/res/ColorStateList;

    if-eq v0, p1, :cond_0

    iput-object p1, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->㚬:Landroid/content/res/ColorStateList;

    invoke-direct {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getImpl()L㺴/㚬/உ/䂻/ಋ/䂻;

    move-result-object v0

    invoke-virtual {v0, p1}, L㺴/㚬/உ/䂻/ಋ/䂻;->ർ(Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method

.method public setBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->㺴:Landroid/graphics/PorterDuff$Mode;

    if-eq v0, p1, :cond_0

    iput-object p1, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->㺴:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getImpl()L㺴/㚬/உ/䂻/ಋ/䂻;

    move-result-object v0

    invoke-virtual {v0, p1}, L㺴/㚬/உ/䂻/ಋ/䂻;->㖆(Landroid/graphics/PorterDuff$Mode;)V

    :cond_0
    return-void
.end method

.method public setCompatElevation(F)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getImpl()L㺴/㚬/உ/䂻/ಋ/䂻;

    move-result-object v0

    invoke-virtual {v0, p1}, L㺴/㚬/உ/䂻/ಋ/䂻;->㭢(F)V

    return-void
.end method

.method public setCompatElevationResource(I)V
    .locals 1

    invoke-virtual {p0}, Landroid/widget/ImageButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setCompatElevation(F)V

    return-void
.end method

.method public setCompatHoveredFocusedTranslationZ(F)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getImpl()L㺴/㚬/உ/䂻/ಋ/䂻;

    move-result-object v0

    invoke-virtual {v0, p1}, L㺴/㚬/உ/䂻/ಋ/䂻;->ỷ(F)V

    return-void
.end method

.method public setCompatHoveredFocusedTranslationZResource(I)V
    .locals 1

    invoke-virtual {p0}, Landroid/widget/ImageButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setCompatHoveredFocusedTranslationZ(F)V

    return-void
.end method

.method public setCompatPressedTranslationZ(F)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getImpl()L㺴/㚬/உ/䂻/ಋ/䂻;

    move-result-object v0

    invoke-virtual {v0, p1}, L㺴/㚬/உ/䂻/ಋ/䂻;->㮕(F)V

    return-void
.end method

.method public setCompatPressedTranslationZResource(I)V
    .locals 1

    invoke-virtual {p0}, Landroid/widget/ImageButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setCompatPressedTranslationZ(F)V

    return-void
.end method

.method public setCustomSize(I)V
    .locals 1

    if-ltz p1, :cond_1

    iget v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->ㄏ:I

    if-eq p1, v0, :cond_0

    iput p1, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->ㄏ:I

    invoke-virtual {p0}, Landroid/widget/ImageButton;->requestLayout()V

    :cond_0
    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Custom size must be non-negative"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setElevation(F)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/ImageButton;->setElevation(F)V

    invoke-direct {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getImpl()L㺴/㚬/உ/䂻/ಋ/䂻;

    move-result-object v0

    invoke-virtual {v0, p1}, L㺴/㚬/உ/䂻/ಋ/䂻;->ಇ(F)V

    return-void
.end method

.method public setEnsureMinTouchTargetSize(Z)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getImpl()L㺴/㚬/உ/䂻/ಋ/䂻;

    move-result-object v0

    invoke-virtual {v0}, L㺴/㚬/உ/䂻/ಋ/䂻;->ཇ()Z

    move-result v0

    if-eq p1, v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getImpl()L㺴/㚬/உ/䂻/ಋ/䂻;

    move-result-object v0

    invoke-virtual {v0, p1}, L㺴/㚬/உ/䂻/ಋ/䂻;->Խ(Z)V

    invoke-virtual {p0}, Landroid/widget/ImageButton;->requestLayout()V

    :cond_0
    return-void
.end method

.method public setExpandedComponentIdHint(I)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->ბ:L㺴/㚬/உ/䂻/㫏/䂻;

    invoke-virtual {v0, p1}, L㺴/㚬/உ/䂻/㫏/䂻;->ḓ(I)V

    return-void
.end method

.method public setHideMotionSpec(L㺴/㚬/உ/䂻/㹖/ℓ;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getImpl()L㺴/㚬/உ/䂻/ಋ/䂻;

    move-result-object v0

    invoke-virtual {v0, p1}, L㺴/㚬/உ/䂻/ಋ/䂻;->Ԁ(L㺴/㚬/உ/䂻/㹖/ℓ;)V

    return-void
.end method

.method public setHideMotionSpecResource(I)V
    .locals 1

    invoke-virtual {p0}, Landroid/widget/ImageButton;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, L㺴/㚬/உ/䂻/㹖/ℓ;->㚬(Landroid/content/Context;I)L㺴/㚬/உ/䂻/㹖/ℓ;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setHideMotionSpec(L㺴/㚬/உ/䂻/㹖/ℓ;)V

    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    invoke-virtual {p0}, Landroid/widget/ImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eq v0, p1, :cond_0

    invoke-super {p0, p1}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-direct {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getImpl()L㺴/㚬/உ/䂻/ಋ/䂻;

    move-result-object p1

    invoke-virtual {p1}, L㺴/㚬/உ/䂻/ಋ/䂻;->ᣦ()V

    iget-object p1, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->ḓ:Landroid/content/res/ColorStateList;

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->㲝()V

    :cond_0
    return-void
.end method

.method public setImageResource(I)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->ᓭ:L㚬/䂻/ბ/ཇ;

    invoke-virtual {v0, p1}, L㚬/䂻/ბ/ཇ;->ᆻ(I)V

    invoke-virtual {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->㲝()V

    return-void
.end method

.method public setRippleColor(I)V
    .locals 0

    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setRippleColor(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setRippleColor(Landroid/content/res/ColorStateList;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->ᆻ:Landroid/content/res/ColorStateList;

    if-eq v0, p1, :cond_0

    iput-object p1, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->ᆻ:Landroid/content/res/ColorStateList;

    invoke-direct {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getImpl()L㺴/㚬/உ/䂻/ಋ/䂻;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->ᆻ:Landroid/content/res/ColorStateList;

    invoke-virtual {p1, v0}, L㺴/㚬/உ/䂻/ಋ/䂻;->ἂ(Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method

.method public setScaleX(F)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/ImageButton;->setScaleX(F)V

    invoke-direct {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getImpl()L㺴/㚬/உ/䂻/ಋ/䂻;

    move-result-object p1

    invoke-virtual {p1}, L㺴/㚬/உ/䂻/ಋ/䂻;->ᰘ()V

    return-void
.end method

.method public setScaleY(F)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/ImageButton;->setScaleY(F)V

    invoke-direct {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getImpl()L㺴/㚬/உ/䂻/ಋ/䂻;

    move-result-object p1

    invoke-virtual {p1}, L㺴/㚬/உ/䂻/ಋ/䂻;->ᰘ()V

    return-void
.end method

.method public setShadowPaddingEnabled(Z)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getImpl()L㺴/㚬/உ/䂻/ಋ/䂻;

    move-result-object v0

    invoke-virtual {v0, p1}, L㺴/㚬/உ/䂻/ಋ/䂻;->ⵦ(Z)V

    return-void
.end method

.method public setShapeAppearanceModel(L㺴/㚬/உ/䂻/ᱹ/㧦;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getImpl()L㺴/㚬/உ/䂻/ಋ/䂻;

    move-result-object v0

    invoke-virtual {v0, p1}, L㺴/㚬/உ/䂻/ಋ/䂻;->ᭊ(L㺴/㚬/உ/䂻/ᱹ/㧦;)V

    return-void
.end method

.method public setShowMotionSpec(L㺴/㚬/உ/䂻/㹖/ℓ;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getImpl()L㺴/㚬/உ/䂻/ಋ/䂻;

    move-result-object v0

    invoke-virtual {v0, p1}, L㺴/㚬/உ/䂻/ಋ/䂻;->㟘(L㺴/㚬/உ/䂻/㹖/ℓ;)V

    return-void
.end method

.method public setShowMotionSpecResource(I)V
    .locals 1

    invoke-virtual {p0}, Landroid/widget/ImageButton;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, L㺴/㚬/உ/䂻/㹖/ℓ;->㚬(Landroid/content/Context;I)L㺴/㚬/உ/䂻/㹖/ℓ;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setShowMotionSpec(L㺴/㚬/உ/䂻/㹖/ℓ;)V

    return-void
.end method

.method public setSize(I)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->ㄏ:I

    iget v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->ℓ:I

    if-eq p1, v0, :cond_0

    iput p1, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->ℓ:I

    invoke-virtual {p0}, Landroid/widget/ImageButton;->requestLayout()V

    :cond_0
    return-void
.end method

.method public setSupportBackgroundTintList(Landroid/content/res/ColorStateList;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setSupportBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V

    return-void
.end method

.method public setSupportImageTintList(Landroid/content/res/ColorStateList;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->ḓ:Landroid/content/res/ColorStateList;

    if-eq v0, p1, :cond_0

    iput-object p1, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->ḓ:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->㲝()V

    :cond_0
    return-void
.end method

.method public setSupportImageTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->䆀:Landroid/graphics/PorterDuff$Mode;

    if-eq v0, p1, :cond_0

    iput-object p1, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->䆀:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->㲝()V

    :cond_0
    return-void
.end method

.method public setTranslationX(F)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/ImageButton;->setTranslationX(F)V

    invoke-direct {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getImpl()L㺴/㚬/உ/䂻/ಋ/䂻;

    move-result-object p1

    invoke-virtual {p1}, L㺴/㚬/உ/䂻/ಋ/䂻;->ᱹ()V

    return-void
.end method

.method public setTranslationY(F)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/ImageButton;->setTranslationY(F)V

    invoke-direct {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getImpl()L㺴/㚬/உ/䂻/ಋ/䂻;

    move-result-object p1

    invoke-virtual {p1}, L㺴/㚬/உ/䂻/ಋ/䂻;->ᱹ()V

    return-void
.end method

.method public setTranslationZ(F)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/ImageButton;->setTranslationZ(F)V

    invoke-direct {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getImpl()L㺴/㚬/உ/䂻/ಋ/䂻;

    move-result-object p1

    invoke-virtual {p1}, L㺴/㚬/உ/䂻/ಋ/䂻;->ᱹ()V

    return-void
.end method

.method public setUseCompatPadding(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->㹖:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->㹖:Z

    invoke-direct {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getImpl()L㺴/㚬/உ/䂻/ಋ/䂻;

    move-result-object p1

    invoke-virtual {p1}, L㺴/㚬/உ/䂻/ಋ/䂻;->ಋ()V

    :cond_0
    return-void
.end method

.method public setVisibility(I)V
    .locals 0

    invoke-super {p0, p1}, L㺴/㚬/உ/䂻/ᾦ/ㄏ;->setVisibility(I)V

    return-void
.end method

.method public உ()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->ბ:L㺴/㚬/உ/䂻/㫏/䂻;

    invoke-virtual {v0}, L㺴/㚬/உ/䂻/㫏/䂻;->䂻()Z

    move-result v0

    return v0
.end method

.method public ಫ(Landroid/graphics/Rect;)V
    .locals 3

    invoke-virtual {p0}, Landroid/widget/ImageButton;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/ImageButton;->getMeasuredHeight()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v2, v0, v1}, Landroid/graphics/Rect;->set(IIII)V

    invoke-virtual {p0, p1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->ბ(Landroid/graphics/Rect;)V

    return-void
.end method

.method public ཇ()Z
    .locals 1

    invoke-direct {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getImpl()L㺴/㚬/உ/䂻/ಋ/䂻;

    move-result-object v0

    invoke-virtual {v0}, L㺴/㚬/உ/䂻/ಋ/䂻;->ม()Z

    move-result v0

    return v0
.end method

.method public final ბ(Landroid/graphics/Rect;)V
    .locals 3

    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->ἥ:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, v2

    iput v0, p1, Landroid/graphics/Rect;->left:I

    iget v0, p1, Landroid/graphics/Rect;->top:I

    iget v2, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, v2

    iput v0, p1, Landroid/graphics/Rect;->top:I

    iget v0, p1, Landroid/graphics/Rect;->right:I

    iget v2, v1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, v2

    iput v0, p1, Landroid/graphics/Rect;->right:I

    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    return-void
.end method

.method public ᆻ(L㺴/㚬/உ/䂻/㹖/㧦;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "L\u3eb4/\u36ac/\u0b89/\u40bb/\u3e56/\u39e6<",
            "+",
            "Lcom/google/android/material/floatingactionbutton/FloatingActionButton;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getImpl()L㺴/㚬/உ/䂻/ಋ/䂻;

    move-result-object v0

    new-instance v1, Lcom/google/android/material/floatingactionbutton/FloatingActionButton$㺴;

    invoke-direct {v1, p0, p1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton$㺴;-><init>(Lcom/google/android/material/floatingactionbutton/FloatingActionButton;L㺴/㚬/உ/䂻/㹖/㧦;)V

    invoke-virtual {v0, v1}, L㺴/㚬/உ/䂻/ಋ/䂻;->䆀(L㺴/㚬/உ/䂻/ಋ/䂻$ㄏ;)V

    return-void
.end method

.method public ᓭ()Z
    .locals 1

    invoke-direct {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getImpl()L㺴/㚬/உ/䂻/ಋ/䂻;

    move-result-object v0

    invoke-virtual {v0}, L㺴/㚬/உ/䂻/ಋ/䂻;->㲧()Z

    move-result v0

    return v0
.end method

.method public ḓ(Landroid/animation/Animator$AnimatorListener;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getImpl()L㺴/㚬/உ/䂻/ಋ/䂻;

    move-result-object v0

    invoke-virtual {v0, p1}, L㺴/㚬/உ/䂻/ಋ/䂻;->㺴(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method public ḙ(Lcom/google/android/material/floatingactionbutton/FloatingActionButton$䂻;Z)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getImpl()L㺴/㚬/உ/䂻/ಋ/䂻;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->㖪(Lcom/google/android/material/floatingactionbutton/FloatingActionButton$䂻;)L㺴/㚬/உ/䂻/ಋ/䂻$ಫ;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, L㺴/㚬/உ/䂻/ಋ/䂻;->㲊(L㺴/㚬/உ/䂻/ಋ/䂻$ಫ;Z)V

    return-void
.end method

.method public ἥ(Lcom/google/android/material/floatingactionbutton/FloatingActionButton$䂻;Z)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getImpl()L㺴/㚬/உ/䂻/ಋ/䂻;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->㖪(Lcom/google/android/material/floatingactionbutton/FloatingActionButton$䂻;)L㺴/㚬/உ/䂻/ಋ/䂻$ಫ;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, L㺴/㚬/உ/䂻/ಋ/䂻;->㢏(L㺴/㚬/உ/䂻/ಋ/䂻$ಫ;Z)V

    return-void
.end method

.method public final ℓ()L㺴/㚬/உ/䂻/ಋ/䂻;
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    new-instance v0, L㺴/㚬/உ/䂻/ಋ/㚬;

    new-instance v1, Lcom/google/android/material/floatingactionbutton/FloatingActionButton$㚬;

    invoke-direct {v1, p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton$㚬;-><init>(Lcom/google/android/material/floatingactionbutton/FloatingActionButton;)V

    invoke-direct {v0, p0, v1}, L㺴/㚬/உ/䂻/ಋ/㚬;-><init>(Lcom/google/android/material/floatingactionbutton/FloatingActionButton;L㺴/㚬/உ/䂻/ᰘ/䂻;)V

    return-object v0

    :cond_0
    new-instance v0, L㺴/㚬/உ/䂻/ಋ/䂻;

    new-instance v1, Lcom/google/android/material/floatingactionbutton/FloatingActionButton$㚬;

    invoke-direct {v1, p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton$㚬;-><init>(Lcom/google/android/material/floatingactionbutton/FloatingActionButton;)V

    invoke-direct {v0, p0, v1}, L㺴/㚬/உ/䂻/ಋ/䂻;-><init>(Lcom/google/android/material/floatingactionbutton/FloatingActionButton;L㺴/㚬/உ/䂻/ᰘ/䂻;)V

    return-object v0
.end method

.method public ㄏ(Landroid/graphics/Rect;)Z
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p0}, L㚬/ℓ/ἥ/㭲;->㖆(Landroid/view/View;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/ImageButton;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/ImageButton;->getHeight()I

    move-result v2

    invoke-virtual {p1, v1, v1, v0, v2}, Landroid/graphics/Rect;->set(IIII)V

    invoke-virtual {p0, p1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->ბ(Landroid/graphics/Rect;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    return v1
.end method

.method public final 㖪(Lcom/google/android/material/floatingactionbutton/FloatingActionButton$䂻;)L㺴/㚬/உ/䂻/ಋ/䂻$ಫ;
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    new-instance v0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton$உ;

    invoke-direct {v0, p0, p1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton$உ;-><init>(Lcom/google/android/material/floatingactionbutton/FloatingActionButton;Lcom/google/android/material/floatingactionbutton/FloatingActionButton$䂻;)V

    return-object v0
.end method

.method public final 㧦(I)I
    .locals 3

    iget v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->ㄏ:I

    if-eqz v0, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/widget/ImageButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/4 v1, -0x1

    const/4 v2, 0x1

    if-eq p1, v1, :cond_2

    if-eq p1, v2, :cond_1

    sget p1, L㺴/㚬/உ/䂻/㺴;->㺴:I

    :goto_0
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    return p1

    :cond_1
    sget p1, L㺴/㚬/உ/䂻/㺴;->㚬:I

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->screenHeightDp:I

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    const/16 v0, 0x1d6

    if-ge p1, v0, :cond_3

    invoke-virtual {p0, v2}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->㧦(I)I

    move-result p1

    goto :goto_1

    :cond_3
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->㧦(I)I

    move-result p1

    :goto_1
    return p1
.end method

.method public 㭲(Lcom/google/android/material/floatingactionbutton/FloatingActionButton$䂻;)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->ḙ(Lcom/google/android/material/floatingactionbutton/FloatingActionButton$䂻;Z)V

    return-void
.end method

.method public final 㲝()V
    .locals 4

    invoke-virtual {p0}, Landroid/widget/ImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->ḓ:Landroid/content/res/ColorStateList;

    if-nez v1, :cond_1

    invoke-static {v0}, L㚬/ℓ/䆀/㹖/உ;->㚬(Landroid/graphics/drawable/Drawable;)V

    return-void

    :cond_1
    invoke-virtual {p0}, Landroid/widget/ImageButton;->getDrawableState()[I

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v1

    iget-object v2, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->䆀:Landroid/graphics/PorterDuff$Mode;

    if-nez v2, :cond_2

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    :cond_2
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {v1, v2}, L㚬/䂻/ბ/ಫ;->ḓ(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    return-void
.end method

.method public 㹖(Lcom/google/android/material/floatingactionbutton/FloatingActionButton$䂻;)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->ἥ(Lcom/google/android/material/floatingactionbutton/FloatingActionButton$䂻;Z)V

    return-void
.end method

.method public 䆀(Landroid/animation/Animator$AnimatorListener;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getImpl()L㺴/㚬/உ/䂻/ಋ/䂻;

    move-result-object v0

    invoke-virtual {v0, p1}, L㺴/㚬/உ/䂻/ಋ/䂻;->ḓ(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method
