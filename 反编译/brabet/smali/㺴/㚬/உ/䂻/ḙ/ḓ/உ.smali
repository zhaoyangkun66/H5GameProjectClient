.class public L㺴/㚬/உ/䂻/ḙ/ḓ/உ;
.super L㺴/㚬/உ/䂻/㲝/உ;
.source ""

# interfaces
.implements L㺴/㚬/உ/䂻/ḙ/㺴;


# instance fields
.field public final 㭲:L㺴/㚬/உ/䂻/ḙ/㚬;


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 1

    iget-object v0, p0, L㺴/㚬/உ/䂻/ḙ/ḓ/உ;->㭲:L㺴/㚬/உ/䂻/ḙ/㚬;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, L㺴/㚬/உ/䂻/ḙ/㚬;->㚬(Landroid/graphics/Canvas;)V

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->draw(Landroid/graphics/Canvas;)V

    :goto_0
    return-void
.end method

.method public getCircularRevealOverlayDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, L㺴/㚬/உ/䂻/ḙ/ḓ/உ;->㭲:L㺴/㚬/உ/䂻/ḙ/㚬;

    invoke-virtual {v0}, L㺴/㚬/உ/䂻/ḙ/㚬;->㺴()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getCircularRevealScrimColor()I
    .locals 1

    iget-object v0, p0, L㺴/㚬/உ/䂻/ḙ/ḓ/உ;->㭲:L㺴/㚬/உ/䂻/ḙ/㚬;

    invoke-virtual {v0}, L㺴/㚬/உ/䂻/ḙ/㚬;->ḓ()I

    move-result v0

    return v0
.end method

.method public getRevealInfo()L㺴/㚬/உ/䂻/ḙ/㺴$ḓ;
    .locals 1

    iget-object v0, p0, L㺴/㚬/உ/䂻/ḙ/ḓ/உ;->㭲:L㺴/㚬/உ/䂻/ḙ/㚬;

    invoke-virtual {v0}, L㺴/㚬/உ/䂻/ḙ/㚬;->䆀()L㺴/㚬/உ/䂻/ḙ/㺴$ḓ;

    move-result-object v0

    return-object v0
.end method

.method public isOpaque()Z
    .locals 1

    iget-object v0, p0, L㺴/㚬/உ/䂻/ḙ/ḓ/உ;->㭲:L㺴/㚬/உ/䂻/ḙ/㚬;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, L㺴/㚬/உ/䂻/ḙ/㚬;->ᆻ()Z

    move-result v0

    return v0

    :cond_0
    invoke-super {p0}, Landroid/widget/FrameLayout;->isOpaque()Z

    move-result v0

    return v0
.end method

.method public setCircularRevealOverlayDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    iget-object v0, p0, L㺴/㚬/உ/䂻/ḙ/ḓ/உ;->㭲:L㺴/㚬/உ/䂻/ḙ/㚬;

    invoke-virtual {v0, p1}, L㺴/㚬/உ/䂻/ḙ/㚬;->ℓ(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setCircularRevealScrimColor(I)V
    .locals 1

    iget-object v0, p0, L㺴/㚬/உ/䂻/ḙ/ḓ/உ;->㭲:L㺴/㚬/உ/䂻/ḙ/㚬;

    invoke-virtual {v0, p1}, L㺴/㚬/உ/䂻/ḙ/㚬;->ㄏ(I)V

    return-void
.end method

.method public setRevealInfo(L㺴/㚬/உ/䂻/ḙ/㺴$ḓ;)V
    .locals 1

    iget-object v0, p0, L㺴/㚬/உ/䂻/ḙ/ḓ/உ;->㭲:L㺴/㚬/உ/䂻/ḙ/㚬;

    invoke-virtual {v0, p1}, L㺴/㚬/உ/䂻/ḙ/㚬;->ಫ(L㺴/㚬/உ/䂻/ḙ/㺴$ḓ;)V

    return-void
.end method

.method public உ()V
    .locals 1

    iget-object v0, p0, L㺴/㚬/உ/䂻/ḙ/ḓ/உ;->㭲:L㺴/㚬/உ/䂻/ḙ/㚬;

    invoke-virtual {v0}, L㺴/㚬/உ/䂻/ḙ/㚬;->உ()V

    return-void
.end method

.method public 䂻()V
    .locals 1

    iget-object v0, p0, L㺴/㚬/உ/䂻/ḙ/ḓ/உ;->㭲:L㺴/㚬/உ/䂻/ḙ/㚬;

    invoke-virtual {v0}, L㺴/㚬/உ/䂻/ḙ/㚬;->䂻()V

    return-void
.end method
