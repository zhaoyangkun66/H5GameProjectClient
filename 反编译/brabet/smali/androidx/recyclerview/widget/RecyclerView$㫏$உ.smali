.class public Landroidx/recyclerview/widget/RecyclerView$㫏$உ;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/recyclerview/widget/RecyclerView$㫏;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "\u0b89"
.end annotation


# instance fields
.field public உ:I

.field public ᆻ:I

.field public ḓ:Landroid/view/animation/Interpolator;

.field public 㚬:I

.field public 㺴:I

.field public 䂻:I

.field public 䆀:Z


# direct methods
.method public constructor <init>(II)V
    .locals 2

    const/high16 v0, -0x80000000

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Landroidx/recyclerview/widget/RecyclerView$㫏$உ;-><init>(IIILandroid/view/animation/Interpolator;)V

    return-void
.end method

.method public constructor <init>(IIILandroid/view/animation/Interpolator;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView$㫏$உ;->㺴:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView$㫏$உ;->䆀:Z

    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView$㫏$உ;->ᆻ:I

    iput p1, p0, Landroidx/recyclerview/widget/RecyclerView$㫏$உ;->உ:I

    iput p2, p0, Landroidx/recyclerview/widget/RecyclerView$㫏$உ;->䂻:I

    iput p3, p0, Landroidx/recyclerview/widget/RecyclerView$㫏$உ;->㚬:I

    iput-object p4, p0, Landroidx/recyclerview/widget/RecyclerView$㫏$உ;->ḓ:Landroid/view/animation/Interpolator;

    return-void
.end method


# virtual methods
.method public உ()Z
    .locals 1

    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$㫏$உ;->㺴:I

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final ḓ()V
    .locals 2

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$㫏$உ;->ḓ:Landroid/view/animation/Interpolator;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$㫏$உ;->㚬:I

    if-lt v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "If you provide an interpolator, you must set a positive duration"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$㫏$உ;->㚬:I

    if-lt v0, v1, :cond_2

    return-void

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Scroll duration must be a positive number"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public 㚬(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 5

    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$㫏$உ;->㺴:I

    const/4 v1, 0x0

    if-ltz v0, :cond_0

    const/4 v2, -0x1

    iput v2, p0, Landroidx/recyclerview/widget/RecyclerView$㫏$உ;->㺴:I

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->jumpToPositionForSmoothScroller(I)V

    iput-boolean v1, p0, Landroidx/recyclerview/widget/RecyclerView$㫏$உ;->䆀:Z

    return-void

    :cond_0
    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView$㫏$உ;->䆀:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$㫏$உ;->ḓ()V

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView;->mViewFlinger:Landroidx/recyclerview/widget/RecyclerView$ڈ;

    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$㫏$உ;->உ:I

    iget v2, p0, Landroidx/recyclerview/widget/RecyclerView$㫏$உ;->䂻:I

    iget v3, p0, Landroidx/recyclerview/widget/RecyclerView$㫏$உ;->㚬:I

    iget-object v4, p0, Landroidx/recyclerview/widget/RecyclerView$㫏$உ;->ḓ:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, v0, v2, v3, v4}, Landroidx/recyclerview/widget/RecyclerView$ڈ;->䆀(IIILandroid/view/animation/Interpolator;)V

    iget p1, p0, Landroidx/recyclerview/widget/RecyclerView$㫏$உ;->ᆻ:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Landroidx/recyclerview/widget/RecyclerView$㫏$உ;->ᆻ:I

    const/16 v0, 0xa

    if-le p1, v0, :cond_1

    const-string p1, "RecyclerView"

    const-string v0, "Smooth Scroll action is being updated too frequently. Make sure you are not changing it unless necessary"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iput-boolean v1, p0, Landroidx/recyclerview/widget/RecyclerView$㫏$உ;->䆀:Z

    goto :goto_0

    :cond_2
    iput v1, p0, Landroidx/recyclerview/widget/RecyclerView$㫏$உ;->ᆻ:I

    :goto_0
    return-void
.end method

.method public 㺴(IIILandroid/view/animation/Interpolator;)V
    .locals 0

    iput p1, p0, Landroidx/recyclerview/widget/RecyclerView$㫏$உ;->உ:I

    iput p2, p0, Landroidx/recyclerview/widget/RecyclerView$㫏$உ;->䂻:I

    iput p3, p0, Landroidx/recyclerview/widget/RecyclerView$㫏$உ;->㚬:I

    iput-object p4, p0, Landroidx/recyclerview/widget/RecyclerView$㫏$உ;->ḓ:Landroid/view/animation/Interpolator;

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/recyclerview/widget/RecyclerView$㫏$உ;->䆀:Z

    return-void
.end method

.method public 䂻(I)V
    .locals 0

    iput p1, p0, Landroidx/recyclerview/widget/RecyclerView$㫏$உ;->㺴:I

    return-void
.end method
