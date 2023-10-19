.class public L㺴/㚬/உ/䂻/㨃/உ;
.super Landroid/graphics/drawable/Drawable;
.source ""

# interfaces
.implements L㺴/㚬/உ/䂻/ᱹ/ཇ;
.implements L㚬/ℓ/䆀/㹖/䂻;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        L㺴/㚬/உ/䂻/㨃/உ$䂻;
    }
.end annotation


# instance fields
.field public 䂻:L㺴/㚬/உ/䂻/㨃/உ$䂻;


# direct methods
.method public constructor <init>(L㺴/㚬/உ/䂻/ᱹ/㧦;)V
    .locals 2

    new-instance v0, L㺴/㚬/உ/䂻/㨃/உ$䂻;

    new-instance v1, L㺴/㚬/உ/䂻/ᱹ/ᆻ;

    invoke-direct {v1, p1}, L㺴/㚬/உ/䂻/ᱹ/ᆻ;-><init>(L㺴/㚬/உ/䂻/ᱹ/㧦;)V

    invoke-direct {v0, v1}, L㺴/㚬/உ/䂻/㨃/உ$䂻;-><init>(L㺴/㚬/உ/䂻/ᱹ/ᆻ;)V

    invoke-direct {p0, v0}, L㺴/㚬/உ/䂻/㨃/உ;-><init>(L㺴/㚬/உ/䂻/㨃/உ$䂻;)V

    return-void
.end method

.method public constructor <init>(L㺴/㚬/உ/䂻/㨃/உ$䂻;)V
    .locals 0

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    iput-object p1, p0, L㺴/㚬/உ/䂻/㨃/உ;->䂻:L㺴/㚬/உ/䂻/㨃/உ$䂻;

    return-void
.end method

.method public synthetic constructor <init>(L㺴/㚬/உ/䂻/㨃/உ$䂻;L㺴/㚬/உ/䂻/㨃/உ$உ;)V
    .locals 0

    invoke-direct {p0, p1}, L㺴/㚬/உ/䂻/㨃/உ;-><init>(L㺴/㚬/உ/䂻/㨃/உ$䂻;)V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 2

    iget-object v0, p0, L㺴/㚬/உ/䂻/㨃/உ;->䂻:L㺴/㚬/உ/䂻/㨃/உ$䂻;

    iget-boolean v1, v0, L㺴/㚬/உ/䂻/㨃/உ$䂻;->䂻:Z

    if-eqz v1, :cond_0

    iget-object v0, v0, L㺴/㚬/உ/䂻/㨃/உ$䂻;->உ:L㺴/㚬/உ/䂻/ᱹ/ᆻ;

    invoke-virtual {v0, p1}, L㺴/㚬/உ/䂻/ᱹ/ᆻ;->draw(Landroid/graphics/Canvas;)V

    :cond_0
    return-void
.end method

.method public getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .locals 1

    iget-object v0, p0, L㺴/㚬/உ/䂻/㨃/உ;->䂻:L㺴/㚬/உ/䂻/㨃/உ$䂻;

    return-object v0
.end method

.method public getOpacity()I
    .locals 1

    iget-object v0, p0, L㺴/㚬/உ/䂻/㨃/உ;->䂻:L㺴/㚬/உ/䂻/㨃/உ$䂻;

    iget-object v0, v0, L㺴/㚬/உ/䂻/㨃/உ$䂻;->உ:L㺴/㚬/உ/䂻/ᱹ/ᆻ;

    invoke-virtual {v0}, L㺴/㚬/உ/䂻/ᱹ/ᆻ;->getOpacity()I

    move-result v0

    return v0
.end method

.method public isStateful()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic mutate()Landroid/graphics/drawable/Drawable;
    .locals 0

    invoke-virtual {p0}, L㺴/㚬/உ/䂻/㨃/உ;->உ()L㺴/㚬/உ/䂻/㨃/உ;

    return-object p0
.end method

.method public onBoundsChange(Landroid/graphics/Rect;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    iget-object v0, p0, L㺴/㚬/உ/䂻/㨃/உ;->䂻:L㺴/㚬/உ/䂻/㨃/உ$䂻;

    iget-object v0, v0, L㺴/㚬/உ/䂻/㨃/உ$䂻;->உ:L㺴/㚬/உ/䂻/ᱹ/ᆻ;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    return-void
.end method

.method public onStateChange([I)Z
    .locals 4

    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onStateChange([I)Z

    move-result v0

    iget-object v1, p0, L㺴/㚬/உ/䂻/㨃/உ;->䂻:L㺴/㚬/உ/䂻/㨃/உ$䂻;

    iget-object v1, v1, L㺴/㚬/உ/䂻/㨃/உ$䂻;->உ:L㺴/㚬/உ/䂻/ᱹ/ᆻ;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-static {p1}, L㺴/㚬/உ/䂻/㨃/䂻;->䂻([I)Z

    move-result p1

    iget-object v1, p0, L㺴/㚬/உ/䂻/㨃/உ;->䂻:L㺴/㚬/உ/䂻/㨃/உ$䂻;

    iget-boolean v3, v1, L㺴/㚬/உ/䂻/㨃/உ$䂻;->䂻:Z

    if-eq v3, p1, :cond_1

    iput-boolean p1, v1, L㺴/㚬/உ/䂻/㨃/உ$䂻;->䂻:Z

    goto :goto_0

    :cond_1
    move v2, v0

    :goto_0
    return v2
.end method

.method public setAlpha(I)V
    .locals 1

    iget-object v0, p0, L㺴/㚬/உ/䂻/㨃/உ;->䂻:L㺴/㚬/உ/䂻/㨃/உ$䂻;

    iget-object v0, v0, L㺴/㚬/உ/䂻/㨃/உ$䂻;->உ:L㺴/㚬/உ/䂻/ᱹ/ᆻ;

    invoke-virtual {v0, p1}, L㺴/㚬/உ/䂻/ᱹ/ᆻ;->setAlpha(I)V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    iget-object v0, p0, L㺴/㚬/உ/䂻/㨃/உ;->䂻:L㺴/㚬/உ/䂻/㨃/உ$䂻;

    iget-object v0, v0, L㺴/㚬/உ/䂻/㨃/உ$䂻;->உ:L㺴/㚬/உ/䂻/ᱹ/ᆻ;

    invoke-virtual {v0, p1}, L㺴/㚬/உ/䂻/ᱹ/ᆻ;->setColorFilter(Landroid/graphics/ColorFilter;)V

    return-void
.end method

.method public setShapeAppearanceModel(L㺴/㚬/உ/䂻/ᱹ/㧦;)V
    .locals 1

    iget-object v0, p0, L㺴/㚬/உ/䂻/㨃/உ;->䂻:L㺴/㚬/உ/䂻/㨃/உ$䂻;

    iget-object v0, v0, L㺴/㚬/உ/䂻/㨃/உ$䂻;->உ:L㺴/㚬/உ/䂻/ᱹ/ᆻ;

    invoke-virtual {v0, p1}, L㺴/㚬/உ/䂻/ᱹ/ᆻ;->setShapeAppearanceModel(L㺴/㚬/உ/䂻/ᱹ/㧦;)V

    return-void
.end method

.method public setTint(I)V
    .locals 1

    iget-object v0, p0, L㺴/㚬/உ/䂻/㨃/உ;->䂻:L㺴/㚬/உ/䂻/㨃/உ$䂻;

    iget-object v0, v0, L㺴/㚬/உ/䂻/㨃/உ$䂻;->உ:L㺴/㚬/உ/䂻/ᱹ/ᆻ;

    invoke-virtual {v0, p1}, L㺴/㚬/உ/䂻/ᱹ/ᆻ;->setTint(I)V

    return-void
.end method

.method public setTintList(Landroid/content/res/ColorStateList;)V
    .locals 1

    iget-object v0, p0, L㺴/㚬/உ/䂻/㨃/உ;->䂻:L㺴/㚬/உ/䂻/㨃/உ$䂻;

    iget-object v0, v0, L㺴/㚬/உ/䂻/㨃/உ$䂻;->உ:L㺴/㚬/உ/䂻/ᱹ/ᆻ;

    invoke-virtual {v0, p1}, L㺴/㚬/உ/䂻/ᱹ/ᆻ;->setTintList(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1

    iget-object v0, p0, L㺴/㚬/உ/䂻/㨃/உ;->䂻:L㺴/㚬/உ/䂻/㨃/உ$䂻;

    iget-object v0, v0, L㺴/㚬/உ/䂻/㨃/உ$䂻;->உ:L㺴/㚬/உ/䂻/ᱹ/ᆻ;

    invoke-virtual {v0, p1}, L㺴/㚬/உ/䂻/ᱹ/ᆻ;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    return-void
.end method

.method public உ()L㺴/㚬/உ/䂻/㨃/உ;
    .locals 2

    new-instance v0, L㺴/㚬/உ/䂻/㨃/உ$䂻;

    iget-object v1, p0, L㺴/㚬/உ/䂻/㨃/உ;->䂻:L㺴/㚬/உ/䂻/㨃/உ$䂻;

    invoke-direct {v0, v1}, L㺴/㚬/உ/䂻/㨃/உ$䂻;-><init>(L㺴/㚬/உ/䂻/㨃/உ$䂻;)V

    iput-object v0, p0, L㺴/㚬/உ/䂻/㨃/உ;->䂻:L㺴/㚬/உ/䂻/㨃/உ$䂻;

    return-object p0
.end method
