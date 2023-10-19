.class public L㚬/㲝/㺴/ཇ$䂻;
.super L㚬/㲝/㺴/ᆻ;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = L㚬/㲝/㺴/ཇ;->䆀(Landroidx/recyclerview/widget/RecyclerView$ᓭ;)L㚬/㲝/㺴/ᆻ;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic 㲝:L㚬/㲝/㺴/ཇ;


# direct methods
.method public constructor <init>(L㚬/㲝/㺴/ཇ;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, L㚬/㲝/㺴/ཇ$䂻;->㲝:L㚬/㲝/㺴/ཇ;

    invoke-direct {p0, p2}, L㚬/㲝/㺴/ᆻ;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public ᓭ(Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView$ಋ;Landroidx/recyclerview/widget/RecyclerView$㫏$உ;)V
    .locals 2

    iget-object p2, p0, L㚬/㲝/㺴/ཇ$䂻;->㲝:L㚬/㲝/㺴/ཇ;

    iget-object v0, p2, L㚬/㲝/㺴/ཇ;->உ:Landroidx/recyclerview/widget/RecyclerView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$ᓭ;

    move-result-object v0

    invoke-virtual {p2, v0, p1}, L㚬/㲝/㺴/ཇ;->㚬(Landroidx/recyclerview/widget/RecyclerView$ᓭ;Landroid/view/View;)[I

    move-result-object p1

    const/4 p2, 0x0

    aget p2, p1, p2

    const/4 v0, 0x1

    aget p1, p1, v0

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v0

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p0, v0}, L㚬/㲝/㺴/ᆻ;->ม(I)I

    move-result v0

    if-lez v0, :cond_1

    iget-object v1, p0, L㚬/㲝/㺴/ᆻ;->ಫ:Landroid/view/animation/DecelerateInterpolator;

    invoke-virtual {p3, p2, p1, v0, v1}, Landroidx/recyclerview/widget/RecyclerView$㫏$உ;->㺴(IIILandroid/view/animation/Interpolator;)V

    :cond_1
    return-void
.end method

.method public 㢏(Landroid/util/DisplayMetrics;)F
    .locals 1

    iget p1, p1, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float p1, p1

    const/high16 v0, 0x42c80000    # 100.0f

    div-float/2addr v0, p1

    return v0
.end method
