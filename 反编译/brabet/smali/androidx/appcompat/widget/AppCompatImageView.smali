.class public Landroidx/appcompat/widget/AppCompatImageView;
.super Landroid/widget/ImageView;
.source ""

# interfaces
.implements L㚬/ℓ/ἥ/㞘;
.implements L㚬/ℓ/ཇ/㹖;


# instance fields
.field public final 㚬:L㚬/䂻/ბ/ཇ;

.field public final 䂻:L㚬/䂻/ბ/ḓ;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-static {p1}, L㚬/䂻/ბ/ⵦ;->䂻(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p1, L㚬/䂻/ბ/ḓ;

    invoke-direct {p1, p0}, L㚬/䂻/ბ/ḓ;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Landroidx/appcompat/widget/AppCompatImageView;->䂻:L㚬/䂻/ბ/ḓ;

    invoke-virtual {p1, p2, p3}, L㚬/䂻/ბ/ḓ;->ḓ(Landroid/util/AttributeSet;I)V

    new-instance p1, L㚬/䂻/ბ/ཇ;

    invoke-direct {p1, p0}, L㚬/䂻/ბ/ཇ;-><init>(Landroid/widget/ImageView;)V

    iput-object p1, p0, Landroidx/appcompat/widget/AppCompatImageView;->㚬:L㚬/䂻/ბ/ཇ;

    invoke-virtual {p1, p2, p3}, L㚬/䂻/ბ/ཇ;->䆀(Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public drawableStateChanged()V
    .locals 1

    invoke-super {p0}, Landroid/widget/ImageView;->drawableStateChanged()V

    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatImageView;->䂻:L㚬/䂻/ბ/ḓ;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, L㚬/䂻/ბ/ḓ;->䂻()V

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatImageView;->㚬:L㚬/䂻/ბ/ཇ;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, L㚬/䂻/ბ/ཇ;->䂻()V

    :cond_1
    return-void
.end method

.method public getSupportBackgroundTintList()Landroid/content/res/ColorStateList;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatImageView;->䂻:L㚬/䂻/ბ/ḓ;

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

    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatImageView;->䂻:L㚬/䂻/ბ/ḓ;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, L㚬/䂻/ბ/ḓ;->㺴()Landroid/graphics/PorterDuff$Mode;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getSupportImageTintList()Landroid/content/res/ColorStateList;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatImageView;->㚬:L㚬/䂻/ბ/ཇ;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, L㚬/䂻/ბ/ཇ;->㚬()Landroid/content/res/ColorStateList;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getSupportImageTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatImageView;->㚬:L㚬/䂻/ბ/ཇ;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, L㚬/䂻/ბ/ཇ;->㺴()Landroid/graphics/PorterDuff$Mode;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public hasOverlappingRendering()Z
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatImageView;->㚬:L㚬/䂻/ბ/ཇ;

    invoke-virtual {v0}, L㚬/䂻/ბ/ཇ;->ḓ()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0}, Landroid/widget/ImageView;->hasOverlappingRendering()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatImageView;->䂻:L㚬/䂻/ბ/ḓ;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, L㚬/䂻/ბ/ḓ;->䆀(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public setBackgroundResource(I)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatImageView;->䂻:L㚬/䂻/ბ/ḓ;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, L㚬/䂻/ბ/ḓ;->ᆻ(I)V

    :cond_0
    return-void
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object p1, p0, Landroidx/appcompat/widget/AppCompatImageView;->㚬:L㚬/䂻/ბ/ཇ;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, L㚬/䂻/ბ/ཇ;->䂻()V

    :cond_0
    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Landroidx/appcompat/widget/AppCompatImageView;->㚬:L㚬/䂻/ბ/ཇ;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, L㚬/䂻/ბ/ཇ;->䂻()V

    :cond_0
    return-void
.end method

.method public setImageResource(I)V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatImageView;->㚬:L㚬/䂻/ბ/ཇ;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, L㚬/䂻/ბ/ཇ;->ᆻ(I)V

    :cond_0
    return-void
.end method

.method public setImageURI(Landroid/net/Uri;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V

    iget-object p1, p0, Landroidx/appcompat/widget/AppCompatImageView;->㚬:L㚬/䂻/ბ/ཇ;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, L㚬/䂻/ბ/ཇ;->䂻()V

    :cond_0
    return-void
.end method

.method public setSupportBackgroundTintList(Landroid/content/res/ColorStateList;)V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatImageView;->䂻:L㚬/䂻/ბ/ḓ;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, L㚬/䂻/ბ/ḓ;->ㄏ(Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method

.method public setSupportBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatImageView;->䂻:L㚬/䂻/ბ/ḓ;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, L㚬/䂻/ბ/ḓ;->ಫ(Landroid/graphics/PorterDuff$Mode;)V

    :cond_0
    return-void
.end method

.method public setSupportImageTintList(Landroid/content/res/ColorStateList;)V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatImageView;->㚬:L㚬/䂻/ბ/ཇ;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, L㚬/䂻/ბ/ཇ;->ℓ(Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method

.method public setSupportImageTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatImageView;->㚬:L㚬/䂻/ბ/ཇ;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, L㚬/䂻/ბ/ཇ;->ㄏ(Landroid/graphics/PorterDuff$Mode;)V

    :cond_0
    return-void
.end method
