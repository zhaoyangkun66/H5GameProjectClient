.class public L㚬/䂻/ᓭ/ಫ/㭲;
.super L㚬/䂻/ᓭ/ಫ/ᓭ;
.source ""

# interfaces
.implements Landroid/view/SubMenu;


# instance fields
.field public final ḓ:L㚬/ℓ/ᆻ/உ/㚬;


# direct methods
.method public constructor <init>(Landroid/content/Context;L㚬/ℓ/ᆻ/உ/㚬;)V
    .locals 0

    invoke-direct {p0, p1, p2}, L㚬/䂻/ᓭ/ಫ/ᓭ;-><init>(Landroid/content/Context;L㚬/ℓ/ᆻ/உ/உ;)V

    iput-object p2, p0, L㚬/䂻/ᓭ/ಫ/㭲;->ḓ:L㚬/ℓ/ᆻ/உ/㚬;

    return-void
.end method


# virtual methods
.method public clearHeader()V
    .locals 1

    iget-object v0, p0, L㚬/䂻/ᓭ/ಫ/㭲;->ḓ:L㚬/ℓ/ᆻ/உ/㚬;

    invoke-interface {v0}, Landroid/view/SubMenu;->clearHeader()V

    return-void
.end method

.method public getItem()Landroid/view/MenuItem;
    .locals 1

    iget-object v0, p0, L㚬/䂻/ᓭ/ಫ/㭲;->ḓ:L㚬/ℓ/ᆻ/உ/㚬;

    invoke-interface {v0}, Landroid/view/SubMenu;->getItem()Landroid/view/MenuItem;

    move-result-object v0

    invoke-virtual {p0, v0}, L㚬/䂻/ᓭ/ಫ/㚬;->㚬(Landroid/view/MenuItem;)Landroid/view/MenuItem;

    move-result-object v0

    return-object v0
.end method

.method public setHeaderIcon(I)Landroid/view/SubMenu;
    .locals 1

    iget-object v0, p0, L㚬/䂻/ᓭ/ಫ/㭲;->ḓ:L㚬/ℓ/ᆻ/உ/㚬;

    invoke-interface {v0, p1}, Landroid/view/SubMenu;->setHeaderIcon(I)Landroid/view/SubMenu;

    return-object p0
.end method

.method public setHeaderIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/SubMenu;
    .locals 1

    iget-object v0, p0, L㚬/䂻/ᓭ/ಫ/㭲;->ḓ:L㚬/ℓ/ᆻ/உ/㚬;

    invoke-interface {v0, p1}, Landroid/view/SubMenu;->setHeaderIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/SubMenu;

    return-object p0
.end method

.method public setHeaderTitle(I)Landroid/view/SubMenu;
    .locals 1

    iget-object v0, p0, L㚬/䂻/ᓭ/ಫ/㭲;->ḓ:L㚬/ℓ/ᆻ/உ/㚬;

    invoke-interface {v0, p1}, Landroid/view/SubMenu;->setHeaderTitle(I)Landroid/view/SubMenu;

    return-object p0
.end method

.method public setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/SubMenu;
    .locals 1

    iget-object v0, p0, L㚬/䂻/ᓭ/ಫ/㭲;->ḓ:L㚬/ℓ/ᆻ/உ/㚬;

    invoke-interface {v0, p1}, Landroid/view/SubMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/SubMenu;

    return-object p0
.end method

.method public setHeaderView(Landroid/view/View;)Landroid/view/SubMenu;
    .locals 1

    iget-object v0, p0, L㚬/䂻/ᓭ/ಫ/㭲;->ḓ:L㚬/ℓ/ᆻ/உ/㚬;

    invoke-interface {v0, p1}, Landroid/view/SubMenu;->setHeaderView(Landroid/view/View;)Landroid/view/SubMenu;

    return-object p0
.end method

.method public setIcon(I)Landroid/view/SubMenu;
    .locals 1

    iget-object v0, p0, L㚬/䂻/ᓭ/ಫ/㭲;->ḓ:L㚬/ℓ/ᆻ/உ/㚬;

    invoke-interface {v0, p1}, Landroid/view/SubMenu;->setIcon(I)Landroid/view/SubMenu;

    return-object p0
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/SubMenu;
    .locals 1

    iget-object v0, p0, L㚬/䂻/ᓭ/ಫ/㭲;->ḓ:L㚬/ℓ/ᆻ/உ/㚬;

    invoke-interface {v0, p1}, Landroid/view/SubMenu;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/SubMenu;

    return-object p0
.end method
