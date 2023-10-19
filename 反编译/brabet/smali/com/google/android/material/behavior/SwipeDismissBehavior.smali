.class public Lcom/google/android/material/behavior/SwipeDismissBehavior;
.super Landroidx/coordinatorlayout/widget/CoordinatorLayout$㚬;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/behavior/SwipeDismissBehavior$㚬;,
        Lcom/google/android/material/behavior/SwipeDismissBehavior$䂻;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Landroid/view/View;",
        ">",
        "Landroidx/coordinatorlayout/widget/CoordinatorLayout$\u36ac<",
        "TV;>;"
    }
.end annotation


# instance fields
.field public உ:L㚬/ಫ/䂻/㚬;

.field public final ಫ:L㚬/ಫ/䂻/㚬$㚬;

.field public ᆻ:F

.field public ḓ:Z

.field public ℓ:F

.field public ㄏ:F

.field public 㚬:Z

.field public 㺴:F

.field public 䂻:Lcom/google/android/material/behavior/SwipeDismissBehavior$䂻;

.field public 䆀:I


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$㚬;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior;->㺴:F

    const/4 v1, 0x2

    iput v1, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior;->䆀:I

    const/high16 v1, 0x3f000000    # 0.5f

    iput v1, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior;->ᆻ:F

    iput v0, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior;->ℓ:F

    iput v1, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior;->ㄏ:F

    new-instance v0, Lcom/google/android/material/behavior/SwipeDismissBehavior$உ;

    invoke-direct {v0, p0}, Lcom/google/android/material/behavior/SwipeDismissBehavior$உ;-><init>(Lcom/google/android/material/behavior/SwipeDismissBehavior;)V

    iput-object v0, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior;->ಫ:L㚬/ಫ/䂻/㚬$㚬;

    return-void
.end method

.method public static ᰘ(III)I
    .locals 0

    invoke-static {p0, p1}, Ljava/lang/Math;->max(II)I

    move-result p0

    invoke-static {p0, p2}, Ljava/lang/Math;->min(II)I

    move-result p0

    return p0
.end method

.method public static 㥁(FFF)F
    .locals 0

    sub-float/2addr p2, p0

    sub-float/2addr p1, p0

    div-float/2addr p2, p1

    return p2
.end method

.method public static 㨃(FFF)F
    .locals 0

    invoke-static {p0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p0

    invoke-static {p0, p2}, Ljava/lang/Math;->min(FF)F

    move-result p0

    return p0
.end method


# virtual methods
.method public ש(Landroid/view/View;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public ർ(F)V
    .locals 2

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, p1, v1}, Lcom/google/android/material/behavior/SwipeDismissBehavior;->㨃(FFF)F

    move-result p1

    iput p1, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior;->ㄏ:F

    return-void
.end method

.method public final ᱹ(Landroid/view/ViewGroup;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior;->உ:L㚬/ಫ/䂻/㚬;

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior;->ḓ:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior;->㺴:F

    iget-object v1, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior;->ಫ:L㚬/ಫ/䂻/㚬$㚬;

    invoke-static {p1, v0, v1}, L㚬/ಫ/䂻/㚬;->㹖(Landroid/view/ViewGroup;FL㚬/ಫ/䂻/㚬$㚬;)L㚬/ಫ/䂻/㚬;

    move-result-object p1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior;->ಫ:L㚬/ಫ/䂻/㚬$㚬;

    invoke-static {p1, v0}, L㚬/ಫ/䂻/㚬;->ἥ(Landroid/view/ViewGroup;L㚬/ಫ/䂻/㚬$㚬;)L㚬/ಫ/䂻/㚬;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior;->உ:L㚬/ಫ/䂻/㚬;

    :cond_1
    return-void
.end method

.method public 㖆(F)V
    .locals 2

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, p1, v1}, Lcom/google/android/material/behavior/SwipeDismissBehavior;->㨃(FFF)F

    move-result p1

    iput p1, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior;->ℓ:F

    return-void
.end method

.method public 㧦(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TV;",
            "Landroid/view/MotionEvent;",
            ")Z"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior;->㚬:Z

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    const/4 p2, 0x1

    if-eq v1, p2, :cond_0

    const/4 p2, 0x3

    if-eq v1, p2, :cond_0

    goto :goto_0

    :cond_0
    iput-boolean v2, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior;->㚬:Z

    goto :goto_0

    :cond_1
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1, p2, v0, v1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->ᾦ(Landroid/view/View;II)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior;->㚬:Z

    :goto_0
    if-eqz v0, :cond_2

    invoke-virtual {p0, p1}, Lcom/google/android/material/behavior/SwipeDismissBehavior;->ᱹ(Landroid/view/ViewGroup;)V

    iget-object p1, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior;->உ:L㚬/ಫ/䂻/㚬;

    invoke-virtual {p1, p3}, L㚬/ಫ/䂻/㚬;->ᰘ(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :cond_2
    return v2
.end method

.method public 㭢(I)V
    .locals 0

    iput p1, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior;->䆀:I

    return-void
.end method

.method public 㰫(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TV;",
            "Landroid/view/MotionEvent;",
            ")Z"
        }
    .end annotation

    iget-object p1, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior;->உ:L㚬/ಫ/䂻/㚬;

    if-eqz p1, :cond_0

    invoke-virtual {p1, p3}, L㚬/ಫ/䂻/㚬;->㫏(Landroid/view/MotionEvent;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
