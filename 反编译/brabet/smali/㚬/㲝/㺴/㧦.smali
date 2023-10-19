.class public L㚬/㲝/㺴/㧦;
.super L㚬/ℓ/ἥ/உ;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        L㚬/㲝/㺴/㧦$உ;
    }
.end annotation


# instance fields
.field public final ḓ:L㚬/㲝/㺴/㧦$உ;

.field public final 㺴:Landroidx/recyclerview/widget/RecyclerView;


# direct methods
.method public constructor <init>(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 1

    invoke-direct {p0}, L㚬/ℓ/ἥ/உ;-><init>()V

    iput-object p1, p0, L㚬/㲝/㺴/㧦;->㺴:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0}, L㚬/㲝/㺴/㧦;->ཇ()L㚬/ℓ/ἥ/உ;

    move-result-object p1

    if-eqz p1, :cond_0

    instance-of v0, p1, L㚬/㲝/㺴/㧦$உ;

    if-eqz v0, :cond_0

    check-cast p1, L㚬/㲝/㺴/㧦$உ;

    goto :goto_0

    :cond_0
    new-instance p1, L㚬/㲝/㺴/㧦$உ;

    invoke-direct {p1, p0}, L㚬/㲝/㺴/㧦$உ;-><init>(L㚬/㲝/㺴/㧦;)V

    :goto_0
    iput-object p1, p0, L㚬/㲝/㺴/㧦;->ḓ:L㚬/㲝/㺴/㧦$உ;

    return-void
.end method


# virtual methods
.method public ಫ(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 0

    invoke-super {p0, p1, p2, p3}, L㚬/ℓ/ἥ/உ;->ಫ(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    invoke-virtual {p0}, L㚬/㲝/㺴/㧦;->ᓭ()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, L㚬/㲝/㺴/㧦;->㺴:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$ᓭ;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, L㚬/㲝/㺴/㧦;->㺴:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$ᓭ;

    move-result-object p1

    invoke-virtual {p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$ᓭ;->ଜ(ILandroid/os/Bundle;)Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public ཇ()L㚬/ℓ/ἥ/உ;
    .locals 1

    iget-object v0, p0, L㚬/㲝/㺴/㧦;->ḓ:L㚬/㲝/㺴/㧦$உ;

    return-object v0
.end method

.method public ᆻ(Landroid/view/View;L㚬/ℓ/ἥ/ᾦ/㚬;)V
    .locals 0

    invoke-super {p0, p1, p2}, L㚬/ℓ/ἥ/உ;->ᆻ(Landroid/view/View;L㚬/ℓ/ἥ/ᾦ/㚬;)V

    invoke-virtual {p0}, L㚬/㲝/㺴/㧦;->ᓭ()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, L㚬/㲝/㺴/㧦;->㺴:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$ᓭ;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, L㚬/㲝/㺴/㧦;->㺴:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$ᓭ;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView$ᓭ;->䉃(L㚬/ℓ/ἥ/ᾦ/㚬;)V

    :cond_0
    return-void
.end method

.method public ᓭ()Z
    .locals 1

    iget-object v0, p0, L㚬/㲝/㺴/㧦;->㺴:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->hasPendingAdapterUpdates()Z

    move-result v0

    return v0
.end method

.method public 䆀(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    invoke-super {p0, p1, p2}, L㚬/ℓ/ἥ/உ;->䆀(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    instance-of v0, p1, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, L㚬/㲝/㺴/㧦;->ᓭ()Z

    move-result v0

    if-nez v0, :cond_0

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$ᓭ;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$ᓭ;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView$ᓭ;->㐱(Landroid/view/accessibility/AccessibilityEvent;)V

    :cond_0
    return-void
.end method
