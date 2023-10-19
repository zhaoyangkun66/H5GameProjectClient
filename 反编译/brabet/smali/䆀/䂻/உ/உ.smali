.class public L䆀/䂻/உ/உ;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public உ:Landroid/view/View;

.field public 㚬:Landroid/widget/FrameLayout$LayoutParams;

.field public 㺴:I

.field public 䂻:I


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "EhUAFRQSPgMAEz4JBAgGCRU="

    invoke-static {v1}, L䆀/உ/உ;->உ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "BQgMBA8="

    invoke-static {v2}, L䆀/உ/உ;->உ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "AA8FEw4IBQ=="

    invoke-static {v3}, L䆀/உ/உ;->உ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, L䆀/䂻/உ/உ;->㺴:I

    const v0, 0x1020002

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, L䆀/䂻/உ/உ;->உ:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    new-instance v0, L䆀/䂻/உ/உ$உ;

    invoke-direct {v0, p0}, L䆀/䂻/உ/உ$உ;-><init>(L䆀/䂻/உ/உ;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    iget-object p1, p0, L䆀/䂻/உ/உ;->உ:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    iput-object p1, p0, L䆀/䂻/உ/உ;->㚬:Landroid/widget/FrameLayout$LayoutParams;

    return-void
.end method

.method public static synthetic உ(L䆀/䂻/உ/உ;)V
    .locals 0

    invoke-virtual {p0}, L䆀/䂻/உ/உ;->㺴()V

    return-void
.end method

.method public static 䂻(Landroid/app/Activity;)V
    .locals 1

    new-instance v0, L䆀/䂻/உ/உ;

    invoke-direct {v0, p0}, L䆀/䂻/உ/உ;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public final 㚬()I
    .locals 2

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iget-object v1, p0, L䆀/䂻/உ/உ;->உ:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    iget v0, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v0

    return v1
.end method

.method public final 㺴()V
    .locals 5

    invoke-virtual {p0}, L䆀/䂻/உ/உ;->㚬()I

    move-result v0

    iget v1, p0, L䆀/䂻/உ/உ;->䂻:I

    if-eq v0, v1, :cond_2

    iget-object v1, p0, L䆀/䂻/உ/உ;->உ:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    sub-int v2, v1, v0

    div-int/lit8 v3, v1, 0x4

    if-le v2, v3, :cond_1

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x13

    if-lt v3, v4, :cond_0

    iget-object v3, p0, L䆀/䂻/உ/உ;->㚬:Landroid/widget/FrameLayout$LayoutParams;

    sub-int/2addr v1, v2

    iget v2, p0, L䆀/䂻/உ/உ;->㺴:I

    add-int/2addr v1, v2

    goto :goto_0

    :cond_0
    iget-object v3, p0, L䆀/䂻/உ/உ;->㚬:Landroid/widget/FrameLayout$LayoutParams;

    sub-int/2addr v1, v2

    :goto_0
    iput v1, v3, Landroid/widget/FrameLayout$LayoutParams;->height:I

    goto :goto_1

    :cond_1
    iget-object v1, p0, L䆀/䂻/உ/உ;->㚬:Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    :goto_1
    iget-object v1, p0, L䆀/䂻/உ/உ;->உ:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->requestLayout()V

    iput v0, p0, L䆀/䂻/உ/உ;->䂻:I

    :cond_2
    return-void
.end method
