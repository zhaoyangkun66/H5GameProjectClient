.class public final L㚬/䂻/ᓭ/ಫ/㺴;
.super L㚬/䂻/ᓭ/ಫ/㧦;
.source ""

# interfaces
.implements L㚬/䂻/ᓭ/ಫ/ἥ;
.implements Landroid/view/View$OnKeyListener;
.implements Landroid/widget/PopupWindow$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        L㚬/䂻/ᓭ/ಫ/㺴$㺴;
    }
.end annotation


# static fields
.field public static final ڈ:I


# instance fields
.field public ಋ:Landroid/widget/PopupWindow$OnDismissListener;

.field public final ಫ:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "L\u36ac/\u40bb/\u14ed/\u0cab/\u3eb4$\u3eb4;",
            ">;"
        }
    .end annotation
.end field

.field public ม:Z

.field public ཇ:I

.field public ბ:Landroid/view/View;

.field public final ᆻ:Z

.field public ᓭ:I

.field public final ḓ:I

.field public ḙ:Z

.field public final ἥ:L㚬/䂻/ბ/ർ;

.field public ᾦ:Z

.field public final ℓ:Landroid/os/Handler;

.field public final ㄏ:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "L\u36ac/\u40bb/\u14ed/\u0cab/\u11bb;",
            ">;"
        }
    .end annotation
.end field

.field public ㄬ:L㚬/䂻/ᓭ/ಫ/ἥ$உ;

.field public 㖪:I

.field public final 㚬:Landroid/content/Context;

.field public 㞘:I

.field public 㢏:I

.field public final 㧦:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field public 㫏:Landroid/view/ViewTreeObserver;

.field public 㭲:Z

.field public 㲝:Landroid/view/View;

.field public 㲧:Z

.field public final 㹖:Landroid/view/View$OnAttachStateChangeListener;

.field public final 㺴:I

.field public final 䆀:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    sget v0, L㚬/䂻/ᆻ;->ḓ:I

    sput v0, L㚬/䂻/ᓭ/ಫ/㺴;->ڈ:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View;IIZ)V
    .locals 1

    invoke-direct {p0}, L㚬/䂻/ᓭ/ಫ/㧦;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, L㚬/䂻/ᓭ/ಫ/㺴;->ㄏ:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, L㚬/䂻/ᓭ/ಫ/㺴;->ಫ:Ljava/util/List;

    new-instance v0, L㚬/䂻/ᓭ/ಫ/㺴$உ;

    invoke-direct {v0, p0}, L㚬/䂻/ᓭ/ಫ/㺴$உ;-><init>(L㚬/䂻/ᓭ/ಫ/㺴;)V

    iput-object v0, p0, L㚬/䂻/ᓭ/ಫ/㺴;->㧦:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    new-instance v0, L㚬/䂻/ᓭ/ಫ/㺴$䂻;

    invoke-direct {v0, p0}, L㚬/䂻/ᓭ/ಫ/㺴$䂻;-><init>(L㚬/䂻/ᓭ/ಫ/㺴;)V

    iput-object v0, p0, L㚬/䂻/ᓭ/ಫ/㺴;->㹖:Landroid/view/View$OnAttachStateChangeListener;

    new-instance v0, L㚬/䂻/ᓭ/ಫ/㺴$㚬;

    invoke-direct {v0, p0}, L㚬/䂻/ᓭ/ಫ/㺴$㚬;-><init>(L㚬/䂻/ᓭ/ಫ/㺴;)V

    iput-object v0, p0, L㚬/䂻/ᓭ/ಫ/㺴;->ἥ:L㚬/䂻/ბ/ർ;

    const/4 v0, 0x0

    iput v0, p0, L㚬/䂻/ᓭ/ಫ/㺴;->ཇ:I

    iput v0, p0, L㚬/䂻/ᓭ/ಫ/㺴;->ᓭ:I

    iput-object p1, p0, L㚬/䂻/ᓭ/ಫ/㺴;->㚬:Landroid/content/Context;

    iput-object p2, p0, L㚬/䂻/ᓭ/ಫ/㺴;->ბ:Landroid/view/View;

    iput p3, p0, L㚬/䂻/ᓭ/ಫ/㺴;->ḓ:I

    iput p4, p0, L㚬/䂻/ᓭ/ಫ/㺴;->䆀:I

    iput-boolean p5, p0, L㚬/䂻/ᓭ/ಫ/㺴;->ᆻ:Z

    iput-boolean v0, p0, L㚬/䂻/ᓭ/ಫ/㺴;->ม:Z

    invoke-virtual {p0}, L㚬/䂻/ᓭ/ಫ/㺴;->㰫()I

    move-result p2

    iput p2, p0, L㚬/䂻/ᓭ/ಫ/㺴;->㞘:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    iget p2, p2, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int/lit8 p2, p2, 0x2

    sget p3, L㚬/䂻/㺴;->㺴:I

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, L㚬/䂻/ᓭ/ಫ/㺴;->㺴:I

    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, L㚬/䂻/ᓭ/ಫ/㺴;->ℓ:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 4

    iget-object v0, p0, L㚬/䂻/ᓭ/ಫ/㺴;->ಫ:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v1, p0, L㚬/䂻/ᓭ/ಫ/㺴;->ಫ:Ljava/util/List;

    new-array v2, v0, [L㚬/䂻/ᓭ/ಫ/㺴$㺴;

    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [L㚬/䂻/ᓭ/ಫ/㺴$㺴;

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    aget-object v2, v1, v0

    iget-object v3, v2, L㚬/䂻/ᓭ/ಫ/㺴$㺴;->உ:L㚬/䂻/ბ/㖆;

    invoke-virtual {v3}, L㚬/䂻/ბ/㥁;->䂻()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v2, v2, L㚬/䂻/ᓭ/ಫ/㺴$㺴;->உ:L㚬/䂻/ბ/㖆;

    invoke-virtual {v2}, L㚬/䂻/ბ/㥁;->dismiss()V

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onDismiss()V
    .locals 5

    iget-object v0, p0, L㚬/䂻/ᓭ/ಫ/㺴;->ಫ:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    iget-object v3, p0, L㚬/䂻/ᓭ/ಫ/㺴;->ಫ:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, L㚬/䂻/ᓭ/ಫ/㺴$㺴;

    iget-object v4, v3, L㚬/䂻/ᓭ/ಫ/㺴$㺴;->உ:L㚬/䂻/ბ/㖆;

    invoke-virtual {v4}, L㚬/䂻/ბ/㥁;->䂻()Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_1
    if-eqz v3, :cond_2

    iget-object v0, v3, L㚬/䂻/ᓭ/ಫ/㺴$㺴;->䂻:L㚬/䂻/ᓭ/ಫ/ᆻ;

    invoke-virtual {v0, v1}, L㚬/䂻/ᓭ/ಫ/ᆻ;->ḓ(Z)V

    :cond_2
    return-void
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    const/4 p3, 0x1

    if-ne p1, p3, :cond_0

    const/16 p1, 0x52

    if-ne p2, p1, :cond_0

    invoke-virtual {p0}, L㚬/䂻/ᓭ/ಫ/㺴;->dismiss()V

    return p3

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final ש(I)I
    .locals 6

    iget-object v0, p0, L㚬/䂻/ᓭ/ಫ/㺴;->ಫ:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, L㚬/䂻/ᓭ/ಫ/㺴$㺴;

    invoke-virtual {v0}, L㚬/䂻/ᓭ/ಫ/㺴$㺴;->உ()Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [I

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->getLocationOnScreen([I)V

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iget-object v4, p0, L㚬/䂻/ᓭ/ಫ/㺴;->㲝:Landroid/view/View;

    invoke-virtual {v4, v3}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    iget v4, p0, L㚬/䂻/ᓭ/ಫ/㺴;->㞘:I

    const/4 v5, 0x0

    if-ne v4, v2, :cond_1

    aget v1, v1, v5

    invoke-virtual {v0}, Landroid/widget/ListView;->getWidth()I

    move-result v0

    add-int/2addr v1, v0

    add-int/2addr v1, p1

    iget p1, v3, Landroid/graphics/Rect;->right:I

    if-le v1, p1, :cond_0

    return v5

    :cond_0
    return v2

    :cond_1
    aget v0, v1, v5

    sub-int/2addr v0, p1

    if-gez v0, :cond_2

    return v2

    :cond_2
    return v5
.end method

.method public final ڈ(L㚬/䂻/ᓭ/ಫ/㺴$㺴;L㚬/䂻/ᓭ/ಫ/ᆻ;)Landroid/view/View;
    .locals 7

    iget-object v0, p1, L㚬/䂻/ᓭ/ಫ/㺴$㺴;->䂻:L㚬/䂻/ᓭ/ಫ/ᆻ;

    invoke-virtual {p0, v0, p2}, L㚬/䂻/ᓭ/ಫ/㺴;->ᾦ(L㚬/䂻/ᓭ/ಫ/ᆻ;L㚬/䂻/ᓭ/ಫ/ᆻ;)Landroid/view/MenuItem;

    move-result-object p2

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p1}, L㚬/䂻/ᓭ/ಫ/㺴$㺴;->உ()Landroid/widget/ListView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    instance-of v2, v1, Landroid/widget/HeaderViewListAdapter;

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    check-cast v1, Landroid/widget/HeaderViewListAdapter;

    invoke-virtual {v1}, Landroid/widget/HeaderViewListAdapter;->getHeadersCount()I

    move-result v2

    invoke-virtual {v1}, Landroid/widget/HeaderViewListAdapter;->getWrappedAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    check-cast v1, L㚬/䂻/ᓭ/ಫ/䆀;

    goto :goto_0

    :cond_1
    check-cast v1, L㚬/䂻/ᓭ/ಫ/䆀;

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v1}, L㚬/䂻/ᓭ/ಫ/䆀;->getCount()I

    move-result v4

    :goto_1
    const/4 v5, -0x1

    if-ge v3, v4, :cond_3

    invoke-virtual {v1, v3}, L㚬/䂻/ᓭ/ಫ/䆀;->㚬(I)L㚬/䂻/ᓭ/ಫ/ㄏ;

    move-result-object v6

    if-ne p2, v6, :cond_2

    goto :goto_2

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    const/4 v3, -0x1

    :goto_2
    if-ne v3, v5, :cond_4

    return-object v0

    :cond_4
    add-int/2addr v3, v2

    invoke-virtual {p1}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result p2

    sub-int/2addr v3, p2

    if-ltz v3, :cond_6

    invoke-virtual {p1}, Landroid/widget/ListView;->getChildCount()I

    move-result p2

    if-lt v3, p2, :cond_5

    goto :goto_3

    :cond_5
    invoke-virtual {p1, v3}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    return-object p1

    :cond_6
    :goto_3
    return-object v0
.end method

.method public உ(L㚬/䂻/ᓭ/ಫ/ᆻ;Z)V
    .locals 5

    invoke-virtual {p0, p1}, L㚬/䂻/ᓭ/ಫ/㺴;->ಋ(L㚬/䂻/ᓭ/ಫ/ᆻ;)I

    move-result v0

    if-gez v0, :cond_0

    return-void

    :cond_0
    add-int/lit8 v1, v0, 0x1

    iget-object v2, p0, L㚬/䂻/ᓭ/ಫ/㺴;->ಫ:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    if-ge v1, v2, :cond_1

    iget-object v2, p0, L㚬/䂻/ᓭ/ಫ/㺴;->ಫ:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, L㚬/䂻/ᓭ/ಫ/㺴$㺴;

    iget-object v1, v1, L㚬/䂻/ᓭ/ಫ/㺴$㺴;->䂻:L㚬/䂻/ᓭ/ಫ/ᆻ;

    invoke-virtual {v1, v3}, L㚬/䂻/ᓭ/ಫ/ᆻ;->ḓ(Z)V

    :cond_1
    iget-object v1, p0, L㚬/䂻/ᓭ/ಫ/㺴;->ಫ:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, L㚬/䂻/ᓭ/ಫ/㺴$㺴;

    iget-object v1, v0, L㚬/䂻/ᓭ/ಫ/㺴$㺴;->䂻:L㚬/䂻/ᓭ/ಫ/ᆻ;

    invoke-virtual {v1, p0}, L㚬/䂻/ᓭ/ಫ/ᆻ;->ỷ(L㚬/䂻/ᓭ/ಫ/ἥ;)V

    iget-boolean v1, p0, L㚬/䂻/ᓭ/ಫ/㺴;->ᾦ:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    iget-object v1, v0, L㚬/䂻/ᓭ/ಫ/㺴$㺴;->உ:L㚬/䂻/ბ/㖆;

    invoke-virtual {v1, v2}, L㚬/䂻/ბ/㖆;->ỷ(Ljava/lang/Object;)V

    iget-object v1, v0, L㚬/䂻/ᓭ/ಫ/㺴$㺴;->உ:L㚬/䂻/ბ/㖆;

    invoke-virtual {v1, v3}, L㚬/䂻/ბ/㥁;->ಋ(I)V

    :cond_2
    iget-object v0, v0, L㚬/䂻/ᓭ/ಫ/㺴$㺴;->உ:L㚬/䂻/ბ/㖆;

    invoke-virtual {v0}, L㚬/䂻/ბ/㥁;->dismiss()V

    iget-object v0, p0, L㚬/䂻/ᓭ/ಫ/㺴;->ಫ:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    iget-object v1, p0, L㚬/䂻/ᓭ/ಫ/㺴;->ಫ:Ljava/util/List;

    add-int/lit8 v4, v0, -0x1

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, L㚬/䂻/ᓭ/ಫ/㺴$㺴;

    iget v1, v1, L㚬/䂻/ᓭ/ಫ/㺴$㺴;->㚬:I

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, L㚬/䂻/ᓭ/ಫ/㺴;->㰫()I

    move-result v1

    :goto_0
    iput v1, p0, L㚬/䂻/ᓭ/ಫ/㺴;->㞘:I

    if-nez v0, :cond_7

    invoke-virtual {p0}, L㚬/䂻/ᓭ/ಫ/㺴;->dismiss()V

    iget-object p2, p0, L㚬/䂻/ᓭ/ಫ/㺴;->ㄬ:L㚬/䂻/ᓭ/ಫ/ἥ$உ;

    if-eqz p2, :cond_4

    const/4 v0, 0x1

    invoke-interface {p2, p1, v0}, L㚬/䂻/ᓭ/ಫ/ἥ$உ;->உ(L㚬/䂻/ᓭ/ಫ/ᆻ;Z)V

    :cond_4
    iget-object p1, p0, L㚬/䂻/ᓭ/ಫ/㺴;->㫏:Landroid/view/ViewTreeObserver;

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, L㚬/䂻/ᓭ/ಫ/㺴;->㫏:Landroid/view/ViewTreeObserver;

    iget-object p2, p0, L㚬/䂻/ᓭ/ಫ/㺴;->㧦:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {p1, p2}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_5
    iput-object v2, p0, L㚬/䂻/ᓭ/ಫ/㺴;->㫏:Landroid/view/ViewTreeObserver;

    :cond_6
    iget-object p1, p0, L㚬/䂻/ᓭ/ಫ/㺴;->㲝:Landroid/view/View;

    iget-object p2, p0, L㚬/䂻/ᓭ/ಫ/㺴;->㹖:Landroid/view/View$OnAttachStateChangeListener;

    invoke-virtual {p1, p2}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    iget-object p1, p0, L㚬/䂻/ᓭ/ಫ/㺴;->ಋ:Landroid/widget/PopupWindow$OnDismissListener;

    invoke-interface {p1}, Landroid/widget/PopupWindow$OnDismissListener;->onDismiss()V

    goto :goto_1

    :cond_7
    if-eqz p2, :cond_8

    iget-object p1, p0, L㚬/䂻/ᓭ/ಫ/㺴;->ಫ:Ljava/util/List;

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, L㚬/䂻/ᓭ/ಫ/㺴$㺴;

    iget-object p1, p1, L㚬/䂻/ᓭ/ಫ/㺴$㺴;->䂻:L㚬/䂻/ᓭ/ಫ/ᆻ;

    invoke-virtual {p1, v3}, L㚬/䂻/ᓭ/ಫ/ᆻ;->ḓ(Z)V

    :cond_8
    :goto_1
    return-void
.end method

.method public final ಋ(L㚬/䂻/ᓭ/ಫ/ᆻ;)I
    .locals 3

    iget-object v0, p0, L㚬/䂻/ᓭ/ಫ/㺴;->ಫ:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v2, p0, L㚬/䂻/ᓭ/ಫ/㺴;->ಫ:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, L㚬/䂻/ᓭ/ಫ/㺴$㺴;

    iget-object v2, v2, L㚬/䂻/ᓭ/ಫ/㺴$㺴;->䂻:L㚬/䂻/ᓭ/ಫ/ᆻ;

    if-ne p1, v2, :cond_0

    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method public ಫ(Z)V
    .locals 1

    iget-object p1, p0, L㚬/䂻/ᓭ/ಫ/㺴;->ಫ:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, L㚬/䂻/ᓭ/ಫ/㺴$㺴;

    invoke-virtual {v0}, L㚬/䂻/ᓭ/ಫ/㺴$㺴;->உ()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-static {v0}, L㚬/䂻/ᓭ/ಫ/㧦;->ㄬ(Landroid/widget/ListAdapter;)L㚬/䂻/ᓭ/ಫ/䆀;

    move-result-object v0

    invoke-virtual {v0}, L㚬/䂻/ᓭ/ಫ/䆀;->notifyDataSetChanged()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public ม(I)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, L㚬/䂻/ᓭ/ಫ/㺴;->ḙ:Z

    iput p1, p0, L㚬/䂻/ᓭ/ಫ/㺴;->㢏:I

    return-void
.end method

.method public ბ(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, L㚬/䂻/ᓭ/ಫ/㺴;->ბ:Landroid/view/View;

    if-eq v0, p1, :cond_0

    iput-object p1, p0, L㚬/䂻/ᓭ/ಫ/㺴;->ბ:Landroid/view/View;

    iget v0, p0, L㚬/䂻/ᓭ/ಫ/㺴;->ཇ:I

    invoke-static {p1}, L㚬/ℓ/ἥ/㭲;->ม(Landroid/view/View;)I

    move-result p1

    invoke-static {v0, p1}, L㚬/ℓ/ἥ/㺴;->䂻(II)I

    move-result p1

    iput p1, p0, L㚬/䂻/ᓭ/ಫ/㺴;->ᓭ:I

    :cond_0
    return-void
.end method

.method public ᆻ()V
    .locals 2

    invoke-virtual {p0}, L㚬/䂻/ᓭ/ಫ/㺴;->䂻()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, L㚬/䂻/ᓭ/ಫ/㺴;->ㄏ:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, L㚬/䂻/ᓭ/ಫ/ᆻ;

    invoke-virtual {p0, v1}, L㚬/䂻/ᓭ/ಫ/㺴;->㨃(L㚬/䂻/ᓭ/ಫ/ᆻ;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, L㚬/䂻/ᓭ/ಫ/㺴;->ㄏ:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, L㚬/䂻/ᓭ/ಫ/㺴;->ბ:Landroid/view/View;

    iput-object v0, p0, L㚬/䂻/ᓭ/ಫ/㺴;->㲝:Landroid/view/View;

    if-eqz v0, :cond_4

    iget-object v1, p0, L㚬/䂻/ᓭ/ಫ/㺴;->㫏:Landroid/view/ViewTreeObserver;

    if-nez v1, :cond_2

    const/4 v1, 0x1

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iput-object v0, p0, L㚬/䂻/ᓭ/ಫ/㺴;->㫏:Landroid/view/ViewTreeObserver;

    if-eqz v1, :cond_3

    iget-object v1, p0, L㚬/䂻/ᓭ/ಫ/㺴;->㧦:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_3
    iget-object v0, p0, L㚬/䂻/ᓭ/ಫ/㺴;->㲝:Landroid/view/View;

    iget-object v1, p0, L㚬/䂻/ᓭ/ಫ/㺴;->㹖:Landroid/view/View$OnAttachStateChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    :cond_4
    return-void
.end method

.method public ḙ(I)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, L㚬/䂻/ᓭ/ಫ/㺴;->㭲:Z

    iput p1, p0, L㚬/䂻/ᓭ/ಫ/㺴;->㖪:I

    return-void
.end method

.method public ἥ()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final ᾦ(L㚬/䂻/ᓭ/ಫ/ᆻ;L㚬/䂻/ᓭ/ಫ/ᆻ;)Landroid/view/MenuItem;
    .locals 4

    invoke-virtual {p1}, L㚬/䂻/ᓭ/ಫ/ᆻ;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-virtual {p1, v1}, L㚬/䂻/ᓭ/ಫ/ᆻ;->getItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/MenuItem;->hasSubMenu()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Landroid/view/MenuItem;->getSubMenu()Landroid/view/SubMenu;

    move-result-object v3

    if-ne p2, v3, :cond_0

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public ℓ(L㚬/䂻/ᓭ/ಫ/ἥ$உ;)V
    .locals 0

    iput-object p1, p0, L㚬/䂻/ᓭ/ಫ/㺴;->ㄬ:L㚬/䂻/ᓭ/ಫ/ἥ$உ;

    return-void
.end method

.method public ㄏ(L㚬/䂻/ᓭ/ಫ/㞘;)Z
    .locals 4

    iget-object v0, p0, L㚬/䂻/ᓭ/ಫ/㺴;->ಫ:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, L㚬/䂻/ᓭ/ಫ/㺴$㺴;

    iget-object v3, v1, L㚬/䂻/ᓭ/ಫ/㺴$㺴;->䂻:L㚬/䂻/ᓭ/ಫ/ᆻ;

    if-ne p1, v3, :cond_0

    invoke-virtual {v1}, L㚬/䂻/ᓭ/ಫ/㺴$㺴;->உ()Landroid/widget/ListView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/ListView;->requestFocus()Z

    return v2

    :cond_1
    invoke-virtual {p1}, L㚬/䂻/ᓭ/ಫ/ᆻ;->hasVisibleItems()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0, p1}, L㚬/䂻/ᓭ/ಫ/㺴;->㧦(L㚬/䂻/ᓭ/ಫ/ᆻ;)V

    iget-object v0, p0, L㚬/䂻/ᓭ/ಫ/㺴;->ㄬ:L㚬/䂻/ᓭ/ಫ/ἥ$உ;

    if-eqz v0, :cond_2

    invoke-interface {v0, p1}, L㚬/䂻/ᓭ/ಫ/ἥ$உ;->䂻(L㚬/䂻/ᓭ/ಫ/ᆻ;)Z

    :cond_2
    return v2

    :cond_3
    const/4 p1, 0x0

    return p1
.end method

.method public 㖪(Landroid/widget/PopupWindow$OnDismissListener;)V
    .locals 0

    iput-object p1, p0, L㚬/䂻/ᓭ/ಫ/㺴;->ಋ:Landroid/widget/PopupWindow$OnDismissListener;

    return-void
.end method

.method public 㚬()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public 㞘(Z)V
    .locals 0

    iput-boolean p1, p0, L㚬/䂻/ᓭ/ಫ/㺴;->ม:Z

    return-void
.end method

.method public 㢏(Z)V
    .locals 0

    iput-boolean p1, p0, L㚬/䂻/ᓭ/ಫ/㺴;->㲧:Z

    return-void
.end method

.method public 㧦(L㚬/䂻/ᓭ/ಫ/ᆻ;)V
    .locals 1

    iget-object v0, p0, L㚬/䂻/ᓭ/ಫ/㺴;->㚬:Landroid/content/Context;

    invoke-virtual {p1, p0, v0}, L㚬/䂻/ᓭ/ಫ/ᆻ;->㚬(L㚬/䂻/ᓭ/ಫ/ἥ;Landroid/content/Context;)V

    invoke-virtual {p0}, L㚬/䂻/ᓭ/ಫ/㺴;->䂻()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, L㚬/䂻/ᓭ/ಫ/㺴;->㨃(L㚬/䂻/ᓭ/ಫ/ᆻ;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, L㚬/䂻/ᓭ/ಫ/㺴;->ㄏ:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method

.method public final 㨃(L㚬/䂻/ᓭ/ಫ/ᆻ;)V
    .locals 14

    iget-object v0, p0, L㚬/䂻/ᓭ/ಫ/㺴;->㚬:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    new-instance v1, L㚬/䂻/ᓭ/ಫ/䆀;

    iget-boolean v2, p0, L㚬/䂻/ᓭ/ಫ/㺴;->ᆻ:Z

    sget v3, L㚬/䂻/ᓭ/ಫ/㺴;->ڈ:I

    invoke-direct {v1, p1, v0, v2, v3}, L㚬/䂻/ᓭ/ಫ/䆀;-><init>(L㚬/䂻/ᓭ/ಫ/ᆻ;Landroid/view/LayoutInflater;ZI)V

    invoke-virtual {p0}, L㚬/䂻/ᓭ/ಫ/㺴;->䂻()Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_0

    iget-boolean v2, p0, L㚬/䂻/ᓭ/ಫ/㺴;->ม:Z

    if-eqz v2, :cond_0

    invoke-virtual {v1, v3}, L㚬/䂻/ᓭ/ಫ/䆀;->㺴(Z)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, L㚬/䂻/ᓭ/ಫ/㺴;->䂻()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {p1}, L㚬/䂻/ᓭ/ಫ/㧦;->㲧(L㚬/䂻/ᓭ/ಫ/ᆻ;)Z

    move-result v2

    invoke-virtual {v1, v2}, L㚬/䂻/ᓭ/ಫ/䆀;->㺴(Z)V

    :cond_1
    :goto_0
    iget-object v2, p0, L㚬/䂻/ᓭ/ಫ/㺴;->㚬:Landroid/content/Context;

    iget v4, p0, L㚬/䂻/ᓭ/ಫ/㺴;->㺴:I

    const/4 v5, 0x0

    invoke-static {v1, v5, v2, v4}, L㚬/䂻/ᓭ/ಫ/㧦;->ᓭ(Landroid/widget/ListAdapter;Landroid/view/ViewGroup;Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {p0}, L㚬/䂻/ᓭ/ಫ/㺴;->㫏()L㚬/䂻/ბ/㖆;

    move-result-object v4

    invoke-virtual {v4, v1}, L㚬/䂻/ბ/㥁;->ᓭ(Landroid/widget/ListAdapter;)V

    invoke-virtual {v4, v2}, L㚬/䂻/ბ/㥁;->ᾦ(I)V

    iget v1, p0, L㚬/䂻/ᓭ/ಫ/㺴;->ᓭ:I

    invoke-virtual {v4, v1}, L㚬/䂻/ბ/㥁;->ڈ(I)V

    iget-object v1, p0, L㚬/䂻/ᓭ/ಫ/㺴;->ಫ:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    iget-object v1, p0, L㚬/䂻/ᓭ/ಫ/㺴;->ಫ:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    sub-int/2addr v6, v3

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, L㚬/䂻/ᓭ/ಫ/㺴$㺴;

    invoke-virtual {p0, v1, p1}, L㚬/䂻/ᓭ/ಫ/㺴;->ڈ(L㚬/䂻/ᓭ/ಫ/㺴$㺴;L㚬/䂻/ᓭ/ಫ/ᆻ;)Landroid/view/View;

    move-result-object v6

    goto :goto_1

    :cond_2
    move-object v1, v5

    move-object v6, v1

    :goto_1
    const/4 v7, 0x0

    if-eqz v6, :cond_9

    invoke-virtual {v4, v7}, L㚬/䂻/ბ/㖆;->㮕(Z)V

    invoke-virtual {v4, v5}, L㚬/䂻/ბ/㖆;->Ԁ(Ljava/lang/Object;)V

    invoke-virtual {p0, v2}, L㚬/䂻/ᓭ/ಫ/㺴;->ש(I)I

    move-result v8

    if-ne v8, v3, :cond_3

    const/4 v9, 0x1

    goto :goto_2

    :cond_3
    const/4 v9, 0x0

    :goto_2
    iput v8, p0, L㚬/䂻/ᓭ/ಫ/㺴;->㞘:I

    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v10, 0x1a

    const/4 v11, 0x5

    if-lt v8, v10, :cond_4

    invoke-virtual {v4, v6}, L㚬/䂻/ბ/㥁;->㫏(Landroid/view/View;)V

    const/4 v8, 0x0

    const/4 v12, 0x0

    goto :goto_3

    :cond_4
    const/4 v8, 0x2

    new-array v10, v8, [I

    iget-object v12, p0, L㚬/䂻/ᓭ/ಫ/㺴;->ბ:Landroid/view/View;

    invoke-virtual {v12, v10}, Landroid/view/View;->getLocationOnScreen([I)V

    new-array v8, v8, [I

    invoke-virtual {v6, v8}, Landroid/view/View;->getLocationOnScreen([I)V

    iget v12, p0, L㚬/䂻/ᓭ/ಫ/㺴;->ᓭ:I

    and-int/lit8 v12, v12, 0x7

    if-ne v12, v11, :cond_5

    aget v12, v10, v7

    iget-object v13, p0, L㚬/䂻/ᓭ/ಫ/㺴;->ბ:Landroid/view/View;

    invoke-virtual {v13}, Landroid/view/View;->getWidth()I

    move-result v13

    add-int/2addr v12, v13

    aput v12, v10, v7

    aget v12, v8, v7

    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v13

    add-int/2addr v12, v13

    aput v12, v8, v7

    :cond_5
    aget v12, v8, v7

    aget v13, v10, v7

    sub-int/2addr v12, v13

    aget v8, v8, v3

    aget v10, v10, v3

    sub-int/2addr v8, v10

    :goto_3
    iget v10, p0, L㚬/䂻/ᓭ/ಫ/㺴;->ᓭ:I

    and-int/2addr v10, v11

    if-ne v10, v11, :cond_7

    if-eqz v9, :cond_6

    goto :goto_4

    :cond_6
    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v2

    goto :goto_5

    :cond_7
    if-eqz v9, :cond_8

    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v2

    :goto_4
    add-int/2addr v12, v2

    goto :goto_6

    :cond_8
    :goto_5
    sub-int/2addr v12, v2

    :goto_6
    invoke-virtual {v4, v12}, L㚬/䂻/ბ/㥁;->㺴(I)V

    invoke-virtual {v4, v3}, L㚬/䂻/ბ/㥁;->㥁(Z)V

    invoke-virtual {v4, v8}, L㚬/䂻/ბ/㥁;->ཇ(I)V

    goto :goto_7

    :cond_9
    iget-boolean v2, p0, L㚬/䂻/ᓭ/ಫ/㺴;->㭲:Z

    if-eqz v2, :cond_a

    iget v2, p0, L㚬/䂻/ᓭ/ಫ/㺴;->㖪:I

    invoke-virtual {v4, v2}, L㚬/䂻/ბ/㥁;->㺴(I)V

    :cond_a
    iget-boolean v2, p0, L㚬/䂻/ᓭ/ಫ/㺴;->ḙ:Z

    if-eqz v2, :cond_b

    iget v2, p0, L㚬/䂻/ᓭ/ಫ/㺴;->㢏:I

    invoke-virtual {v4, v2}, L㚬/䂻/ბ/㥁;->ཇ(I)V

    :cond_b
    invoke-virtual {p0}, L㚬/䂻/ᓭ/ಫ/㧦;->ཇ()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v4, v2}, L㚬/䂻/ბ/㥁;->㰫(Landroid/graphics/Rect;)V

    :goto_7
    new-instance v2, L㚬/䂻/ᓭ/ಫ/㺴$㺴;

    iget v3, p0, L㚬/䂻/ᓭ/ಫ/㺴;->㞘:I

    invoke-direct {v2, v4, p1, v3}, L㚬/䂻/ᓭ/ಫ/㺴$㺴;-><init>(L㚬/䂻/ბ/㖆;L㚬/䂻/ᓭ/ಫ/ᆻ;I)V

    iget-object v3, p0, L㚬/䂻/ᓭ/ಫ/㺴;->ಫ:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v4}, L㚬/䂻/ბ/㥁;->ᆻ()V

    invoke-virtual {v4}, L㚬/䂻/ბ/㥁;->㹖()Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/widget/ListView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    if-nez v1, :cond_c

    iget-boolean v1, p0, L㚬/䂻/ᓭ/ಫ/㺴;->㲧:Z

    if-eqz v1, :cond_c

    invoke-virtual {p1}, L㚬/䂻/ᓭ/ಫ/ᆻ;->㲧()Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_c

    sget v1, L㚬/䂻/ᆻ;->㹖:I

    invoke-virtual {v0, v1, v2, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    const v1, 0x1020016

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    invoke-virtual {p1}, L㚬/䂻/ᓭ/ಫ/ᆻ;->㲧()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v2, v0, v5, v7}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    invoke-virtual {v4}, L㚬/䂻/ბ/㥁;->ᆻ()V

    :cond_c
    return-void
.end method

.method public final 㫏()L㚬/䂻/ბ/㖆;
    .locals 5

    new-instance v0, L㚬/䂻/ბ/㖆;

    iget-object v1, p0, L㚬/䂻/ᓭ/ಫ/㺴;->㚬:Landroid/content/Context;

    iget v2, p0, L㚬/䂻/ᓭ/ಫ/㺴;->ḓ:I

    iget v3, p0, L㚬/䂻/ᓭ/ಫ/㺴;->䆀:I

    const/4 v4, 0x0

    invoke-direct {v0, v1, v4, v2, v3}, L㚬/䂻/ბ/㖆;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    iget-object v1, p0, L㚬/䂻/ᓭ/ಫ/㺴;->ἥ:L㚬/䂻/ბ/ർ;

    invoke-virtual {v0, v1}, L㚬/䂻/ბ/㖆;->䅚(L㚬/䂻/ბ/ർ;)V

    invoke-virtual {v0, p0}, L㚬/䂻/ბ/㥁;->ᱹ(Landroid/widget/AdapterView$OnItemClickListener;)V

    invoke-virtual {v0, p0}, L㚬/䂻/ბ/㥁;->ᰘ(Landroid/widget/PopupWindow$OnDismissListener;)V

    iget-object v1, p0, L㚬/䂻/ᓭ/ಫ/㺴;->ბ:Landroid/view/View;

    invoke-virtual {v0, v1}, L㚬/䂻/ბ/㥁;->㫏(Landroid/view/View;)V

    iget v1, p0, L㚬/䂻/ᓭ/ಫ/㺴;->ᓭ:I

    invoke-virtual {v0, v1}, L㚬/䂻/ბ/㥁;->ڈ(I)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, L㚬/䂻/ბ/㥁;->㨃(Z)V

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, L㚬/䂻/ბ/㥁;->ש(I)V

    return-object v0
.end method

.method public 㭲(I)V
    .locals 1

    iget v0, p0, L㚬/䂻/ᓭ/ಫ/㺴;->ཇ:I

    if-eq v0, p1, :cond_0

    iput p1, p0, L㚬/䂻/ᓭ/ಫ/㺴;->ཇ:I

    iget-object v0, p0, L㚬/䂻/ᓭ/ಫ/㺴;->ბ:Landroid/view/View;

    invoke-static {v0}, L㚬/ℓ/ἥ/㭲;->ม(Landroid/view/View;)I

    move-result v0

    invoke-static {p1, v0}, L㚬/ℓ/ἥ/㺴;->䂻(II)I

    move-result p1

    iput p1, p0, L㚬/䂻/ᓭ/ಫ/㺴;->ᓭ:I

    :cond_0
    return-void
.end method

.method public final 㰫()I
    .locals 2

    iget-object v0, p0, L㚬/䂻/ᓭ/ಫ/㺴;->ბ:Landroid/view/View;

    invoke-static {v0}, L㚬/ℓ/ἥ/㭲;->ม(Landroid/view/View;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v1, 0x0

    :cond_0
    return v1
.end method

.method public 㹖()Landroid/widget/ListView;
    .locals 2

    iget-object v0, p0, L㚬/䂻/ᓭ/ಫ/㺴;->ಫ:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, L㚬/䂻/ᓭ/ಫ/㺴;->ಫ:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, L㚬/䂻/ᓭ/ಫ/㺴$㺴;

    invoke-virtual {v0}, L㚬/䂻/ᓭ/ಫ/㺴$㺴;->உ()Landroid/widget/ListView;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public 䂻()Z
    .locals 2

    iget-object v0, p0, L㚬/䂻/ᓭ/ಫ/㺴;->ಫ:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_0

    iget-object v0, p0, L㚬/䂻/ᓭ/ಫ/㺴;->ಫ:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, L㚬/䂻/ᓭ/ಫ/㺴$㺴;

    iget-object v0, v0, L㚬/䂻/ᓭ/ಫ/㺴$㺴;->உ:L㚬/䂻/ბ/㖆;

    invoke-virtual {v0}, L㚬/䂻/ბ/㥁;->䂻()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method
