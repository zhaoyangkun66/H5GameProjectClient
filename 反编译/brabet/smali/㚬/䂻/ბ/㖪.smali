.class public L㚬/䂻/ბ/㖪;
.super L㚬/䂻/ბ/㲝;
.source ""


# instance fields
.field public ᆻ:Landroid/graphics/PorterDuff$Mode;

.field public ḓ:Landroid/graphics/drawable/Drawable;

.field public ℓ:Z

.field public ㄏ:Z

.field public final 㺴:Landroid/widget/SeekBar;

.field public 䆀:Landroid/content/res/ColorStateList;


# direct methods
.method public constructor <init>(Landroid/widget/SeekBar;)V
    .locals 1

    invoke-direct {p0, p1}, L㚬/䂻/ბ/㲝;-><init>(Landroid/widget/ProgressBar;)V

    const/4 v0, 0x0

    iput-object v0, p0, L㚬/䂻/ბ/㖪;->䆀:Landroid/content/res/ColorStateList;

    iput-object v0, p0, L㚬/䂻/ბ/㖪;->ᆻ:Landroid/graphics/PorterDuff$Mode;

    const/4 v0, 0x0

    iput-boolean v0, p0, L㚬/䂻/ბ/㖪;->ℓ:Z

    iput-boolean v0, p0, L㚬/䂻/ბ/㖪;->ㄏ:Z

    iput-object p1, p0, L㚬/䂻/ბ/㖪;->㺴:Landroid/widget/SeekBar;

    return-void
.end method


# virtual methods
.method public ಫ(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    iget-object v0, p0, L㚬/䂻/ბ/㖪;->ḓ:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    :cond_0
    iput-object p1, p0, L㚬/䂻/ბ/㖪;->ḓ:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_2

    iget-object v0, p0, L㚬/䂻/ბ/㖪;->㺴:Landroid/widget/SeekBar;

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    iget-object v0, p0, L㚬/䂻/ბ/㖪;->㺴:Landroid/widget/SeekBar;

    invoke-static {v0}, L㚬/ℓ/ἥ/㭲;->ม(Landroid/view/View;)I

    move-result v0

    invoke-static {p1, v0}, L㚬/ℓ/䆀/㹖/உ;->ἥ(Landroid/graphics/drawable/Drawable;I)Z

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, L㚬/䂻/ბ/㖪;->㺴:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getDrawableState()[I

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_1
    invoke-virtual {p0}, L㚬/䂻/ბ/㖪;->䆀()V

    :cond_2
    iget-object p1, p0, L㚬/䂻/ბ/㖪;->㺴:Landroid/widget/SeekBar;

    invoke-virtual {p1}, Landroid/widget/SeekBar;->invalidate()V

    return-void
.end method

.method public ᆻ(Landroid/graphics/Canvas;)V
    .locals 6

    iget-object v0, p0, L㚬/䂻/ბ/㖪;->ḓ:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3

    iget-object v0, p0, L㚬/䂻/ბ/㖪;->㺴:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getMax()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_3

    iget-object v2, p0, L㚬/䂻/ბ/㖪;->ḓ:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    iget-object v3, p0, L㚬/䂻/ბ/㖪;->ḓ:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    if-ltz v2, :cond_0

    div-int/lit8 v2, v2, 0x2

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    :goto_0
    if-ltz v3, :cond_1

    div-int/lit8 v1, v3, 0x2

    :cond_1
    iget-object v3, p0, L㚬/䂻/ბ/㖪;->ḓ:Landroid/graphics/drawable/Drawable;

    neg-int v4, v2

    neg-int v5, v1

    invoke-virtual {v3, v4, v5, v2, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v1, p0, L㚬/䂻/ბ/㖪;->㺴:Landroid/widget/SeekBar;

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getWidth()I

    move-result v1

    iget-object v2, p0, L㚬/䂻/ბ/㖪;->㺴:Landroid/widget/SeekBar;

    invoke-virtual {v2}, Landroid/widget/SeekBar;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    iget-object v2, p0, L㚬/䂻/ბ/㖪;->㺴:Landroid/widget/SeekBar;

    invoke-virtual {v2}, Landroid/widget/SeekBar;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    int-to-float v2, v0

    div-float/2addr v1, v2

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v2

    iget-object v3, p0, L㚬/䂻/ბ/㖪;->㺴:Landroid/widget/SeekBar;

    invoke-virtual {v3}, Landroid/widget/SeekBar;->getPaddingLeft()I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, L㚬/䂻/ბ/㖪;->㺴:Landroid/widget/SeekBar;

    invoke-virtual {v4}, Landroid/widget/SeekBar;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    const/4 v3, 0x0

    :goto_1
    if-gt v3, v0, :cond_2

    iget-object v4, p0, L㚬/䂻/ბ/㖪;->ḓ:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    const/4 v4, 0x0

    invoke-virtual {p1, v1, v4}, Landroid/graphics/Canvas;->translate(FF)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_3
    return-void
.end method

.method public ℓ()V
    .locals 2

    iget-object v0, p0, L㚬/䂻/ბ/㖪;->ḓ:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, L㚬/䂻/ბ/㖪;->㺴:Landroid/widget/SeekBar;

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, L㚬/䂻/ბ/㖪;->㺴:Landroid/widget/SeekBar;

    invoke-virtual {v1, v0}, Landroid/widget/SeekBar;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public ㄏ()V
    .locals 1

    iget-object v0, p0, L㚬/䂻/ბ/㖪;->ḓ:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    :cond_0
    return-void
.end method

.method public 㚬(Landroid/util/AttributeSet;I)V
    .locals 3

    invoke-super {p0, p1, p2}, L㚬/䂻/ბ/㲝;->㚬(Landroid/util/AttributeSet;I)V

    iget-object v0, p0, L㚬/䂻/ბ/㖪;->㺴:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, L㚬/䂻/ಫ;->㮕:[I

    const/4 v2, 0x0

    invoke-static {v0, p1, v1, p2, v2}, L㚬/䂻/ბ/ᣝ;->㖪(Landroid/content/Context;Landroid/util/AttributeSet;[III)L㚬/䂻/ბ/ᣝ;

    move-result-object p1

    sget p2, L㚬/䂻/ಫ;->ἂ:I

    invoke-virtual {p1, p2}, L㚬/䂻/ბ/ᣝ;->ℓ(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    if-eqz p2, :cond_0

    iget-object v0, p0, L㚬/䂻/ბ/㖪;->㺴:Landroid/widget/SeekBar;

    invoke-virtual {v0, p2}, Landroid/widget/SeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    sget p2, L㚬/䂻/ಫ;->ⵦ:I

    invoke-virtual {p1, p2}, L㚬/䂻/ბ/ᣝ;->ᆻ(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p0, p2}, L㚬/䂻/ბ/㖪;->ಫ(Landroid/graphics/drawable/Drawable;)V

    sget p2, L㚬/䂻/ಫ;->㟘:I

    invoke-virtual {p1, p2}, L㚬/䂻/ბ/ᣝ;->㞘(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    const/4 v0, -0x1

    invoke-virtual {p1, p2, v0}, L㚬/䂻/ბ/ᣝ;->㧦(II)I

    move-result p2

    iget-object v0, p0, L㚬/䂻/ბ/㖪;->ᆻ:Landroid/graphics/PorterDuff$Mode;

    invoke-static {p2, v0}, L㚬/䂻/ბ/㰫;->㺴(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object p2

    iput-object p2, p0, L㚬/䂻/ბ/㖪;->ᆻ:Landroid/graphics/PorterDuff$Mode;

    iput-boolean v1, p0, L㚬/䂻/ბ/㖪;->ㄏ:Z

    :cond_1
    sget p2, L㚬/䂻/ಫ;->ᭊ:I

    invoke-virtual {p1, p2}, L㚬/䂻/ბ/ᣝ;->㞘(I)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1, p2}, L㚬/䂻/ბ/ᣝ;->㚬(I)Landroid/content/res/ColorStateList;

    move-result-object p2

    iput-object p2, p0, L㚬/䂻/ბ/㖪;->䆀:Landroid/content/res/ColorStateList;

    iput-boolean v1, p0, L㚬/䂻/ბ/㖪;->ℓ:Z

    :cond_2
    invoke-virtual {p1}, L㚬/䂻/ბ/ᣝ;->㢏()V

    invoke-virtual {p0}, L㚬/䂻/ბ/㖪;->䆀()V

    return-void
.end method

.method public final 䆀()V
    .locals 2

    iget-object v0, p0, L㚬/䂻/ბ/㖪;->ḓ:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3

    iget-boolean v1, p0, L㚬/䂻/ბ/㖪;->ℓ:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, L㚬/䂻/ბ/㖪;->ㄏ:Z

    if-eqz v1, :cond_3

    :cond_0
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {v0}, L㚬/ℓ/䆀/㹖/உ;->㞘(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, L㚬/䂻/ბ/㖪;->ḓ:Landroid/graphics/drawable/Drawable;

    iget-boolean v1, p0, L㚬/䂻/ბ/㖪;->ℓ:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, L㚬/䂻/ბ/㖪;->䆀:Landroid/content/res/ColorStateList;

    invoke-static {v0, v1}, L㚬/ℓ/䆀/㹖/உ;->ᓭ(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    :cond_1
    iget-boolean v0, p0, L㚬/䂻/ბ/㖪;->ㄏ:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, L㚬/䂻/ბ/㖪;->ḓ:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, L㚬/䂻/ბ/㖪;->ᆻ:Landroid/graphics/PorterDuff$Mode;

    invoke-static {v0, v1}, L㚬/ℓ/䆀/㹖/உ;->ბ(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V

    :cond_2
    iget-object v0, p0, L㚬/䂻/ბ/㖪;->ḓ:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, L㚬/䂻/ბ/㖪;->ḓ:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, L㚬/䂻/ბ/㖪;->㺴:Landroid/widget/SeekBar;

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_3
    return-void
.end method
