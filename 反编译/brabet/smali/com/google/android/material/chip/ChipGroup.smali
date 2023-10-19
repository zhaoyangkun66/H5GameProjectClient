.class public Lcom/google/android/material/chip/ChipGroup;
.super L㺴/㚬/உ/䂻/ᾦ/㚬;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/chip/ChipGroup$ḓ;,
        Lcom/google/android/material/chip/ChipGroup$䂻;,
        Lcom/google/android/material/chip/ChipGroup$㚬;,
        Lcom/google/android/material/chip/ChipGroup$㺴;
    }
.end annotation


# instance fields
.field public ಫ:Lcom/google/android/material/chip/ChipGroup$ḓ;

.field public ᆻ:Z

.field public ḓ:I

.field public ℓ:Lcom/google/android/material/chip/ChipGroup$㺴;

.field public final ㄏ:Lcom/google/android/material/chip/ChipGroup$䂻;

.field public 㧦:I

.field public 㹖:Z

.field public 䆀:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    sget v0, L㺴/㚬/உ/䂻/䂻;->㚬:I

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/material/chip/ChipGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 8

    invoke-direct {p0, p1, p2, p3}, L㺴/㚬/உ/䂻/ᾦ/㚬;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Lcom/google/android/material/chip/ChipGroup$䂻;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/material/chip/ChipGroup$䂻;-><init>(Lcom/google/android/material/chip/ChipGroup;Lcom/google/android/material/chip/ChipGroup$உ;)V

    iput-object v0, p0, Lcom/google/android/material/chip/ChipGroup;->ㄏ:Lcom/google/android/material/chip/ChipGroup$䂻;

    new-instance v0, Lcom/google/android/material/chip/ChipGroup$ḓ;

    invoke-direct {v0, p0, v1}, Lcom/google/android/material/chip/ChipGroup$ḓ;-><init>(Lcom/google/android/material/chip/ChipGroup;Lcom/google/android/material/chip/ChipGroup$உ;)V

    iput-object v0, p0, Lcom/google/android/material/chip/ChipGroup;->ಫ:Lcom/google/android/material/chip/ChipGroup$ḓ;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/material/chip/ChipGroup;->㧦:I

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/android/material/chip/ChipGroup;->㹖:Z

    sget-object v4, L㺴/㚬/உ/䂻/㧦;->ಇ:[I

    sget v6, L㺴/㚬/உ/䂻/ಫ;->ḓ:I

    new-array v7, v1, [I

    move-object v2, p1

    move-object v3, p2

    move v5, p3

    invoke-static/range {v2 .. v7}, L㺴/㚬/உ/䂻/ᾦ/ᆻ;->㧦(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)Landroid/content/res/TypedArray;

    move-result-object p1

    sget p2, L㺴/㚬/உ/䂻/㧦;->ග:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p2

    sget p3, L㺴/㚬/உ/䂻/㧦;->Ᏼ:I

    invoke-virtual {p1, p3, p2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p3

    invoke-virtual {p0, p3}, Lcom/google/android/material/chip/ChipGroup;->setChipSpacingHorizontal(I)V

    sget p3, L㺴/㚬/உ/䂻/㧦;->㠭:I

    invoke-virtual {p1, p3, p2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p2

    invoke-virtual {p0, p2}, Lcom/google/android/material/chip/ChipGroup;->setChipSpacingVertical(I)V

    sget p2, L㺴/㚬/உ/䂻/㧦;->䋡:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    invoke-virtual {p0, p2}, Lcom/google/android/material/chip/ChipGroup;->setSingleLine(Z)V

    sget p2, L㺴/㚬/உ/䂻/㧦;->ἃ:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    invoke-virtual {p0, p2}, Lcom/google/android/material/chip/ChipGroup;->setSingleSelection(Z)V

    sget p2, L㺴/㚬/உ/䂻/㧦;->Ổ:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    if-eq p2, v0, :cond_0

    iput p2, p0, Lcom/google/android/material/chip/ChipGroup;->㧦:I

    :cond_0
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    iget-object p1, p0, Lcom/google/android/material/chip/ChipGroup;->ಫ:Lcom/google/android/material/chip/ChipGroup$ḓ;

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V

    return-void
.end method

.method private setCheckedId(I)V
    .locals 2

    iput p1, p0, Lcom/google/android/material/chip/ChipGroup;->㧦:I

    iget-object v0, p0, Lcom/google/android/material/chip/ChipGroup;->ℓ:Lcom/google/android/material/chip/ChipGroup$㺴;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/google/android/material/chip/ChipGroup;->ᆻ:Z

    if-eqz v1, :cond_0

    invoke-interface {v0, p0, p1}, Lcom/google/android/material/chip/ChipGroup$㺴;->உ(Lcom/google/android/material/chip/ChipGroup;I)V

    :cond_0
    return-void
.end method

.method public static synthetic ᆻ(Lcom/google/android/material/chip/ChipGroup;IZ)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/google/android/material/chip/ChipGroup;->㧦(IZ)V

    return-void
.end method

.method public static synthetic ḓ(Lcom/google/android/material/chip/ChipGroup;)I
    .locals 0

    iget p0, p0, Lcom/google/android/material/chip/ChipGroup;->㧦:I

    return p0
.end method

.method public static synthetic ℓ(Lcom/google/android/material/chip/ChipGroup;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/material/chip/ChipGroup;->setCheckedId(I)V

    return-void
.end method

.method public static synthetic ㄏ(Lcom/google/android/material/chip/ChipGroup;)Lcom/google/android/material/chip/ChipGroup$䂻;
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/chip/ChipGroup;->ㄏ:Lcom/google/android/material/chip/ChipGroup$䂻;

    return-object p0
.end method

.method public static synthetic 㺴(Lcom/google/android/material/chip/ChipGroup;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/material/chip/ChipGroup;->㹖:Z

    return p0
.end method

.method public static synthetic 䆀(Lcom/google/android/material/chip/ChipGroup;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/material/chip/ChipGroup;->ᆻ:Z

    return p0
.end method


# virtual methods
.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 3

    instance-of v0, p1, Lcom/google/android/material/chip/Chip;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Lcom/google/android/material/chip/Chip;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/google/android/material/chip/ChipGroup;->㧦:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    iget-boolean v2, p0, Lcom/google/android/material/chip/ChipGroup;->ᆻ:Z

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/google/android/material/chip/ChipGroup;->㧦(IZ)V

    :cond_0
    invoke-virtual {v0}, Landroid/widget/CheckBox;->getId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/android/material/chip/ChipGroup;->setCheckedId(I)V

    :cond_1
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v0

    if-eqz v0, :cond_0

    instance-of p1, p1, Lcom/google/android/material/chip/ChipGroup$㚬;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    new-instance v0, Lcom/google/android/material/chip/ChipGroup$㚬;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Lcom/google/android/material/chip/ChipGroup$㚬;-><init>(II)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    new-instance v0, Lcom/google/android/material/chip/ChipGroup$㚬;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/google/android/material/chip/ChipGroup$㚬;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    new-instance v0, Lcom/google/android/material/chip/ChipGroup$㚬;

    invoke-direct {v0, p1}, Lcom/google/android/material/chip/ChipGroup$㚬;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public getCheckedChipId()I
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/material/chip/ChipGroup;->ᆻ:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/android/material/chip/ChipGroup;->㧦:I

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method public getChipSpacingHorizontal()I
    .locals 1

    iget v0, p0, Lcom/google/android/material/chip/ChipGroup;->ḓ:I

    return v0
.end method

.method public getChipSpacingVertical()I
    .locals 1

    iget v0, p0, Lcom/google/android/material/chip/ChipGroup;->䆀:I

    return v0
.end method

.method public onFinishInflate()V
    .locals 2

    invoke-super {p0}, Landroid/view/ViewGroup;->onFinishInflate()V

    iget v0, p0, Lcom/google/android/material/chip/ChipGroup;->㧦:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/material/chip/ChipGroup;->㧦(IZ)V

    iget v0, p0, Lcom/google/android/material/chip/ChipGroup;->㧦:I

    invoke-direct {p0, v0}, Lcom/google/android/material/chip/ChipGroup;->setCheckedId(I)V

    :cond_0
    return-void
.end method

.method public setChipSpacing(I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/ChipGroup;->setChipSpacingHorizontal(I)V

    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/ChipGroup;->setChipSpacingVertical(I)V

    return-void
.end method

.method public setChipSpacingHorizontal(I)V
    .locals 1

    iget v0, p0, Lcom/google/android/material/chip/ChipGroup;->ḓ:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/google/android/material/chip/ChipGroup;->ḓ:I

    invoke-virtual {p0, p1}, L㺴/㚬/உ/䂻/ᾦ/㚬;->setItemSpacing(I)V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    :cond_0
    return-void
.end method

.method public setChipSpacingHorizontalResource(I)V
    .locals 1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/ChipGroup;->setChipSpacingHorizontal(I)V

    return-void
.end method

.method public setChipSpacingResource(I)V
    .locals 1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/ChipGroup;->setChipSpacing(I)V

    return-void
.end method

.method public setChipSpacingVertical(I)V
    .locals 1

    iget v0, p0, Lcom/google/android/material/chip/ChipGroup;->䆀:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/google/android/material/chip/ChipGroup;->䆀:I

    invoke-virtual {p0, p1}, L㺴/㚬/உ/䂻/ᾦ/㚬;->setLineSpacing(I)V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    :cond_0
    return-void
.end method

.method public setChipSpacingVerticalResource(I)V
    .locals 1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/ChipGroup;->setChipSpacingVertical(I)V

    return-void
.end method

.method public setDividerDrawableHorizontal(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Changing divider drawables have no effect. ChipGroup do not use divider drawables as spacing."

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setDividerDrawableVertical(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Changing divider drawables have no effect. ChipGroup do not use divider drawables as spacing."

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setFlexWrap(I)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Changing flex wrap not allowed. ChipGroup exposes a singleLine attribute instead."

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setOnCheckedChangeListener(Lcom/google/android/material/chip/ChipGroup$㺴;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/material/chip/ChipGroup;->ℓ:Lcom/google/android/material/chip/ChipGroup$㺴;

    return-void
.end method

.method public setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/chip/ChipGroup;->ಫ:Lcom/google/android/material/chip/ChipGroup$ḓ;

    invoke-static {v0, p1}, Lcom/google/android/material/chip/ChipGroup$ḓ;->உ(Lcom/google/android/material/chip/ChipGroup$ḓ;Landroid/view/ViewGroup$OnHierarchyChangeListener;)Landroid/view/ViewGroup$OnHierarchyChangeListener;

    return-void
.end method

.method public setShowDividerHorizontal(I)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Changing divider modes has no effect. ChipGroup do not use divider drawables as spacing."

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setShowDividerVertical(I)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Changing divider modes has no effect. ChipGroup do not use divider drawables as spacing."

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setSingleLine(I)V
    .locals 1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/ChipGroup;->setSingleLine(Z)V

    return-void
.end method

.method public setSingleLine(Z)V
    .locals 0

    invoke-super {p0, p1}, L㺴/㚬/உ/䂻/ᾦ/㚬;->setSingleLine(Z)V

    return-void
.end method

.method public setSingleSelection(I)V
    .locals 1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/ChipGroup;->setSingleSelection(Z)V

    return-void
.end method

.method public setSingleSelection(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/material/chip/ChipGroup;->ᆻ:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/google/android/material/chip/ChipGroup;->ᆻ:Z

    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipGroup;->ಫ()V

    :cond_0
    return-void
.end method

.method public ಫ()V
    .locals 4

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/material/chip/ChipGroup;->㹖:Z

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    instance-of v3, v2, Lcom/google/android/material/chip/Chip;

    if-eqz v3, :cond_0

    check-cast v2, Lcom/google/android/material/chip/Chip;

    invoke-virtual {v2, v0}, Lcom/google/android/material/chip/Chip;->setChecked(Z)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iput-boolean v0, p0, Lcom/google/android/material/chip/ChipGroup;->㹖:Z

    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcom/google/android/material/chip/ChipGroup;->setCheckedId(I)V

    return-void
.end method

.method public final 㧦(IZ)V
    .locals 1

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    instance-of v0, p1, Lcom/google/android/material/chip/Chip;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/material/chip/ChipGroup;->㹖:Z

    check-cast p1, Lcom/google/android/material/chip/Chip;

    invoke-virtual {p1, p2}, Lcom/google/android/material/chip/Chip;->setChecked(Z)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/material/chip/ChipGroup;->㹖:Z

    :cond_0
    return-void
.end method

.method public 䂻()Z
    .locals 1

    invoke-super {p0}, L㺴/㚬/உ/䂻/ᾦ/㚬;->䂻()Z

    move-result v0

    return v0
.end method
