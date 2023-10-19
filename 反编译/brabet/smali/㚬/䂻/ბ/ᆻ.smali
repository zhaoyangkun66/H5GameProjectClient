.class public L㚬/䂻/ბ/ᆻ;
.super Landroid/widget/CheckBox;
.source ""

# interfaces
.implements L㚬/ℓ/ཇ/ಫ;
.implements L㚬/ℓ/ἥ/㞘;


# instance fields
.field public final 㚬:L㚬/䂻/ბ/ḓ;

.field public final 㺴:L㚬/䂻/ბ/㲧;

.field public final 䂻:L㚬/䂻/ბ/ㄏ;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    sget v0, L㚬/䂻/உ;->㞘:I

    invoke-direct {p0, p1, p2, v0}, L㚬/䂻/ბ/ᆻ;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-static {p1}, L㚬/䂻/ბ/ⵦ;->䂻(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p1, L㚬/䂻/ბ/ㄏ;

    invoke-direct {p1, p0}, L㚬/䂻/ბ/ㄏ;-><init>(Landroid/widget/CompoundButton;)V

    iput-object p1, p0, L㚬/䂻/ბ/ᆻ;->䂻:L㚬/䂻/ბ/ㄏ;

    invoke-virtual {p1, p2, p3}, L㚬/䂻/ბ/ㄏ;->ḓ(Landroid/util/AttributeSet;I)V

    new-instance p1, L㚬/䂻/ბ/ḓ;

    invoke-direct {p1, p0}, L㚬/䂻/ბ/ḓ;-><init>(Landroid/view/View;)V

    iput-object p1, p0, L㚬/䂻/ბ/ᆻ;->㚬:L㚬/䂻/ბ/ḓ;

    invoke-virtual {p1, p2, p3}, L㚬/䂻/ბ/ḓ;->ḓ(Landroid/util/AttributeSet;I)V

    new-instance p1, L㚬/䂻/ბ/㲧;

    invoke-direct {p1, p0}, L㚬/䂻/ბ/㲧;-><init>(Landroid/widget/TextView;)V

    iput-object p1, p0, L㚬/䂻/ბ/ᆻ;->㺴:L㚬/䂻/ბ/㲧;

    invoke-virtual {p1, p2, p3}, L㚬/䂻/ბ/㲧;->ἥ(Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public drawableStateChanged()V
    .locals 1

    invoke-super {p0}, Landroid/widget/CheckBox;->drawableStateChanged()V

    iget-object v0, p0, L㚬/䂻/ბ/ᆻ;->㚬:L㚬/䂻/ბ/ḓ;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, L㚬/䂻/ბ/ḓ;->䂻()V

    :cond_0
    iget-object v0, p0, L㚬/䂻/ბ/ᆻ;->㺴:L㚬/䂻/ბ/㲧;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, L㚬/䂻/ბ/㲧;->䂻()V

    :cond_1
    return-void
.end method

.method public getCompoundPaddingLeft()I
    .locals 2

    invoke-super {p0}, Landroid/widget/CheckBox;->getCompoundPaddingLeft()I

    move-result v0

    iget-object v1, p0, L㚬/䂻/ბ/ᆻ;->䂻:L㚬/䂻/ბ/ㄏ;

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, L㚬/䂻/ბ/ㄏ;->䂻(I)I

    move-result v0

    :cond_0
    return v0
.end method

.method public getSupportBackgroundTintList()Landroid/content/res/ColorStateList;
    .locals 1

    iget-object v0, p0, L㚬/䂻/ბ/ᆻ;->㚬:L㚬/䂻/ბ/ḓ;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, L㚬/䂻/ბ/ḓ;->㚬()Landroid/content/res/ColorStateList;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getSupportBackgroundTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 1

    iget-object v0, p0, L㚬/䂻/ბ/ᆻ;->㚬:L㚬/䂻/ბ/ḓ;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, L㚬/䂻/ბ/ḓ;->㺴()Landroid/graphics/PorterDuff$Mode;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getSupportButtonTintList()Landroid/content/res/ColorStateList;
    .locals 1

    iget-object v0, p0, L㚬/䂻/ბ/ᆻ;->䂻:L㚬/䂻/ბ/ㄏ;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, L㚬/䂻/ბ/ㄏ;->㚬()Landroid/content/res/ColorStateList;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getSupportButtonTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 1

    iget-object v0, p0, L㚬/䂻/ბ/ᆻ;->䂻:L㚬/䂻/ბ/ㄏ;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, L㚬/䂻/ბ/ㄏ;->㺴()Landroid/graphics/PorterDuff$Mode;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/CheckBox;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, L㚬/䂻/ბ/ᆻ;->㚬:L㚬/䂻/ბ/ḓ;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, L㚬/䂻/ბ/ḓ;->䆀(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public setBackgroundResource(I)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/CheckBox;->setBackgroundResource(I)V

    iget-object v0, p0, L㚬/䂻/ბ/ᆻ;->㚬:L㚬/䂻/ბ/ḓ;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, L㚬/䂻/ბ/ḓ;->ᆻ(I)V

    :cond_0
    return-void
.end method

.method public setButtonDrawable(I)V
    .locals 1

    invoke-virtual {p0}, Landroid/widget/CheckBox;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, L㚬/䂻/㹖/உ/உ;->㺴(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, L㚬/䂻/ბ/ᆻ;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setButtonDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/CheckBox;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, L㚬/䂻/ბ/ᆻ;->䂻:L㚬/䂻/ბ/ㄏ;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, L㚬/䂻/ბ/ㄏ;->䆀()V

    :cond_0
    return-void
.end method

.method public setSupportBackgroundTintList(Landroid/content/res/ColorStateList;)V
    .locals 1

    iget-object v0, p0, L㚬/䂻/ბ/ᆻ;->㚬:L㚬/䂻/ბ/ḓ;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, L㚬/䂻/ბ/ḓ;->ㄏ(Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method

.method public setSupportBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1

    iget-object v0, p0, L㚬/䂻/ბ/ᆻ;->㚬:L㚬/䂻/ბ/ḓ;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, L㚬/䂻/ბ/ḓ;->ಫ(Landroid/graphics/PorterDuff$Mode;)V

    :cond_0
    return-void
.end method

.method public setSupportButtonTintList(Landroid/content/res/ColorStateList;)V
    .locals 1

    iget-object v0, p0, L㚬/䂻/ბ/ᆻ;->䂻:L㚬/䂻/ბ/ㄏ;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, L㚬/䂻/ბ/ㄏ;->ᆻ(Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method

.method public setSupportButtonTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1

    iget-object v0, p0, L㚬/䂻/ბ/ᆻ;->䂻:L㚬/䂻/ბ/ㄏ;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, L㚬/䂻/ბ/ㄏ;->ℓ(Landroid/graphics/PorterDuff$Mode;)V

    :cond_0
    return-void
.end method
