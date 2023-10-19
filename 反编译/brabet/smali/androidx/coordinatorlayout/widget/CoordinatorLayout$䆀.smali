.class public Landroidx/coordinatorlayout/widget/CoordinatorLayout$䆀;
.super Landroid/view/ViewGroup$MarginLayoutParams;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/coordinatorlayout/widget/CoordinatorLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "\u4180"
.end annotation


# instance fields
.field public உ:Landroidx/coordinatorlayout/widget/CoordinatorLayout$㚬;

.field public ಫ:I

.field public ཇ:Z

.field public ბ:Z

.field public ᆻ:I

.field public ᓭ:Z

.field public ḓ:I

.field public ἥ:Z

.field public ℓ:I

.field public ㄏ:I

.field public 㚬:I

.field public 㧦:Landroid/view/View;

.field public final 㲝:Landroid/graphics/Rect;

.field public 㹖:Landroid/view/View;

.field public 㺴:I

.field public 䂻:Z

.field public 䆀:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$䆀;->䂻:Z

    iput p1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$䆀;->㚬:I

    iput p1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$䆀;->㺴:I

    const/4 p2, -0x1

    iput p2, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$䆀;->ḓ:I

    iput p2, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$䆀;->䆀:I

    iput p1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$䆀;->ᆻ:I

    iput p1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$䆀;->ℓ:I

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$䆀;->㲝:Landroid/graphics/Rect;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$䆀;->䂻:Z

    iput v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$䆀;->㚬:I

    iput v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$䆀;->㺴:I

    const/4 v1, -0x1

    iput v1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$䆀;->ḓ:I

    iput v1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$䆀;->䆀:I

    iput v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$䆀;->ᆻ:I

    iput v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$䆀;->ℓ:I

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$䆀;->㲝:Landroid/graphics/Rect;

    sget-object v2, L㚬/ᆻ/㚬;->㺴:[I

    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v2

    sget v3, L㚬/ᆻ/㚬;->ḓ:I

    invoke-virtual {v2, v3, v0}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v3

    iput v3, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$䆀;->㚬:I

    sget v3, L㚬/ᆻ/㚬;->䆀:I

    invoke-virtual {v2, v3, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    iput v3, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$䆀;->䆀:I

    sget v3, L㚬/ᆻ/㚬;->ᆻ:I

    invoke-virtual {v2, v3, v0}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v3

    iput v3, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$䆀;->㺴:I

    sget v3, L㚬/ᆻ/㚬;->㧦:I

    invoke-virtual {v2, v3, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    iput v1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$䆀;->ḓ:I

    sget v1, L㚬/ᆻ/㚬;->ಫ:I

    invoke-virtual {v2, v1, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$䆀;->ᆻ:I

    sget v1, L㚬/ᆻ/㚬;->ㄏ:I

    invoke-virtual {v2, v1, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$䆀;->ℓ:I

    sget v0, L㚬/ᆻ/㚬;->ℓ:I

    invoke-virtual {v2, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    iput-boolean v1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$䆀;->䂻:Z

    if-eqz v1, :cond_0

    invoke-virtual {v2, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, p2, v0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->㖆(Landroid/content/Context;Landroid/util/AttributeSet;Ljava/lang/String;)Landroidx/coordinatorlayout/widget/CoordinatorLayout$㚬;

    move-result-object p1

    iput-object p1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$䆀;->உ:Landroidx/coordinatorlayout/widget/CoordinatorLayout$㚬;

    :cond_0
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    iget-object p1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$䆀;->உ:Landroidx/coordinatorlayout/widget/CoordinatorLayout$㚬;

    if-eqz p1, :cond_1

    invoke-virtual {p1, p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$㚬;->ᆻ(Landroidx/coordinatorlayout/widget/CoordinatorLayout$䆀;)V

    :cond_1
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$䆀;->䂻:Z

    iput p1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$䆀;->㚬:I

    iput p1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$䆀;->㺴:I

    const/4 v0, -0x1

    iput v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$䆀;->ḓ:I

    iput v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$䆀;->䆀:I

    iput p1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$䆀;->ᆻ:I

    iput p1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$䆀;->ℓ:I

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$䆀;->㲝:Landroid/graphics/Rect;

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$MarginLayoutParams;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$䆀;->䂻:Z

    iput p1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$䆀;->㚬:I

    iput p1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$䆀;->㺴:I

    const/4 v0, -0x1

    iput v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$䆀;->ḓ:I

    iput v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$䆀;->䆀:I

    iput p1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$䆀;->ᆻ:I

    iput p1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$䆀;->ℓ:I

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$䆀;->㲝:Landroid/graphics/Rect;

    return-void
.end method

.method public constructor <init>(Landroidx/coordinatorlayout/widget/CoordinatorLayout$䆀;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$䆀;->䂻:Z

    iput p1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$䆀;->㚬:I

    iput p1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$䆀;->㺴:I

    const/4 v0, -0x1

    iput v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$䆀;->ḓ:I

    iput v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$䆀;->䆀:I

    iput p1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$䆀;->ᆻ:I

    iput p1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$䆀;->ℓ:I

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$䆀;->㲝:Landroid/graphics/Rect;

    return-void
.end method


# virtual methods
.method public உ()Z
    .locals 2

    iget-object v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$䆀;->㧦:Landroid/view/View;

    if-nez v0, :cond_0

    iget v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$䆀;->䆀:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public ಫ(I)Z
    .locals 1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-boolean p1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$䆀;->ᓭ:Z

    return p1

    :cond_1
    iget-boolean p1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$䆀;->ཇ:Z

    return p1
.end method

.method public final ཇ(Landroid/view/View;Landroidx/coordinatorlayout/widget/CoordinatorLayout;)V
    .locals 4

    iget v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$䆀;->䆀:I

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$䆀;->㧦:Landroid/view/View;

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    if-ne v0, p2, :cond_1

    invoke-virtual {p2}, Landroid/view/ViewGroup;->isInEditMode()Z

    move-result p1

    if-eqz p1, :cond_0

    :goto_0
    iput-object v1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$䆀;->㹖:Landroid/view/View;

    iput-object v1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$䆀;->㧦:Landroid/view/View;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "View can not be anchored to the the parent CoordinatorLayout"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    :goto_1
    if-eq v2, p2, :cond_5

    if-eqz v2, :cond_5

    if-ne v2, p1, :cond_3

    invoke-virtual {p2}, Landroid/view/ViewGroup;->isInEditMode()Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Anchor must not be a descendant of the anchored view"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    instance-of v3, v2, Landroid/view/View;

    if-eqz v3, :cond_4

    move-object v0, v2

    check-cast v0, Landroid/view/View;

    :cond_4
    invoke-interface {v2}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    goto :goto_1

    :cond_5
    iput-object v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$䆀;->㹖:Landroid/view/View;

    return-void

    :cond_6
    invoke-virtual {p2}, Landroid/view/ViewGroup;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_0

    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not find CoordinatorLayout descendant view with id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    iget v2, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$䆀;->䆀:I

    invoke-virtual {p2, v2}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " to anchor view "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public ბ(Z)V
    .locals 0

    iput-boolean p1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$䆀;->ბ:Z

    return-void
.end method

.method public ᆻ()Z
    .locals 1

    iget-boolean v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$䆀;->ბ:Z

    return v0
.end method

.method public ᓭ(Landroidx/coordinatorlayout/widget/CoordinatorLayout$㚬;)V
    .locals 1

    iget-object v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$䆀;->உ:Landroidx/coordinatorlayout/widget/CoordinatorLayout$㚬;

    if-eq v0, p1, :cond_1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$㚬;->ಫ()V

    :cond_0
    iput-object p1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$䆀;->உ:Landroidx/coordinatorlayout/widget/CoordinatorLayout$㚬;

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$䆀;->䂻:Z

    if-eqz p1, :cond_1

    invoke-virtual {p1, p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$㚬;->ᆻ(Landroidx/coordinatorlayout/widget/CoordinatorLayout$䆀;)V

    :cond_1
    return-void
.end method

.method public ḓ()I
    .locals 1

    iget v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$䆀;->䆀:I

    return v0
.end method

.method public final ḙ(Landroid/view/View;Landroidx/coordinatorlayout/widget/CoordinatorLayout;)Z
    .locals 4

    iget-object v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$䆀;->㧦:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v0

    iget v1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$䆀;->䆀:I

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    return v2

    :cond_0
    iget-object v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$䆀;->㧦:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    :goto_0
    if-eq v1, p2, :cond_4

    if-eqz v1, :cond_3

    if-ne v1, p1, :cond_1

    goto :goto_1

    :cond_1
    instance-of v3, v1, Landroid/view/View;

    if-eqz v3, :cond_2

    move-object v0, v1

    check-cast v0, Landroid/view/View;

    :cond_2
    invoke-interface {v1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    goto :goto_0

    :cond_3
    :goto_1
    const/4 p1, 0x0

    iput-object p1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$䆀;->㹖:Landroid/view/View;

    iput-object p1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$䆀;->㧦:Landroid/view/View;

    return v2

    :cond_4
    iput-object v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$䆀;->㹖:Landroid/view/View;

    const/4 p1, 0x1

    return p1
.end method

.method public ἥ()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$䆀;->ἥ:Z

    return-void
.end method

.method public ℓ()Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$䆀;->㲝:Landroid/graphics/Rect;

    return-object v0
.end method

.method public ㄏ(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;)Z
    .locals 2

    iget-boolean v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$䆀;->ἥ:Z

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    iget-object v1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$䆀;->உ:Landroidx/coordinatorlayout/widget/CoordinatorLayout$㚬;

    if-eqz v1, :cond_1

    invoke-virtual {v1, p1, p2}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$㚬;->உ(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;)Z

    move-result p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    or-int/2addr p1, v0

    iput-boolean p1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$䆀;->ἥ:Z

    return p1
.end method

.method public 㚬()Z
    .locals 1

    iget-object v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$䆀;->உ:Landroidx/coordinatorlayout/widget/CoordinatorLayout$㚬;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$䆀;->ἥ:Z

    :cond_0
    iget-boolean v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$䆀;->ἥ:Z

    return v0
.end method

.method public 㞘(IZ)V
    .locals 1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iput-boolean p2, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$䆀;->ᓭ:Z

    goto :goto_0

    :cond_1
    iput-boolean p2, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$䆀;->ཇ:Z

    :goto_0
    return-void
.end method

.method public 㧦()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$䆀;->ბ:Z

    return-void
.end method

.method public final 㭲(Landroid/view/View;I)Z
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroidx/coordinatorlayout/widget/CoordinatorLayout$䆀;

    iget p1, p1, Landroidx/coordinatorlayout/widget/CoordinatorLayout$䆀;->ᆻ:I

    invoke-static {p1, p2}, L㚬/ℓ/ἥ/㺴;->䂻(II)I

    move-result p1

    if-eqz p1, :cond_0

    iget v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$䆀;->ℓ:I

    invoke-static {v0, p2}, L㚬/ℓ/ἥ/㺴;->䂻(II)I

    move-result p2

    and-int/2addr p2, p1

    if-ne p2, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public 㲝(Landroid/graphics/Rect;)V
    .locals 1

    iget-object v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$䆀;->㲝:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    return-void
.end method

.method public 㹖(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$䆀;->㞘(IZ)V

    return-void
.end method

.method public 㺴(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;)Landroid/view/View;
    .locals 2

    iget v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$䆀;->䆀:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$䆀;->㹖:Landroid/view/View;

    iput-object p1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$䆀;->㧦:Landroid/view/View;

    return-object p1

    :cond_0
    iget-object v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$䆀;->㧦:Landroid/view/View;

    if-eqz v0, :cond_1

    invoke-virtual {p0, p2, p1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$䆀;->ḙ(Landroid/view/View;Landroidx/coordinatorlayout/widget/CoordinatorLayout;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    invoke-virtual {p0, p2, p1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$䆀;->ཇ(Landroid/view/View;Landroidx/coordinatorlayout/widget/CoordinatorLayout;)V

    :cond_2
    iget-object p1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$䆀;->㧦:Landroid/view/View;

    return-object p1
.end method

.method public 䂻(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)Z
    .locals 1

    iget-object v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$䆀;->㹖:Landroid/view/View;

    if-eq p3, v0, :cond_1

    invoke-static {p1}, L㚬/ℓ/ἥ/㭲;->ม(Landroid/view/View;)I

    move-result v0

    invoke-virtual {p0, p3, v0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$䆀;->㭲(Landroid/view/View;I)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$䆀;->உ:Landroidx/coordinatorlayout/widget/CoordinatorLayout$㚬;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2, p3}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$㚬;->ḓ(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public 䆀()Landroidx/coordinatorlayout/widget/CoordinatorLayout$㚬;
    .locals 1

    iget-object v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$䆀;->உ:Landroidx/coordinatorlayout/widget/CoordinatorLayout$㚬;

    return-object v0
.end method
