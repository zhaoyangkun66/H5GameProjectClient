.class public L㚬/䂻/ᓭ/ḓ;
.super L㚬/䂻/ᓭ/䂻;
.source ""

# interfaces
.implements L㚬/䂻/ᓭ/ಫ/ᆻ$உ;


# instance fields
.field public ᆻ:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field public ḓ:Landroidx/appcompat/widget/ActionBarContextView;

.field public ℓ:Z

.field public ㄏ:L㚬/䂻/ᓭ/ಫ/ᆻ;

.field public 㺴:Landroid/content/Context;

.field public 䆀:L㚬/䂻/ᓭ/䂻$உ;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/appcompat/widget/ActionBarContextView;L㚬/䂻/ᓭ/䂻$உ;Z)V
    .locals 0

    invoke-direct {p0}, L㚬/䂻/ᓭ/䂻;-><init>()V

    iput-object p1, p0, L㚬/䂻/ᓭ/ḓ;->㺴:Landroid/content/Context;

    iput-object p2, p0, L㚬/䂻/ᓭ/ḓ;->ḓ:Landroidx/appcompat/widget/ActionBarContextView;

    iput-object p3, p0, L㚬/䂻/ᓭ/ḓ;->䆀:L㚬/䂻/ᓭ/䂻$உ;

    new-instance p1, L㚬/䂻/ᓭ/ಫ/ᆻ;

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, L㚬/䂻/ᓭ/ಫ/ᆻ;-><init>(Landroid/content/Context;)V

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, L㚬/䂻/ᓭ/ಫ/ᆻ;->ⵦ(I)L㚬/䂻/ᓭ/ಫ/ᆻ;

    iput-object p1, p0, L㚬/䂻/ᓭ/ḓ;->ㄏ:L㚬/䂻/ᓭ/ಫ/ᆻ;

    invoke-virtual {p1, p0}, L㚬/䂻/ᓭ/ಫ/ᆻ;->ἂ(L㚬/䂻/ᓭ/ಫ/ᆻ$உ;)V

    return-void
.end method


# virtual methods
.method public உ(L㚬/䂻/ᓭ/ಫ/ᆻ;Landroid/view/MenuItem;)Z
    .locals 0

    iget-object p1, p0, L㚬/䂻/ᓭ/ḓ;->䆀:L㚬/䂻/ᓭ/䂻$உ;

    invoke-interface {p1, p0, p2}, L㚬/䂻/ᓭ/䂻$உ;->䂻(L㚬/䂻/ᓭ/䂻;Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public ཇ(I)V
    .locals 1

    iget-object v0, p0, L㚬/䂻/ᓭ/ḓ;->㺴:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, L㚬/䂻/ᓭ/ḓ;->ᓭ(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public ᆻ()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, L㚬/䂻/ᓭ/ḓ;->ḓ:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionBarContextView;->getSubtitle()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public ᓭ(Ljava/lang/CharSequence;)V
    .locals 1

    iget-object v0, p0, L㚬/䂻/ᓭ/ḓ;->ḓ:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/ActionBarContextView;->setSubtitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public ḓ()Landroid/view/Menu;
    .locals 1

    iget-object v0, p0, L㚬/䂻/ᓭ/ḓ;->ㄏ:L㚬/䂻/ᓭ/ಫ/ᆻ;

    return-object v0
.end method

.method public ἥ(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, L㚬/䂻/ᓭ/ḓ;->ḓ:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/ActionBarContextView;->setCustomView(Landroid/view/View;)V

    if-eqz p1, :cond_0

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, L㚬/䂻/ᓭ/ḓ;->ᆻ:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public ㄏ()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, L㚬/䂻/ᓭ/ḓ;->ḓ:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionBarContextView;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public 㚬()V
    .locals 2

    iget-boolean v0, p0, L㚬/䂻/ᓭ/ḓ;->ℓ:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, L㚬/䂻/ᓭ/ḓ;->ℓ:Z

    iget-object v0, p0, L㚬/䂻/ᓭ/ḓ;->ḓ:Landroidx/appcompat/widget/ActionBarContextView;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->sendAccessibilityEvent(I)V

    iget-object v0, p0, L㚬/䂻/ᓭ/ḓ;->䆀:L㚬/䂻/ᓭ/䂻$உ;

    invoke-interface {v0, p0}, L㚬/䂻/ᓭ/䂻$உ;->㺴(L㚬/䂻/ᓭ/䂻;)V

    return-void
.end method

.method public 㞘(Ljava/lang/CharSequence;)V
    .locals 1

    iget-object v0, p0, L㚬/䂻/ᓭ/ḓ;->ḓ:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/ActionBarContextView;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public 㧦()V
    .locals 2

    iget-object v0, p0, L㚬/䂻/ᓭ/ḓ;->䆀:L㚬/䂻/ᓭ/䂻$உ;

    iget-object v1, p0, L㚬/䂻/ᓭ/ḓ;->ㄏ:L㚬/䂻/ᓭ/ಫ/ᆻ;

    invoke-interface {v0, p0, v1}, L㚬/䂻/ᓭ/䂻$உ;->உ(L㚬/䂻/ᓭ/䂻;Landroid/view/Menu;)Z

    return-void
.end method

.method public 㭲(Z)V
    .locals 1

    invoke-super {p0, p1}, L㚬/䂻/ᓭ/䂻;->㭲(Z)V

    iget-object v0, p0, L㚬/䂻/ᓭ/ḓ;->ḓ:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/ActionBarContextView;->setTitleOptional(Z)V

    return-void
.end method

.method public 㲝(I)V
    .locals 1

    iget-object v0, p0, L㚬/䂻/ᓭ/ḓ;->㺴:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, L㚬/䂻/ᓭ/ḓ;->㞘(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public 㹖()Z
    .locals 1

    iget-object v0, p0, L㚬/䂻/ᓭ/ḓ;->ḓ:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionBarContextView;->ಫ()Z

    move-result v0

    return v0
.end method

.method public 㺴()Landroid/view/View;
    .locals 1

    iget-object v0, p0, L㚬/䂻/ᓭ/ḓ;->ᆻ:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public 䂻(L㚬/䂻/ᓭ/ಫ/ᆻ;)V
    .locals 0

    invoke-virtual {p0}, L㚬/䂻/ᓭ/ḓ;->㧦()V

    iget-object p1, p0, L㚬/䂻/ᓭ/ḓ;->ḓ:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {p1}, Landroidx/appcompat/widget/ActionBarContextView;->㹖()Z

    return-void
.end method

.method public 䆀()Landroid/view/MenuInflater;
    .locals 2

    new-instance v0, L㚬/䂻/ᓭ/ᆻ;

    iget-object v1, p0, L㚬/䂻/ᓭ/ḓ;->ḓ:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, L㚬/䂻/ᓭ/ᆻ;-><init>(Landroid/content/Context;)V

    return-object v0
.end method
