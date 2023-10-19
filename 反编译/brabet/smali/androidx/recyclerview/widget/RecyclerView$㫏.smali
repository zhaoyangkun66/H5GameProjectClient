.class public abstract Landroidx/recyclerview/widget/RecyclerView$㫏;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/recyclerview/widget/RecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "\u3acf"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/recyclerview/widget/RecyclerView$㫏$䂻;,
        Landroidx/recyclerview/widget/RecyclerView$㫏$உ;
    }
.end annotation


# instance fields
.field public உ:I

.field public final ᆻ:Landroidx/recyclerview/widget/RecyclerView$㫏$உ;

.field public ḓ:Z

.field public ℓ:Z

.field public 㚬:Landroidx/recyclerview/widget/RecyclerView$ᓭ;

.field public 㺴:Z

.field public 䂻:Landroidx/recyclerview/widget/RecyclerView;

.field public 䆀:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView$㫏;->உ:I

    new-instance v0, Landroidx/recyclerview/widget/RecyclerView$㫏$உ;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Landroidx/recyclerview/widget/RecyclerView$㫏$உ;-><init>(II)V

    iput-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$㫏;->ᆻ:Landroidx/recyclerview/widget/RecyclerView$㫏$உ;

    return-void
.end method


# virtual methods
.method public உ(I)Landroid/graphics/PointF;
    .locals 2

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$㫏;->ḓ()Landroidx/recyclerview/widget/RecyclerView$ᓭ;

    move-result-object v0

    instance-of v1, v0, Landroidx/recyclerview/widget/RecyclerView$㫏$䂻;

    if-eqz v1, :cond_0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$㫏$䂻;

    invoke-interface {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$㫏$䂻;->உ(I)Landroid/graphics/PointF;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "You should override computeScrollVectorForPosition when the LayoutManager does not implement "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v0, Landroidx/recyclerview/widget/RecyclerView$㫏$䂻;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "RecyclerView"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return-object p1
.end method

.method public ಫ(II)V
    .locals 6

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$㫏;->䂻:Landroidx/recyclerview/widget/RecyclerView;

    iget v1, p0, Landroidx/recyclerview/widget/RecyclerView$㫏;->உ:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    if-nez v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$㫏;->㞘()V

    :cond_1
    iget-boolean v1, p0, Landroidx/recyclerview/widget/RecyclerView$㫏;->㺴:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$㫏;->䆀:Landroid/view/View;

    if-nez v1, :cond_3

    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$㫏;->㚬:Landroidx/recyclerview/widget/RecyclerView$ᓭ;

    if-eqz v1, :cond_3

    iget v1, p0, Landroidx/recyclerview/widget/RecyclerView$㫏;->உ:I

    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/RecyclerView$㫏;->உ(I)Landroid/graphics/PointF;

    move-result-object v1

    if-eqz v1, :cond_3

    iget v3, v1, Landroid/graphics/PointF;->x:F

    const/4 v4, 0x0

    cmpl-float v5, v3, v4

    if-nez v5, :cond_2

    iget v5, v1, Landroid/graphics/PointF;->y:F

    cmpl-float v4, v5, v4

    if-eqz v4, :cond_3

    :cond_2
    invoke-static {v3}, Ljava/lang/Math;->signum(F)F

    move-result v3

    float-to-int v3, v3

    iget v1, v1, Landroid/graphics/PointF;->y:F

    invoke-static {v1}, Ljava/lang/Math;->signum(F)F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, v3, v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->scrollStep(II[I)V

    :cond_3
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroidx/recyclerview/widget/RecyclerView$㫏;->㺴:Z

    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$㫏;->䆀:Landroid/view/View;

    if-eqz v1, :cond_5

    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/RecyclerView$㫏;->㺴(Landroid/view/View;)I

    move-result v1

    iget v3, p0, Landroidx/recyclerview/widget/RecyclerView$㫏;->உ:I

    if-ne v1, v3, :cond_4

    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$㫏;->䆀:Landroid/view/View;

    iget-object v2, v0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$ಋ;

    iget-object v3, p0, Landroidx/recyclerview/widget/RecyclerView$㫏;->ᆻ:Landroidx/recyclerview/widget/RecyclerView$㫏$உ;

    invoke-virtual {p0, v1, v2, v3}, Landroidx/recyclerview/widget/RecyclerView$㫏;->ᓭ(Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView$ಋ;Landroidx/recyclerview/widget/RecyclerView$㫏$உ;)V

    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$㫏;->ᆻ:Landroidx/recyclerview/widget/RecyclerView$㫏$உ;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView$㫏$உ;->㚬(Landroidx/recyclerview/widget/RecyclerView;)V

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$㫏;->㞘()V

    goto :goto_0

    :cond_4
    const-string v1, "RecyclerView"

    const-string v3, "Passed over target position while smooth scrolling."

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v2, p0, Landroidx/recyclerview/widget/RecyclerView$㫏;->䆀:Landroid/view/View;

    :cond_5
    :goto_0
    iget-boolean v1, p0, Landroidx/recyclerview/widget/RecyclerView$㫏;->ḓ:Z

    if-eqz v1, :cond_6

    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$ಋ;

    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView$㫏;->ᆻ:Landroidx/recyclerview/widget/RecyclerView$㫏$உ;

    invoke-virtual {p0, p1, p2, v1, v2}, Landroidx/recyclerview/widget/RecyclerView$㫏;->㹖(IILandroidx/recyclerview/widget/RecyclerView$ಋ;Landroidx/recyclerview/widget/RecyclerView$㫏$உ;)V

    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$㫏;->ᆻ:Landroidx/recyclerview/widget/RecyclerView$㫏$உ;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$㫏$உ;->உ()Z

    move-result p1

    iget-object p2, p0, Landroidx/recyclerview/widget/RecyclerView$㫏;->ᆻ:Landroidx/recyclerview/widget/RecyclerView$㫏$உ;

    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/RecyclerView$㫏$உ;->㚬(Landroidx/recyclerview/widget/RecyclerView;)V

    if-eqz p1, :cond_6

    iget-boolean p1, p0, Landroidx/recyclerview/widget/RecyclerView$㫏;->ḓ:Z

    if-eqz p1, :cond_6

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/recyclerview/widget/RecyclerView$㫏;->㺴:Z

    iget-object p1, v0, Landroidx/recyclerview/widget/RecyclerView;->mViewFlinger:Landroidx/recyclerview/widget/RecyclerView$ڈ;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ڈ;->ḓ()V

    :cond_6
    return-void
.end method

.method public abstract ཇ()V
.end method

.method public ბ(I)V
    .locals 0

    iput p1, p0, Landroidx/recyclerview/widget/RecyclerView$㫏;->உ:I

    return-void
.end method

.method public ᆻ()Z
    .locals 1

    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView$㫏;->㺴:Z

    return v0
.end method

.method public abstract ᓭ(Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView$ಋ;Landroidx/recyclerview/widget/RecyclerView$㫏$உ;)V
.end method

.method public ḓ()Landroidx/recyclerview/widget/RecyclerView$ᓭ;
    .locals 1

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$㫏;->㚬:Landroidx/recyclerview/widget/RecyclerView$ᓭ;

    return-object v0
.end method

.method public abstract ἥ()V
.end method

.method public ℓ()Z
    .locals 1

    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView$㫏;->ḓ:Z

    return v0
.end method

.method public ㄏ(Landroid/graphics/PointF;)V
    .locals 2

    iget v0, p1, Landroid/graphics/PointF;->x:F

    mul-float v0, v0, v0

    iget v1, p1, Landroid/graphics/PointF;->y:F

    mul-float v1, v1, v1

    add-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    iget v1, p1, Landroid/graphics/PointF;->x:F

    div-float/2addr v1, v0

    iput v1, p1, Landroid/graphics/PointF;->x:F

    iget v1, p1, Landroid/graphics/PointF;->y:F

    div-float/2addr v1, v0

    iput v1, p1, Landroid/graphics/PointF;->y:F

    return-void
.end method

.method public 㚬()I
    .locals 1

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$㫏;->䂻:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$ᓭ;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$ᓭ;->ർ()I

    move-result v0

    return v0
.end method

.method public final 㞘()V
    .locals 3

    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView$㫏;->ḓ:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView$㫏;->ḓ:Z

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$㫏;->ཇ()V

    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$㫏;->䂻:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$ಋ;

    const/4 v2, -0x1

    iput v2, v1, Landroidx/recyclerview/widget/RecyclerView$ಋ;->உ:I

    const/4 v1, 0x0

    iput-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$㫏;->䆀:Landroid/view/View;

    iput v2, p0, Landroidx/recyclerview/widget/RecyclerView$㫏;->உ:I

    iput-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView$㫏;->㺴:Z

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$㫏;->㚬:Landroidx/recyclerview/widget/RecyclerView$ᓭ;

    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/RecyclerView$ᓭ;->β(Landroidx/recyclerview/widget/RecyclerView$㫏;)V

    iput-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$㫏;->㚬:Landroidx/recyclerview/widget/RecyclerView$ᓭ;

    iput-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$㫏;->䂻:Landroidx/recyclerview/widget/RecyclerView;

    return-void
.end method

.method public 㧦(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$㫏;->㺴(Landroid/view/View;)I

    move-result v0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$㫏;->䆀()I

    move-result v1

    if-ne v0, v1, :cond_0

    iput-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$㫏;->䆀:Landroid/view/View;

    :cond_0
    return-void
.end method

.method public 㲝(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ᓭ;)V
    .locals 2

    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView;->mViewFlinger:Landroidx/recyclerview/widget/RecyclerView$ڈ;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$ڈ;->ᆻ()V

    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView$㫏;->ℓ:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "An instance of "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " was started more than once. Each instance of"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " is intended to only be used once. You should create a new instance for each use."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RecyclerView"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iput-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$㫏;->䂻:Landroidx/recyclerview/widget/RecyclerView;

    iput-object p2, p0, Landroidx/recyclerview/widget/RecyclerView$㫏;->㚬:Landroidx/recyclerview/widget/RecyclerView$ᓭ;

    iget p2, p0, Landroidx/recyclerview/widget/RecyclerView$㫏;->உ:I

    const/4 v0, -0x1

    if-eq p2, v0, :cond_1

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$ಋ;

    iput p2, p1, Landroidx/recyclerview/widget/RecyclerView$ಋ;->உ:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/recyclerview/widget/RecyclerView$㫏;->ḓ:Z

    iput-boolean p1, p0, Landroidx/recyclerview/widget/RecyclerView$㫏;->㺴:Z

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$㫏;->䆀()I

    move-result p2

    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$㫏;->䂻(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Landroidx/recyclerview/widget/RecyclerView$㫏;->䆀:Landroid/view/View;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$㫏;->ἥ()V

    iget-object p2, p0, Landroidx/recyclerview/widget/RecyclerView$㫏;->䂻:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p2, p2, Landroidx/recyclerview/widget/RecyclerView;->mViewFlinger:Landroidx/recyclerview/widget/RecyclerView$ڈ;

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$ڈ;->ḓ()V

    iput-boolean p1, p0, Landroidx/recyclerview/widget/RecyclerView$㫏;->ℓ:Z

    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Invalid target position"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public abstract 㹖(IILandroidx/recyclerview/widget/RecyclerView$ಋ;Landroidx/recyclerview/widget/RecyclerView$㫏$உ;)V
.end method

.method public 㺴(Landroid/view/View;)I
    .locals 1

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$㫏;->䂻:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->getChildLayoutPosition(Landroid/view/View;)I

    move-result p1

    return p1
.end method

.method public 䂻(I)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$㫏;->䂻:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$ᓭ;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$ᓭ;->ڈ(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public 䆀()I
    .locals 1

    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$㫏;->உ:I

    return v0
.end method
