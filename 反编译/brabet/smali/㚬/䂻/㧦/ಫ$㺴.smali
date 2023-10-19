.class public L㚬/䂻/㧦/ಫ$㺴;
.super L㚬/䂻/ᓭ/䂻;
.source ""

# interfaces
.implements L㚬/䂻/ᓭ/ಫ/ᆻ$உ;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = L㚬/䂻/㧦/ಫ;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "\u3eb4"
.end annotation


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

.field public final ḓ:L㚬/䂻/ᓭ/ಫ/ᆻ;

.field public final synthetic ℓ:L㚬/䂻/㧦/ಫ;

.field public final 㺴:Landroid/content/Context;

.field public 䆀:L㚬/䂻/ᓭ/䂻$உ;


# direct methods
.method public constructor <init>(L㚬/䂻/㧦/ಫ;Landroid/content/Context;L㚬/䂻/ᓭ/䂻$உ;)V
    .locals 0

    iput-object p1, p0, L㚬/䂻/㧦/ಫ$㺴;->ℓ:L㚬/䂻/㧦/ಫ;

    invoke-direct {p0}, L㚬/䂻/ᓭ/䂻;-><init>()V

    iput-object p2, p0, L㚬/䂻/㧦/ಫ$㺴;->㺴:Landroid/content/Context;

    iput-object p3, p0, L㚬/䂻/㧦/ಫ$㺴;->䆀:L㚬/䂻/ᓭ/䂻$உ;

    new-instance p1, L㚬/䂻/ᓭ/ಫ/ᆻ;

    invoke-direct {p1, p2}, L㚬/䂻/ᓭ/ಫ/ᆻ;-><init>(Landroid/content/Context;)V

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, L㚬/䂻/ᓭ/ಫ/ᆻ;->ⵦ(I)L㚬/䂻/ᓭ/ಫ/ᆻ;

    iput-object p1, p0, L㚬/䂻/㧦/ಫ$㺴;->ḓ:L㚬/䂻/ᓭ/ಫ/ᆻ;

    invoke-virtual {p1, p0}, L㚬/䂻/ᓭ/ಫ/ᆻ;->ἂ(L㚬/䂻/ᓭ/ಫ/ᆻ$உ;)V

    return-void
.end method


# virtual methods
.method public உ(L㚬/䂻/ᓭ/ಫ/ᆻ;Landroid/view/MenuItem;)Z
    .locals 0

    iget-object p1, p0, L㚬/䂻/㧦/ಫ$㺴;->䆀:L㚬/䂻/ᓭ/䂻$உ;

    if-eqz p1, :cond_0

    invoke-interface {p1, p0, p2}, L㚬/䂻/ᓭ/䂻$உ;->䂻(L㚬/䂻/ᓭ/䂻;Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public ཇ(I)V
    .locals 1

    iget-object v0, p0, L㚬/䂻/㧦/ಫ$㺴;->ℓ:L㚬/䂻/㧦/ಫ;

    iget-object v0, v0, L㚬/䂻/㧦/ಫ;->உ:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, L㚬/䂻/㧦/ಫ$㺴;->ᓭ(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public ᆻ()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, L㚬/䂻/㧦/ಫ$㺴;->ℓ:L㚬/䂻/㧦/ಫ;

    iget-object v0, v0, L㚬/䂻/㧦/ಫ;->䆀:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionBarContextView;->getSubtitle()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public ᓭ(Ljava/lang/CharSequence;)V
    .locals 1

    iget-object v0, p0, L㚬/䂻/㧦/ಫ$㺴;->ℓ:L㚬/䂻/㧦/ಫ;

    iget-object v0, v0, L㚬/䂻/㧦/ಫ;->䆀:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/ActionBarContextView;->setSubtitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public ḓ()Landroid/view/Menu;
    .locals 1

    iget-object v0, p0, L㚬/䂻/㧦/ಫ$㺴;->ḓ:L㚬/䂻/ᓭ/ಫ/ᆻ;

    return-object v0
.end method

.method public ḙ()Z
    .locals 2

    iget-object v0, p0, L㚬/䂻/㧦/ಫ$㺴;->ḓ:L㚬/䂻/ᓭ/ಫ/ᆻ;

    invoke-virtual {v0}, L㚬/䂻/ᓭ/ಫ/ᆻ;->Ổ()V

    :try_start_0
    iget-object v0, p0, L㚬/䂻/㧦/ಫ$㺴;->䆀:L㚬/䂻/ᓭ/䂻$உ;

    iget-object v1, p0, L㚬/䂻/㧦/ಫ$㺴;->ḓ:L㚬/䂻/ᓭ/ಫ/ᆻ;

    invoke-interface {v0, p0, v1}, L㚬/䂻/ᓭ/䂻$உ;->㚬(L㚬/䂻/ᓭ/䂻;Landroid/view/Menu;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, L㚬/䂻/㧦/ಫ$㺴;->ḓ:L㚬/䂻/ᓭ/ಫ/ᆻ;

    invoke-virtual {v1}, L㚬/䂻/ᓭ/ಫ/ᆻ;->ಇ()V

    return v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, L㚬/䂻/㧦/ಫ$㺴;->ḓ:L㚬/䂻/ᓭ/ಫ/ᆻ;

    invoke-virtual {v1}, L㚬/䂻/ᓭ/ಫ/ᆻ;->ಇ()V

    throw v0
.end method

.method public ἥ(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, L㚬/䂻/㧦/ಫ$㺴;->ℓ:L㚬/䂻/㧦/ಫ;

    iget-object v0, v0, L㚬/䂻/㧦/ಫ;->䆀:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/ActionBarContextView;->setCustomView(Landroid/view/View;)V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, L㚬/䂻/㧦/ಫ$㺴;->ᆻ:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public ㄏ()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, L㚬/䂻/㧦/ಫ$㺴;->ℓ:L㚬/䂻/㧦/ಫ;

    iget-object v0, v0, L㚬/䂻/㧦/ಫ;->䆀:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionBarContextView;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public 㚬()V
    .locals 3

    iget-object v0, p0, L㚬/䂻/㧦/ಫ$㺴;->ℓ:L㚬/䂻/㧦/ಫ;

    iget-object v1, v0, L㚬/䂻/㧦/ಫ;->ಫ:L㚬/䂻/㧦/ಫ$㺴;

    if-eq v1, p0, :cond_0

    return-void

    :cond_0
    iget-boolean v1, v0, L㚬/䂻/㧦/ಫ;->㞘:Z

    iget-boolean v0, v0, L㚬/䂻/㧦/ಫ;->㭲:Z

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, L㚬/䂻/㧦/ಫ;->ม(ZZZ)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, L㚬/䂻/㧦/ಫ$㺴;->ℓ:L㚬/䂻/㧦/ಫ;

    iput-object p0, v0, L㚬/䂻/㧦/ಫ;->㧦:L㚬/䂻/ᓭ/䂻;

    iget-object v1, p0, L㚬/䂻/㧦/ಫ$㺴;->䆀:L㚬/䂻/ᓭ/䂻$உ;

    iput-object v1, v0, L㚬/䂻/㧦/ಫ;->㹖:L㚬/䂻/ᓭ/䂻$உ;

    goto :goto_0

    :cond_1
    iget-object v0, p0, L㚬/䂻/㧦/ಫ$㺴;->䆀:L㚬/䂻/ᓭ/䂻$உ;

    invoke-interface {v0, p0}, L㚬/䂻/ᓭ/䂻$உ;->㺴(L㚬/䂻/ᓭ/䂻;)V

    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, L㚬/䂻/㧦/ಫ$㺴;->䆀:L㚬/䂻/ᓭ/䂻$உ;

    iget-object v1, p0, L㚬/䂻/㧦/ಫ$㺴;->ℓ:L㚬/䂻/㧦/ಫ;

    invoke-virtual {v1, v2}, L㚬/䂻/㧦/ಫ;->㢏(Z)V

    iget-object v1, p0, L㚬/䂻/㧦/ಫ$㺴;->ℓ:L㚬/䂻/㧦/ಫ;

    iget-object v1, v1, L㚬/䂻/㧦/ಫ;->䆀:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v1}, Landroidx/appcompat/widget/ActionBarContextView;->ᆻ()V

    iget-object v1, p0, L㚬/䂻/㧦/ಫ$㺴;->ℓ:L㚬/䂻/㧦/ಫ;

    iget-object v1, v1, L㚬/䂻/㧦/ಫ;->ḓ:L㚬/䂻/ბ/ڈ;

    invoke-interface {v1}, L㚬/䂻/ბ/ڈ;->ἥ()Landroid/view/ViewGroup;

    move-result-object v1

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->sendAccessibilityEvent(I)V

    iget-object v1, p0, L㚬/䂻/㧦/ಫ$㺴;->ℓ:L㚬/䂻/㧦/ಫ;

    iget-object v2, v1, L㚬/䂻/㧦/ಫ;->㚬:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    iget-boolean v1, v1, L㚬/䂻/㧦/ಫ;->㲧:Z

    invoke-virtual {v2, v1}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->setHideOnContentScrollEnabled(Z)V

    iget-object v1, p0, L㚬/䂻/㧦/ಫ$㺴;->ℓ:L㚬/䂻/㧦/ಫ;

    iput-object v0, v1, L㚬/䂻/㧦/ಫ;->ಫ:L㚬/䂻/㧦/ಫ$㺴;

    return-void
.end method

.method public 㞘(Ljava/lang/CharSequence;)V
    .locals 1

    iget-object v0, p0, L㚬/䂻/㧦/ಫ$㺴;->ℓ:L㚬/䂻/㧦/ಫ;

    iget-object v0, v0, L㚬/䂻/㧦/ಫ;->䆀:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/ActionBarContextView;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public 㧦()V
    .locals 2

    iget-object v0, p0, L㚬/䂻/㧦/ಫ$㺴;->ℓ:L㚬/䂻/㧦/ಫ;

    iget-object v0, v0, L㚬/䂻/㧦/ಫ;->ಫ:L㚬/䂻/㧦/ಫ$㺴;

    if-eq v0, p0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, L㚬/䂻/㧦/ಫ$㺴;->ḓ:L㚬/䂻/ᓭ/ಫ/ᆻ;

    invoke-virtual {v0}, L㚬/䂻/ᓭ/ಫ/ᆻ;->Ổ()V

    :try_start_0
    iget-object v0, p0, L㚬/䂻/㧦/ಫ$㺴;->䆀:L㚬/䂻/ᓭ/䂻$உ;

    iget-object v1, p0, L㚬/䂻/㧦/ಫ$㺴;->ḓ:L㚬/䂻/ᓭ/ಫ/ᆻ;

    invoke-interface {v0, p0, v1}, L㚬/䂻/ᓭ/䂻$உ;->உ(L㚬/䂻/ᓭ/䂻;Landroid/view/Menu;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, L㚬/䂻/㧦/ಫ$㺴;->ḓ:L㚬/䂻/ᓭ/ಫ/ᆻ;

    invoke-virtual {v0}, L㚬/䂻/ᓭ/ಫ/ᆻ;->ಇ()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, L㚬/䂻/㧦/ಫ$㺴;->ḓ:L㚬/䂻/ᓭ/ಫ/ᆻ;

    invoke-virtual {v1}, L㚬/䂻/ᓭ/ಫ/ᆻ;->ಇ()V

    throw v0
.end method

.method public 㭲(Z)V
    .locals 1

    invoke-super {p0, p1}, L㚬/䂻/ᓭ/䂻;->㭲(Z)V

    iget-object v0, p0, L㚬/䂻/㧦/ಫ$㺴;->ℓ:L㚬/䂻/㧦/ಫ;

    iget-object v0, v0, L㚬/䂻/㧦/ಫ;->䆀:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/ActionBarContextView;->setTitleOptional(Z)V

    return-void
.end method

.method public 㲝(I)V
    .locals 1

    iget-object v0, p0, L㚬/䂻/㧦/ಫ$㺴;->ℓ:L㚬/䂻/㧦/ಫ;

    iget-object v0, v0, L㚬/䂻/㧦/ಫ;->உ:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, L㚬/䂻/㧦/ಫ$㺴;->㞘(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public 㹖()Z
    .locals 1

    iget-object v0, p0, L㚬/䂻/㧦/ಫ$㺴;->ℓ:L㚬/䂻/㧦/ಫ;

    iget-object v0, v0, L㚬/䂻/㧦/ಫ;->䆀:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionBarContextView;->ಫ()Z

    move-result v0

    return v0
.end method

.method public 㺴()Landroid/view/View;
    .locals 1

    iget-object v0, p0, L㚬/䂻/㧦/ಫ$㺴;->ᆻ:Ljava/lang/ref/WeakReference;

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

    iget-object p1, p0, L㚬/䂻/㧦/ಫ$㺴;->䆀:L㚬/䂻/ᓭ/䂻$உ;

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, L㚬/䂻/㧦/ಫ$㺴;->㧦()V

    iget-object p1, p0, L㚬/䂻/㧦/ಫ$㺴;->ℓ:L㚬/䂻/㧦/ಫ;

    iget-object p1, p1, L㚬/䂻/㧦/ಫ;->䆀:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {p1}, Landroidx/appcompat/widget/ActionBarContextView;->㹖()Z

    return-void
.end method

.method public 䆀()Landroid/view/MenuInflater;
    .locals 2

    new-instance v0, L㚬/䂻/ᓭ/ᆻ;

    iget-object v1, p0, L㚬/䂻/㧦/ಫ$㺴;->㺴:Landroid/content/Context;

    invoke-direct {v0, v1}, L㚬/䂻/ᓭ/ᆻ;-><init>(Landroid/content/Context;)V

    return-object v0
.end method
