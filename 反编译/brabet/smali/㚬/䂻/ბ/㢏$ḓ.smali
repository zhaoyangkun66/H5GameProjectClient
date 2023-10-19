.class public L㚬/䂻/ბ/㢏$ḓ;
.super L㚬/䂻/ბ/㥁;
.source ""

# interfaces
.implements L㚬/䂻/ბ/㢏$ᆻ;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = L㚬/䂻/ბ/㢏;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "\u1e13"
.end annotation


# instance fields
.field public final synthetic Ԁ:L㚬/䂻/ბ/㢏;

.field public Խ:I

.field public ർ:Ljava/lang/CharSequence;

.field public 㖆:Landroid/widget/ListAdapter;

.field public final 㭢:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(L㚬/䂻/ბ/㢏;Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    iput-object p1, p0, L㚬/䂻/ბ/㢏$ḓ;->Ԁ:L㚬/䂻/ბ/㢏;

    invoke-direct {p0, p2, p3, p4}, L㚬/䂻/ბ/㥁;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, L㚬/䂻/ბ/㢏$ḓ;->㭢:Landroid/graphics/Rect;

    invoke-virtual {p0, p1}, L㚬/䂻/ბ/㥁;->㫏(Landroid/view/View;)V

    const/4 p2, 0x1

    invoke-virtual {p0, p2}, L㚬/䂻/ბ/㥁;->㨃(Z)V

    const/4 p2, 0x0

    invoke-virtual {p0, p2}, L㚬/䂻/ბ/㥁;->㖆(I)V

    new-instance p2, L㚬/䂻/ბ/㢏$ḓ$உ;

    invoke-direct {p2, p0, p1}, L㚬/䂻/ბ/㢏$ḓ$உ;-><init>(L㚬/䂻/ბ/㢏$ḓ;L㚬/䂻/ბ/㢏;)V

    invoke-virtual {p0, p2}, L㚬/䂻/ბ/㥁;->ᱹ(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void
.end method

.method public static synthetic Ԁ(L㚬/䂻/ბ/㢏$ḓ;)V
    .locals 0

    invoke-super {p0}, L㚬/䂻/ბ/㥁;->ᆻ()V

    return-void
.end method


# virtual methods
.method public ბ(I)V
    .locals 0

    iput p1, p0, L㚬/䂻/ბ/㢏$ḓ;->Խ:I

    return-void
.end method

.method public ᓭ(Landroid/widget/ListAdapter;)V
    .locals 0

    invoke-super {p0, p1}, L㚬/䂻/ბ/㥁;->ᓭ(Landroid/widget/ListAdapter;)V

    iput-object p1, p0, L㚬/䂻/ბ/㢏$ḓ;->㖆:Landroid/widget/ListAdapter;

    return-void
.end method

.method public ỷ()V
    .locals 8

    invoke-virtual {p0}, L㚬/䂻/ბ/㥁;->ಫ()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v1, p0, L㚬/䂻/ბ/㢏$ḓ;->Ԁ:L㚬/䂻/ბ/㢏;

    iget-object v1, v1, L㚬/䂻/ბ/㢏;->ㄏ:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    iget-object v0, p0, L㚬/䂻/ბ/㢏$ḓ;->Ԁ:L㚬/䂻/ბ/㢏;

    invoke-static {v0}, L㚬/䂻/ბ/㽛;->䂻(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, L㚬/䂻/ბ/㢏$ḓ;->Ԁ:L㚬/䂻/ბ/㢏;

    iget-object v0, v0, L㚬/䂻/ბ/㢏;->ㄏ:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    goto :goto_0

    :cond_0
    iget-object v0, p0, L㚬/䂻/ბ/㢏$ḓ;->Ԁ:L㚬/䂻/ბ/㢏;

    iget-object v0, v0, L㚬/䂻/ბ/㢏;->ㄏ:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    neg-int v0, v0

    :goto_0
    move v1, v0

    goto :goto_1

    :cond_1
    iget-object v0, p0, L㚬/䂻/ბ/㢏$ḓ;->Ԁ:L㚬/䂻/ბ/㢏;

    iget-object v0, v0, L㚬/䂻/ბ/㢏;->ㄏ:Landroid/graphics/Rect;

    iput v1, v0, Landroid/graphics/Rect;->right:I

    iput v1, v0, Landroid/graphics/Rect;->left:I

    :goto_1
    iget-object v0, p0, L㚬/䂻/ბ/㢏$ḓ;->Ԁ:L㚬/䂻/ბ/㢏;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getPaddingLeft()I

    move-result v0

    iget-object v2, p0, L㚬/䂻/ბ/㢏$ḓ;->Ԁ:L㚬/䂻/ბ/㢏;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getPaddingRight()I

    move-result v2

    iget-object v3, p0, L㚬/䂻/ბ/㢏$ḓ;->Ԁ:L㚬/䂻/ბ/㢏;

    invoke-virtual {v3}, Landroid/widget/Spinner;->getWidth()I

    move-result v3

    iget-object v4, p0, L㚬/䂻/ბ/㢏$ḓ;->Ԁ:L㚬/䂻/ბ/㢏;

    iget v5, v4, L㚬/䂻/ბ/㢏;->ℓ:I

    const/4 v6, -0x2

    if-ne v5, v6, :cond_3

    iget-object v5, p0, L㚬/䂻/ბ/㢏$ḓ;->㖆:Landroid/widget/ListAdapter;

    check-cast v5, Landroid/widget/SpinnerAdapter;

    invoke-virtual {p0}, L㚬/䂻/ბ/㥁;->ಫ()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, L㚬/䂻/ბ/㢏;->உ(Landroid/widget/SpinnerAdapter;Landroid/graphics/drawable/Drawable;)I

    move-result v4

    iget-object v5, p0, L㚬/䂻/ბ/㢏$ḓ;->Ԁ:L㚬/䂻/ბ/㢏;

    invoke-virtual {v5}, Landroid/widget/Spinner;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object v6, p0, L㚬/䂻/ბ/㢏$ḓ;->Ԁ:L㚬/䂻/ბ/㢏;

    iget-object v6, v6, L㚬/䂻/ბ/㢏;->ㄏ:Landroid/graphics/Rect;

    iget v7, v6, Landroid/graphics/Rect;->left:I

    sub-int/2addr v5, v7

    iget v6, v6, Landroid/graphics/Rect;->right:I

    sub-int/2addr v5, v6

    if-le v4, v5, :cond_2

    move v4, v5

    :cond_2
    sub-int v5, v3, v0

    sub-int/2addr v5, v2

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    goto :goto_2

    :cond_3
    const/4 v4, -0x1

    if-ne v5, v4, :cond_4

    sub-int v4, v3, v0

    sub-int/2addr v4, v2

    :goto_2
    invoke-virtual {p0, v4}, L㚬/䂻/ბ/㥁;->ᾦ(I)V

    goto :goto_3

    :cond_4
    invoke-virtual {p0, v5}, L㚬/䂻/ბ/㥁;->ᾦ(I)V

    :goto_3
    iget-object v4, p0, L㚬/䂻/ბ/㢏$ḓ;->Ԁ:L㚬/䂻/ბ/㢏;

    invoke-static {v4}, L㚬/䂻/ბ/㽛;->䂻(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_5

    sub-int/2addr v3, v2

    invoke-virtual {p0}, L㚬/䂻/ბ/㥁;->㢏()I

    move-result v0

    sub-int/2addr v3, v0

    invoke-virtual {p0}, L㚬/䂻/ბ/㢏$ḓ;->䅚()I

    move-result v0

    sub-int/2addr v3, v0

    add-int/2addr v1, v3

    goto :goto_4

    :cond_5
    invoke-virtual {p0}, L㚬/䂻/ბ/㢏$ḓ;->䅚()I

    move-result v2

    add-int/2addr v0, v2

    add-int/2addr v1, v0

    :goto_4
    invoke-virtual {p0, v1}, L㚬/䂻/ბ/㥁;->㺴(I)V

    return-void
.end method

.method public ἥ(Ljava/lang/CharSequence;)V
    .locals 0

    iput-object p1, p0, L㚬/䂻/ბ/㢏$ḓ;->ർ:Ljava/lang/CharSequence;

    return-void
.end method

.method public 㧦()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, L㚬/䂻/ბ/㢏$ḓ;->ർ:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public 㮕(Landroid/view/View;)Z
    .locals 1

    invoke-static {p1}, L㚬/ℓ/ἥ/㭲;->ർ(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, L㚬/䂻/ბ/㢏$ḓ;->㭢:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public 䅚()I
    .locals 1

    iget v0, p0, L㚬/䂻/ბ/㢏$ḓ;->Խ:I

    return v0
.end method

.method public 䆀(II)V
    .locals 4

    invoke-virtual {p0}, L㚬/䂻/ბ/㥁;->䂻()Z

    move-result v0

    invoke-virtual {p0}, L㚬/䂻/ბ/㢏$ḓ;->ỷ()V

    const/4 v1, 0x2

    invoke-virtual {p0, v1}, L㚬/䂻/ბ/㥁;->ש(I)V

    invoke-super {p0}, L㚬/䂻/ბ/㥁;->ᆻ()V

    invoke-virtual {p0}, L㚬/䂻/ბ/㥁;->㹖()Landroid/widget/ListView;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setChoiceMode(I)V

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x11

    if-lt v2, v3, :cond_0

    invoke-virtual {v1, p1}, Landroid/widget/ListView;->setTextDirection(I)V

    invoke-virtual {v1, p2}, Landroid/widget/ListView;->setTextAlignment(I)V

    :cond_0
    iget-object p1, p0, L㚬/䂻/ბ/㢏$ḓ;->Ԁ:L㚬/䂻/ბ/㢏;

    invoke-virtual {p1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result p1

    invoke-virtual {p0, p1}, L㚬/䂻/ბ/㥁;->㭢(I)V

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iget-object p1, p0, L㚬/䂻/ბ/㢏$ḓ;->Ԁ:L㚬/䂻/ბ/㢏;

    invoke-virtual {p1}, Landroid/widget/Spinner;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    if-eqz p1, :cond_2

    new-instance p2, L㚬/䂻/ბ/㢏$ḓ$䂻;

    invoke-direct {p2, p0}, L㚬/䂻/ბ/㢏$ḓ$䂻;-><init>(L㚬/䂻/ბ/㢏$ḓ;)V

    invoke-virtual {p1, p2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    new-instance p1, L㚬/䂻/ბ/㢏$ḓ$㚬;

    invoke-direct {p1, p0, p2}, L㚬/䂻/ბ/㢏$ḓ$㚬;-><init>(L㚬/䂻/ბ/㢏$ḓ;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    invoke-virtual {p0, p1}, L㚬/䂻/ბ/㥁;->ᰘ(Landroid/widget/PopupWindow$OnDismissListener;)V

    :cond_2
    return-void
.end method
