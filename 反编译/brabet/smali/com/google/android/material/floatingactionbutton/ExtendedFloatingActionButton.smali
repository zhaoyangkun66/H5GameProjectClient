.class public Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;
.super Lcom/google/android/material/button/MaterialButton;
.source ""

# interfaces
.implements Landroidx/coordinatorlayout/widget/CoordinatorLayout$䂻;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$ExtendedFloatingActionButtonBehavior;,
        Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$㺴;
    }
.end annotation


# instance fields
.field public final ม:L㺴/㚬/உ/䂻/ಋ/㺴;

.field public final ḙ:L㺴/㚬/உ/䂻/ಋ/㺴;

.field public ㄬ:Z

.field public final 㖪:L㺴/㚬/உ/䂻/ಋ/㺴;

.field public final 㢏:L㺴/㚬/உ/䂻/ಋ/㺴;

.field public final 㭲:Landroid/graphics/Rect;

.field public final 㲧:Landroidx/coordinatorlayout/widget/CoordinatorLayout$㚬;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/coordinatorlayout/widget/CoordinatorLayout$\u36ac<",
            "Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const-class v0, Ljava/lang/Float;

    new-instance v1, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$䂻;

    const-string v2, "width"

    invoke-direct {v1, v0, v2}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$䂻;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    new-instance v1, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$㚬;

    const-string v2, "height"

    invoke-direct {v1, v0, v2}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$㚬;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic ಫ(Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;)L㺴/㚬/உ/䂻/ಋ/㺴;
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->㖪:L㺴/㚬/உ/䂻/ಋ/㺴;

    return-object p0
.end method

.method public static synthetic ᆻ(Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;)L㺴/㚬/உ/䂻/ಋ/㺴;
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->ḙ:L㺴/㚬/உ/䂻/ಋ/㺴;

    return-object p0
.end method

.method public static synthetic ℓ(Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;)L㺴/㚬/உ/䂻/ಋ/㺴;
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->ม:L㺴/㚬/உ/䂻/ಋ/㺴;

    return-object p0
.end method

.method public static synthetic ㄏ(Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;L㺴/㚬/உ/䂻/ಋ/㺴;Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$㺴;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->ἥ(L㺴/㚬/உ/䂻/ಋ/㺴;Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$㺴;)V

    return-void
.end method

.method public static synthetic 㧦(Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;)L㺴/㚬/உ/䂻/ಋ/㺴;
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->㢏:L㺴/㚬/உ/䂻/ಋ/㺴;

    return-object p0
.end method

.method public static synthetic 㹖(Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;)Landroid/graphics/Rect;
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->㭲:Landroid/graphics/Rect;

    return-object p0
.end method


# virtual methods
.method public getBehavior()Landroidx/coordinatorlayout/widget/CoordinatorLayout$㚬;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/coordinatorlayout/widget/CoordinatorLayout$\u36ac<",
            "Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->㲧:Landroidx/coordinatorlayout/widget/CoordinatorLayout$㚬;

    return-object v0
.end method

.method public getCollapsedSize()I
    .locals 2

    invoke-static {p0}, L㚬/ℓ/ἥ/㭲;->ᾦ(Landroid/view/View;)I

    move-result v0

    invoke-static {p0}, L㚬/ℓ/ἥ/㭲;->ಋ(Landroid/view/View;)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->getIconSize()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getExtendMotionSpec()L㺴/㚬/உ/䂻/㹖/ℓ;
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->㖪:L㺴/㚬/உ/䂻/ಋ/㺴;

    invoke-interface {v0}, L㺴/㚬/உ/䂻/ಋ/㺴;->உ()L㺴/㚬/உ/䂻/㹖/ℓ;

    move-result-object v0

    return-object v0
.end method

.method public getHideMotionSpec()L㺴/㚬/உ/䂻/㹖/ℓ;
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->ม:L㺴/㚬/உ/䂻/ಋ/㺴;

    invoke-interface {v0}, L㺴/㚬/உ/䂻/ಋ/㺴;->உ()L㺴/㚬/உ/䂻/㹖/ℓ;

    move-result-object v0

    return-object v0
.end method

.method public getShowMotionSpec()L㺴/㚬/உ/䂻/㹖/ℓ;
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->㢏:L㺴/㚬/உ/䂻/ಋ/㺴;

    invoke-interface {v0}, L㺴/㚬/உ/䂻/ಋ/㺴;->உ()L㺴/㚬/உ/䂻/㹖/ℓ;

    move-result-object v0

    return-object v0
.end method

.method public getShrinkMotionSpec()L㺴/㚬/உ/䂻/㹖/ℓ;
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->ḙ:L㺴/㚬/உ/䂻/ಋ/㺴;

    invoke-interface {v0}, L㺴/㚬/உ/䂻/ಋ/㺴;->உ()L㺴/㚬/உ/䂻/㹖/ℓ;

    move-result-object v0

    return-object v0
.end method

.method public onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Lcom/google/android/material/button/MaterialButton;->onAttachedToWindow()V

    iget-boolean v0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->ㄬ:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->ㄬ:Z

    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->ḙ:L㺴/㚬/உ/䂻/ಋ/㺴;

    invoke-interface {v0}, L㺴/㚬/உ/䂻/ಋ/㺴;->ㄏ()V

    :cond_0
    return-void
.end method

.method public setExtendMotionSpec(L㺴/㚬/உ/䂻/㹖/ℓ;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->㖪:L㺴/㚬/உ/䂻/ಋ/㺴;

    invoke-interface {v0, p1}, L㺴/㚬/உ/䂻/ಋ/㺴;->ℓ(L㺴/㚬/உ/䂻/㹖/ℓ;)V

    return-void
.end method

.method public setExtendMotionSpecResource(I)V
    .locals 1

    invoke-virtual {p0}, Landroid/widget/Button;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, L㺴/㚬/உ/䂻/㹖/ℓ;->㚬(Landroid/content/Context;I)L㺴/㚬/உ/䂻/㹖/ℓ;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->setExtendMotionSpec(L㺴/㚬/உ/䂻/㹖/ℓ;)V

    return-void
.end method

.method public setExtended(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->ㄬ:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->㖪:L㺴/㚬/உ/䂻/ಋ/㺴;

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->ḙ:L㺴/㚬/உ/䂻/ಋ/㺴;

    :goto_0
    invoke-interface {p1}, L㺴/㚬/உ/䂻/ಋ/㺴;->ᆻ()Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    :cond_2
    invoke-interface {p1}, L㺴/㚬/உ/䂻/ಋ/㺴;->ㄏ()V

    return-void
.end method

.method public setHideMotionSpec(L㺴/㚬/உ/䂻/㹖/ℓ;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->ม:L㺴/㚬/உ/䂻/ಋ/㺴;

    invoke-interface {v0, p1}, L㺴/㚬/உ/䂻/ಋ/㺴;->ℓ(L㺴/㚬/உ/䂻/㹖/ℓ;)V

    return-void
.end method

.method public setHideMotionSpecResource(I)V
    .locals 1

    invoke-virtual {p0}, Landroid/widget/Button;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, L㺴/㚬/உ/䂻/㹖/ℓ;->㚬(Landroid/content/Context;I)L㺴/㚬/உ/䂻/㹖/ℓ;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->setHideMotionSpec(L㺴/㚬/உ/䂻/㹖/ℓ;)V

    return-void
.end method

.method public setShowMotionSpec(L㺴/㚬/உ/䂻/㹖/ℓ;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->㢏:L㺴/㚬/உ/䂻/ಋ/㺴;

    invoke-interface {v0, p1}, L㺴/㚬/உ/䂻/ಋ/㺴;->ℓ(L㺴/㚬/உ/䂻/㹖/ℓ;)V

    return-void
.end method

.method public setShowMotionSpecResource(I)V
    .locals 1

    invoke-virtual {p0}, Landroid/widget/Button;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, L㺴/㚬/உ/䂻/㹖/ℓ;->㚬(Landroid/content/Context;I)L㺴/㚬/உ/䂻/㹖/ℓ;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->setShowMotionSpec(L㺴/㚬/உ/䂻/㹖/ℓ;)V

    return-void
.end method

.method public setShrinkMotionSpec(L㺴/㚬/உ/䂻/㹖/ℓ;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->ḙ:L㺴/㚬/உ/䂻/ಋ/㺴;

    invoke-interface {v0, p1}, L㺴/㚬/உ/䂻/ಋ/㺴;->ℓ(L㺴/㚬/உ/䂻/㹖/ℓ;)V

    return-void
.end method

.method public setShrinkMotionSpecResource(I)V
    .locals 1

    invoke-virtual {p0}, Landroid/widget/Button;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, L㺴/㚬/உ/䂻/㹖/ℓ;->㚬(Landroid/content/Context;I)L㺴/㚬/உ/䂻/㹖/ℓ;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->setShrinkMotionSpec(L㺴/㚬/உ/䂻/㹖/ℓ;)V

    return-void
.end method

.method public final ཇ()Z
    .locals 1

    invoke-static {p0}, L㚬/ℓ/ἥ/㭲;->㖆(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/Button;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final ἥ(L㺴/㚬/உ/䂻/ಋ/㺴;Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$㺴;)V
    .locals 2

    invoke-interface {p1}, L㺴/㚬/உ/䂻/ಋ/㺴;->ᆻ()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->ཇ()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {p1}, L㺴/㚬/உ/䂻/ಋ/㺴;->ㄏ()V

    invoke-interface {p1, p2}, L㺴/㚬/உ/䂻/ಋ/㺴;->䆀(Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$㺴;)V

    return-void

    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Landroid/widget/Button;->measure(II)V

    invoke-interface {p1}, L㺴/㚬/உ/䂻/ಋ/㺴;->䂻()Landroid/animation/AnimatorSet;

    move-result-object v0

    new-instance v1, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$உ;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$உ;-><init>(Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;L㺴/㚬/உ/䂻/ಋ/㺴;Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$㺴;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-interface {p1}, L㺴/㚬/உ/䂻/ಋ/㺴;->ḓ()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v0, p2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    return-void
.end method
