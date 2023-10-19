.class public Lcom/google/android/material/bottomappbar/BottomAppBar;
.super Landroidx/appcompat/widget/Toolbar;
.source ""

# interfaces
.implements Landroidx/coordinatorlayout/widget/CoordinatorLayout$䂻;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/bottomappbar/BottomAppBar$ᆻ;,
        Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior;,
        Lcom/google/android/material/bottomappbar/BottomAppBar$䆀;
    }
.end annotation


# instance fields
.field public ಇ:Landroid/animation/AnimatorListenerAdapter;

.field public ᇿ:Z

.field public ᘚ:Z

.field public ᣑ:I

.field public ᣝ:I

.field public ᣦ:Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior;

.field public ᭊ:Landroid/animation/Animator;

.field public Ổ:L㺴/㚬/உ/䂻/㹖/㧦;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "L\u3eb4/\u36ac/\u0b89/\u40bb/\u3e56/\u39e6<",
            "Lcom/google/android/material/floatingactionbutton/FloatingActionButton;",
            ">;"
        }
    .end annotation
.end field

.field public final ἂ:L㺴/㚬/உ/䂻/ᱹ/ᆻ;

.field public ⵦ:Landroid/animation/Animator;

.field public 㟘:I

.field public final 㮕:I

.field public 㲊:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/google/android/material/bottomappbar/BottomAppBar$\u4180;",
            ">;"
        }
    .end annotation
.end field

.field public 㽛:I


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private getActionMenuView()Landroidx/appcompat/widget/ActionMenuView;
    .locals 3

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    instance-of v2, v1, Landroidx/appcompat/widget/ActionMenuView;

    if-eqz v2, :cond_0

    check-cast v1, Landroidx/appcompat/widget/ActionMenuView;

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private getBottomInset()I
    .locals 1

    iget v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->㽛:I

    return v0
.end method

.method private getFabTranslationX()F
    .locals 1

    iget v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->㟘:I

    invoke-virtual {p0, v0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->䆍(I)F

    move-result v0

    return v0
.end method

.method private getFabTranslationY()F
    .locals 1

    invoke-direct {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->getTopEdgeTreatment()L㺴/㚬/உ/䂻/ཇ/உ;

    move-result-object v0

    invoke-virtual {v0}, L㺴/㚬/உ/䂻/ཇ/உ;->䂻()F

    move-result v0

    neg-float v0, v0

    return v0
.end method

.method private getTopEdgeTreatment()L㺴/㚬/உ/䂻/ཇ/உ;
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->ἂ:L㺴/㚬/உ/䂻/ᱹ/ᆻ;

    invoke-virtual {v0}, L㺴/㚬/உ/䂻/ᱹ/ᆻ;->ᾦ()L㺴/㚬/உ/䂻/ᱹ/㧦;

    move-result-object v0

    invoke-virtual {v0}, L㺴/㚬/உ/䂻/ᱹ/㧦;->ბ()L㺴/㚬/உ/䂻/ᱹ/䆀;

    move-result-object v0

    check-cast v0, L㺴/㚬/உ/䂻/ཇ/உ;

    return-object v0
.end method

.method public static synthetic ᇿ(Lcom/google/android/material/bottomappbar/BottomAppBar;)V
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->ග()V

    return-void
.end method

.method public static synthetic ᣑ(Lcom/google/android/material/bottomappbar/BottomAppBar;I)F
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/android/material/bottomappbar/BottomAppBar;->䆍(I)F

    move-result p0

    return p0
.end method

.method public static synthetic ᣝ(Lcom/google/android/material/bottomappbar/BottomAppBar;)V
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->Ᏼ()V

    return-void
.end method

.method public static synthetic ᭊ(Lcom/google/android/material/bottomappbar/BottomAppBar;Lcom/google/android/material/floatingactionbutton/FloatingActionButton;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/android/material/bottomappbar/BottomAppBar;->ᘚ(Lcom/google/android/material/floatingactionbutton/FloatingActionButton;)V

    return-void
.end method

.method public static synthetic ỷ(Lcom/google/android/material/bottomappbar/BottomAppBar;Landroidx/appcompat/widget/ActionMenuView;IZ)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/material/bottomappbar/BottomAppBar;->ᨧ(Landroidx/appcompat/widget/ActionMenuView;IZ)V

    return-void
.end method

.method public static synthetic ἂ(Lcom/google/android/material/bottomappbar/BottomAppBar;)I
    .locals 0

    invoke-direct {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->getBottomInset()I

    move-result p0

    return p0
.end method

.method public static synthetic ⵦ(Lcom/google/android/material/bottomappbar/BottomAppBar;)Landroid/view/View;
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->䋡()Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic 㟘(Lcom/google/android/material/bottomappbar/BottomAppBar;)V
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->ᗼ()V

    return-void
.end method

.method public static synthetic 㮕(Lcom/google/android/material/bottomappbar/BottomAppBar;)F
    .locals 0

    invoke-direct {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->getFabTranslationX()F

    move-result p0

    return p0
.end method

.method public static synthetic 㲊(Lcom/google/android/material/bottomappbar/BottomAppBar;Landroid/animation/Animator;)Landroid/animation/Animator;
    .locals 0

    iput-object p1, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->ᭊ:Landroid/animation/Animator;

    return-object p1
.end method

.method public static synthetic 䅚(Lcom/google/android/material/bottomappbar/BottomAppBar;)Lcom/google/android/material/floatingactionbutton/FloatingActionButton;
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->㠭()Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getBackgroundTint()Landroid/content/res/ColorStateList;
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->ἂ:L㺴/㚬/உ/䂻/ᱹ/ᆻ;

    invoke-virtual {v0}, L㺴/㚬/உ/䂻/ᱹ/ᆻ;->㰫()Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getBehavior()Landroidx/coordinatorlayout/widget/CoordinatorLayout$㚬;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->getBehavior()Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior;

    move-result-object v0

    return-object v0
.end method

.method public getBehavior()Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior;
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->ᣦ:Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior;

    invoke-direct {v0}, Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->ᣦ:Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior;

    :cond_0
    iget-object v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->ᣦ:Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior;

    return-object v0
.end method

.method public getCradleVerticalOffset()F
    .locals 1

    invoke-direct {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->getTopEdgeTreatment()L㺴/㚬/உ/䂻/ཇ/உ;

    move-result-object v0

    invoke-virtual {v0}, L㺴/㚬/உ/䂻/ཇ/உ;->䂻()F

    move-result v0

    return v0
.end method

.method public getFabAlignmentMode()I
    .locals 1

    iget v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->㟘:I

    return v0
.end method

.method public getFabAnimationMode()I
    .locals 1

    iget v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->ᣝ:I

    return v0
.end method

.method public getFabCradleMargin()F
    .locals 1

    invoke-direct {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->getTopEdgeTreatment()L㺴/㚬/உ/䂻/ཇ/உ;

    move-result-object v0

    invoke-virtual {v0}, L㺴/㚬/உ/䂻/ཇ/உ;->㚬()F

    move-result v0

    return v0
.end method

.method public getFabCradleRoundedCornerRadius()F
    .locals 1

    invoke-direct {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->getTopEdgeTreatment()L㺴/㚬/உ/䂻/ཇ/உ;

    move-result-object v0

    invoke-virtual {v0}, L㺴/㚬/உ/䂻/ཇ/உ;->㺴()F

    move-result v0

    return v0
.end method

.method public getHideOnScroll()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->ᇿ:Z

    return v0
.end method

.method public onAttachedToWindow()V
    .locals 2

    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    iget-object v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->ἂ:L㺴/㚬/உ/䂻/ᱹ/ᆻ;

    invoke-static {p0, v0}, L㺴/㚬/உ/䂻/ᱹ/ℓ;->䆀(Landroid/view/View;L㺴/㚬/உ/䂻/ᱹ/ᆻ;)V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    :cond_0
    return-void
.end method

.method public onLayout(ZIIII)V
    .locals 0

    invoke-super/range {p0 .. p5}, Landroidx/appcompat/widget/Toolbar;->onLayout(ZIIII)V

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->ᣦ()V

    invoke-virtual {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->ᗼ()V

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->䃻()V

    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    instance-of v0, p1, Lcom/google/android/material/bottomappbar/BottomAppBar$ᆻ;

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroidx/appcompat/widget/Toolbar;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void

    :cond_0
    check-cast p1, Lcom/google/android/material/bottomappbar/BottomAppBar$ᆻ;

    invoke-virtual {p1}, L㚬/ಫ/உ/உ;->ಫ()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroidx/appcompat/widget/Toolbar;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    iget v0, p1, Lcom/google/android/material/bottomappbar/BottomAppBar$ᆻ;->㺴:I

    iput v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->㟘:I

    iget-boolean p1, p1, Lcom/google/android/material/bottomappbar/BottomAppBar$ᆻ;->ḓ:Z

    iput-boolean p1, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->ᘚ:Z

    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    invoke-super {p0}, Landroidx/appcompat/widget/Toolbar;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    new-instance v1, Lcom/google/android/material/bottomappbar/BottomAppBar$ᆻ;

    invoke-direct {v1, v0}, Lcom/google/android/material/bottomappbar/BottomAppBar$ᆻ;-><init>(Landroid/os/Parcelable;)V

    iget v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->㟘:I

    iput v0, v1, Lcom/google/android/material/bottomappbar/BottomAppBar$ᆻ;->㺴:I

    iget-boolean v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->ᘚ:Z

    iput-boolean v0, v1, Lcom/google/android/material/bottomappbar/BottomAppBar$ᆻ;->ḓ:Z

    return-object v1
.end method

.method public setBackgroundTint(Landroid/content/res/ColorStateList;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->ἂ:L㺴/㚬/உ/䂻/ᱹ/ᆻ;

    invoke-static {v0, p1}, L㚬/ℓ/䆀/㹖/உ;->ᓭ(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setCradleVerticalOffset(F)V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->getCradleVerticalOffset()F

    move-result v0

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->getTopEdgeTreatment()L㺴/㚬/உ/䂻/ཇ/உ;

    move-result-object v0

    invoke-virtual {v0, p1}, L㺴/㚬/உ/䂻/ཇ/உ;->䆀(F)V

    iget-object p1, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->ἂ:L㺴/㚬/உ/䂻/ᱹ/ᆻ;

    invoke-virtual {p1}, L㺴/㚬/உ/䂻/ᱹ/ᆻ;->invalidateSelf()V

    invoke-virtual {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->ᗼ()V

    :cond_0
    return-void
.end method

.method public setElevation(F)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->ἂ:L㺴/㚬/உ/䂻/ᱹ/ᆻ;

    invoke-virtual {v0, p1}, L㺴/㚬/உ/䂻/ᱹ/ᆻ;->ⵦ(F)V

    iget-object p1, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->ἂ:L㺴/㚬/உ/䂻/ᱹ/ᆻ;

    invoke-virtual {p1}, L㺴/㚬/உ/䂻/ᱹ/ᆻ;->ಋ()I

    move-result p1

    iget-object v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->ἂ:L㺴/㚬/உ/䂻/ᱹ/ᆻ;

    invoke-virtual {v0}, L㺴/㚬/உ/䂻/ᱹ/ᆻ;->㫏()I

    move-result v0

    sub-int/2addr p1, v0

    invoke-virtual {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->getBehavior()Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior;->ᰘ(Landroid/view/View;I)V

    return-void
.end method

.method public setFabAlignmentMode(I)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/material/bottomappbar/BottomAppBar;->ⷜ(I)V

    iget-boolean v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->ᘚ:Z

    invoke-virtual {p0, p1, v0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->क(IZ)V

    iput p1, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->㟘:I

    return-void
.end method

.method public setFabAnimationMode(I)V
    .locals 0

    iput p1, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->ᣝ:I

    return-void
.end method

.method public setFabCradleMargin(F)V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->getFabCradleMargin()F

    move-result v0

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->getTopEdgeTreatment()L㺴/㚬/உ/䂻/ཇ/உ;

    move-result-object v0

    invoke-virtual {v0, p1}, L㺴/㚬/உ/䂻/ཇ/உ;->ᆻ(F)V

    iget-object p1, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->ἂ:L㺴/㚬/உ/䂻/ᱹ/ᆻ;

    invoke-virtual {p1}, L㺴/㚬/உ/䂻/ᱹ/ᆻ;->invalidateSelf()V

    :cond_0
    return-void
.end method

.method public setFabCradleRoundedCornerRadius(F)V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->getFabCradleRoundedCornerRadius()F

    move-result v0

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->getTopEdgeTreatment()L㺴/㚬/உ/䂻/ཇ/உ;

    move-result-object v0

    invoke-virtual {v0, p1}, L㺴/㚬/உ/䂻/ཇ/உ;->ℓ(F)V

    iget-object p1, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->ἂ:L㺴/㚬/உ/䂻/ᱹ/ᆻ;

    invoke-virtual {p1}, L㺴/㚬/உ/䂻/ᱹ/ᆻ;->invalidateSelf()V

    :cond_0
    return-void
.end method

.method public setHideOnScroll(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->ᇿ:Z

    return-void
.end method

.method public setSubtitle(Ljava/lang/CharSequence;)V
    .locals 0

    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 0

    return-void
.end method

.method public ϣ(I)Z
    .locals 1

    int-to-float p1, p1

    invoke-direct {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->getTopEdgeTreatment()L㺴/㚬/உ/䂻/ཇ/உ;

    move-result-object v0

    invoke-virtual {v0}, L㺴/㚬/உ/䂻/ཇ/உ;->ḓ()F

    move-result v0

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->getTopEdgeTreatment()L㺴/㚬/உ/䂻/ཇ/உ;

    move-result-object v0

    invoke-virtual {v0, p1}, L㺴/㚬/உ/䂻/ཇ/உ;->ㄏ(F)V

    iget-object p1, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->ἂ:L㺴/㚬/உ/䂻/ᱹ/ᆻ;

    invoke-virtual {p1}, L㺴/㚬/உ/䂻/ᱹ/ᆻ;->invalidateSelf()V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final क(IZ)V
    .locals 3

    invoke-static {p0}, L㚬/ℓ/ἥ/㭲;->㖆(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->ᭊ:Landroid/animation/Animator;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->ⶬ()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_2

    const/4 p1, 0x0

    const/4 p2, 0x0

    :cond_2
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->Ổ(IZLjava/util/List;)V

    new-instance p1, Landroid/animation/AnimatorSet;

    invoke-direct {p1}, Landroid/animation/AnimatorSet;-><init>()V

    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    iput-object p1, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->ᭊ:Landroid/animation/Animator;

    new-instance p2, Lcom/google/android/material/bottomappbar/BottomAppBar$㚬;

    invoke-direct {p2, p0}, Lcom/google/android/material/bottomappbar/BottomAppBar$㚬;-><init>(Lcom/google/android/material/bottomappbar/BottomAppBar;)V

    invoke-virtual {p1, p2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p1, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->ᭊ:Landroid/animation/Animator;

    invoke-virtual {p1}, Landroid/animation/Animator;->start()V

    return-void
.end method

.method public final ಇ(ILjava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/animation/Animator;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->㠭()Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [F

    invoke-virtual {p0, p1}, Lcom/google/android/material/bottomappbar/BottomAppBar;->䆍(I)F

    move-result p1

    const/4 v2, 0x0

    aput p1, v1, v2

    const-string p1, "translationX"

    invoke-static {v0, p1, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    const-wide/16 v0, 0x12c

    invoke-virtual {p1, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final ග()V
    .locals 2

    iget v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->ᣑ:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->ᣑ:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->㲊:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/bottomappbar/BottomAppBar$䆀;

    invoke-interface {v1, p0}, Lcom/google/android/material/bottomappbar/BottomAppBar$䆀;->உ(Lcom/google/android/material/bottomappbar/BottomAppBar;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final Ᏼ()V
    .locals 2

    iget v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->ᣑ:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->ᣑ:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->㲊:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/bottomappbar/BottomAppBar$䆀;

    invoke-interface {v1, p0}, Lcom/google/android/material/bottomappbar/BottomAppBar$䆀;->䂻(Lcom/google/android/material/bottomappbar/BottomAppBar;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final ᗼ()V
    .locals 3

    invoke-direct {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->getTopEdgeTreatment()L㺴/㚬/உ/䂻/ཇ/உ;

    move-result-object v0

    invoke-direct {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->getFabTranslationX()F

    move-result v1

    invoke-virtual {v0, v1}, L㺴/㚬/உ/䂻/ཇ/உ;->ಫ(F)V

    invoke-virtual {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->䋡()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->ἂ:L㺴/㚬/உ/䂻/ᱹ/ᆻ;

    iget-boolean v2, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->ᘚ:Z

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->ⶬ()Z

    move-result v2

    if-eqz v2, :cond_0

    const/high16 v2, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v1, v2}, L㺴/㚬/உ/䂻/ᱹ/ᆻ;->㟘(F)V

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->getFabTranslationY()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    invoke-direct {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->getFabTranslationX()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    :cond_1
    return-void
.end method

.method public final ᘚ(Lcom/google/android/material/floatingactionbutton/FloatingActionButton;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->ಇ:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {p1, v0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->ḓ(Landroid/animation/Animator$AnimatorListener;)V

    new-instance v0, Lcom/google/android/material/bottomappbar/BottomAppBar$ḓ;

    invoke-direct {v0, p0}, Lcom/google/android/material/bottomappbar/BottomAppBar$ḓ;-><init>(Lcom/google/android/material/bottomappbar/BottomAppBar;)V

    invoke-virtual {p1, v0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->䆀(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->Ổ:L㺴/㚬/உ/䂻/㹖/㧦;

    invoke-virtual {p1, v0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->ᆻ(L㺴/㚬/உ/䂻/㹖/㧦;)V

    return-void
.end method

.method public final ᣦ()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->ᭊ:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    :cond_0
    iget-object v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->ⵦ:Landroid/animation/Animator;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    :cond_1
    return-void
.end method

.method public final ᨧ(Landroidx/appcompat/widget/ActionMenuView;IZ)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/material/bottomappbar/BottomAppBar;->ἃ(Landroidx/appcompat/widget/ActionMenuView;IZ)I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setTranslationX(F)V

    return-void
.end method

.method public final Ổ(IZLjava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ",
            "Ljava/util/List<",
            "Landroid/animation/Animator;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->getActionMenuView()Landroidx/appcompat/widget/ActionMenuView;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x1

    new-array v2, v1, [F

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    aput v4, v2, v3

    const-string v5, "alpha"

    invoke-static {v0, v5, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getTranslationX()F

    move-result v6

    invoke-virtual {p0, v0, p1, p2}, Lcom/google/android/material/bottomappbar/BottomAppBar;->ἃ(Landroidx/appcompat/widget/ActionMenuView;IZ)I

    move-result v7

    int-to-float v7, v7

    sub-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    cmpl-float v6, v6, v4

    if-lez v6, :cond_1

    new-array v4, v1, [F

    const/4 v6, 0x0

    aput v6, v4, v3

    invoke-static {v0, v5, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    new-instance v5, Lcom/google/android/material/bottomappbar/BottomAppBar$㺴;

    invoke-direct {v5, p0, v0, p1, p2}, Lcom/google/android/material/bottomappbar/BottomAppBar$㺴;-><init>(Lcom/google/android/material/bottomappbar/BottomAppBar;Landroidx/appcompat/widget/ActionMenuView;IZ)V

    invoke-virtual {v4, v5}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    new-instance p1, Landroid/animation/AnimatorSet;

    invoke-direct {p1}, Landroid/animation/AnimatorSet;-><init>()V

    const-wide/16 v5, 0x96

    invoke-virtual {p1, v5, v6}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    const/4 p2, 0x2

    new-array p2, p2, [Landroid/animation/Animator;

    aput-object v4, p2, v3

    aput-object v2, p2, v1

    invoke-virtual {p1, p2}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    invoke-interface {p3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getAlpha()F

    move-result p1

    cmpg-float p1, p1, v4

    if-gez p1, :cond_2

    invoke-interface {p3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_0
    return-void
.end method

.method public ἃ(Landroidx/appcompat/widget/ActionMenuView;IZ)I
    .locals 8

    invoke-static {p0}, L㚬/ℓ/ἥ/㭲;->ม(Landroid/view/View;)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v3

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    const/4 v4, 0x0

    :goto_2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    if-ge v4, v5, :cond_5

    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    instance-of v6, v6, Landroidx/appcompat/widget/Toolbar$ḓ;

    if-eqz v6, :cond_2

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroidx/appcompat/widget/Toolbar$ḓ;

    iget v6, v6, L㚬/䂻/㧦/உ$உ;->உ:I

    const v7, 0x800007

    and-int/2addr v6, v7

    const v7, 0x800003

    if-ne v6, v7, :cond_2

    const/4 v6, 0x1

    goto :goto_3

    :cond_2
    const/4 v6, 0x0

    :goto_3
    if-eqz v6, :cond_4

    if-eqz v0, :cond_3

    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v5

    invoke-static {v3, v5}, Ljava/lang/Math;->min(II)I

    move-result v3

    goto :goto_4

    :cond_3
    invoke-virtual {v5}, Landroid/view/View;->getRight()I

    move-result v5

    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v3

    :cond_4
    :goto_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_5
    if-eqz v0, :cond_6

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getRight()I

    move-result p1

    goto :goto_5

    :cond_6
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getLeft()I

    move-result p1

    :goto_5
    sub-int/2addr v3, p1

    if-ne p2, v2, :cond_7

    if-eqz p3, :cond_7

    move v1, v3

    :cond_7
    return v1
.end method

.method public final ⶬ()Z
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->㠭()Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->ᓭ()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final ⷜ(I)V
    .locals 3

    iget v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->㟘:I

    if-eq v0, p1, :cond_3

    invoke-static {p0}, L㚬/ℓ/ἥ/㭲;->㖆(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->ⵦ:Landroid/animation/Animator;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget v1, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->ᣝ:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    invoke-virtual {p0, p1, v0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->ಇ(ILjava/util/List;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0, p1, v0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->㽛(ILjava/util/List;)V

    :goto_0
    new-instance p1, Landroid/animation/AnimatorSet;

    invoke-direct {p1}, Landroid/animation/AnimatorSet;-><init>()V

    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    iput-object p1, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->ⵦ:Landroid/animation/Animator;

    new-instance v0, Lcom/google/android/material/bottomappbar/BottomAppBar$உ;

    invoke-direct {v0, p0}, Lcom/google/android/material/bottomappbar/BottomAppBar$உ;-><init>(Lcom/google/android/material/bottomappbar/BottomAppBar;)V

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p1, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->ⵦ:Landroid/animation/Animator;

    invoke-virtual {p1}, Landroid/animation/Animator;->start()V

    :cond_3
    :goto_1
    return-void
.end method

.method public final 㠭()Lcom/google/android/material/floatingactionbutton/FloatingActionButton;
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->䋡()Landroid/view/View;

    move-result-object v0

    instance-of v1, v0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public 㽛(ILjava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/animation/Animator;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->㠭()Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    move-result-object p2

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->ཇ()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->Ᏼ()V

    new-instance v0, Lcom/google/android/material/bottomappbar/BottomAppBar$䂻;

    invoke-direct {v0, p0, p1}, Lcom/google/android/material/bottomappbar/BottomAppBar$䂻;-><init>(Lcom/google/android/material/bottomappbar/BottomAppBar;I)V

    invoke-virtual {p2, v0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->㹖(Lcom/google/android/material/floatingactionbutton/FloatingActionButton$䂻;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final 䃻()V
    .locals 3

    invoke-direct {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->getActionMenuView()Landroidx/appcompat/widget/ActionMenuView;

    move-result-object v0

    if-eqz v0, :cond_1

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setAlpha(F)V

    invoke-virtual {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->ⶬ()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v1}, Lcom/google/android/material/bottomappbar/BottomAppBar;->ᨧ(Landroidx/appcompat/widget/ActionMenuView;IZ)V

    goto :goto_0

    :cond_0
    iget v1, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->㟘:I

    iget-boolean v2, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->ᘚ:Z

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/android/material/bottomappbar/BottomAppBar;->ᨧ(Landroidx/appcompat/widget/ActionMenuView;IZ)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final 䆍(I)F
    .locals 3

    invoke-static {p0}, L㚬/ℓ/ἥ/㭲;->ม(Landroid/view/View;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-ne p1, v1, :cond_2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    iget v2, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->㮕:I

    sub-int/2addr p1, v2

    if-eqz v0, :cond_1

    const/4 v1, -0x1

    :cond_1
    mul-int p1, p1, v1

    int-to-float p1, p1

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    :goto_1
    return p1
.end method

.method public final 䋡()Landroid/view/View;
    .locals 4

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    invoke-virtual {v0, p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->㭲(Landroid/view/View;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    instance-of v3, v2, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    if-nez v3, :cond_2

    instance-of v3, v2, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    if-eqz v3, :cond_1

    :cond_2
    return-object v2

    :cond_3
    return-object v1
.end method
