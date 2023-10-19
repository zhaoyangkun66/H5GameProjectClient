.class public L㚬/䂻/ᓭ/ಫ/ḓ;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements L㚬/䂻/ᓭ/ಫ/ἥ;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        L㚬/䂻/ᓭ/ಫ/ḓ$உ;
    }
.end annotation


# instance fields
.field public ಫ:L㚬/䂻/ᓭ/ಫ/ḓ$உ;

.field public ᆻ:I

.field public ḓ:Landroidx/appcompat/view/menu/ExpandedMenuView;

.field public ℓ:I

.field public ㄏ:L㚬/䂻/ᓭ/ಫ/ἥ$உ;

.field public 㚬:Landroid/view/LayoutInflater;

.field public 㺴:L㚬/䂻/ᓭ/ಫ/ᆻ;

.field public 䂻:Landroid/content/Context;

.field public 䆀:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, L㚬/䂻/ᓭ/ಫ/ḓ;->ℓ:I

    iput p2, p0, L㚬/䂻/ᓭ/ಫ/ḓ;->ᆻ:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, L㚬/䂻/ᓭ/ಫ/ḓ;-><init>(II)V

    iput-object p1, p0, L㚬/䂻/ᓭ/ಫ/ḓ;->䂻:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, L㚬/䂻/ᓭ/ಫ/ḓ;->㚬:Landroid/view/LayoutInflater;

    return-void
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

    iget-object p1, p0, L㚬/䂻/ᓭ/ಫ/ḓ;->㺴:L㚬/䂻/ᓭ/ಫ/ᆻ;

    iget-object p2, p0, L㚬/䂻/ᓭ/ಫ/ḓ;->ಫ:L㚬/䂻/ᓭ/ಫ/ḓ$உ;

    invoke-virtual {p2, p3}, L㚬/䂻/ᓭ/ಫ/ḓ$உ;->䂻(I)L㚬/䂻/ᓭ/ಫ/ㄏ;

    move-result-object p2

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p0, p3}, L㚬/䂻/ᓭ/ಫ/ᆻ;->Խ(Landroid/view/MenuItem;L㚬/䂻/ᓭ/ಫ/ἥ;I)Z

    return-void
.end method

.method public உ(L㚬/䂻/ᓭ/ಫ/ᆻ;Z)V
    .locals 1

    iget-object v0, p0, L㚬/䂻/ᓭ/ಫ/ḓ;->ㄏ:L㚬/䂻/ᓭ/ಫ/ἥ$உ;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, L㚬/䂻/ᓭ/ಫ/ἥ$உ;->உ(L㚬/䂻/ᓭ/ಫ/ᆻ;Z)V

    :cond_0
    return-void
.end method

.method public ಫ(Z)V
    .locals 0

    iget-object p1, p0, L㚬/䂻/ᓭ/ಫ/ḓ;->ಫ:L㚬/䂻/ᓭ/ಫ/ḓ$உ;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, L㚬/䂻/ᓭ/ಫ/ḓ$உ;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public ᆻ(Landroid/view/ViewGroup;)L㚬/䂻/ᓭ/ಫ/ཇ;
    .locals 3

    iget-object v0, p0, L㚬/䂻/ᓭ/ಫ/ḓ;->ḓ:Landroidx/appcompat/view/menu/ExpandedMenuView;

    if-nez v0, :cond_1

    iget-object v0, p0, L㚬/䂻/ᓭ/ಫ/ḓ;->㚬:Landroid/view/LayoutInflater;

    sget v1, L㚬/䂻/ᆻ;->ᆻ:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/view/menu/ExpandedMenuView;

    iput-object p1, p0, L㚬/䂻/ᓭ/ಫ/ḓ;->ḓ:Landroidx/appcompat/view/menu/ExpandedMenuView;

    iget-object p1, p0, L㚬/䂻/ᓭ/ಫ/ḓ;->ಫ:L㚬/䂻/ᓭ/ಫ/ḓ$உ;

    if-nez p1, :cond_0

    new-instance p1, L㚬/䂻/ᓭ/ಫ/ḓ$உ;

    invoke-direct {p1, p0}, L㚬/䂻/ᓭ/ಫ/ḓ$உ;-><init>(L㚬/䂻/ᓭ/ಫ/ḓ;)V

    iput-object p1, p0, L㚬/䂻/ᓭ/ಫ/ḓ;->ಫ:L㚬/䂻/ᓭ/ಫ/ḓ$உ;

    :cond_0
    iget-object p1, p0, L㚬/䂻/ᓭ/ಫ/ḓ;->ḓ:Landroidx/appcompat/view/menu/ExpandedMenuView;

    iget-object v0, p0, L㚬/䂻/ᓭ/ಫ/ḓ;->ಫ:L㚬/䂻/ᓭ/ಫ/ḓ$உ;

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object p1, p0, L㚬/䂻/ᓭ/ಫ/ḓ;->ḓ:Landroidx/appcompat/view/menu/ExpandedMenuView;

    invoke-virtual {p1, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    :cond_1
    iget-object p1, p0, L㚬/䂻/ᓭ/ಫ/ḓ;->ḓ:Landroidx/appcompat/view/menu/ExpandedMenuView;

    return-object p1
.end method

.method public ḓ(L㚬/䂻/ᓭ/ಫ/ᆻ;L㚬/䂻/ᓭ/ಫ/ㄏ;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public ℓ(L㚬/䂻/ᓭ/ಫ/ἥ$உ;)V
    .locals 0

    iput-object p1, p0, L㚬/䂻/ᓭ/ಫ/ḓ;->ㄏ:L㚬/䂻/ᓭ/ಫ/ἥ$உ;

    return-void
.end method

.method public ㄏ(L㚬/䂻/ᓭ/ಫ/㞘;)Z
    .locals 2

    invoke-virtual {p1}, L㚬/䂻/ᓭ/ಫ/ᆻ;->hasVisibleItems()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    new-instance v0, L㚬/䂻/ᓭ/ಫ/ℓ;

    invoke-direct {v0, p1}, L㚬/䂻/ᓭ/ಫ/ℓ;-><init>(L㚬/䂻/ᓭ/ಫ/ᆻ;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, L㚬/䂻/ᓭ/ಫ/ℓ;->㺴(Landroid/os/IBinder;)V

    iget-object v0, p0, L㚬/䂻/ᓭ/ಫ/ḓ;->ㄏ:L㚬/䂻/ᓭ/ಫ/ἥ$உ;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, L㚬/䂻/ᓭ/ಫ/ἥ$உ;->䂻(L㚬/䂻/ᓭ/ಫ/ᆻ;)Z

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public 㚬()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public 㺴(Landroid/content/Context;L㚬/䂻/ᓭ/ಫ/ᆻ;)V
    .locals 2

    iget v0, p0, L㚬/䂻/ᓭ/ಫ/ḓ;->ᆻ:I

    if-eqz v0, :cond_0

    new-instance v0, Landroid/view/ContextThemeWrapper;

    iget v1, p0, L㚬/䂻/ᓭ/ಫ/ḓ;->ᆻ:I

    invoke-direct {v0, p1, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, L㚬/䂻/ᓭ/ಫ/ḓ;->䂻:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    :goto_0
    iput-object p1, p0, L㚬/䂻/ᓭ/ಫ/ḓ;->㚬:Landroid/view/LayoutInflater;

    goto :goto_1

    :cond_0
    iget-object v0, p0, L㚬/䂻/ᓭ/ಫ/ḓ;->䂻:Landroid/content/Context;

    if-eqz v0, :cond_1

    iput-object p1, p0, L㚬/䂻/ᓭ/ಫ/ḓ;->䂻:Landroid/content/Context;

    iget-object v0, p0, L㚬/䂻/ᓭ/ಫ/ḓ;->㚬:Landroid/view/LayoutInflater;

    if-nez v0, :cond_1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    goto :goto_0

    :cond_1
    :goto_1
    iput-object p2, p0, L㚬/䂻/ᓭ/ಫ/ḓ;->㺴:L㚬/䂻/ᓭ/ಫ/ᆻ;

    iget-object p1, p0, L㚬/䂻/ᓭ/ಫ/ḓ;->ಫ:L㚬/䂻/ᓭ/ಫ/ḓ$உ;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, L㚬/䂻/ᓭ/ಫ/ḓ$உ;->notifyDataSetChanged()V

    :cond_2
    return-void
.end method

.method public 䂻()Landroid/widget/ListAdapter;
    .locals 1

    iget-object v0, p0, L㚬/䂻/ᓭ/ಫ/ḓ;->ಫ:L㚬/䂻/ᓭ/ಫ/ḓ$உ;

    if-nez v0, :cond_0

    new-instance v0, L㚬/䂻/ᓭ/ಫ/ḓ$உ;

    invoke-direct {v0, p0}, L㚬/䂻/ᓭ/ಫ/ḓ$உ;-><init>(L㚬/䂻/ᓭ/ಫ/ḓ;)V

    iput-object v0, p0, L㚬/䂻/ᓭ/ಫ/ḓ;->ಫ:L㚬/䂻/ᓭ/ಫ/ḓ$உ;

    :cond_0
    iget-object v0, p0, L㚬/䂻/ᓭ/ಫ/ḓ;->ಫ:L㚬/䂻/ᓭ/ಫ/ḓ$உ;

    return-object v0
.end method

.method public 䆀(L㚬/䂻/ᓭ/ಫ/ᆻ;L㚬/䂻/ᓭ/ಫ/ㄏ;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
