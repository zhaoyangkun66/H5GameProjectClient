.class public L㚬/䂻/ბ/ㄬ;
.super Landroid/widget/TextView;
.source ""

# interfaces
.implements L㚬/ℓ/ἥ/㞘;
.implements L㚬/ℓ/ཇ/㧦;
.implements L㚬/ℓ/ཇ/䂻;


# instance fields
.field public ḓ:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future<",
            "L\u36ac/\u2113/\u39e6/\u36ac;",
            ">;"
        }
    .end annotation
.end field

.field public final 㚬:L㚬/䂻/ბ/㲧;

.field public final 㺴:L㚬/䂻/ბ/ม;

.field public final 䂻:L㚬/䂻/ბ/ḓ;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, L㚬/䂻/ბ/ㄬ;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x1010084

    invoke-direct {p0, p1, p2, v0}, L㚬/䂻/ბ/ㄬ;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-static {p1}, L㚬/䂻/ბ/ⵦ;->䂻(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p1, L㚬/䂻/ბ/ḓ;

    invoke-direct {p1, p0}, L㚬/䂻/ბ/ḓ;-><init>(Landroid/view/View;)V

    iput-object p1, p0, L㚬/䂻/ბ/ㄬ;->䂻:L㚬/䂻/ბ/ḓ;

    invoke-virtual {p1, p2, p3}, L㚬/䂻/ბ/ḓ;->ḓ(Landroid/util/AttributeSet;I)V

    new-instance p1, L㚬/䂻/ბ/㲧;

    invoke-direct {p1, p0}, L㚬/䂻/ბ/㲧;-><init>(Landroid/widget/TextView;)V

    iput-object p1, p0, L㚬/䂻/ბ/ㄬ;->㚬:L㚬/䂻/ბ/㲧;

    invoke-virtual {p1, p2, p3}, L㚬/䂻/ბ/㲧;->ἥ(Landroid/util/AttributeSet;I)V

    invoke-virtual {p1}, L㚬/䂻/ბ/㲧;->䂻()V

    new-instance p1, L㚬/䂻/ბ/ม;

    invoke-direct {p1, p0}, L㚬/䂻/ბ/ม;-><init>(Landroid/widget/TextView;)V

    iput-object p1, p0, L㚬/䂻/ბ/ㄬ;->㺴:L㚬/䂻/ბ/ม;

    return-void
.end method


# virtual methods
.method public drawableStateChanged()V
    .locals 1

    invoke-super {p0}, Landroid/widget/TextView;->drawableStateChanged()V

    iget-object v0, p0, L㚬/䂻/ბ/ㄬ;->䂻:L㚬/䂻/ბ/ḓ;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, L㚬/䂻/ბ/ḓ;->䂻()V

    :cond_0
    iget-object v0, p0, L㚬/䂻/ბ/ㄬ;->㚬:L㚬/䂻/ბ/㲧;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, L㚬/䂻/ბ/㲧;->䂻()V

    :cond_1
    return-void
.end method

.method public getAutoSizeMaxTextSize()I
    .locals 1

    sget-boolean v0, L㚬/ℓ/ཇ/䂻;->உ:Z

    if-eqz v0, :cond_0

    invoke-super {p0}, Landroid/widget/TextView;->getAutoSizeMaxTextSize()I

    move-result v0

    return v0

    :cond_0
    iget-object v0, p0, L㚬/䂻/ბ/ㄬ;->㚬:L㚬/䂻/ბ/㲧;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, L㚬/䂻/ბ/㲧;->ḓ()I

    move-result v0

    return v0

    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method public getAutoSizeMinTextSize()I
    .locals 1

    sget-boolean v0, L㚬/ℓ/ཇ/䂻;->உ:Z

    if-eqz v0, :cond_0

    invoke-super {p0}, Landroid/widget/TextView;->getAutoSizeMinTextSize()I

    move-result v0

    return v0

    :cond_0
    iget-object v0, p0, L㚬/䂻/ბ/ㄬ;->㚬:L㚬/䂻/ბ/㲧;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, L㚬/䂻/ბ/㲧;->䆀()I

    move-result v0

    return v0

    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method public getAutoSizeStepGranularity()I
    .locals 1

    sget-boolean v0, L㚬/ℓ/ཇ/䂻;->உ:Z

    if-eqz v0, :cond_0

    invoke-super {p0}, Landroid/widget/TextView;->getAutoSizeStepGranularity()I

    move-result v0

    return v0

    :cond_0
    iget-object v0, p0, L㚬/䂻/ბ/ㄬ;->㚬:L㚬/䂻/ბ/㲧;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, L㚬/䂻/ბ/㲧;->ᆻ()I

    move-result v0

    return v0

    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method public getAutoSizeTextAvailableSizes()[I
    .locals 1

    sget-boolean v0, L㚬/ℓ/ཇ/䂻;->உ:Z

    if-eqz v0, :cond_0

    invoke-super {p0}, Landroid/widget/TextView;->getAutoSizeTextAvailableSizes()[I

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, L㚬/䂻/ბ/ㄬ;->㚬:L㚬/䂻/ბ/㲧;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, L㚬/䂻/ბ/㲧;->ℓ()[I

    move-result-object v0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    new-array v0, v0, [I

    return-object v0
.end method

.method public getAutoSizeTextType()I
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WrongConstant"
        }
    .end annotation

    sget-boolean v0, L㚬/ℓ/ཇ/䂻;->உ:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-super {p0}, Landroid/widget/TextView;->getAutoSizeTextType()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    :cond_1
    iget-object v0, p0, L㚬/䂻/ბ/ㄬ;->㚬:L㚬/䂻/ბ/㲧;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, L㚬/䂻/ბ/㲧;->ㄏ()I

    move-result v0

    return v0

    :cond_2
    return v1
.end method

.method public getFirstBaselineToTopHeight()I
    .locals 1

    invoke-static {p0}, L㚬/ℓ/ཇ/ㄏ;->䂻(Landroid/widget/TextView;)I

    move-result v0

    return v0
.end method

.method public getLastBaselineToBottomHeight()I
    .locals 1

    invoke-static {p0}, L㚬/ℓ/ཇ/ㄏ;->㚬(Landroid/widget/TextView;)I

    move-result v0

    return v0
.end method

.method public getSupportBackgroundTintList()Landroid/content/res/ColorStateList;
    .locals 1

    iget-object v0, p0, L㚬/䂻/ბ/ㄬ;->䂻:L㚬/䂻/ბ/ḓ;

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

    iget-object v0, p0, L㚬/䂻/ბ/ㄬ;->䂻:L㚬/䂻/ბ/ḓ;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, L㚬/䂻/ბ/ḓ;->㺴()Landroid/graphics/PorterDuff$Mode;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getSupportCompoundDrawablesTintList()Landroid/content/res/ColorStateList;
    .locals 1

    iget-object v0, p0, L㚬/䂻/ბ/ㄬ;->㚬:L㚬/䂻/ბ/㲧;

    invoke-virtual {v0}, L㚬/䂻/ბ/㲧;->ಫ()Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0
.end method

.method public getSupportCompoundDrawablesTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 1

    iget-object v0, p0, L㚬/䂻/ბ/ㄬ;->㚬:L㚬/䂻/ბ/㲧;

    invoke-virtual {v0}, L㚬/䂻/ბ/㲧;->㧦()Landroid/graphics/PorterDuff$Mode;

    move-result-object v0

    return-object v0
.end method

.method public getText()Ljava/lang/CharSequence;
    .locals 1

    invoke-virtual {p0}, L㚬/䂻/ბ/ㄬ;->㚬()V

    invoke-super {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getTextClassifier()Landroid/view/textclassifier/TextClassifier;
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-ge v0, v1, :cond_1

    iget-object v0, p0, L㚬/䂻/ბ/ㄬ;->㺴:L㚬/䂻/ბ/ม;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, L㚬/䂻/ბ/ม;->உ()Landroid/view/textclassifier/TextClassifier;

    move-result-object v0

    return-object v0

    :cond_1
    :goto_0
    invoke-super {p0}, Landroid/widget/TextView;->getTextClassifier()Landroid/view/textclassifier/TextClassifier;

    move-result-object v0

    return-object v0
.end method

.method public getTextMetricsParamsCompat()L㚬/ℓ/㧦/㚬$உ;
    .locals 1

    invoke-static {p0}, L㚬/ℓ/ཇ/ㄏ;->䆀(Landroid/widget/TextView;)L㚬/ℓ/㧦/㚬$உ;

    move-result-object v0

    return-object v0
.end method

.method public onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/TextView;->onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    invoke-static {v0, p1, p0}, L㚬/䂻/ბ/㹖;->உ(Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;Landroid/view/View;)Landroid/view/inputmethod/InputConnection;

    return-object v0
.end method

.method public onLayout(ZIIII)V
    .locals 6

    invoke-super/range {p0 .. p5}, Landroid/widget/TextView;->onLayout(ZIIII)V

    iget-object v0, p0, L㚬/䂻/ბ/ㄬ;->㚬:L㚬/䂻/ბ/㲧;

    if-eqz v0, :cond_0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, L㚬/䂻/ბ/㲧;->ཇ(ZIIII)V

    :cond_0
    return-void
.end method

.method public onMeasure(II)V
    .locals 0

    invoke-virtual {p0}, L㚬/䂻/ბ/ㄬ;->㚬()V

    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->onMeasure(II)V

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->onTextChanged(Ljava/lang/CharSequence;III)V

    iget-object p1, p0, L㚬/䂻/ბ/ㄬ;->㚬:L㚬/䂻/ბ/㲧;

    if-eqz p1, :cond_0

    sget-boolean p2, L㚬/ℓ/ཇ/䂻;->உ:Z

    if-nez p2, :cond_0

    invoke-virtual {p1}, L㚬/䂻/ბ/㲧;->㹖()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, L㚬/䂻/ბ/ㄬ;->㚬:L㚬/䂻/ბ/㲧;

    invoke-virtual {p1}, L㚬/䂻/ბ/㲧;->㚬()V

    :cond_0
    return-void
.end method

.method public setAutoSizeTextTypeUniformWithConfiguration(IIII)V
    .locals 1

    sget-boolean v0, L㚬/ℓ/ཇ/䂻;->உ:Z

    if-eqz v0, :cond_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->setAutoSizeTextTypeUniformWithConfiguration(IIII)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, L㚬/䂻/ბ/ㄬ;->㚬:L㚬/䂻/ბ/㲧;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1, p2, p3, p4}, L㚬/䂻/ბ/㲧;->㭲(IIII)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setAutoSizeTextTypeUniformWithPresetSizes([II)V
    .locals 1

    sget-boolean v0, L㚬/ℓ/ཇ/䂻;->உ:Z

    if-eqz v0, :cond_0

    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->setAutoSizeTextTypeUniformWithPresetSizes([II)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, L㚬/䂻/ბ/ㄬ;->㚬:L㚬/䂻/ბ/㲧;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1, p2}, L㚬/䂻/ბ/㲧;->ḙ([II)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setAutoSizeTextTypeWithDefaults(I)V
    .locals 1

    sget-boolean v0, L㚬/ℓ/ཇ/䂻;->உ:Z

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Landroid/widget/TextView;->setAutoSizeTextTypeWithDefaults(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, L㚬/䂻/ბ/ㄬ;->㚬:L㚬/䂻/ბ/㲧;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, L㚬/䂻/ბ/㲧;->㖪(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, L㚬/䂻/ბ/ㄬ;->䂻:L㚬/䂻/ბ/ḓ;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, L㚬/䂻/ბ/ḓ;->䆀(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public setBackgroundResource(I)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    iget-object v0, p0, L㚬/䂻/ბ/ㄬ;->䂻:L㚬/䂻/ბ/ḓ;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, L㚬/䂻/ბ/ḓ;->ᆻ(I)V

    :cond_0
    return-void
.end method

.method public setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, L㚬/䂻/ბ/ㄬ;->㚬:L㚬/䂻/ბ/㲧;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, L㚬/䂻/ბ/㲧;->ᓭ()V

    :cond_0
    return-void
.end method

.method public setCompoundDrawablesRelative(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->setCompoundDrawablesRelative(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, L㚬/䂻/ბ/ㄬ;->㚬:L㚬/䂻/ბ/㲧;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, L㚬/䂻/ბ/㲧;->ᓭ()V

    :cond_0
    return-void
.end method

.method public setCompoundDrawablesRelativeWithIntrinsicBounds(IIII)V
    .locals 2

    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    invoke-static {v0, p1}, L㚬/䂻/㹖/உ/உ;->㺴(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v1

    :goto_0
    if-eqz p2, :cond_1

    invoke-static {v0, p2}, L㚬/䂻/㹖/உ/உ;->㺴(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    goto :goto_1

    :cond_1
    move-object p2, v1

    :goto_1
    if-eqz p3, :cond_2

    invoke-static {v0, p3}, L㚬/䂻/㹖/உ/உ;->㺴(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    goto :goto_2

    :cond_2
    move-object p3, v1

    :goto_2
    if-eqz p4, :cond_3

    invoke-static {v0, p4}, L㚬/䂻/㹖/உ/உ;->㺴(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    :cond_3
    invoke-virtual {p0, p1, p2, p3, v1}, L㚬/䂻/ბ/ㄬ;->setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, L㚬/䂻/ბ/ㄬ;->㚬:L㚬/䂻/ბ/㲧;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, L㚬/䂻/ბ/㲧;->ᓭ()V

    :cond_4
    return-void
.end method

.method public setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, L㚬/䂻/ბ/ㄬ;->㚬:L㚬/䂻/ბ/㲧;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, L㚬/䂻/ბ/㲧;->ᓭ()V

    :cond_0
    return-void
.end method

.method public setCompoundDrawablesWithIntrinsicBounds(IIII)V
    .locals 2

    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    invoke-static {v0, p1}, L㚬/䂻/㹖/உ/உ;->㺴(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v1

    :goto_0
    if-eqz p2, :cond_1

    invoke-static {v0, p2}, L㚬/䂻/㹖/உ/உ;->㺴(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    goto :goto_1

    :cond_1
    move-object p2, v1

    :goto_1
    if-eqz p3, :cond_2

    invoke-static {v0, p3}, L㚬/䂻/㹖/உ/உ;->㺴(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    goto :goto_2

    :cond_2
    move-object p3, v1

    :goto_2
    if-eqz p4, :cond_3

    invoke-static {v0, p4}, L㚬/䂻/㹖/உ/உ;->㺴(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    :cond_3
    invoke-virtual {p0, p1, p2, p3, v1}, L㚬/䂻/ბ/ㄬ;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, L㚬/䂻/ბ/ㄬ;->㚬:L㚬/䂻/ბ/㲧;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, L㚬/䂻/ბ/㲧;->ᓭ()V

    :cond_4
    return-void
.end method

.method public setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, L㚬/䂻/ბ/ㄬ;->㚬:L㚬/䂻/ბ/㲧;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, L㚬/䂻/ბ/㲧;->ᓭ()V

    :cond_0
    return-void
.end method

.method public setCustomSelectionActionModeCallback(Landroid/view/ActionMode$Callback;)V
    .locals 0

    invoke-static {p0, p1}, L㚬/ℓ/ཇ/ㄏ;->ბ(Landroid/widget/TextView;Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode$Callback;

    move-result-object p1

    invoke-super {p0, p1}, Landroid/widget/TextView;->setCustomSelectionActionModeCallback(Landroid/view/ActionMode$Callback;)V

    return-void
.end method

.method public setFirstBaselineToTopHeight(I)V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_0

    invoke-super {p0, p1}, Landroid/widget/TextView;->setFirstBaselineToTopHeight(I)V

    goto :goto_0

    :cond_0
    invoke-static {p0, p1}, L㚬/ℓ/ཇ/ㄏ;->ಫ(Landroid/widget/TextView;I)V

    :goto_0
    return-void
.end method

.method public setLastBaselineToBottomHeight(I)V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_0

    invoke-super {p0, p1}, Landroid/widget/TextView;->setLastBaselineToBottomHeight(I)V

    goto :goto_0

    :cond_0
    invoke-static {p0, p1}, L㚬/ℓ/ཇ/ㄏ;->㧦(Landroid/widget/TextView;I)V

    :goto_0
    return-void
.end method

.method public setLineHeight(I)V
    .locals 0

    invoke-static {p0, p1}, L㚬/ℓ/ཇ/ㄏ;->㹖(Landroid/widget/TextView;I)V

    return-void
.end method

.method public setPrecomputedText(L㚬/ℓ/㧦/㚬;)V
    .locals 0

    invoke-static {p0, p1}, L㚬/ℓ/ཇ/ㄏ;->ἥ(Landroid/widget/TextView;L㚬/ℓ/㧦/㚬;)V

    return-void
.end method

.method public setSupportBackgroundTintList(Landroid/content/res/ColorStateList;)V
    .locals 1

    iget-object v0, p0, L㚬/䂻/ბ/ㄬ;->䂻:L㚬/䂻/ბ/ḓ;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, L㚬/䂻/ბ/ḓ;->ㄏ(Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method

.method public setSupportBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1

    iget-object v0, p0, L㚬/䂻/ბ/ㄬ;->䂻:L㚬/䂻/ბ/ḓ;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, L㚬/䂻/ბ/ḓ;->ಫ(Landroid/graphics/PorterDuff$Mode;)V

    :cond_0
    return-void
.end method

.method public setSupportCompoundDrawablesTintList(Landroid/content/res/ColorStateList;)V
    .locals 1

    iget-object v0, p0, L㚬/䂻/ბ/ㄬ;->㚬:L㚬/䂻/ბ/㲧;

    invoke-virtual {v0, p1}, L㚬/䂻/ბ/㲧;->㢏(Landroid/content/res/ColorStateList;)V

    iget-object p1, p0, L㚬/䂻/ბ/ㄬ;->㚬:L㚬/䂻/ბ/㲧;

    invoke-virtual {p1}, L㚬/䂻/ბ/㲧;->䂻()V

    return-void
.end method

.method public setSupportCompoundDrawablesTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1

    iget-object v0, p0, L㚬/䂻/ბ/ㄬ;->㚬:L㚬/䂻/ბ/㲧;

    invoke-virtual {v0, p1}, L㚬/䂻/ბ/㲧;->ม(Landroid/graphics/PorterDuff$Mode;)V

    iget-object p1, p0, L㚬/䂻/ბ/ㄬ;->㚬:L㚬/䂻/ბ/㲧;

    invoke-virtual {p1}, L㚬/䂻/ბ/㲧;->䂻()V

    return-void
.end method

.method public setTextAppearance(Landroid/content/Context;I)V
    .locals 1

    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    iget-object v0, p0, L㚬/䂻/ბ/ㄬ;->㚬:L㚬/䂻/ბ/㲧;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, L㚬/䂻/ბ/㲧;->ბ(Landroid/content/Context;I)V

    :cond_0
    return-void
.end method

.method public setTextClassifier(Landroid/view/textclassifier/TextClassifier;)V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-ge v0, v1, :cond_1

    iget-object v0, p0, L㚬/䂻/ბ/ㄬ;->㺴:L㚬/䂻/ბ/ม;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, L㚬/䂻/ბ/ม;->䂻(Landroid/view/textclassifier/TextClassifier;)V

    return-void

    :cond_1
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/TextView;->setTextClassifier(Landroid/view/textclassifier/TextClassifier;)V

    return-void
.end method

.method public setTextFuture(Ljava/util/concurrent/Future;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Future<",
            "L\u36ac/\u2113/\u39e6/\u36ac;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, L㚬/䂻/ბ/ㄬ;->ḓ:Ljava/util/concurrent/Future;

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    :cond_0
    return-void
.end method

.method public setTextMetricsParamsCompat(L㚬/ℓ/㧦/㚬$உ;)V
    .locals 0

    invoke-static {p0, p1}, L㚬/ℓ/ཇ/ㄏ;->ᓭ(Landroid/widget/TextView;L㚬/ℓ/㧦/㚬$உ;)V

    return-void
.end method

.method public setTextSize(IF)V
    .locals 1

    sget-boolean v0, L㚬/ℓ/ཇ/䂻;->உ:Z

    if-eqz v0, :cond_0

    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->setTextSize(IF)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, L㚬/䂻/ბ/ㄬ;->㚬:L㚬/䂻/ბ/㲧;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1, p2}, L㚬/䂻/ბ/㲧;->㫏(IF)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setTypeface(Landroid/graphics/Typeface;I)V
    .locals 1

    if-eqz p1, :cond_0

    if-lez p2, :cond_0

    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1, p2}, L㚬/ℓ/䆀/㺴;->உ(Landroid/content/Context;Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    move-object p1, v0

    :cond_1
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    return-void
.end method

.method public final 㚬()V
    .locals 2

    iget-object v0, p0, L㚬/䂻/ბ/ㄬ;->ḓ:Ljava/util/concurrent/Future;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    :try_start_0
    iput-object v1, p0, L㚬/䂻/ბ/ㄬ;->ḓ:Ljava/util/concurrent/Future;

    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, L㚬/ℓ/㧦/㚬;

    invoke-static {p0, v0}, L㚬/ℓ/ཇ/ㄏ;->ἥ(Landroid/widget/TextView;L㚬/ℓ/㧦/㚬;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method
