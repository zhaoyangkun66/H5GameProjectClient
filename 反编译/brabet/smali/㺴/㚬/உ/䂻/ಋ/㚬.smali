.class public L㺴/㚬/உ/䂻/ಋ/㚬;
.super L㺴/㚬/உ/䂻/ಋ/䂻;
.source ""


# direct methods
.method public constructor <init>(Lcom/google/android/material/floatingactionbutton/FloatingActionButton;L㺴/㚬/உ/䂻/ᰘ/䂻;)V
    .locals 0

    invoke-direct {p0, p1, p2}, L㺴/㚬/உ/䂻/ಋ/䂻;-><init>(Lcom/google/android/material/floatingactionbutton/FloatingActionButton;L㺴/㚬/உ/䂻/ᰘ/䂻;)V

    return-void
.end method


# virtual methods
.method public ڈ([I)V
    .locals 2

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x15

    if-ne p1, v0, :cond_4

    iget-object p1, p0, L㺴/㚬/உ/䂻/ಋ/䂻;->ㄬ:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {p1}, Landroid/widget/ImageButton;->isEnabled()Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    iget-object p1, p0, L㺴/㚬/உ/䂻/ಋ/䂻;->ㄬ:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    iget v1, p0, L㺴/㚬/உ/䂻/ಋ/䂻;->ℓ:F

    invoke-virtual {p1, v1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setElevation(F)V

    iget-object p1, p0, L㺴/㚬/உ/䂻/ಋ/䂻;->ㄬ:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {p1}, Landroid/widget/ImageButton;->isPressed()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, L㺴/㚬/உ/䂻/ಋ/䂻;->ㄬ:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    iget v0, p0, L㺴/㚬/உ/䂻/ಋ/䂻;->ಫ:F

    goto :goto_0

    :cond_0
    iget-object p1, p0, L㺴/㚬/உ/䂻/ಋ/䂻;->ㄬ:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {p1}, Landroid/widget/ImageButton;->isFocused()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, L㺴/㚬/உ/䂻/ಋ/䂻;->ㄬ:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {p1}, Landroid/widget/ImageButton;->isHovered()Z

    move-result p1

    if-eqz p1, :cond_3

    :cond_1
    iget-object p1, p0, L㺴/㚬/உ/䂻/ಋ/䂻;->ㄬ:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    iget v0, p0, L㺴/㚬/உ/䂻/ಋ/䂻;->ㄏ:F

    goto :goto_0

    :cond_2
    iget-object p1, p0, L㺴/㚬/உ/䂻/ಋ/䂻;->ㄬ:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {p1, v0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setElevation(F)V

    :cond_3
    iget-object p1, p0, L㺴/㚬/உ/䂻/ಋ/䂻;->ㄬ:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    :goto_0
    invoke-virtual {p1, v0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setTranslationZ(F)V

    :cond_4
    return-void
.end method

.method public ಋ()V
    .locals 0

    invoke-virtual {p0}, L㺴/㚬/உ/䂻/ಋ/䂻;->㽛()V

    return-void
.end method

.method public final ග(FF)Landroid/animation/Animator;
    .locals 7

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iget-object v1, p0, L㺴/㚬/உ/䂻/ಋ/䂻;->ㄬ:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    const/4 v2, 0x1

    new-array v3, v2, [F

    const/4 v4, 0x0

    aput p1, v3, v4

    const-string p1, "elevation"

    invoke-static {v1, p1, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    const-wide/16 v5, 0x0

    invoke-virtual {p1, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object p1

    iget-object v1, p0, L㺴/㚬/உ/䂻/ಋ/䂻;->ㄬ:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    sget-object v3, Landroid/view/View;->TRANSLATION_Z:Landroid/util/Property;

    new-array v2, v2, [F

    aput p2, v2, v4

    invoke-static {v1, v3, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p2

    const-wide/16 v1, 0x64

    invoke-virtual {p2, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    sget-object p1, L㺴/㚬/உ/䂻/ಋ/䂻;->㨃:Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, p1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    return-object v0
.end method

.method public ᘚ()V
    .locals 0

    return-void
.end method

.method public ᣝ()Z
    .locals 1

    iget-object v0, p0, L㺴/㚬/உ/䂻/ಋ/䂻;->㫏:L㺴/㚬/உ/䂻/ᰘ/䂻;

    invoke-interface {v0}, L㺴/㚬/உ/䂻/ᰘ/䂻;->䂻()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, L㺴/㚬/உ/䂻/ಋ/䂻;->ᣑ()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public ἂ(Landroid/content/res/ColorStateList;)V
    .locals 2

    iget-object v0, p0, L㺴/㚬/உ/䂻/ಋ/䂻;->㚬:Landroid/graphics/drawable/Drawable;

    instance-of v1, v0, Landroid/graphics/drawable/RippleDrawable;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/graphics/drawable/RippleDrawable;

    invoke-static {p1}, L㺴/㚬/உ/䂻/㨃/䂻;->உ(Landroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/RippleDrawable;->setColor(Landroid/content/res/ColorStateList;)V

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, L㺴/㚬/உ/䂻/ಋ/䂻;->ἂ(Landroid/content/res/ColorStateList;)V

    :goto_0
    return-void
.end method

.method public ἥ()F
    .locals 1

    iget-object v0, p0, L㺴/㚬/உ/䂻/ಋ/䂻;->ㄬ:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getElevation()F

    move-result v0

    return v0
.end method

.method public ㄬ()V
    .locals 0

    return-void
.end method

.method public 㞘(Landroid/graphics/Rect;)V
    .locals 2

    iget-object v0, p0, L㺴/㚬/உ/䂻/ಋ/䂻;->㫏:L㺴/㚬/உ/䂻/ᰘ/䂻;

    invoke-interface {v0}, L㺴/㚬/உ/䂻/ᰘ/䂻;->䂻()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, L㺴/㚬/உ/䂻/ಋ/䂻;->㞘(Landroid/graphics/Rect;)V

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, L㺴/㚬/உ/䂻/ಋ/䂻;->ᣑ()Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, L㺴/㚬/உ/䂻/ಋ/䂻;->㧦:I

    iget-object v1, p0, L㺴/㚬/உ/䂻/ಋ/䂻;->ㄬ:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {v1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getSizeDimension()I

    move-result v1

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0, v0, v0, v0}, Landroid/graphics/Rect;->set(IIII)V

    :goto_1
    return-void
.end method

.method public 㥁()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public 㰫(FFF)V
    .locals 8

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ne v0, v1, :cond_0

    iget-object p1, p0, L㺴/㚬/உ/䂻/ಋ/䂻;->ㄬ:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {p1}, Landroid/widget/ImageButton;->refreshDrawableState()V

    goto/16 :goto_0

    :cond_0
    new-instance v1, Landroid/animation/StateListAnimator;

    invoke-direct {v1}, Landroid/animation/StateListAnimator;-><init>()V

    sget-object v2, L㺴/㚬/உ/䂻/ಋ/䂻;->ᰘ:[I

    invoke-virtual {p0, p1, p3}, L㺴/㚬/உ/䂻/ಋ/㚬;->ග(FF)Landroid/animation/Animator;

    move-result-object p3

    invoke-virtual {v1, v2, p3}, Landroid/animation/StateListAnimator;->addState([ILandroid/animation/Animator;)V

    sget-object p3, L㺴/㚬/உ/䂻/ಋ/䂻;->ᱹ:[I

    invoke-virtual {p0, p1, p2}, L㺴/㚬/உ/䂻/ಋ/㚬;->ග(FF)Landroid/animation/Animator;

    move-result-object v2

    invoke-virtual {v1, p3, v2}, Landroid/animation/StateListAnimator;->addState([ILandroid/animation/Animator;)V

    sget-object p3, L㺴/㚬/உ/䂻/ಋ/䂻;->㥁:[I

    invoke-virtual {p0, p1, p2}, L㺴/㚬/உ/䂻/ಋ/㚬;->ග(FF)Landroid/animation/Animator;

    move-result-object v2

    invoke-virtual {v1, p3, v2}, Landroid/animation/StateListAnimator;->addState([ILandroid/animation/Animator;)V

    sget-object p3, L㺴/㚬/உ/䂻/ಋ/䂻;->ർ:[I

    invoke-virtual {p0, p1, p2}, L㺴/㚬/உ/䂻/ಋ/㚬;->ග(FF)Landroid/animation/Animator;

    move-result-object p2

    invoke-virtual {v1, p3, p2}, Landroid/animation/StateListAnimator;->addState([ILandroid/animation/Animator;)V

    new-instance p2, Landroid/animation/AnimatorSet;

    invoke-direct {p2}, Landroid/animation/AnimatorSet;-><init>()V

    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, L㺴/㚬/உ/䂻/ಋ/䂻;->ㄬ:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    const/4 v3, 0x1

    new-array v4, v3, [F

    const/4 v5, 0x0

    aput p1, v4, v5

    const-string p1, "elevation"

    invoke-static {v2, p1, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    const-wide/16 v6, 0x0

    invoke-virtual {p1, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object p1

    invoke-interface {p3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/16 p1, 0x16

    const-wide/16 v6, 0x64

    if-lt v0, p1, :cond_1

    const/16 p1, 0x18

    if-gt v0, p1, :cond_1

    iget-object p1, p0, L㺴/㚬/உ/䂻/ಋ/䂻;->ㄬ:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    sget-object v0, Landroid/view/View;->TRANSLATION_Z:Landroid/util/Property;

    new-array v2, v3, [F

    invoke-virtual {p1}, Landroid/widget/ImageButton;->getTranslationZ()F

    move-result v4

    aput v4, v2, v5

    invoke-static {p1, v0, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    invoke-virtual {p1, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object p1

    invoke-interface {p3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    iget-object p1, p0, L㺴/㚬/உ/䂻/ಋ/䂻;->ㄬ:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    sget-object v0, Landroid/view/View;->TRANSLATION_Z:Landroid/util/Property;

    new-array v2, v3, [F

    const/4 v3, 0x0

    aput v3, v2, v5

    invoke-static {p1, v0, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    invoke-virtual {p1, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object p1

    invoke-interface {p3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-array p1, v5, [Landroid/animation/Animator;

    invoke-interface {p3, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/animation/Animator;

    invoke-virtual {p2, p1}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    sget-object p1, L㺴/㚬/உ/䂻/ಋ/䂻;->㨃:Landroid/animation/TimeInterpolator;

    invoke-virtual {p2, p1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    sget-object p1, L㺴/㚬/உ/䂻/ಋ/䂻;->㖆:[I

    invoke-virtual {v1, p1, p2}, Landroid/animation/StateListAnimator;->addState([ILandroid/animation/Animator;)V

    sget-object p1, L㺴/㚬/உ/䂻/ಋ/䂻;->㭢:[I

    invoke-virtual {p0, v3, v3}, L㺴/㚬/உ/䂻/ಋ/㚬;->ග(FF)Landroid/animation/Animator;

    move-result-object p2

    invoke-virtual {v1, p1, p2}, Landroid/animation/StateListAnimator;->addState([ILandroid/animation/Animator;)V

    iget-object p1, p0, L㺴/㚬/உ/䂻/ಋ/䂻;->ㄬ:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {p1, v1}, Landroid/widget/ImageButton;->setStateListAnimator(Landroid/animation/StateListAnimator;)V

    :goto_0
    invoke-virtual {p0}, L㺴/㚬/உ/䂻/ಋ/㚬;->ᣝ()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, L㺴/㚬/உ/䂻/ಋ/䂻;->㽛()V

    :cond_2
    return-void
.end method
