.class public abstract L㺴/㚬/உ/䂻/ἥ/䂻;
.super L㺴/㚬/உ/䂻/ἥ/㚬;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "L\u3eb4/\u36ac/\u0b89/\u40bb/\u1f25/\u36ac<",
        "Landroid/view/View;",
        ">;"
    }
.end annotation


# instance fields
.field public ᆻ:I

.field public final ḓ:Landroid/graphics/Rect;

.field public final 㺴:Landroid/graphics/Rect;

.field public 䆀:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, L㺴/㚬/உ/䂻/ἥ/㚬;-><init>()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, L㺴/㚬/உ/䂻/ἥ/䂻;->㺴:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, L㺴/㚬/உ/䂻/ἥ/䂻;->ḓ:Landroid/graphics/Rect;

    const/4 v0, 0x0

    iput v0, p0, L㺴/㚬/உ/䂻/ἥ/䂻;->䆀:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, L㺴/㚬/உ/䂻/ἥ/㚬;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, L㺴/㚬/உ/䂻/ἥ/䂻;->㺴:Landroid/graphics/Rect;

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, L㺴/㚬/உ/䂻/ἥ/䂻;->ḓ:Landroid/graphics/Rect;

    const/4 p1, 0x0

    iput p1, p0, L㺴/㚬/உ/䂻/ἥ/䂻;->䆀:I

    return-void
.end method

.method public static Ԁ(I)I
    .locals 0

    if-nez p0, :cond_0

    const p0, 0x800033

    :cond_0
    return p0
.end method


# virtual methods
.method public final Խ()I
    .locals 1

    iget v0, p0, L㺴/㚬/உ/䂻/ἥ/䂻;->䆀:I

    return v0
.end method

.method public abstract ർ(Landroid/view/View;)F
.end method

.method public abstract ᱹ(Ljava/util/List;)Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;)",
            "Landroid/view/View;"
        }
    .end annotation
.end method

.method public final ỷ(I)V
    .locals 0

    iput p1, p0, L㺴/㚬/உ/䂻/ἥ/䂻;->ᆻ:I

    return-void
.end method

.method public ἥ(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;IIII)Z
    .locals 7

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v2, -0x2

    if-ne v0, v2, :cond_5

    :cond_0
    invoke-virtual {p1, p2}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->㞘(Landroid/view/View;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0, v2}, L㺴/㚬/உ/䂻/ἥ/䂻;->ᱹ(Ljava/util/List;)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-static {p5}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p5

    if-lez p5, :cond_1

    invoke-static {v2}, L㚬/ℓ/ἥ/㭲;->ḙ(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getLastWindowInsets()L㚬/ℓ/ἥ/ಋ;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v3}, L㚬/ℓ/ἥ/ಋ;->ᆻ()I

    move-result v4

    invoke-virtual {v3}, L㚬/ℓ/ἥ/ಋ;->㺴()I

    move-result v3

    add-int/2addr v4, v3

    add-int/2addr p5, v4

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getHeight()I

    move-result p5

    :cond_2
    :goto_0
    invoke-virtual {p0, v2}, L㺴/㚬/உ/䂻/ἥ/䂻;->㭢(Landroid/view/View;)I

    move-result v3

    add-int/2addr p5, v3

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {p0}, L㺴/㚬/உ/䂻/ἥ/䂻;->䅚()Z

    move-result v3

    if-eqz v3, :cond_3

    neg-int v2, v2

    int-to-float v2, v2

    invoke-virtual {p2, v2}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_1

    :cond_3
    sub-int/2addr p5, v2

    :goto_1
    if-ne v0, v1, :cond_4

    const/high16 v0, 0x40000000    # 2.0f

    goto :goto_2

    :cond_4
    const/high16 v0, -0x80000000

    :goto_2
    invoke-static {p5, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v6, p6

    invoke-virtual/range {v1 .. v6}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->ർ(Landroid/view/View;IIII)V

    const/4 p1, 0x1

    return p1

    :cond_5
    const/4 p1, 0x0

    return p1
.end method

.method public final 㖆()I
    .locals 1

    iget v0, p0, L㺴/㚬/உ/䂻/ἥ/䂻;->ᆻ:I

    return v0
.end method

.method public final 㥁(Landroid/view/View;)I
    .locals 3

    iget v0, p0, L㺴/㚬/உ/䂻/ἥ/䂻;->ᆻ:I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, L㺴/㚬/உ/䂻/ἥ/䂻;->ർ(Landroid/view/View;)F

    move-result p1

    iget v0, p0, L㺴/㚬/உ/䂻/ἥ/䂻;->ᆻ:I

    int-to-float v2, v0

    mul-float p1, p1, v2

    float-to-int p1, p1

    invoke-static {p1, v1, v0}, L㚬/ℓ/ℓ/உ;->䂻(III)I

    move-result v1

    :goto_0
    return v1
.end method

.method public 㨃(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;I)V
    .locals 8

    invoke-virtual {p1, p2}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->㞘(Landroid/view/View;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, L㺴/㚬/உ/䂻/ἥ/䂻;->ᱹ(Ljava/util/List;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroidx/coordinatorlayout/widget/CoordinatorLayout$䆀;

    iget-object v5, p0, L㺴/㚬/உ/䂻/ἥ/䂻;->㺴:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v2

    iget v3, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v2, v3

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v3

    iget v4, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v3, v4

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getWidth()I

    move-result v4

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v6

    sub-int/2addr v4, v6

    iget v6, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    sub-int/2addr v4, v6

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getHeight()I

    move-result v6

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v7

    add-int/2addr v6, v7

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v7

    sub-int/2addr v6, v7

    iget v7, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    sub-int/2addr v6, v7

    invoke-virtual {v5, v2, v3, v4, v6}, Landroid/graphics/Rect;->set(IIII)V

    invoke-virtual {p1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getLastWindowInsets()L㚬/ℓ/ἥ/ಋ;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-static {p1}, L㚬/ℓ/ἥ/㭲;->ḙ(Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {p2}, L㚬/ℓ/ἥ/㭲;->ḙ(Landroid/view/View;)Z

    move-result p1

    if-nez p1, :cond_0

    iget p1, v5, Landroid/graphics/Rect;->left:I

    invoke-virtual {v2}, L㚬/ℓ/ἥ/ಋ;->ḓ()I

    move-result v3

    add-int/2addr p1, v3

    iput p1, v5, Landroid/graphics/Rect;->left:I

    iget p1, v5, Landroid/graphics/Rect;->right:I

    invoke-virtual {v2}, L㚬/ℓ/ἥ/ಋ;->䆀()I

    move-result v2

    sub-int/2addr p1, v2

    iput p1, v5, Landroid/graphics/Rect;->right:I

    :cond_0
    iget-object p1, p0, L㺴/㚬/உ/䂻/ἥ/䂻;->ḓ:Landroid/graphics/Rect;

    iget v1, v1, Landroidx/coordinatorlayout/widget/CoordinatorLayout$䆀;->㚬:I

    invoke-static {v1}, L㺴/㚬/உ/䂻/ἥ/䂻;->Ԁ(I)I

    move-result v2

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    move-object v6, p1

    move v7, p3

    invoke-static/range {v2 .. v7}, L㚬/ℓ/ἥ/㺴;->உ(IIILandroid/graphics/Rect;Landroid/graphics/Rect;I)V

    invoke-virtual {p0, v0}, L㺴/㚬/உ/䂻/ἥ/䂻;->㥁(Landroid/view/View;)I

    move-result p3

    iget v1, p1, Landroid/graphics/Rect;->left:I

    iget v2, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, p3

    iget v3, p1, Landroid/graphics/Rect;->right:I

    iget v4, p1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v4, p3

    invoke-virtual {p2, v1, v2, v3, v4}, Landroid/view/View;->layout(IIII)V

    iget p1, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result p2

    sub-int/2addr p1, p2

    goto :goto_0

    :cond_1
    invoke-super {p0, p1, p2, p3}, L㺴/㚬/உ/䂻/ἥ/㚬;->㨃(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;I)V

    const/4 p1, 0x0

    :goto_0
    iput p1, p0, L㺴/㚬/உ/䂻/ἥ/䂻;->䆀:I

    return-void
.end method

.method public 㭢(Landroid/view/View;)I
    .locals 0

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    return p1
.end method

.method public 䅚()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
