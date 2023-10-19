.class public final L㚬/ℓ/ἥ/ℓ;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public static உ(Landroid/view/MenuItem;L㚬/ℓ/ἥ/䂻;)Landroid/view/MenuItem;
    .locals 1

    instance-of v0, p0, L㚬/ℓ/ᆻ/உ/䂻;

    if-eqz v0, :cond_0

    check-cast p0, L㚬/ℓ/ᆻ/உ/䂻;

    invoke-interface {p0, p1}, L㚬/ℓ/ᆻ/உ/䂻;->உ(L㚬/ℓ/ἥ/䂻;)L㚬/ℓ/ᆻ/உ/䂻;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p1, "MenuItemCompat"

    const-string v0, "setActionProvider: item does not implement SupportMenuItem; ignoring"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0
.end method

.method public static ᆻ(Landroid/view/MenuItem;Ljava/lang/CharSequence;)V
    .locals 2

    instance-of v0, p0, L㚬/ℓ/ᆻ/உ/䂻;

    if-eqz v0, :cond_0

    check-cast p0, L㚬/ℓ/ᆻ/உ/䂻;

    invoke-interface {p0, p1}, L㚬/ℓ/ᆻ/உ/䂻;->setTooltipText(Ljava/lang/CharSequence;)L㚬/ℓ/ᆻ/உ/䂻;

    goto :goto_0

    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_1

    invoke-interface {p0, p1}, Landroid/view/MenuItem;->setTooltipText(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    :cond_1
    :goto_0
    return-void
.end method

.method public static ḓ(Landroid/view/MenuItem;Landroid/graphics/PorterDuff$Mode;)V
    .locals 2

    instance-of v0, p0, L㚬/ℓ/ᆻ/உ/䂻;

    if-eqz v0, :cond_0

    check-cast p0, L㚬/ℓ/ᆻ/உ/䂻;

    invoke-interface {p0, p1}, L㚬/ℓ/ᆻ/உ/䂻;->setIconTintMode(Landroid/graphics/PorterDuff$Mode;)Landroid/view/MenuItem;

    goto :goto_0

    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_1

    invoke-interface {p0, p1}, Landroid/view/MenuItem;->setIconTintMode(Landroid/graphics/PorterDuff$Mode;)Landroid/view/MenuItem;

    :cond_1
    :goto_0
    return-void
.end method

.method public static 㚬(Landroid/view/MenuItem;Ljava/lang/CharSequence;)V
    .locals 2

    instance-of v0, p0, L㚬/ℓ/ᆻ/உ/䂻;

    if-eqz v0, :cond_0

    check-cast p0, L㚬/ℓ/ᆻ/உ/䂻;

    invoke-interface {p0, p1}, L㚬/ℓ/ᆻ/உ/䂻;->setContentDescription(Ljava/lang/CharSequence;)L㚬/ℓ/ᆻ/உ/䂻;

    goto :goto_0

    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_1

    invoke-interface {p0, p1}, Landroid/view/MenuItem;->setContentDescription(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    :cond_1
    :goto_0
    return-void
.end method

.method public static 㺴(Landroid/view/MenuItem;Landroid/content/res/ColorStateList;)V
    .locals 2

    instance-of v0, p0, L㚬/ℓ/ᆻ/உ/䂻;

    if-eqz v0, :cond_0

    check-cast p0, L㚬/ℓ/ᆻ/உ/䂻;

    invoke-interface {p0, p1}, L㚬/ℓ/ᆻ/உ/䂻;->setIconTintList(Landroid/content/res/ColorStateList;)Landroid/view/MenuItem;

    goto :goto_0

    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_1

    invoke-interface {p0, p1}, Landroid/view/MenuItem;->setIconTintList(Landroid/content/res/ColorStateList;)Landroid/view/MenuItem;

    :cond_1
    :goto_0
    return-void
.end method

.method public static 䂻(Landroid/view/MenuItem;CI)V
    .locals 2

    instance-of v0, p0, L㚬/ℓ/ᆻ/உ/䂻;

    if-eqz v0, :cond_0

    check-cast p0, L㚬/ℓ/ᆻ/உ/䂻;

    invoke-interface {p0, p1, p2}, L㚬/ℓ/ᆻ/உ/䂻;->setAlphabeticShortcut(CI)Landroid/view/MenuItem;

    goto :goto_0

    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_1

    invoke-interface {p0, p1, p2}, Landroid/view/MenuItem;->setAlphabeticShortcut(CI)Landroid/view/MenuItem;

    :cond_1
    :goto_0
    return-void
.end method

.method public static 䆀(Landroid/view/MenuItem;CI)V
    .locals 2

    instance-of v0, p0, L㚬/ℓ/ᆻ/உ/䂻;

    if-eqz v0, :cond_0

    check-cast p0, L㚬/ℓ/ᆻ/உ/䂻;

    invoke-interface {p0, p1, p2}, L㚬/ℓ/ᆻ/உ/䂻;->setNumericShortcut(CI)Landroid/view/MenuItem;

    goto :goto_0

    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_1

    invoke-interface {p0, p1, p2}, Landroid/view/MenuItem;->setNumericShortcut(CI)Landroid/view/MenuItem;

    :cond_1
    :goto_0
    return-void
.end method
