.class public abstract L㚬/䂻/ᓭ/ಫ/㧦;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements L㚬/䂻/ᓭ/ಫ/ბ;
.implements L㚬/䂻/ᓭ/ಫ/ἥ;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field public 䂻:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ᓭ(Landroid/widget/ListAdapter;Landroid/view/ViewGroup;Landroid/content/Context;I)I
    .locals 9

    const/4 v0, 0x0

    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-interface {p0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v3

    const/4 v4, 0x0

    move-object v7, v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_0
    if-ge v0, v3, :cond_4

    invoke-interface {p0, v0}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v8

    if-eq v8, v6, :cond_0

    move-object v7, v4

    move v6, v8

    :cond_0
    if-nez p1, :cond_1

    new-instance p1, Landroid/widget/FrameLayout;

    invoke-direct {p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    :cond_1
    invoke-interface {p0, v0, v7, p1}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7, v1, v2}, Landroid/view/View;->measure(II)V

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    if-lt v8, p3, :cond_2

    return p3

    :cond_2
    if-le v8, v5, :cond_3

    move v5, v8

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    return v5
.end method

.method public static ㄬ(Landroid/widget/ListAdapter;)L㚬/䂻/ᓭ/ಫ/䆀;
    .locals 1

    instance-of v0, p0, Landroid/widget/HeaderViewListAdapter;

    if-eqz v0, :cond_0

    check-cast p0, Landroid/widget/HeaderViewListAdapter;

    invoke-virtual {p0}, Landroid/widget/HeaderViewListAdapter;->getWrappedAdapter()Landroid/widget/ListAdapter;

    move-result-object p0

    check-cast p0, L㚬/䂻/ᓭ/ಫ/䆀;

    return-object p0

    :cond_0
    check-cast p0, L㚬/䂻/ᓭ/ಫ/䆀;

    return-object p0
.end method

.method public static 㲧(L㚬/䂻/ᓭ/ಫ/ᆻ;)Z
    .locals 5

    invoke-virtual {p0}, L㚬/䂻/ᓭ/ಫ/ᆻ;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    invoke-virtual {p0, v2}, L㚬/䂻/ᓭ/ಫ/ᆻ;->getItem(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/MenuItem;->isVisible()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-eqz v3, :cond_0

    const/4 v1, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return v1
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object p1

    check-cast p1, Landroid/widget/ListAdapter;

    invoke-static {p1}, L㚬/䂻/ᓭ/ಫ/㧦;->ㄬ(Landroid/widget/ListAdapter;)L㚬/䂻/ᓭ/ಫ/䆀;

    move-result-object p2

    iget-object p2, p2, L㚬/䂻/ᓭ/ಫ/䆀;->䂻:L㚬/䂻/ᓭ/ಫ/ᆻ;

    invoke-interface {p1, p3}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/MenuItem;

    invoke-virtual {p0}, L㚬/䂻/ᓭ/ಫ/㧦;->ἥ()Z

    move-result p3

    if-eqz p3, :cond_0

    const/4 p3, 0x0

    goto :goto_0

    :cond_0
    const/4 p3, 0x4

    :goto_0
    invoke-virtual {p2, p1, p0, p3}, L㚬/䂻/ᓭ/ಫ/ᆻ;->Խ(Landroid/view/MenuItem;L㚬/䂻/ᓭ/ಫ/ἥ;I)Z

    return-void
.end method

.method public abstract ม(I)V
.end method

.method public ཇ()Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, L㚬/䂻/ᓭ/ಫ/㧦;->䂻:Landroid/graphics/Rect;

    return-object v0
.end method

.method public abstract ბ(Landroid/view/View;)V
.end method

.method public ḓ(L㚬/䂻/ᓭ/ಫ/ᆻ;L㚬/䂻/ᓭ/ಫ/ㄏ;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public abstract ḙ(I)V
.end method

.method public ἥ()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public abstract 㖪(Landroid/widget/PopupWindow$OnDismissListener;)V
.end method

.method public abstract 㞘(Z)V
.end method

.method public abstract 㢏(Z)V
.end method

.method public abstract 㧦(L㚬/䂻/ᓭ/ಫ/ᆻ;)V
.end method

.method public abstract 㭲(I)V
.end method

.method public 㲝(Landroid/graphics/Rect;)V
    .locals 0

    iput-object p1, p0, L㚬/䂻/ᓭ/ಫ/㧦;->䂻:Landroid/graphics/Rect;

    return-void
.end method

.method public 㺴(Landroid/content/Context;L㚬/䂻/ᓭ/ಫ/ᆻ;)V
    .locals 0

    return-void
.end method

.method public 䆀(L㚬/䂻/ᓭ/ಫ/ᆻ;L㚬/䂻/ᓭ/ಫ/ㄏ;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
