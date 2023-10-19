.class public L㺴/㚬/உ/䂻/㖪/உ;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public static உ(Landroid/content/Context;II)I
    .locals 0

    invoke-static {p0, p1}, L㺴/㚬/உ/䂻/ש/䂻;->உ(Landroid/content/Context;I)Landroid/util/TypedValue;

    move-result-object p0

    if-eqz p0, :cond_0

    iget p0, p0, Landroid/util/TypedValue;->data:I

    return p0

    :cond_0
    return p2
.end method

.method public static ḓ(II)I
    .locals 0

    invoke-static {p1, p0}, L㚬/ℓ/䆀/உ;->䂻(II)I

    move-result p0

    return p0
.end method

.method public static 㚬(Landroid/view/View;I)I
    .locals 0

    invoke-static {p0, p1}, L㺴/㚬/உ/䂻/ש/䂻;->㺴(Landroid/view/View;I)I

    move-result p0

    return p0
.end method

.method public static 㺴(Landroid/view/View;II)I
    .locals 0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, p1, p2}, L㺴/㚬/உ/䂻/㖪/உ;->உ(Landroid/content/Context;II)I

    move-result p0

    return p0
.end method

.method public static 䂻(Landroid/content/Context;ILjava/lang/String;)I
    .locals 0

    invoke-static {p0, p1, p2}, L㺴/㚬/உ/䂻/ש/䂻;->㚬(Landroid/content/Context;ILjava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static 䆀(IIF)I
    .locals 1

    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    int-to-float v0, v0

    mul-float v0, v0, p2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result p2

    invoke-static {p1, p2}, L㚬/ℓ/䆀/உ;->㺴(II)I

    move-result p1

    invoke-static {p0, p1}, L㺴/㚬/உ/䂻/㖪/உ;->ḓ(II)I

    move-result p0

    return p0
.end method
