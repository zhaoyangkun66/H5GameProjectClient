.class public L㺴/㚬/உ/䂻/ᓭ/உ;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final 㭲:Z


# instance fields
.field public final உ:Lcom/google/android/material/button/MaterialButton;

.field public ಫ:Landroid/content/res/ColorStateList;

.field public ཇ:Z

.field public ბ:Z

.field public ᆻ:I

.field public ᓭ:Z

.field public ḓ:I

.field public ἥ:Landroid/graphics/drawable/Drawable;

.field public ℓ:I

.field public ㄏ:Landroid/graphics/PorterDuff$Mode;

.field public 㚬:I

.field public 㞘:Landroid/graphics/drawable/LayerDrawable;

.field public 㧦:Landroid/content/res/ColorStateList;

.field public 㲝:Z

.field public 㹖:Landroid/content/res/ColorStateList;

.field public 㺴:I

.field public 䂻:L㺴/㚬/உ/䂻/ᱹ/㧦;

.field public 䆀:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, L㺴/㚬/உ/䂻/ᓭ/உ;->㭲:Z

    return-void
.end method

.method public constructor <init>(Lcom/google/android/material/button/MaterialButton;L㺴/㚬/உ/䂻/ᱹ/㧦;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, L㺴/㚬/உ/䂻/ᓭ/உ;->ཇ:Z

    iput-boolean v0, p0, L㺴/㚬/உ/䂻/ᓭ/உ;->ᓭ:Z

    iput-boolean v0, p0, L㺴/㚬/உ/䂻/ᓭ/உ;->ბ:Z

    iput-object p1, p0, L㺴/㚬/உ/䂻/ᓭ/உ;->உ:Lcom/google/android/material/button/MaterialButton;

    iput-object p2, p0, L㺴/㚬/உ/䂻/ᓭ/உ;->䂻:L㺴/㚬/உ/䂻/ᱹ/㧦;

    return-void
.end method


# virtual methods
.method public final ڈ()V
    .locals 4

    invoke-virtual {p0}, L㺴/㚬/உ/䂻/ᓭ/உ;->㺴()L㺴/㚬/உ/䂻/ᱹ/ᆻ;

    move-result-object v0

    invoke-virtual {p0}, L㺴/㚬/உ/䂻/ᓭ/உ;->㹖()L㺴/㚬/உ/䂻/ᱹ/ᆻ;

    move-result-object v1

    if-eqz v0, :cond_1

    iget v2, p0, L㺴/㚬/உ/䂻/ᓭ/உ;->ℓ:I

    int-to-float v2, v2

    iget-object v3, p0, L㺴/㚬/உ/䂻/ᓭ/உ;->㧦:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v2, v3}, L㺴/㚬/உ/䂻/ᱹ/ᆻ;->ᘚ(FLandroid/content/res/ColorStateList;)V

    if-eqz v1, :cond_1

    iget v0, p0, L㺴/㚬/உ/䂻/ᓭ/உ;->ℓ:I

    int-to-float v0, v0

    iget-boolean v2, p0, L㺴/㚬/உ/䂻/ᓭ/உ;->ཇ:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, L㺴/㚬/உ/䂻/ᓭ/உ;->உ:Lcom/google/android/material/button/MaterialButton;

    sget v3, L㺴/㚬/உ/䂻/䂻;->ಫ:I

    invoke-static {v2, v3}, L㺴/㚬/உ/䂻/㖪/உ;->㚬(Landroid/view/View;I)I

    move-result v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v1, v0, v2}, L㺴/㚬/உ/䂻/ᱹ/ᆻ;->㲊(FI)V

    :cond_1
    return-void
.end method

.method public final உ()Landroid/graphics/drawable/Drawable;
    .locals 8

    new-instance v0, L㺴/㚬/உ/䂻/ᱹ/ᆻ;

    iget-object v1, p0, L㺴/㚬/உ/䂻/ᓭ/உ;->䂻:L㺴/㚬/உ/䂻/ᱹ/㧦;

    invoke-direct {v0, v1}, L㺴/㚬/உ/䂻/ᱹ/ᆻ;-><init>(L㺴/㚬/உ/䂻/ᱹ/㧦;)V

    iget-object v1, p0, L㺴/㚬/உ/䂻/ᓭ/உ;->உ:Lcom/google/android/material/button/MaterialButton;

    invoke-virtual {v1}, Landroid/widget/Button;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, L㺴/㚬/உ/䂻/ᱹ/ᆻ;->㭢(Landroid/content/Context;)V

    iget-object v1, p0, L㺴/㚬/உ/䂻/ᓭ/உ;->ಫ:Landroid/content/res/ColorStateList;

    invoke-static {v0, v1}, L㚬/ℓ/䆀/㹖/உ;->ᓭ(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    iget-object v1, p0, L㺴/㚬/உ/䂻/ᓭ/உ;->ㄏ:Landroid/graphics/PorterDuff$Mode;

    if-eqz v1, :cond_0

    invoke-static {v0, v1}, L㚬/ℓ/䆀/㹖/உ;->ბ(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V

    :cond_0
    iget v1, p0, L㺴/㚬/உ/䂻/ᓭ/உ;->ℓ:I

    int-to-float v1, v1

    iget-object v2, p0, L㺴/㚬/உ/䂻/ᓭ/உ;->㧦:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1, v2}, L㺴/㚬/உ/䂻/ᱹ/ᆻ;->ᘚ(FLandroid/content/res/ColorStateList;)V

    new-instance v1, L㺴/㚬/உ/䂻/ᱹ/ᆻ;

    iget-object v2, p0, L㺴/㚬/உ/䂻/ᓭ/உ;->䂻:L㺴/㚬/உ/䂻/ᱹ/㧦;

    invoke-direct {v1, v2}, L㺴/㚬/உ/䂻/ᱹ/ᆻ;-><init>(L㺴/㚬/உ/䂻/ᱹ/㧦;)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, L㺴/㚬/உ/䂻/ᱹ/ᆻ;->setTint(I)V

    iget v3, p0, L㺴/㚬/உ/䂻/ᓭ/உ;->ℓ:I

    int-to-float v3, v3

    iget-boolean v4, p0, L㺴/㚬/உ/䂻/ᓭ/உ;->ཇ:Z

    if-eqz v4, :cond_1

    iget-object v4, p0, L㺴/㚬/உ/䂻/ᓭ/உ;->உ:Lcom/google/android/material/button/MaterialButton;

    sget v5, L㺴/㚬/உ/䂻/䂻;->ಫ:I

    invoke-static {v4, v5}, L㺴/㚬/உ/䂻/㖪/உ;->㚬(Landroid/view/View;I)I

    move-result v4

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    :goto_0
    invoke-virtual {v1, v3, v4}, L㺴/㚬/உ/䂻/ᱹ/ᆻ;->㲊(FI)V

    sget-boolean v3, L㺴/㚬/உ/䂻/ᓭ/உ;->㭲:Z

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v3, :cond_2

    new-instance v3, L㺴/㚬/உ/䂻/ᱹ/ᆻ;

    iget-object v6, p0, L㺴/㚬/உ/䂻/ᓭ/உ;->䂻:L㺴/㚬/உ/䂻/ᱹ/㧦;

    invoke-direct {v3, v6}, L㺴/㚬/உ/䂻/ᱹ/ᆻ;-><init>(L㺴/㚬/உ/䂻/ᱹ/㧦;)V

    iput-object v3, p0, L㺴/㚬/உ/䂻/ᓭ/உ;->ἥ:Landroid/graphics/drawable/Drawable;

    const/4 v6, -0x1

    invoke-static {v3, v6}, L㚬/ℓ/䆀/㹖/உ;->ཇ(Landroid/graphics/drawable/Drawable;I)V

    new-instance v3, Landroid/graphics/drawable/RippleDrawable;

    iget-object v6, p0, L㺴/㚬/உ/䂻/ᓭ/உ;->㹖:Landroid/content/res/ColorStateList;

    invoke-static {v6}, L㺴/㚬/உ/䂻/㨃/䂻;->உ(Landroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;

    move-result-object v6

    new-instance v7, Landroid/graphics/drawable/LayerDrawable;

    new-array v4, v4, [Landroid/graphics/drawable/Drawable;

    aput-object v1, v4, v2

    aput-object v0, v4, v5

    invoke-direct {v7, v4}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0, v7}, L㺴/㚬/உ/䂻/ᓭ/உ;->㰫(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/InsetDrawable;

    move-result-object v0

    iget-object v1, p0, L㺴/㚬/உ/䂻/ᓭ/உ;->ἥ:Landroid/graphics/drawable/Drawable;

    invoke-direct {v3, v6, v0, v1}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iput-object v3, p0, L㺴/㚬/உ/䂻/ᓭ/உ;->㞘:Landroid/graphics/drawable/LayerDrawable;

    return-object v3

    :cond_2
    new-instance v3, L㺴/㚬/உ/䂻/㨃/உ;

    iget-object v6, p0, L㺴/㚬/உ/䂻/ᓭ/உ;->䂻:L㺴/㚬/உ/䂻/ᱹ/㧦;

    invoke-direct {v3, v6}, L㺴/㚬/உ/䂻/㨃/உ;-><init>(L㺴/㚬/உ/䂻/ᱹ/㧦;)V

    iput-object v3, p0, L㺴/㚬/உ/䂻/ᓭ/உ;->ἥ:Landroid/graphics/drawable/Drawable;

    iget-object v6, p0, L㺴/㚬/உ/䂻/ᓭ/உ;->㹖:Landroid/content/res/ColorStateList;

    invoke-static {v6}, L㺴/㚬/உ/䂻/㨃/䂻;->உ(Landroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;

    move-result-object v6

    invoke-static {v3, v6}, L㚬/ℓ/䆀/㹖/உ;->ᓭ(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    new-instance v3, Landroid/graphics/drawable/LayerDrawable;

    const/4 v6, 0x3

    new-array v6, v6, [Landroid/graphics/drawable/Drawable;

    aput-object v1, v6, v2

    aput-object v0, v6, v5

    iget-object v0, p0, L㺴/㚬/உ/䂻/ᓭ/உ;->ἥ:Landroid/graphics/drawable/Drawable;

    aput-object v0, v6, v4

    invoke-direct {v3, v6}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    iput-object v3, p0, L㺴/㚬/உ/䂻/ᓭ/உ;->㞘:Landroid/graphics/drawable/LayerDrawable;

    invoke-virtual {p0, v3}, L㺴/㚬/உ/䂻/ᓭ/உ;->㰫(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/InsetDrawable;

    move-result-object v0

    return-object v0
.end method

.method public final ಋ(L㺴/㚬/உ/䂻/ᱹ/㧦;)V
    .locals 1

    invoke-virtual {p0}, L㺴/㚬/உ/䂻/ᓭ/உ;->㺴()L㺴/㚬/உ/䂻/ᱹ/ᆻ;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, L㺴/㚬/உ/䂻/ᓭ/உ;->㺴()L㺴/㚬/உ/䂻/ᱹ/ᆻ;

    move-result-object v0

    invoke-virtual {v0, p1}, L㺴/㚬/உ/䂻/ᱹ/ᆻ;->setShapeAppearanceModel(L㺴/㚬/உ/䂻/ᱹ/㧦;)V

    :cond_0
    invoke-virtual {p0}, L㺴/㚬/உ/䂻/ᓭ/உ;->㹖()L㺴/㚬/உ/䂻/ᱹ/ᆻ;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, L㺴/㚬/உ/䂻/ᓭ/உ;->㹖()L㺴/㚬/உ/䂻/ᱹ/ᆻ;

    move-result-object v0

    invoke-virtual {v0, p1}, L㺴/㚬/உ/䂻/ᱹ/ᆻ;->setShapeAppearanceModel(L㺴/㚬/உ/䂻/ᱹ/㧦;)V

    :cond_1
    invoke-virtual {p0}, L㺴/㚬/உ/䂻/ᓭ/உ;->㚬()L㺴/㚬/உ/䂻/ᱹ/ཇ;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, L㺴/㚬/உ/䂻/ᓭ/உ;->㚬()L㺴/㚬/உ/䂻/ᱹ/ཇ;

    move-result-object v0

    invoke-interface {v0, p1}, L㺴/㚬/உ/䂻/ᱹ/ཇ;->setShapeAppearanceModel(L㺴/㚬/உ/䂻/ᱹ/㧦;)V

    :cond_2
    return-void
.end method

.method public ಫ()Landroid/content/res/ColorStateList;
    .locals 1

    iget-object v0, p0, L㺴/㚬/உ/䂻/ᓭ/உ;->ಫ:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public ม(Landroid/content/res/ColorStateList;)V
    .locals 1

    iget-object v0, p0, L㺴/㚬/உ/䂻/ᓭ/உ;->㧦:Landroid/content/res/ColorStateList;

    if-eq v0, p1, :cond_0

    iput-object p1, p0, L㺴/㚬/உ/䂻/ᓭ/உ;->㧦:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, L㺴/㚬/உ/䂻/ᓭ/உ;->ڈ()V

    :cond_0
    return-void
.end method

.method public ཇ()Z
    .locals 1

    iget-boolean v0, p0, L㺴/㚬/உ/䂻/ᓭ/உ;->㲝:Z

    return v0
.end method

.method public ბ(I)V
    .locals 1

    invoke-virtual {p0}, L㺴/㚬/உ/䂻/ᓭ/உ;->㺴()L㺴/㚬/உ/䂻/ᱹ/ᆻ;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, L㺴/㚬/உ/䂻/ᓭ/உ;->㺴()L㺴/㚬/உ/䂻/ᱹ/ᆻ;

    move-result-object v0

    invoke-virtual {v0, p1}, L㺴/㚬/உ/䂻/ᱹ/ᆻ;->setTint(I)V

    :cond_0
    return-void
.end method

.method public ᆻ()L㺴/㚬/உ/䂻/ᱹ/㧦;
    .locals 1

    iget-object v0, p0, L㺴/㚬/உ/䂻/ᓭ/உ;->䂻:L㺴/㚬/உ/䂻/ᱹ/㧦;

    return-object v0
.end method

.method public ᓭ(Landroid/content/res/TypedArray;)V
    .locals 6

    sget v0, L㺴/㚬/உ/䂻/㧦;->㱱:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v0

    iput v0, p0, L㺴/㚬/உ/䂻/ᓭ/உ;->㚬:I

    sget v0, L㺴/㚬/உ/䂻/㧦;->Ӣ:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v0

    iput v0, p0, L㺴/㚬/உ/䂻/ᓭ/உ;->㺴:I

    sget v0, L㺴/㚬/உ/䂻/㧦;->ᗫ:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v0

    iput v0, p0, L㺴/㚬/உ/䂻/ᓭ/உ;->ḓ:I

    sget v0, L㺴/㚬/உ/䂻/㧦;->㴩:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v0

    iput v0, p0, L㺴/㚬/உ/䂻/ᓭ/உ;->䆀:I

    sget v0, L㺴/㚬/உ/䂻/㧦;->ᴇ:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    const/4 v3, -0x1

    if-eqz v2, :cond_0

    invoke-virtual {p1, v0, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, L㺴/㚬/உ/䂻/ᓭ/உ;->ᆻ:I

    iget-object v2, p0, L㺴/㚬/உ/䂻/ᓭ/உ;->䂻:L㺴/㚬/உ/䂻/ᱹ/㧦;

    int-to-float v0, v0

    invoke-virtual {v2, v0}, L㺴/㚬/உ/䂻/ᱹ/㧦;->ม(F)L㺴/㚬/உ/䂻/ᱹ/㧦;

    move-result-object v0

    invoke-virtual {p0, v0}, L㺴/㚬/உ/䂻/ᓭ/உ;->㖪(L㺴/㚬/உ/䂻/ᱹ/㧦;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, L㺴/㚬/உ/䂻/ᓭ/உ;->ბ:Z

    :cond_0
    sget v0, L㺴/㚬/உ/䂻/㧦;->㑹:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, L㺴/㚬/உ/䂻/ᓭ/உ;->ℓ:I

    sget v0, L㺴/㚬/உ/䂻/㧦;->ᵁ:I

    invoke-virtual {p1, v0, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-static {v0, v2}, L㺴/㚬/உ/䂻/ᾦ/ℓ;->㚬(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v0

    iput-object v0, p0, L㺴/㚬/உ/䂻/ᓭ/உ;->ㄏ:Landroid/graphics/PorterDuff$Mode;

    iget-object v0, p0, L㺴/㚬/உ/䂻/ᓭ/உ;->உ:Lcom/google/android/material/button/MaterialButton;

    invoke-virtual {v0}, Landroid/widget/Button;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v2, L㺴/㚬/உ/䂻/㧦;->䆚:I

    invoke-static {v0, p1, v2}, L㺴/㚬/உ/䂻/ש/㚬;->உ(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, L㺴/㚬/உ/䂻/ᓭ/உ;->ಫ:Landroid/content/res/ColorStateList;

    iget-object v0, p0, L㺴/㚬/உ/䂻/ᓭ/உ;->உ:Lcom/google/android/material/button/MaterialButton;

    invoke-virtual {v0}, Landroid/widget/Button;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v2, L㺴/㚬/உ/䂻/㧦;->䉃:I

    invoke-static {v0, p1, v2}, L㺴/㚬/உ/䂻/ש/㚬;->உ(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, L㺴/㚬/உ/䂻/ᓭ/உ;->㧦:Landroid/content/res/ColorStateList;

    iget-object v0, p0, L㺴/㚬/உ/䂻/ᓭ/உ;->உ:Lcom/google/android/material/button/MaterialButton;

    invoke-virtual {v0}, Landroid/widget/Button;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v2, L㺴/㚬/உ/䂻/㧦;->ሩ:I

    invoke-static {v0, p1, v2}, L㺴/㚬/உ/䂻/ש/㚬;->உ(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, L㺴/㚬/உ/䂻/ᓭ/உ;->㹖:Landroid/content/res/ColorStateList;

    sget v0, L㺴/㚬/உ/䂻/㧦;->ᓟ:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, L㺴/㚬/உ/䂻/ᓭ/உ;->㲝:Z

    sget v0, L㺴/㚬/உ/䂻/㧦;->ፖ:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p1

    iget-object v0, p0, L㺴/㚬/உ/䂻/ᓭ/உ;->உ:Lcom/google/android/material/button/MaterialButton;

    invoke-static {v0}, L㚬/ℓ/ἥ/㭲;->ᾦ(Landroid/view/View;)I

    move-result v0

    iget-object v1, p0, L㺴/㚬/உ/䂻/ᓭ/உ;->உ:Lcom/google/android/material/button/MaterialButton;

    invoke-virtual {v1}, Landroid/widget/Button;->getPaddingTop()I

    move-result v1

    iget-object v2, p0, L㺴/㚬/உ/䂻/ᓭ/உ;->உ:Lcom/google/android/material/button/MaterialButton;

    invoke-static {v2}, L㚬/ℓ/ἥ/㭲;->ಋ(Landroid/view/View;)I

    move-result v2

    iget-object v3, p0, L㺴/㚬/உ/䂻/ᓭ/உ;->உ:Lcom/google/android/material/button/MaterialButton;

    invoke-virtual {v3}, Landroid/widget/Button;->getPaddingBottom()I

    move-result v3

    iget-object v4, p0, L㺴/㚬/உ/䂻/ᓭ/உ;->உ:Lcom/google/android/material/button/MaterialButton;

    invoke-virtual {p0}, L㺴/㚬/உ/䂻/ᓭ/உ;->உ()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/google/android/material/button/MaterialButton;->setInternalBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0}, L㺴/㚬/உ/䂻/ᓭ/உ;->㺴()L㺴/㚬/உ/䂻/ᱹ/ᆻ;

    move-result-object v4

    if-eqz v4, :cond_1

    int-to-float p1, p1

    invoke-virtual {v4, p1}, L㺴/㚬/உ/䂻/ᱹ/ᆻ;->ⵦ(F)V

    :cond_1
    iget-object p1, p0, L㺴/㚬/உ/䂻/ᓭ/உ;->உ:Lcom/google/android/material/button/MaterialButton;

    iget v4, p0, L㺴/㚬/உ/䂻/ᓭ/உ;->㚬:I

    add-int/2addr v0, v4

    iget v4, p0, L㺴/㚬/உ/䂻/ᓭ/உ;->ḓ:I

    add-int/2addr v1, v4

    iget v4, p0, L㺴/㚬/உ/䂻/ᓭ/உ;->㺴:I

    add-int/2addr v2, v4

    iget v4, p0, L㺴/㚬/உ/䂻/ᓭ/உ;->䆀:I

    add-int/2addr v3, v4

    invoke-static {p1, v0, v1, v2, v3}, L㚬/ℓ/ἥ/㭲;->ϣ(Landroid/view/View;IIII)V

    return-void
.end method

.method public final ḓ(Z)L㺴/㚬/உ/䂻/ᱹ/ᆻ;
    .locals 2

    iget-object v0, p0, L㺴/㚬/உ/䂻/ᓭ/உ;->㞘:Landroid/graphics/drawable/LayerDrawable;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/graphics/drawable/LayerDrawable;->getNumberOfLayers()I

    move-result v0

    if-lez v0, :cond_1

    sget-boolean v0, L㺴/㚬/உ/䂻/ᓭ/உ;->㭲:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, L㺴/㚬/உ/䂻/ᓭ/உ;->㞘:Landroid/graphics/drawable/LayerDrawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/InsetDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/InsetDrawable;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/LayerDrawable;

    :goto_0
    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, L㺴/㚬/உ/䂻/ᱹ/ᆻ;

    return-object p1

    :cond_0
    iget-object v0, p0, L㺴/㚬/உ/䂻/ᓭ/உ;->㞘:Landroid/graphics/drawable/LayerDrawable;

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public ḙ(Landroid/content/res/ColorStateList;)V
    .locals 2

    iget-object v0, p0, L㺴/㚬/உ/䂻/ᓭ/உ;->㹖:Landroid/content/res/ColorStateList;

    if-eq v0, p1, :cond_1

    iput-object p1, p0, L㺴/㚬/உ/䂻/ᓭ/உ;->㹖:Landroid/content/res/ColorStateList;

    sget-boolean v0, L㺴/㚬/உ/䂻/ᓭ/உ;->㭲:Z

    if-eqz v0, :cond_0

    iget-object v1, p0, L㺴/㚬/உ/䂻/ᓭ/உ;->உ:Lcom/google/android/material/button/MaterialButton;

    invoke-virtual {v1}, Landroid/widget/Button;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    instance-of v1, v1, Landroid/graphics/drawable/RippleDrawable;

    if-eqz v1, :cond_0

    iget-object v0, p0, L㺴/㚬/உ/䂻/ᓭ/உ;->உ:Lcom/google/android/material/button/MaterialButton;

    invoke-virtual {v0}, Landroid/widget/Button;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/RippleDrawable;

    invoke-static {p1}, L㺴/㚬/உ/䂻/㨃/䂻;->உ(Landroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/RippleDrawable;->setColor(Landroid/content/res/ColorStateList;)V

    goto :goto_0

    :cond_0
    if-nez v0, :cond_1

    iget-object v0, p0, L㺴/㚬/உ/䂻/ᓭ/உ;->உ:Lcom/google/android/material/button/MaterialButton;

    invoke-virtual {v0}, Landroid/widget/Button;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v0, v0, L㺴/㚬/உ/䂻/㨃/உ;

    if-eqz v0, :cond_1

    iget-object v0, p0, L㺴/㚬/உ/䂻/ᓭ/உ;->உ:Lcom/google/android/material/button/MaterialButton;

    invoke-virtual {v0}, Landroid/widget/Button;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, L㺴/㚬/உ/䂻/㨃/உ;

    invoke-static {p1}, L㺴/㚬/உ/䂻/㨃/䂻;->உ(Landroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {v0, p1}, L㺴/㚬/உ/䂻/㨃/உ;->setTintList(Landroid/content/res/ColorStateList;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public ἥ()Z
    .locals 1

    iget-boolean v0, p0, L㺴/㚬/உ/䂻/ᓭ/உ;->ᓭ:Z

    return v0
.end method

.method public ᾦ(II)V
    .locals 4

    iget-object v0, p0, L㺴/㚬/உ/䂻/ᓭ/உ;->ἥ:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget v1, p0, L㺴/㚬/உ/䂻/ᓭ/உ;->㚬:I

    iget v2, p0, L㺴/㚬/உ/䂻/ᓭ/உ;->ḓ:I

    iget v3, p0, L㺴/㚬/உ/䂻/ᓭ/உ;->㺴:I

    sub-int/2addr p2, v3

    iget v3, p0, L㺴/㚬/உ/䂻/ᓭ/உ;->䆀:I

    sub-int/2addr p1, v3

    invoke-virtual {v0, v1, v2, p2, p1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_0
    return-void
.end method

.method public ℓ()Landroid/content/res/ColorStateList;
    .locals 1

    iget-object v0, p0, L㺴/㚬/உ/䂻/ᓭ/உ;->㧦:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public ㄏ()I
    .locals 1

    iget v0, p0, L㺴/㚬/உ/䂻/ᓭ/உ;->ℓ:I

    return v0
.end method

.method public ㄬ(Landroid/content/res/ColorStateList;)V
    .locals 1

    iget-object v0, p0, L㺴/㚬/உ/䂻/ᓭ/உ;->ಫ:Landroid/content/res/ColorStateList;

    if-eq v0, p1, :cond_0

    iput-object p1, p0, L㺴/㚬/உ/䂻/ᓭ/உ;->ಫ:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, L㺴/㚬/உ/䂻/ᓭ/உ;->㺴()L㺴/㚬/உ/䂻/ᱹ/ᆻ;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, L㺴/㚬/உ/䂻/ᓭ/உ;->㺴()L㺴/㚬/உ/䂻/ᱹ/ᆻ;

    move-result-object p1

    iget-object v0, p0, L㺴/㚬/உ/䂻/ᓭ/உ;->ಫ:Landroid/content/res/ColorStateList;

    invoke-static {p1, v0}, L㚬/ℓ/䆀/㹖/உ;->ᓭ(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method

.method public 㖪(L㺴/㚬/உ/䂻/ᱹ/㧦;)V
    .locals 0

    iput-object p1, p0, L㺴/㚬/உ/䂻/ᓭ/உ;->䂻:L㺴/㚬/உ/䂻/ᱹ/㧦;

    invoke-virtual {p0, p1}, L㺴/㚬/உ/䂻/ᓭ/உ;->ಋ(L㺴/㚬/உ/䂻/ᱹ/㧦;)V

    return-void
.end method

.method public 㚬()L㺴/㚬/உ/䂻/ᱹ/ཇ;
    .locals 3

    iget-object v0, p0, L㺴/㚬/உ/䂻/ᓭ/உ;->㞘:Landroid/graphics/drawable/LayerDrawable;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/graphics/drawable/LayerDrawable;->getNumberOfLayers()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    iget-object v0, p0, L㺴/㚬/உ/䂻/ᓭ/உ;->㞘:Landroid/graphics/drawable/LayerDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/LayerDrawable;->getNumberOfLayers()I

    move-result v0

    const/4 v2, 0x2

    if-le v0, v2, :cond_0

    iget-object v0, p0, L㺴/㚬/உ/䂻/ᓭ/உ;->㞘:Landroid/graphics/drawable/LayerDrawable;

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_0
    check-cast v0, L㺴/㚬/உ/䂻/ᱹ/ཇ;

    return-object v0

    :cond_0
    iget-object v0, p0, L㺴/㚬/உ/䂻/ᓭ/உ;->㞘:Landroid/graphics/drawable/LayerDrawable;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public 㞘(Z)V
    .locals 0

    iput-boolean p1, p0, L㺴/㚬/உ/䂻/ᓭ/உ;->㲝:Z

    return-void
.end method

.method public 㢏(Z)V
    .locals 0

    iput-boolean p1, p0, L㺴/㚬/உ/䂻/ᓭ/உ;->ཇ:Z

    invoke-virtual {p0}, L㺴/㚬/உ/䂻/ᓭ/உ;->ڈ()V

    return-void
.end method

.method public 㧦()Landroid/graphics/PorterDuff$Mode;
    .locals 1

    iget-object v0, p0, L㺴/㚬/உ/䂻/ᓭ/உ;->ㄏ:Landroid/graphics/PorterDuff$Mode;

    return-object v0
.end method

.method public 㫏(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1

    iget-object v0, p0, L㺴/㚬/உ/䂻/ᓭ/உ;->ㄏ:Landroid/graphics/PorterDuff$Mode;

    if-eq v0, p1, :cond_0

    iput-object p1, p0, L㺴/㚬/உ/䂻/ᓭ/உ;->ㄏ:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p0}, L㺴/㚬/உ/䂻/ᓭ/உ;->㺴()L㺴/㚬/உ/䂻/ᱹ/ᆻ;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, L㺴/㚬/உ/䂻/ᓭ/உ;->ㄏ:Landroid/graphics/PorterDuff$Mode;

    if-eqz p1, :cond_0

    invoke-virtual {p0}, L㺴/㚬/உ/䂻/ᓭ/உ;->㺴()L㺴/㚬/உ/䂻/ᱹ/ᆻ;

    move-result-object p1

    iget-object v0, p0, L㺴/㚬/உ/䂻/ᓭ/உ;->ㄏ:Landroid/graphics/PorterDuff$Mode;

    invoke-static {p1, v0}, L㚬/ℓ/䆀/㹖/உ;->ბ(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V

    :cond_0
    return-void
.end method

.method public 㭲(I)V
    .locals 1

    iget-boolean v0, p0, L㺴/㚬/உ/䂻/ᓭ/உ;->ბ:Z

    if-eqz v0, :cond_0

    iget v0, p0, L㺴/㚬/உ/䂻/ᓭ/உ;->ᆻ:I

    if-eq v0, p1, :cond_1

    :cond_0
    iput p1, p0, L㺴/㚬/உ/䂻/ᓭ/உ;->ᆻ:I

    const/4 v0, 0x1

    iput-boolean v0, p0, L㺴/㚬/உ/䂻/ᓭ/உ;->ბ:Z

    iget-object v0, p0, L㺴/㚬/உ/䂻/ᓭ/உ;->䂻:L㺴/㚬/உ/䂻/ᱹ/㧦;

    int-to-float p1, p1

    invoke-virtual {v0, p1}, L㺴/㚬/உ/䂻/ᱹ/㧦;->ม(F)L㺴/㚬/உ/䂻/ᱹ/㧦;

    move-result-object p1

    invoke-virtual {p0, p1}, L㺴/㚬/உ/䂻/ᓭ/உ;->㖪(L㺴/㚬/உ/䂻/ᱹ/㧦;)V

    :cond_1
    return-void
.end method

.method public final 㰫(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/InsetDrawable;
    .locals 7

    new-instance v6, Landroid/graphics/drawable/InsetDrawable;

    iget v2, p0, L㺴/㚬/உ/䂻/ᓭ/உ;->㚬:I

    iget v3, p0, L㺴/㚬/உ/䂻/ᓭ/உ;->ḓ:I

    iget v4, p0, L㺴/㚬/உ/䂻/ᓭ/உ;->㺴:I

    iget v5, p0, L㺴/㚬/உ/䂻/ᓭ/உ;->䆀:I

    move-object v0, v6

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    return-object v6
.end method

.method public 㲝()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, L㺴/㚬/உ/䂻/ᓭ/உ;->ᓭ:Z

    iget-object v0, p0, L㺴/㚬/உ/䂻/ᓭ/உ;->உ:Lcom/google/android/material/button/MaterialButton;

    iget-object v1, p0, L㺴/㚬/உ/䂻/ᓭ/உ;->ಫ:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Lcom/google/android/material/button/MaterialButton;->setSupportBackgroundTintList(Landroid/content/res/ColorStateList;)V

    iget-object v0, p0, L㺴/㚬/உ/䂻/ᓭ/உ;->உ:Lcom/google/android/material/button/MaterialButton;

    iget-object v1, p0, L㺴/㚬/உ/䂻/ᓭ/உ;->ㄏ:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1}, Lcom/google/android/material/button/MaterialButton;->setSupportBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V

    return-void
.end method

.method public 㲧(I)V
    .locals 1

    iget v0, p0, L㺴/㚬/உ/䂻/ᓭ/உ;->ℓ:I

    if-eq v0, p1, :cond_0

    iput p1, p0, L㺴/㚬/உ/䂻/ᓭ/உ;->ℓ:I

    invoke-virtual {p0}, L㺴/㚬/உ/䂻/ᓭ/உ;->ڈ()V

    :cond_0
    return-void
.end method

.method public final 㹖()L㺴/㚬/உ/䂻/ᱹ/ᆻ;
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, L㺴/㚬/உ/䂻/ᓭ/உ;->ḓ(Z)L㺴/㚬/உ/䂻/ᱹ/ᆻ;

    move-result-object v0

    return-object v0
.end method

.method public 㺴()L㺴/㚬/உ/䂻/ᱹ/ᆻ;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, L㺴/㚬/உ/䂻/ᓭ/உ;->ḓ(Z)L㺴/㚬/உ/䂻/ᱹ/ᆻ;

    move-result-object v0

    return-object v0
.end method

.method public 䂻()I
    .locals 1

    iget v0, p0, L㺴/㚬/உ/䂻/ᓭ/உ;->ᆻ:I

    return v0
.end method

.method public 䆀()Landroid/content/res/ColorStateList;
    .locals 1

    iget-object v0, p0, L㺴/㚬/உ/䂻/ᓭ/உ;->㹖:Landroid/content/res/ColorStateList;

    return-object v0
.end method
