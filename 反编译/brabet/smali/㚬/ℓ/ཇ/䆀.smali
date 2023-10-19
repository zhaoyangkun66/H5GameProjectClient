.class public L㚬/ℓ/ཇ/䆀;
.super L㚬/ℓ/ཇ/உ;
.source ""


# instance fields
.field public final ḙ:Landroid/widget/ListView;


# direct methods
.method public constructor <init>(Landroid/widget/ListView;)V
    .locals 0

    invoke-direct {p0, p1}, L㚬/ℓ/ཇ/உ;-><init>(Landroid/view/View;)V

    iput-object p1, p0, L㚬/ℓ/ཇ/䆀;->ḙ:Landroid/widget/ListView;

    return-void
.end method


# virtual methods
.method public உ(I)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public ಫ(II)V
    .locals 0

    iget-object p1, p0, L㚬/ℓ/ཇ/䆀;->ḙ:Landroid/widget/ListView;

    invoke-static {p1, p2}, L㚬/ℓ/ཇ/ᆻ;->உ(Landroid/widget/ListView;I)V

    return-void
.end method

.method public 䂻(I)Z
    .locals 7

    iget-object v0, p0, L㚬/ℓ/ཇ/䆀;->ḙ:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getCount()I

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    :cond_0
    invoke-virtual {v0}, Landroid/widget/ListView;->getChildCount()I

    move-result v3

    invoke-virtual {v0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v4

    add-int v5, v4, v3

    const/4 v6, 0x1

    if-lez p1, :cond_1

    if-lt v5, v1, :cond_2

    sub-int/2addr v3, v6

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result p1

    invoke-virtual {v0}, Landroid/widget/ListView;->getHeight()I

    move-result v0

    if-gt p1, v0, :cond_2

    return v2

    :cond_1
    if-gez p1, :cond_3

    if-gtz v4, :cond_2

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p1

    if-ltz p1, :cond_2

    return v2

    :cond_2
    return v6

    :cond_3
    return v2
.end method
