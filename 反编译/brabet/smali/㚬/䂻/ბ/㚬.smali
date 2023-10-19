.class public L㚬/䂻/ბ/㚬;
.super L㚬/䂻/ᓭ/ಫ/䂻;
.source ""

# interfaces
.implements L㚬/ℓ/ἥ/䂻$உ;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        L㚬/䂻/ბ/㚬$䂻;,
        L㚬/䂻/ბ/㚬$㚬;,
        L㚬/䂻/ბ/㚬$䆀;,
        L㚬/䂻/ბ/㚬$உ;,
        L㚬/䂻/ბ/㚬$ḓ;,
        L㚬/䂻/ბ/㚬$㺴;
    }
.end annotation


# instance fields
.field public ڈ:I

.field public ಋ:L㚬/䂻/ბ/㚬$䂻;

.field public ಫ:L㚬/䂻/ბ/㚬$㺴;

.field public final ม:Landroid/util/SparseBooleanArray;

.field public ཇ:Z

.field public ბ:I

.field public ᓭ:I

.field public ḙ:Z

.field public ἥ:Z

.field public final ᾦ:L㚬/䂻/ბ/㚬$䆀;

.field public ㄬ:L㚬/䂻/ბ/㚬$உ;

.field public 㖪:Z

.field public 㞘:Z

.field public 㢏:I

.field public 㧦:Landroid/graphics/drawable/Drawable;

.field public 㫏:L㚬/䂻/ბ/㚬$㚬;

.field public 㭲:Z

.field public 㲝:I

.field public 㲧:L㚬/䂻/ბ/㚬$ḓ;

.field public 㹖:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    sget v0, L㚬/䂻/ᆻ;->㚬:I

    sget v1, L㚬/䂻/ᆻ;->䂻:I

    invoke-direct {p0, p1, v0, v1}, L㚬/䂻/ᓭ/ಫ/䂻;-><init>(Landroid/content/Context;II)V

    new-instance p1, Landroid/util/SparseBooleanArray;

    invoke-direct {p1}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object p1, p0, L㚬/䂻/ბ/㚬;->ม:Landroid/util/SparseBooleanArray;

    new-instance p1, L㚬/䂻/ბ/㚬$䆀;

    invoke-direct {p1, p0}, L㚬/䂻/ბ/㚬$䆀;-><init>(L㚬/䂻/ბ/㚬;)V

    iput-object p1, p0, L㚬/䂻/ბ/㚬;->ᾦ:L㚬/䂻/ბ/㚬$䆀;

    return-void
.end method

.method public static synthetic ม(L㚬/䂻/ბ/㚬;)L㚬/䂻/ᓭ/ಫ/ཇ;
    .locals 0

    iget-object p0, p0, L㚬/䂻/ᓭ/ಫ/䂻;->ㄏ:L㚬/䂻/ᓭ/ಫ/ཇ;

    return-object p0
.end method

.method public static synthetic ḙ(L㚬/䂻/ბ/㚬;)L㚬/䂻/ᓭ/ಫ/ཇ;
    .locals 0

    iget-object p0, p0, L㚬/䂻/ᓭ/ಫ/䂻;->ㄏ:L㚬/䂻/ᓭ/ಫ/ཇ;

    return-object p0
.end method

.method public static synthetic 㖪(L㚬/䂻/ბ/㚬;)L㚬/䂻/ᓭ/ಫ/ᆻ;
    .locals 0

    iget-object p0, p0, L㚬/䂻/ᓭ/ಫ/䂻;->㺴:L㚬/䂻/ᓭ/ಫ/ᆻ;

    return-object p0
.end method

.method public static synthetic 㞘(L㚬/䂻/ბ/㚬;)L㚬/䂻/ᓭ/ಫ/ᆻ;
    .locals 0

    iget-object p0, p0, L㚬/䂻/ᓭ/ಫ/䂻;->㺴:L㚬/䂻/ᓭ/ಫ/ᆻ;

    return-object p0
.end method

.method public static synthetic 㢏(L㚬/䂻/ბ/㚬;)L㚬/䂻/ᓭ/ಫ/ᆻ;
    .locals 0

    iget-object p0, p0, L㚬/䂻/ᓭ/ಫ/䂻;->㺴:L㚬/䂻/ᓭ/ಫ/ᆻ;

    return-object p0
.end method

.method public static synthetic 㭲(L㚬/䂻/ბ/㚬;)L㚬/䂻/ᓭ/ಫ/ᆻ;
    .locals 0

    iget-object p0, p0, L㚬/䂻/ᓭ/ಫ/䂻;->㺴:L㚬/䂻/ᓭ/ಫ/ᆻ;

    return-object p0
.end method


# virtual methods
.method public ש(Landroid/content/res/Configuration;)V
    .locals 1

    iget-boolean p1, p0, L㚬/䂻/ბ/㚬;->㞘:Z

    if-nez p1, :cond_0

    iget-object p1, p0, L㚬/䂻/ᓭ/ಫ/䂻;->㚬:Landroid/content/Context;

    invoke-static {p1}, L㚬/䂻/ᓭ/உ;->䂻(Landroid/content/Context;)L㚬/䂻/ᓭ/உ;

    move-result-object p1

    invoke-virtual {p1}, L㚬/䂻/ᓭ/உ;->㺴()I

    move-result p1

    iput p1, p0, L㚬/䂻/ბ/㚬;->㲝:I

    :cond_0
    iget-object p1, p0, L㚬/䂻/ᓭ/ಫ/䂻;->㺴:L㚬/䂻/ᓭ/ಫ/ᆻ;

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, L㚬/䂻/ᓭ/ಫ/ᆻ;->㖆(Z)V

    :cond_1
    return-void
.end method

.method public ڈ()Z
    .locals 1

    iget-object v0, p0, L㚬/䂻/ბ/㚬;->㫏:L㚬/䂻/ბ/㚬$㚬;

    if-nez v0, :cond_1

    invoke-virtual {p0}, L㚬/䂻/ბ/㚬;->㰫()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public உ(L㚬/䂻/ᓭ/ಫ/ᆻ;Z)V
    .locals 0

    invoke-virtual {p0}, L㚬/䂻/ბ/㚬;->㲧()Z

    invoke-super {p0, p1, p2}, L㚬/䂻/ᓭ/ಫ/䂻;->உ(L㚬/䂻/ᓭ/ಫ/ᆻ;Z)V

    return-void
.end method

.method public ಋ()Z
    .locals 3

    iget-object v0, p0, L㚬/䂻/ბ/㚬;->㫏:L㚬/䂻/ბ/㚬$㚬;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v2, p0, L㚬/䂻/ᓭ/ಫ/䂻;->ㄏ:L㚬/䂻/ᓭ/ಫ/ཇ;

    if-eqz v2, :cond_0

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    const/4 v0, 0x0

    iput-object v0, p0, L㚬/䂻/ბ/㚬;->㫏:L㚬/䂻/ბ/㚬$㚬;

    return v1

    :cond_0
    iget-object v0, p0, L㚬/䂻/ბ/㚬;->㲧:L㚬/䂻/ბ/㚬$ḓ;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, L㚬/䂻/ᓭ/ಫ/㹖;->䂻()V

    return v1

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public ಫ(Z)V
    .locals 4

    invoke-super {p0, p1}, L㚬/䂻/ᓭ/ಫ/䂻;->ಫ(Z)V

    iget-object p1, p0, L㚬/䂻/ᓭ/ಫ/䂻;->ㄏ:L㚬/䂻/ᓭ/ಫ/ཇ;

    check-cast p1, Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    iget-object p1, p0, L㚬/䂻/ᓭ/ಫ/䂻;->㺴:L㚬/䂻/ᓭ/ಫ/ᆻ;

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, L㚬/䂻/ᓭ/ಫ/ᆻ;->㭲()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, L㚬/䂻/ᓭ/ಫ/ㄏ;

    invoke-virtual {v3}, L㚬/䂻/ᓭ/ಫ/ㄏ;->䂻()L㚬/ℓ/ἥ/䂻;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v3, p0}, L㚬/ℓ/ἥ/䂻;->ㄏ(L㚬/ℓ/ἥ/䂻$உ;)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iget-object p1, p0, L㚬/䂻/ᓭ/ಫ/䂻;->㺴:L㚬/䂻/ᓭ/ಫ/ᆻ;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, L㚬/䂻/ᓭ/ಫ/ᆻ;->㫏()Ljava/util/ArrayList;

    move-result-object p1

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    :goto_1
    iget-boolean v1, p0, L㚬/䂻/ბ/㚬;->ἥ:Z

    if-eqz v1, :cond_4

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, L㚬/䂻/ᓭ/ಫ/ㄏ;

    invoke-virtual {p1}, L㚬/䂻/ᓭ/ಫ/ㄏ;->isActionViewExpanded()Z

    move-result p1

    xor-int/lit8 v0, p1, 0x1

    goto :goto_2

    :cond_3
    if-lez v1, :cond_4

    const/4 v0, 0x1

    :cond_4
    :goto_2
    iget-object p1, p0, L㚬/䂻/ბ/㚬;->ಫ:L㚬/䂻/ბ/㚬$㺴;

    if-eqz v0, :cond_7

    if-nez p1, :cond_5

    new-instance p1, L㚬/䂻/ბ/㚬$㺴;

    iget-object v0, p0, L㚬/䂻/ᓭ/ಫ/䂻;->䂻:Landroid/content/Context;

    invoke-direct {p1, p0, v0}, L㚬/䂻/ბ/㚬$㺴;-><init>(L㚬/䂻/ბ/㚬;Landroid/content/Context;)V

    iput-object p1, p0, L㚬/䂻/ბ/㚬;->ಫ:L㚬/䂻/ბ/㚬$㺴;

    :cond_5
    iget-object p1, p0, L㚬/䂻/ბ/㚬;->ಫ:L㚬/䂻/ბ/㚬$㺴;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iget-object v0, p0, L㚬/䂻/ᓭ/ಫ/䂻;->ㄏ:L㚬/䂻/ᓭ/ಫ/ཇ;

    if-eq p1, v0, :cond_8

    if-eqz p1, :cond_6

    iget-object v0, p0, L㚬/䂻/ბ/㚬;->ಫ:L㚬/䂻/ბ/㚬$㺴;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_6
    iget-object p1, p0, L㚬/䂻/ᓭ/ಫ/䂻;->ㄏ:L㚬/䂻/ᓭ/ಫ/ཇ;

    check-cast p1, Landroidx/appcompat/widget/ActionMenuView;

    iget-object v0, p0, L㚬/䂻/ბ/㚬;->ಫ:L㚬/䂻/ბ/㚬$㺴;

    invoke-virtual {p1}, Landroidx/appcompat/widget/ActionMenuView;->㨃()Landroidx/appcompat/widget/ActionMenuView$㚬;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_3

    :cond_7
    if-eqz p1, :cond_8

    invoke-virtual {p1}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    iget-object v0, p0, L㚬/䂻/ᓭ/ಫ/䂻;->ㄏ:L㚬/䂻/ᓭ/ಫ/ཇ;

    if-ne p1, v0, :cond_8

    check-cast v0, Landroid/view/ViewGroup;

    iget-object p1, p0, L㚬/䂻/ბ/㚬;->ಫ:L㚬/䂻/ბ/㚬$㺴;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_8
    :goto_3
    iget-object p1, p0, L㚬/䂻/ᓭ/ಫ/䂻;->ㄏ:L㚬/䂻/ᓭ/ಫ/ཇ;

    check-cast p1, Landroidx/appcompat/widget/ActionMenuView;

    iget-boolean v0, p0, L㚬/䂻/ბ/㚬;->ἥ:Z

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/ActionMenuView;->setOverflowReserved(Z)V

    return-void
.end method

.method public ർ()Z
    .locals 7

    iget-boolean v0, p0, L㚬/䂻/ბ/㚬;->ἥ:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, L㚬/䂻/ბ/㚬;->㰫()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, L㚬/䂻/ᓭ/ಫ/䂻;->㺴:L㚬/䂻/ᓭ/ಫ/ᆻ;

    if-eqz v0, :cond_0

    iget-object v1, p0, L㚬/䂻/ᓭ/ಫ/䂻;->ㄏ:L㚬/䂻/ᓭ/ಫ/ཇ;

    if-eqz v1, :cond_0

    iget-object v1, p0, L㚬/䂻/ბ/㚬;->㫏:L㚬/䂻/ბ/㚬$㚬;

    if-nez v1, :cond_0

    invoke-virtual {v0}, L㚬/䂻/ᓭ/ಫ/ᆻ;->㫏()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, L㚬/䂻/ბ/㚬$ḓ;

    iget-object v3, p0, L㚬/䂻/ᓭ/ಫ/䂻;->㚬:Landroid/content/Context;

    iget-object v4, p0, L㚬/䂻/ᓭ/ಫ/䂻;->㺴:L㚬/䂻/ᓭ/ಫ/ᆻ;

    iget-object v5, p0, L㚬/䂻/ბ/㚬;->ಫ:L㚬/䂻/ბ/㚬$㺴;

    const/4 v6, 0x1

    move-object v1, v0

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, L㚬/䂻/ბ/㚬$ḓ;-><init>(L㚬/䂻/ბ/㚬;Landroid/content/Context;L㚬/䂻/ᓭ/ಫ/ᆻ;Landroid/view/View;Z)V

    new-instance v1, L㚬/䂻/ბ/㚬$㚬;

    invoke-direct {v1, p0, v0}, L㚬/䂻/ბ/㚬$㚬;-><init>(L㚬/䂻/ბ/㚬;L㚬/䂻/ბ/㚬$ḓ;)V

    iput-object v1, p0, L㚬/䂻/ბ/㚬;->㫏:L㚬/䂻/ბ/㚬$㚬;

    iget-object v0, p0, L㚬/䂻/ᓭ/ಫ/䂻;->ㄏ:L㚬/䂻/ᓭ/ಫ/ཇ;

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    const/4 v0, 0x0

    invoke-super {p0, v0}, L㚬/䂻/ᓭ/ಫ/䂻;->ㄏ(L㚬/䂻/ᓭ/ಫ/㞘;)Z

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public ཇ(L㚬/䂻/ᓭ/ಫ/ㄏ;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    invoke-virtual {p1}, L㚬/䂻/ᓭ/ಫ/ㄏ;->getActionView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, L㚬/䂻/ᓭ/ಫ/ㄏ;->ಫ()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    invoke-super {p0, p1, p2, p3}, L㚬/䂻/ᓭ/ಫ/䂻;->ཇ(L㚬/䂻/ᓭ/ಫ/ㄏ;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    :cond_1
    invoke-virtual {p1}, L㚬/䂻/ᓭ/ಫ/ㄏ;->isActionViewExpanded()Z

    move-result p1

    if-eqz p1, :cond_2

    const/16 p1, 0x8

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    check-cast p3, Landroidx/appcompat/widget/ActionMenuView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroidx/appcompat/widget/ActionMenuView;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result p2

    if-nez p2, :cond_3

    invoke-virtual {p3, p1}, Landroidx/appcompat/widget/ActionMenuView;->ש(Landroid/view/ViewGroup$LayoutParams;)Landroidx/appcompat/widget/ActionMenuView$㚬;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_3
    return-object v0
.end method

.method public ᆻ(L㚬/䂻/ᓭ/ಫ/ㄏ;L㚬/䂻/ᓭ/ಫ/ཇ$உ;)V
    .locals 1

    const/4 v0, 0x0

    invoke-interface {p2, p1, v0}, L㚬/䂻/ᓭ/ಫ/ཇ$உ;->ḓ(L㚬/䂻/ᓭ/ಫ/ㄏ;I)V

    iget-object p1, p0, L㚬/䂻/ᓭ/ಫ/䂻;->ㄏ:L㚬/䂻/ᓭ/ಫ/ཇ;

    check-cast p1, Landroidx/appcompat/widget/ActionMenuView;

    check-cast p2, Landroidx/appcompat/view/menu/ActionMenuItemView;

    invoke-virtual {p2, p1}, Landroidx/appcompat/view/menu/ActionMenuItemView;->setItemInvoker(L㚬/䂻/ᓭ/ಫ/ᆻ$䂻;)V

    iget-object p1, p0, L㚬/䂻/ბ/㚬;->ಋ:L㚬/䂻/ბ/㚬$䂻;

    if-nez p1, :cond_0

    new-instance p1, L㚬/䂻/ბ/㚬$䂻;

    invoke-direct {p1, p0}, L㚬/䂻/ბ/㚬$䂻;-><init>(L㚬/䂻/ბ/㚬;)V

    iput-object p1, p0, L㚬/䂻/ბ/㚬;->ಋ:L㚬/䂻/ბ/㚬$䂻;

    :cond_0
    iget-object p1, p0, L㚬/䂻/ბ/㚬;->ಋ:L㚬/䂻/ბ/㚬$䂻;

    invoke-virtual {p2, p1}, Landroidx/appcompat/view/menu/ActionMenuItemView;->setPopupCallback(Landroidx/appcompat/view/menu/ActionMenuItemView$䂻;)V

    return-void
.end method

.method public ᓭ(Landroid/view/ViewGroup;)L㚬/䂻/ᓭ/ಫ/ཇ;
    .locals 1

    iget-object v0, p0, L㚬/䂻/ᓭ/ಫ/䂻;->ㄏ:L㚬/䂻/ᓭ/ಫ/ཇ;

    invoke-super {p0, p1}, L㚬/䂻/ᓭ/ಫ/䂻;->ᓭ(Landroid/view/ViewGroup;)L㚬/䂻/ᓭ/ಫ/ཇ;

    move-result-object p1

    if-eq v0, p1, :cond_0

    move-object v0, p1

    check-cast v0, Landroidx/appcompat/widget/ActionMenuView;

    invoke-virtual {v0, p0}, Landroidx/appcompat/widget/ActionMenuView;->setPresenter(L㚬/䂻/ბ/㚬;)V

    :cond_0
    return-object p1
.end method

.method public ᰘ(Landroidx/appcompat/widget/ActionMenuView;)V
    .locals 1

    iput-object p1, p0, L㚬/䂻/ᓭ/ಫ/䂻;->ㄏ:L㚬/䂻/ᓭ/ಫ/ཇ;

    iget-object v0, p0, L㚬/䂻/ᓭ/ಫ/䂻;->㺴:L㚬/䂻/ᓭ/ಫ/ᆻ;

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/ActionMenuView;->䂻(L㚬/䂻/ᓭ/ಫ/ᆻ;)V

    return-void
.end method

.method public ᱹ(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    iget-object v0, p0, L㚬/䂻/ბ/㚬;->ಫ:L㚬/䂻/ბ/㚬$㺴;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, L㚬/䂻/ბ/㚬;->㹖:Z

    iput-object p1, p0, L㚬/䂻/ბ/㚬;->㧦:Landroid/graphics/drawable/Drawable;

    :goto_0
    return-void
.end method

.method public ᾦ()Z
    .locals 1

    iget-object v0, p0, L㚬/䂻/ბ/㚬;->ㄬ:L㚬/䂻/ბ/㚬$உ;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, L㚬/䂻/ᓭ/ಫ/㹖;->䂻()V

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public ㄏ(L㚬/䂻/ᓭ/ಫ/㞘;)Z
    .locals 7

    invoke-virtual {p1}, L㚬/䂻/ᓭ/ಫ/ᆻ;->hasVisibleItems()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    move-object v0, p1

    :goto_0
    invoke-virtual {v0}, L㚬/䂻/ᓭ/ಫ/㞘;->ග()Landroid/view/Menu;

    move-result-object v2

    iget-object v3, p0, L㚬/䂻/ᓭ/ಫ/䂻;->㺴:L㚬/䂻/ᓭ/ಫ/ᆻ;

    if-eq v2, v3, :cond_1

    invoke-virtual {v0}, L㚬/䂻/ᓭ/ಫ/㞘;->ග()Landroid/view/Menu;

    move-result-object v0

    check-cast v0, L㚬/䂻/ᓭ/ಫ/㞘;

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, L㚬/䂻/ᓭ/ಫ/㞘;->getItem()Landroid/view/MenuItem;

    move-result-object v0

    invoke-virtual {p0, v0}, L㚬/䂻/ბ/㚬;->ㄬ(Landroid/view/MenuItem;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_2

    return v1

    :cond_2
    invoke-virtual {p1}, L㚬/䂻/ᓭ/ಫ/㞘;->getItem()Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/MenuItem;->getItemId()I

    invoke-virtual {p1}, L㚬/䂻/ᓭ/ಫ/ᆻ;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_1
    const/4 v4, 0x1

    if-ge v3, v2, :cond_4

    invoke-virtual {p1, v3}, L㚬/䂻/ᓭ/ಫ/ᆻ;->getItem(I)Landroid/view/MenuItem;

    move-result-object v5

    invoke-interface {v5}, Landroid/view/MenuItem;->isVisible()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    if-eqz v5, :cond_3

    const/4 v1, 0x1

    goto :goto_2

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_4
    :goto_2
    new-instance v2, L㚬/䂻/ბ/㚬$உ;

    iget-object v3, p0, L㚬/䂻/ᓭ/ಫ/䂻;->㚬:Landroid/content/Context;

    invoke-direct {v2, p0, v3, p1, v0}, L㚬/䂻/ბ/㚬$உ;-><init>(L㚬/䂻/ბ/㚬;Landroid/content/Context;L㚬/䂻/ᓭ/ಫ/㞘;Landroid/view/View;)V

    iput-object v2, p0, L㚬/䂻/ბ/㚬;->ㄬ:L㚬/䂻/ბ/㚬$உ;

    invoke-virtual {v2, v1}, L㚬/䂻/ᓭ/ಫ/㹖;->ᆻ(Z)V

    iget-object v0, p0, L㚬/䂻/ბ/㚬;->ㄬ:L㚬/䂻/ბ/㚬$உ;

    invoke-virtual {v0}, L㚬/䂻/ᓭ/ಫ/㹖;->㧦()V

    invoke-super {p0, p1}, L㚬/䂻/ᓭ/ಫ/䂻;->ㄏ(L㚬/䂻/ᓭ/ಫ/㞘;)Z

    return v4
.end method

.method public final ㄬ(Landroid/view/MenuItem;)Landroid/view/View;
    .locals 6

    iget-object v0, p0, L㚬/䂻/ᓭ/ಫ/䂻;->ㄏ:L㚬/䂻/ᓭ/ಫ/ཇ;

    check-cast v0, Landroid/view/ViewGroup;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    instance-of v5, v4, L㚬/䂻/ᓭ/ಫ/ཇ$உ;

    if-eqz v5, :cond_1

    move-object v5, v4

    check-cast v5, L㚬/䂻/ᓭ/ಫ/ཇ$உ;

    invoke-interface {v5}, L㚬/䂻/ᓭ/ಫ/ཇ$உ;->getItemData()L㚬/䂻/ᓭ/ಫ/ㄏ;

    move-result-object v5

    if-ne v5, p1, :cond_1

    return-object v4

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method public 㚬()Z
    .locals 20

    move-object/from16 v0, p0

    iget-object v1, v0, L㚬/䂻/ᓭ/ಫ/䂻;->㺴:L㚬/䂻/ᓭ/ಫ/ᆻ;

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, L㚬/䂻/ᓭ/ಫ/ᆻ;->ש()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    goto :goto_0

    :cond_0
    move-object v1, v2

    const/4 v4, 0x0

    :goto_0
    iget v5, v0, L㚬/䂻/ბ/㚬;->㲝:I

    iget v6, v0, L㚬/䂻/ბ/㚬;->ბ:I

    invoke-static {v3, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    iget-object v8, v0, L㚬/䂻/ᓭ/ಫ/䂻;->ㄏ:L㚬/䂻/ᓭ/ಫ/ཇ;

    check-cast v8, Landroid/view/ViewGroup;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    :goto_1
    if-ge v9, v4, :cond_4

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, L㚬/䂻/ᓭ/ಫ/ㄏ;

    invoke-virtual {v14}, L㚬/䂻/ᓭ/ಫ/ㄏ;->ᓭ()Z

    move-result v15

    if-eqz v15, :cond_1

    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    :cond_1
    invoke-virtual {v14}, L㚬/䂻/ᓭ/ಫ/ㄏ;->ཇ()Z

    move-result v15

    if-eqz v15, :cond_2

    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    :cond_2
    const/4 v10, 0x1

    :goto_2
    iget-boolean v13, v0, L㚬/䂻/ბ/㚬;->㖪:Z

    if-eqz v13, :cond_3

    invoke-virtual {v14}, L㚬/䂻/ᓭ/ಫ/ㄏ;->isActionViewExpanded()Z

    move-result v13

    if-eqz v13, :cond_3

    const/4 v5, 0x0

    :cond_3
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_4
    iget-boolean v9, v0, L㚬/䂻/ბ/㚬;->ἥ:Z

    if-eqz v9, :cond_6

    if-nez v10, :cond_5

    add-int/2addr v12, v11

    if-le v12, v5, :cond_6

    :cond_5
    add-int/lit8 v5, v5, -0x1

    :cond_6
    sub-int/2addr v5, v11

    iget-object v9, v0, L㚬/䂻/ბ/㚬;->ม:Landroid/util/SparseBooleanArray;

    invoke-virtual {v9}, Landroid/util/SparseBooleanArray;->clear()V

    iget-boolean v10, v0, L㚬/䂻/ბ/㚬;->㭲:Z

    if-eqz v10, :cond_7

    iget v10, v0, L㚬/䂻/ბ/㚬;->㢏:I

    div-int v11, v6, v10

    rem-int v12, v6, v10

    div-int/2addr v12, v11

    add-int/2addr v10, v12

    goto :goto_3

    :cond_7
    const/4 v10, 0x0

    const/4 v11, 0x0

    :goto_3
    const/4 v12, 0x0

    const/4 v14, 0x0

    :goto_4
    if-ge v12, v4, :cond_1b

    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, L㚬/䂻/ᓭ/ಫ/ㄏ;

    invoke-virtual {v15}, L㚬/䂻/ᓭ/ಫ/ㄏ;->ᓭ()Z

    move-result v16

    if-eqz v16, :cond_b

    invoke-virtual {v0, v15, v2, v8}, L㚬/䂻/ბ/㚬;->ཇ(L㚬/䂻/ᓭ/ಫ/ㄏ;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v13

    iget-boolean v2, v0, L㚬/䂻/ბ/㚬;->㭲:Z

    if-eqz v2, :cond_8

    invoke-static {v13, v10, v11, v7, v3}, Landroidx/appcompat/widget/ActionMenuView;->㭢(Landroid/view/View;IIII)I

    move-result v2

    sub-int/2addr v11, v2

    goto :goto_5

    :cond_8
    invoke-virtual {v13, v7, v7}, Landroid/view/View;->measure(II)V

    :goto_5
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    sub-int/2addr v6, v2

    if-nez v14, :cond_9

    move v14, v2

    :cond_9
    invoke-virtual {v15}, L㚬/䂻/ᓭ/ಫ/ㄏ;->getGroupId()I

    move-result v2

    const/4 v13, 0x1

    if-eqz v2, :cond_a

    invoke-virtual {v9, v2, v13}, Landroid/util/SparseBooleanArray;->put(IZ)V

    :cond_a
    invoke-virtual {v15, v13}, L㚬/䂻/ᓭ/ಫ/ㄏ;->㖪(Z)V

    move/from16 v17, v4

    :goto_6
    const/4 v0, 0x0

    goto/16 :goto_d

    :cond_b
    invoke-virtual {v15}, L㚬/䂻/ᓭ/ಫ/ㄏ;->ཇ()Z

    move-result v2

    if-eqz v2, :cond_1a

    invoke-virtual {v15}, L㚬/䂻/ᓭ/ಫ/ㄏ;->getGroupId()I

    move-result v2

    invoke-virtual {v9, v2}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v13

    if-gtz v5, :cond_c

    if-eqz v13, :cond_e

    :cond_c
    if-lez v6, :cond_e

    iget-boolean v3, v0, L㚬/䂻/ბ/㚬;->㭲:Z

    if-eqz v3, :cond_d

    if-lez v11, :cond_e

    :cond_d
    const/4 v3, 0x1

    goto :goto_7

    :cond_e
    const/4 v3, 0x0

    :goto_7
    move/from16 v18, v3

    move/from16 v17, v4

    if-eqz v3, :cond_14

    const/4 v3, 0x0

    invoke-virtual {v0, v15, v3, v8}, L㚬/䂻/ბ/㚬;->ཇ(L㚬/䂻/ᓭ/ಫ/ㄏ;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    iget-boolean v3, v0, L㚬/䂻/ბ/㚬;->㭲:Z

    if-eqz v3, :cond_f

    const/4 v3, 0x0

    invoke-static {v4, v10, v11, v7, v3}, Landroidx/appcompat/widget/ActionMenuView;->㭢(Landroid/view/View;IIII)I

    move-result v19

    sub-int v11, v11, v19

    if-nez v19, :cond_10

    const/16 v18, 0x0

    goto :goto_8

    :cond_f
    invoke-virtual {v4, v7, v7}, Landroid/view/View;->measure(II)V

    :cond_10
    :goto_8
    move/from16 v3, v18

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    sub-int/2addr v6, v4

    if-nez v14, :cond_11

    move v14, v4

    :cond_11
    iget-boolean v4, v0, L㚬/䂻/ბ/㚬;->㭲:Z

    if-eqz v4, :cond_12

    if-ltz v6, :cond_13

    goto :goto_9

    :cond_12
    add-int v4, v6, v14

    if-lez v4, :cond_13

    :goto_9
    const/4 v4, 0x1

    goto :goto_a

    :cond_13
    const/4 v4, 0x0

    :goto_a
    and-int/2addr v3, v4

    :cond_14
    if-eqz v3, :cond_15

    if-eqz v2, :cond_15

    const/4 v4, 0x1

    invoke-virtual {v9, v2, v4}, Landroid/util/SparseBooleanArray;->put(IZ)V

    goto :goto_c

    :cond_15
    if-eqz v13, :cond_18

    const/4 v4, 0x0

    invoke-virtual {v9, v2, v4}, Landroid/util/SparseBooleanArray;->put(IZ)V

    const/4 v4, 0x0

    :goto_b
    if-ge v4, v12, :cond_18

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, L㚬/䂻/ᓭ/ಫ/ㄏ;

    invoke-virtual {v13}, L㚬/䂻/ᓭ/ಫ/ㄏ;->getGroupId()I

    move-result v0

    if-ne v0, v2, :cond_17

    invoke-virtual {v13}, L㚬/䂻/ᓭ/ಫ/ㄏ;->㹖()Z

    move-result v0

    if-eqz v0, :cond_16

    add-int/lit8 v5, v5, 0x1

    :cond_16
    const/4 v0, 0x0

    invoke-virtual {v13, v0}, L㚬/䂻/ᓭ/ಫ/ㄏ;->㖪(Z)V

    :cond_17
    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, p0

    goto :goto_b

    :cond_18
    :goto_c
    if-eqz v3, :cond_19

    add-int/lit8 v5, v5, -0x1

    :cond_19
    invoke-virtual {v15, v3}, L㚬/䂻/ᓭ/ಫ/ㄏ;->㖪(Z)V

    goto/16 :goto_6

    :cond_1a
    move/from16 v17, v4

    const/4 v0, 0x0

    invoke-virtual {v15, v0}, L㚬/䂻/ᓭ/ಫ/ㄏ;->㖪(Z)V

    :goto_d
    add-int/lit8 v12, v12, 0x1

    const/4 v2, 0x0

    move-object/from16 v0, p0

    move/from16 v4, v17

    const/4 v3, 0x0

    goto/16 :goto_4

    :cond_1b
    const/4 v2, 0x1

    return v2
.end method

.method public 㥁(Z)V
    .locals 0

    iput-boolean p1, p0, L㚬/䂻/ბ/㚬;->ἥ:Z

    const/4 p1, 0x1

    iput-boolean p1, p0, L㚬/䂻/ბ/㚬;->ཇ:Z

    return-void
.end method

.method public 㨃(Z)V
    .locals 0

    iput-boolean p1, p0, L㚬/䂻/ბ/㚬;->㖪:Z

    return-void
.end method

.method public 㫏()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, L㚬/䂻/ბ/㚬;->ಫ:L㚬/䂻/ბ/㚬$㺴;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0

    :cond_0
    iget-boolean v0, p0, L㚬/䂻/ბ/㚬;->㹖:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, L㚬/䂻/ბ/㚬;->㧦:Landroid/graphics/drawable/Drawable;

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public 㰫()Z
    .locals 1

    iget-object v0, p0, L㚬/䂻/ბ/㚬;->㲧:L㚬/䂻/ბ/㚬$ḓ;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, L㚬/䂻/ᓭ/ಫ/㹖;->㺴()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public 㲝(IL㚬/䂻/ᓭ/ಫ/ㄏ;)Z
    .locals 0

    invoke-virtual {p2}, L㚬/䂻/ᓭ/ಫ/ㄏ;->㹖()Z

    move-result p1

    return p1
.end method

.method public 㲧()Z
    .locals 2

    invoke-virtual {p0}, L㚬/䂻/ბ/㚬;->ಋ()Z

    move-result v0

    invoke-virtual {p0}, L㚬/䂻/ბ/㚬;->ᾦ()Z

    move-result v1

    or-int/2addr v0, v1

    return v0
.end method

.method public 㹖(Landroid/view/ViewGroup;I)Z
    .locals 2

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, L㚬/䂻/ბ/㚬;->ಫ:L㚬/䂻/ბ/㚬$㺴;

    if-ne v0, v1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-super {p0, p1, p2}, L㚬/䂻/ᓭ/ಫ/䂻;->㹖(Landroid/view/ViewGroup;I)Z

    move-result p1

    return p1
.end method

.method public 㺴(Landroid/content/Context;L㚬/䂻/ᓭ/ಫ/ᆻ;)V
    .locals 4

    invoke-super {p0, p1, p2}, L㚬/䂻/ᓭ/ಫ/䂻;->㺴(Landroid/content/Context;L㚬/䂻/ᓭ/ಫ/ᆻ;)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-static {p1}, L㚬/䂻/ᓭ/உ;->䂻(Landroid/content/Context;)L㚬/䂻/ᓭ/உ;

    move-result-object p1

    iget-boolean v0, p0, L㚬/䂻/ბ/㚬;->ཇ:Z

    if-nez v0, :cond_0

    invoke-virtual {p1}, L㚬/䂻/ᓭ/உ;->ℓ()Z

    move-result v0

    iput-boolean v0, p0, L㚬/䂻/ბ/㚬;->ἥ:Z

    :cond_0
    iget-boolean v0, p0, L㚬/䂻/ბ/㚬;->ḙ:Z

    if-nez v0, :cond_1

    invoke-virtual {p1}, L㚬/䂻/ᓭ/உ;->㚬()I

    move-result v0

    iput v0, p0, L㚬/䂻/ბ/㚬;->ᓭ:I

    :cond_1
    iget-boolean v0, p0, L㚬/䂻/ბ/㚬;->㞘:Z

    if-nez v0, :cond_2

    invoke-virtual {p1}, L㚬/䂻/ᓭ/உ;->㺴()I

    move-result p1

    iput p1, p0, L㚬/䂻/ბ/㚬;->㲝:I

    :cond_2
    iget p1, p0, L㚬/䂻/ბ/㚬;->ᓭ:I

    iget-boolean v0, p0, L㚬/䂻/ბ/㚬;->ἥ:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    iget-object v0, p0, L㚬/䂻/ბ/㚬;->ಫ:L㚬/䂻/ბ/㚬$㺴;

    if-nez v0, :cond_4

    new-instance v0, L㚬/䂻/ბ/㚬$㺴;

    iget-object v2, p0, L㚬/䂻/ᓭ/ಫ/䂻;->䂻:Landroid/content/Context;

    invoke-direct {v0, p0, v2}, L㚬/䂻/ბ/㚬$㺴;-><init>(L㚬/䂻/ბ/㚬;Landroid/content/Context;)V

    iput-object v0, p0, L㚬/䂻/ბ/㚬;->ಫ:L㚬/䂻/ბ/㚬$㺴;

    iget-boolean v2, p0, L㚬/䂻/ბ/㚬;->㹖:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_3

    iget-object v2, p0, L㚬/䂻/ბ/㚬;->㧦:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v2}, Landroidx/appcompat/widget/AppCompatImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iput-object v1, p0, L㚬/䂻/ბ/㚬;->㧦:Landroid/graphics/drawable/Drawable;

    iput-boolean v3, p0, L㚬/䂻/ბ/㚬;->㹖:Z

    :cond_3
    invoke-static {v3, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    iget-object v1, p0, L㚬/䂻/ბ/㚬;->ಫ:L㚬/䂻/ბ/㚬$㺴;

    invoke-virtual {v1, v0, v0}, Landroid/widget/ImageView;->measure(II)V

    :cond_4
    iget-object v0, p0, L㚬/䂻/ბ/㚬;->ಫ:L㚬/䂻/ბ/㚬$㺴;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v0

    sub-int/2addr p1, v0

    goto :goto_0

    :cond_5
    iput-object v1, p0, L㚬/䂻/ბ/㚬;->ಫ:L㚬/䂻/ბ/㚬$㺴;

    :goto_0
    iput p1, p0, L㚬/䂻/ბ/㚬;->ბ:I

    const/high16 p1, 0x42600000    # 56.0f

    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    iget p2, p2, Landroid/util/DisplayMetrics;->density:F

    mul-float p2, p2, p1

    float-to-int p1, p2

    iput p1, p0, L㚬/䂻/ბ/㚬;->㢏:I

    return-void
.end method
