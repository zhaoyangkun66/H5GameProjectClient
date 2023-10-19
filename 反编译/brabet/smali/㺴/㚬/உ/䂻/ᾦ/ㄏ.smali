.class public L㺴/㚬/உ/䂻/ᾦ/ㄏ;
.super Landroid/widget/ImageButton;
.source ""


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "AppCompatCustomView"
    }
.end annotation


# instance fields
.field public 䂻:I


# virtual methods
.method public final getUserSetVisibility()I
    .locals 1

    iget v0, p0, L㺴/㚬/உ/䂻/ᾦ/ㄏ;->䂻:I

    return v0
.end method

.method public setVisibility(I)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, L㺴/㚬/உ/䂻/ᾦ/ㄏ;->䂻(IZ)V

    return-void
.end method

.method public final 䂻(IZ)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/ImageButton;->setVisibility(I)V

    if-eqz p2, :cond_0

    iput p1, p0, L㺴/㚬/உ/䂻/ᾦ/ㄏ;->䂻:I

    :cond_0
    return-void
.end method
