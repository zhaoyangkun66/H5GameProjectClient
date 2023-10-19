.class public L㚬/䂻/ᓭ/ಫ/ಫ$䂻;
.super L㚬/䂻/ᓭ/ಫ/ಫ$உ;
.source ""

# interfaces
.implements Landroid/view/ActionProvider$VisibilityListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = L㚬/䂻/ᓭ/ಫ/ಫ;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "\u40bb"
.end annotation


# instance fields
.field public 㺴:L㚬/ℓ/ἥ/䂻$䂻;


# direct methods
.method public constructor <init>(L㚬/䂻/ᓭ/ಫ/ಫ;Landroid/content/Context;Landroid/view/ActionProvider;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, L㚬/䂻/ᓭ/ಫ/ಫ$உ;-><init>(L㚬/䂻/ᓭ/ಫ/ಫ;Landroid/content/Context;Landroid/view/ActionProvider;)V

    return-void
.end method


# virtual methods
.method public onActionProviderVisibilityChanged(Z)V
    .locals 1

    iget-object v0, p0, L㚬/䂻/ᓭ/ಫ/ಫ$䂻;->㺴:L㚬/ℓ/ἥ/䂻$䂻;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, L㚬/ℓ/ἥ/䂻$䂻;->onActionProviderVisibilityChanged(Z)V

    :cond_0
    return-void
.end method

.method public ಫ(L㚬/ℓ/ἥ/䂻$䂻;)V
    .locals 1

    iput-object p1, p0, L㚬/䂻/ᓭ/ಫ/ಫ$䂻;->㺴:L㚬/ℓ/ἥ/䂻$䂻;

    iget-object v0, p0, L㚬/䂻/ᓭ/ಫ/ಫ$உ;->䂻:Landroid/view/ActionProvider;

    if-eqz p1, :cond_0

    move-object p1, p0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/ActionProvider;->setVisibilityListener(Landroid/view/ActionProvider$VisibilityListener;)V

    return-void
.end method

.method public ᆻ()Z
    .locals 1

    iget-object v0, p0, L㚬/䂻/ᓭ/ಫ/ಫ$உ;->䂻:Landroid/view/ActionProvider;

    invoke-virtual {v0}, Landroid/view/ActionProvider;->overridesItemVisibility()Z

    move-result v0

    return v0
.end method

.method public 㺴(Landroid/view/MenuItem;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, L㚬/䂻/ᓭ/ಫ/ಫ$உ;->䂻:Landroid/view/ActionProvider;

    invoke-virtual {v0, p1}, Landroid/view/ActionProvider;->onCreateActionView(Landroid/view/MenuItem;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public 䂻()Z
    .locals 1

    iget-object v0, p0, L㚬/䂻/ᓭ/ಫ/ಫ$உ;->䂻:Landroid/view/ActionProvider;

    invoke-virtual {v0}, Landroid/view/ActionProvider;->isVisible()Z

    move-result v0

    return v0
.end method
