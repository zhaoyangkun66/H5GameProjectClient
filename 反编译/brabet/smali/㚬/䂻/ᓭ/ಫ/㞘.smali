.class public L㚬/䂻/ᓭ/ಫ/㞘;
.super L㚬/䂻/ᓭ/ಫ/ᆻ;
.source ""

# interfaces
.implements Landroid/view/SubMenu;


# instance fields
.field public ڈ:L㚬/䂻/ᓭ/ಫ/ㄏ;

.field public ᾦ:L㚬/䂻/ᓭ/ಫ/ᆻ;


# direct methods
.method public constructor <init>(Landroid/content/Context;L㚬/䂻/ᓭ/ಫ/ᆻ;L㚬/䂻/ᓭ/ಫ/ㄏ;)V
    .locals 0

    invoke-direct {p0, p1}, L㚬/䂻/ᓭ/ಫ/ᆻ;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, L㚬/䂻/ᓭ/ಫ/㞘;->ᾦ:L㚬/䂻/ᓭ/ಫ/ᆻ;

    iput-object p3, p0, L㚬/䂻/ᓭ/ಫ/㞘;->ڈ:L㚬/䂻/ᓭ/ಫ/ㄏ;

    return-void
.end method


# virtual methods
.method public getItem()Landroid/view/MenuItem;
    .locals 1

    iget-object v0, p0, L㚬/䂻/ᓭ/ಫ/㞘;->ڈ:L㚬/䂻/ᓭ/ಫ/ㄏ;

    return-object v0
.end method

.method public setGroupDividerEnabled(Z)V
    .locals 1

    iget-object v0, p0, L㚬/䂻/ᓭ/ಫ/㞘;->ᾦ:L㚬/䂻/ᓭ/ಫ/ᆻ;

    invoke-virtual {v0, p1}, L㚬/䂻/ᓭ/ಫ/ᆻ;->setGroupDividerEnabled(Z)V

    return-void
.end method

.method public setHeaderIcon(I)Landroid/view/SubMenu;
    .locals 0

    invoke-super {p0, p1}, L㚬/䂻/ᓭ/ಫ/ᆻ;->㟘(I)L㚬/䂻/ᓭ/ಫ/ᆻ;

    move-object p1, p0

    check-cast p1, Landroid/view/SubMenu;

    return-object p1
.end method

.method public setHeaderIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/SubMenu;
    .locals 0

    invoke-super {p0, p1}, L㚬/䂻/ᓭ/ಫ/ᆻ;->ᣝ(Landroid/graphics/drawable/Drawable;)L㚬/䂻/ᓭ/ಫ/ᆻ;

    move-object p1, p0

    check-cast p1, Landroid/view/SubMenu;

    return-object p1
.end method

.method public setHeaderTitle(I)Landroid/view/SubMenu;
    .locals 0

    invoke-super {p0, p1}, L㚬/䂻/ᓭ/ಫ/ᆻ;->ᣑ(I)L㚬/䂻/ᓭ/ಫ/ᆻ;

    move-object p1, p0

    check-cast p1, Landroid/view/SubMenu;

    return-object p1
.end method

.method public setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/SubMenu;
    .locals 0

    invoke-super {p0, p1}, L㚬/䂻/ᓭ/ಫ/ᆻ;->㲊(Ljava/lang/CharSequence;)L㚬/䂻/ᓭ/ಫ/ᆻ;

    move-object p1, p0

    check-cast p1, Landroid/view/SubMenu;

    return-object p1
.end method

.method public setHeaderView(Landroid/view/View;)Landroid/view/SubMenu;
    .locals 0

    invoke-super {p0, p1}, L㚬/䂻/ᓭ/ಫ/ᆻ;->ᘚ(Landroid/view/View;)L㚬/䂻/ᓭ/ಫ/ᆻ;

    move-object p1, p0

    check-cast p1, Landroid/view/SubMenu;

    return-object p1
.end method

.method public setIcon(I)Landroid/view/SubMenu;
    .locals 1

    iget-object v0, p0, L㚬/䂻/ᓭ/ಫ/㞘;->ڈ:L㚬/䂻/ᓭ/ಫ/ㄏ;

    invoke-virtual {v0, p1}, L㚬/䂻/ᓭ/ಫ/ㄏ;->setIcon(I)Landroid/view/MenuItem;

    return-object p0
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/SubMenu;
    .locals 1

    iget-object v0, p0, L㚬/䂻/ᓭ/ಫ/㞘;->ڈ:L㚬/䂻/ᓭ/ಫ/ㄏ;

    invoke-virtual {v0, p1}, L㚬/䂻/ᓭ/ಫ/ㄏ;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    return-object p0
.end method

.method public setQwertyMode(Z)V
    .locals 1

    iget-object v0, p0, L㚬/䂻/ᓭ/ಫ/㞘;->ᾦ:L㚬/䂻/ᓭ/ಫ/ᆻ;

    invoke-virtual {v0, p1}, L㚬/䂻/ᓭ/ಫ/ᆻ;->setQwertyMode(Z)V

    return-void
.end method

.method public ග()Landroid/view/Menu;
    .locals 1

    iget-object v0, p0, L㚬/䂻/ᓭ/ಫ/㞘;->ᾦ:L㚬/䂻/ᓭ/ಫ/ᆻ;

    return-object v0
.end method

.method public ᰘ()Z
    .locals 1

    iget-object v0, p0, L㚬/䂻/ᓭ/ಫ/㞘;->ᾦ:L㚬/䂻/ᓭ/ಫ/ᆻ;

    invoke-virtual {v0}, L㚬/䂻/ᓭ/ಫ/ᆻ;->ᰘ()Z

    move-result v0

    return v0
.end method

.method public ᱹ()Z
    .locals 1

    iget-object v0, p0, L㚬/䂻/ᓭ/ಫ/㞘;->ᾦ:L㚬/䂻/ᓭ/ಫ/ᆻ;

    invoke-virtual {v0}, L㚬/䂻/ᓭ/ಫ/ᆻ;->ᱹ()Z

    move-result v0

    return v0
.end method

.method public ḙ()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, L㚬/䂻/ᓭ/ಫ/㞘;->ڈ:L㚬/䂻/ᓭ/ಫ/ㄏ;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, L㚬/䂻/ᓭ/ಫ/ㄏ;->getItemId()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    return-object v0

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, L㚬/䂻/ᓭ/ಫ/ᆻ;->ḙ()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public ἂ(L㚬/䂻/ᓭ/ಫ/ᆻ$உ;)V
    .locals 1

    iget-object v0, p0, L㚬/䂻/ᓭ/ಫ/㞘;->ᾦ:L㚬/䂻/ᓭ/ಫ/ᆻ;

    invoke-virtual {v0, p1}, L㚬/䂻/ᓭ/ಫ/ᆻ;->ἂ(L㚬/䂻/ᓭ/ಫ/ᆻ$உ;)V

    return-void
.end method

.method public ℓ(L㚬/䂻/ᓭ/ಫ/ᆻ;Landroid/view/MenuItem;)Z
    .locals 1

    invoke-super {p0, p1, p2}, L㚬/䂻/ᓭ/ಫ/ᆻ;->ℓ(L㚬/䂻/ᓭ/ಫ/ᆻ;Landroid/view/MenuItem;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, L㚬/䂻/ᓭ/ಫ/㞘;->ᾦ:L㚬/䂻/ᓭ/ಫ/ᆻ;

    invoke-virtual {v0, p1, p2}, L㚬/䂻/ᓭ/ಫ/ᆻ;->ℓ(L㚬/䂻/ᓭ/ಫ/ᆻ;Landroid/view/MenuItem;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public 㧦(L㚬/䂻/ᓭ/ಫ/ㄏ;)Z
    .locals 1

    iget-object v0, p0, L㚬/䂻/ᓭ/ಫ/㞘;->ᾦ:L㚬/䂻/ᓭ/ಫ/ᆻ;

    invoke-virtual {v0, p1}, L㚬/䂻/ᓭ/ಫ/ᆻ;->㧦(L㚬/䂻/ᓭ/ಫ/ㄏ;)Z

    move-result p1

    return p1
.end method

.method public 㨃()Z
    .locals 1

    iget-object v0, p0, L㚬/䂻/ᓭ/ಫ/㞘;->ᾦ:L㚬/䂻/ᓭ/ಫ/ᆻ;

    invoke-virtual {v0}, L㚬/䂻/ᓭ/ಫ/ᆻ;->㨃()Z

    move-result v0

    return v0
.end method

.method public 㰫()L㚬/䂻/ᓭ/ಫ/ᆻ;
    .locals 1

    iget-object v0, p0, L㚬/䂻/ᓭ/ಫ/㞘;->ᾦ:L㚬/䂻/ᓭ/ಫ/ᆻ;

    invoke-virtual {v0}, L㚬/䂻/ᓭ/ಫ/ᆻ;->㰫()L㚬/䂻/ᓭ/ಫ/ᆻ;

    move-result-object v0

    return-object v0
.end method

.method public 䆀(L㚬/䂻/ᓭ/ಫ/ㄏ;)Z
    .locals 1

    iget-object v0, p0, L㚬/䂻/ᓭ/ಫ/㞘;->ᾦ:L㚬/䂻/ᓭ/ಫ/ᆻ;

    invoke-virtual {v0, p1}, L㚬/䂻/ᓭ/ಫ/ᆻ;->䆀(L㚬/䂻/ᓭ/ಫ/ㄏ;)Z

    move-result p1

    return p1
.end method
