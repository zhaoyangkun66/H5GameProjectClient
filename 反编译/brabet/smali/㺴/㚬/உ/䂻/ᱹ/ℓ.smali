.class public L㺴/㚬/உ/䂻/ᱹ/ℓ;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public static உ(I)L㺴/㚬/உ/䂻/ᱹ/㺴;
    .locals 1

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    invoke-static {}, L㺴/㚬/உ/䂻/ᱹ/ℓ;->䂻()L㺴/㚬/உ/䂻/ᱹ/㺴;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, L㺴/㚬/உ/䂻/ᱹ/ḓ;

    invoke-direct {p0}, L㺴/㚬/உ/䂻/ᱹ/ḓ;-><init>()V

    return-object p0

    :cond_1
    new-instance p0, L㺴/㚬/உ/䂻/ᱹ/ಫ;

    invoke-direct {p0}, L㺴/㚬/உ/䂻/ᱹ/ಫ;-><init>()V

    return-object p0
.end method

.method public static ḓ(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v1, v0, L㺴/㚬/உ/䂻/ᱹ/ᆻ;

    if-eqz v1, :cond_0

    check-cast v0, L㺴/㚬/உ/䂻/ᱹ/ᆻ;

    invoke-static {p0, v0}, L㺴/㚬/உ/䂻/ᱹ/ℓ;->䆀(Landroid/view/View;L㺴/㚬/உ/䂻/ᱹ/ᆻ;)V

    :cond_0
    return-void
.end method

.method public static 㚬()L㺴/㚬/உ/䂻/ᱹ/䆀;
    .locals 1

    new-instance v0, L㺴/㚬/உ/䂻/ᱹ/䆀;

    invoke-direct {v0}, L㺴/㚬/உ/䂻/ᱹ/䆀;-><init>()V

    return-object v0
.end method

.method public static 㺴(Landroid/view/View;F)V
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    instance-of v0, p0, L㺴/㚬/உ/䂻/ᱹ/ᆻ;

    if-eqz v0, :cond_0

    check-cast p0, L㺴/㚬/உ/䂻/ᱹ/ᆻ;

    invoke-virtual {p0, p1}, L㺴/㚬/உ/䂻/ᱹ/ᆻ;->ⵦ(F)V

    :cond_0
    return-void
.end method

.method public static 䂻()L㺴/㚬/உ/䂻/ᱹ/㺴;
    .locals 1

    new-instance v0, L㺴/㚬/உ/䂻/ᱹ/ಫ;

    invoke-direct {v0}, L㺴/㚬/உ/䂻/ᱹ/ಫ;-><init>()V

    return-object v0
.end method

.method public static 䆀(Landroid/view/View;L㺴/㚬/உ/䂻/ᱹ/ᆻ;)V
    .locals 1

    invoke-virtual {p1}, L㺴/㚬/உ/䂻/ᱹ/ᆻ;->Ԁ()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, L㺴/㚬/உ/䂻/ᾦ/ℓ;->䂻(Landroid/view/View;)F

    move-result p0

    invoke-virtual {p1, p0}, L㺴/㚬/உ/䂻/ᱹ/ᆻ;->ᇿ(F)V

    :cond_0
    return-void
.end method
