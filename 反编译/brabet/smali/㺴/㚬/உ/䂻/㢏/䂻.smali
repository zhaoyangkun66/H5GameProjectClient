.class public final L㺴/㚬/உ/䂻/㢏/䂻;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final உ:Landroid/graphics/Rect;

.field public final ḓ:I

.field public final 㚬:Landroid/content/res/ColorStateList;

.field public final 㺴:Landroid/content/res/ColorStateList;

.field public final 䂻:Landroid/content/res/ColorStateList;

.field public final 䆀:L㺴/㚬/உ/䂻/ᱹ/㧦;


# direct methods
.method public constructor <init>(Landroid/content/res/ColorStateList;Landroid/content/res/ColorStateList;Landroid/content/res/ColorStateList;IL㺴/㚬/உ/䂻/ᱹ/㧦;Landroid/graphics/Rect;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget v0, p6, Landroid/graphics/Rect;->left:I

    invoke-static {v0}, L㚬/ℓ/㹖/ᆻ;->䂻(I)I

    iget v0, p6, Landroid/graphics/Rect;->top:I

    invoke-static {v0}, L㚬/ℓ/㹖/ᆻ;->䂻(I)I

    iget v0, p6, Landroid/graphics/Rect;->right:I

    invoke-static {v0}, L㚬/ℓ/㹖/ᆻ;->䂻(I)I

    iget v0, p6, Landroid/graphics/Rect;->bottom:I

    invoke-static {v0}, L㚬/ℓ/㹖/ᆻ;->䂻(I)I

    iput-object p6, p0, L㺴/㚬/உ/䂻/㢏/䂻;->உ:Landroid/graphics/Rect;

    iput-object p2, p0, L㺴/㚬/உ/䂻/㢏/䂻;->䂻:Landroid/content/res/ColorStateList;

    iput-object p1, p0, L㺴/㚬/உ/䂻/㢏/䂻;->㚬:Landroid/content/res/ColorStateList;

    iput-object p3, p0, L㺴/㚬/உ/䂻/㢏/䂻;->㺴:Landroid/content/res/ColorStateList;

    iput p4, p0, L㺴/㚬/உ/䂻/㢏/䂻;->ḓ:I

    iput-object p5, p0, L㺴/㚬/உ/䂻/㢏/䂻;->䆀:L㺴/㚬/உ/䂻/ᱹ/㧦;

    return-void
.end method

.method public static உ(Landroid/content/Context;I)L㺴/㚬/உ/䂻/㢏/䂻;
    .locals 12

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v2, "Cannot create a CalendarItemStyle with a styleResId of 0"

    invoke-static {v1, v2}, L㚬/ℓ/㹖/ᆻ;->உ(ZLjava/lang/Object;)V

    sget-object v1, L㺴/㚬/உ/䂻/㧦;->㲶:[I

    invoke-virtual {p0, p1, v1}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object p1

    sget v1, L㺴/㚬/உ/䂻/㧦;->㒶:I

    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v1

    sget v2, L㺴/㚬/உ/䂻/㧦;->ἇ:I

    invoke-virtual {p1, v2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v2

    sget v3, L㺴/㚬/உ/䂻/㧦;->㣩:I

    invoke-virtual {p1, v3, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v3

    sget v4, L㺴/㚬/உ/䂻/㧦;->㴟:I

    invoke-virtual {p1, v4, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v4

    new-instance v11, Landroid/graphics/Rect;

    invoke-direct {v11, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    sget v1, L㺴/㚬/உ/䂻/㧦;->ᄺ:I

    invoke-static {p0, p1, v1}, L㺴/㚬/உ/䂻/ש/㚬;->உ(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v6

    sget v1, L㺴/㚬/உ/䂻/㧦;->ጘ:I

    invoke-static {p0, p1, v1}, L㺴/㚬/உ/䂻/ש/㚬;->உ(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v7

    sget v1, L㺴/㚬/உ/䂻/㧦;->β:I

    invoke-static {p0, p1, v1}, L㺴/㚬/உ/䂻/ש/㚬;->உ(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v8

    sget v1, L㺴/㚬/உ/䂻/㧦;->ଜ:I

    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v9

    sget v1, L㺴/㚬/உ/䂻/㧦;->ഏ:I

    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    sget v2, L㺴/㚬/உ/䂻/㧦;->㷚:I

    invoke-virtual {p1, v2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    invoke-static {p0, v1, v0}, L㺴/㚬/உ/䂻/ᱹ/㧦;->䂻(Landroid/content/Context;II)L㺴/㚬/உ/䂻/ᱹ/㧦$䂻;

    move-result-object p0

    invoke-virtual {p0}, L㺴/㚬/உ/䂻/ᱹ/㧦$䂻;->ἥ()L㺴/㚬/உ/䂻/ᱹ/㧦;

    move-result-object v10

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    new-instance p0, L㺴/㚬/உ/䂻/㢏/䂻;

    move-object v5, p0

    invoke-direct/range {v5 .. v11}, L㺴/㚬/உ/䂻/㢏/䂻;-><init>(Landroid/content/res/ColorStateList;Landroid/content/res/ColorStateList;Landroid/content/res/ColorStateList;IL㺴/㚬/உ/䂻/ᱹ/㧦;Landroid/graphics/Rect;)V

    return-object p0
.end method


# virtual methods
.method public 㚬()I
    .locals 1

    iget-object v0, p0, L㺴/㚬/உ/䂻/㢏/䂻;->உ:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    return v0
.end method

.method public 㺴(Landroid/widget/TextView;)V
    .locals 10

    new-instance v0, L㺴/㚬/உ/䂻/ᱹ/ᆻ;

    invoke-direct {v0}, L㺴/㚬/உ/䂻/ᱹ/ᆻ;-><init>()V

    new-instance v1, L㺴/㚬/உ/䂻/ᱹ/ᆻ;

    invoke-direct {v1}, L㺴/㚬/உ/䂻/ᱹ/ᆻ;-><init>()V

    iget-object v2, p0, L㺴/㚬/உ/䂻/㢏/䂻;->䆀:L㺴/㚬/உ/䂻/ᱹ/㧦;

    invoke-virtual {v0, v2}, L㺴/㚬/உ/䂻/ᱹ/ᆻ;->setShapeAppearanceModel(L㺴/㚬/உ/䂻/ᱹ/㧦;)V

    iget-object v2, p0, L㺴/㚬/உ/䂻/㢏/䂻;->䆀:L㺴/㚬/உ/䂻/ᱹ/㧦;

    invoke-virtual {v1, v2}, L㺴/㚬/உ/䂻/ᱹ/ᆻ;->setShapeAppearanceModel(L㺴/㚬/உ/䂻/ᱹ/㧦;)V

    iget-object v2, p0, L㺴/㚬/உ/䂻/㢏/䂻;->㚬:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v2}, L㺴/㚬/உ/䂻/ᱹ/ᆻ;->ᭊ(Landroid/content/res/ColorStateList;)V

    iget v2, p0, L㺴/㚬/உ/䂻/㢏/䂻;->ḓ:I

    int-to-float v2, v2

    iget-object v3, p0, L㺴/㚬/உ/䂻/㢏/䂻;->㺴:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v2, v3}, L㺴/㚬/உ/䂻/ᱹ/ᆻ;->ᘚ(FLandroid/content/res/ColorStateList;)V

    iget-object v2, p0, L㺴/㚬/உ/䂻/㢏/䂻;->䂻:Landroid/content/res/ColorStateList;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_0

    new-instance v2, Landroid/graphics/drawable/RippleDrawable;

    iget-object v3, p0, L㺴/㚬/உ/䂻/㢏/䂻;->䂻:Landroid/content/res/ColorStateList;

    const/16 v4, 0x1e

    invoke-virtual {v3, v4}, Landroid/content/res/ColorStateList;->withAlpha(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    invoke-direct {v2, v3, v0, v1}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    move-object v5, v2

    goto :goto_0

    :cond_0
    move-object v5, v0

    :goto_0
    new-instance v0, Landroid/graphics/drawable/InsetDrawable;

    iget-object v1, p0, L㺴/㚬/உ/䂻/㢏/䂻;->உ:Landroid/graphics/Rect;

    iget v6, v1, Landroid/graphics/Rect;->left:I

    iget v7, v1, Landroid/graphics/Rect;->top:I

    iget v8, v1, Landroid/graphics/Rect;->right:I

    iget v9, v1, Landroid/graphics/Rect;->bottom:I

    move-object v4, v0

    invoke-direct/range {v4 .. v9}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    invoke-static {p1, v0}, L㚬/ℓ/ἥ/㭲;->㠭(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public 䂻()I
    .locals 1

    iget-object v0, p0, L㺴/㚬/உ/䂻/㢏/䂻;->உ:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    return v0
.end method
