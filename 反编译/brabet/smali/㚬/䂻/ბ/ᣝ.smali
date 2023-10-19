.class public L㚬/䂻/ბ/ᣝ;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final உ:Landroid/content/Context;

.field public 㚬:Landroid/util/TypedValue;

.field public final 䂻:Landroid/content/res/TypedArray;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/res/TypedArray;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, L㚬/䂻/ბ/ᣝ;->உ:Landroid/content/Context;

    iput-object p2, p0, L㚬/䂻/ბ/ᣝ;->䂻:Landroid/content/res/TypedArray;

    return-void
.end method

.method public static ḙ(Landroid/content/Context;Landroid/util/AttributeSet;[I)L㚬/䂻/ბ/ᣝ;
    .locals 1

    new-instance v0, L㚬/䂻/ბ/ᣝ;

    invoke-virtual {p0, p1, p2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    invoke-direct {v0, p0, p1}, L㚬/䂻/ბ/ᣝ;-><init>(Landroid/content/Context;Landroid/content/res/TypedArray;)V

    return-object v0
.end method

.method public static 㖪(Landroid/content/Context;Landroid/util/AttributeSet;[III)L㚬/䂻/ბ/ᣝ;
    .locals 1

    new-instance v0, L㚬/䂻/ბ/ᣝ;

    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    invoke-direct {v0, p0, p1}, L㚬/䂻/ბ/ᣝ;-><init>(Landroid/content/Context;Landroid/content/res/TypedArray;)V

    return-object v0
.end method

.method public static 㭲(Landroid/content/Context;I[I)L㚬/䂻/ბ/ᣝ;
    .locals 1

    new-instance v0, L㚬/䂻/ბ/ᣝ;

    invoke-virtual {p0, p1, p2}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object p1

    invoke-direct {v0, p0, p1}, L㚬/䂻/ბ/ᣝ;-><init>(Landroid/content/Context;Landroid/content/res/TypedArray;)V

    return-object v0
.end method


# virtual methods
.method public உ(IZ)Z
    .locals 1

    iget-object v0, p0, L㚬/䂻/ბ/ᣝ;->䂻:Landroid/content/res/TypedArray;

    invoke-virtual {v0, p1, p2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    return p1
.end method

.method public ಫ(IIL㚬/ℓ/ḓ/㚬/䆀$உ;)Landroid/graphics/Typeface;
    .locals 2

    iget-object v0, p0, L㚬/䂻/ბ/ᣝ;->䂻:Landroid/content/res/TypedArray;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    iget-object v0, p0, L㚬/䂻/ბ/ᣝ;->㚬:Landroid/util/TypedValue;

    if-nez v0, :cond_1

    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    iput-object v0, p0, L㚬/䂻/ბ/ᣝ;->㚬:Landroid/util/TypedValue;

    :cond_1
    iget-object v0, p0, L㚬/䂻/ბ/ᣝ;->உ:Landroid/content/Context;

    iget-object v1, p0, L㚬/䂻/ბ/ᣝ;->㚬:Landroid/util/TypedValue;

    invoke-static {v0, p1, v1, p2, p3}, L㚬/ℓ/ḓ/㚬/䆀;->㚬(Landroid/content/Context;ILandroid/util/TypedValue;IL㚬/ℓ/ḓ/㚬/䆀$உ;)Landroid/graphics/Typeface;

    move-result-object p1

    return-object p1
.end method

.method public ཇ(II)I
    .locals 1

    iget-object v0, p0, L㚬/䂻/ბ/ᣝ;->䂻:Landroid/content/res/TypedArray;

    invoke-virtual {v0, p1, p2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p1

    return p1
.end method

.method public ბ(I)Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, L㚬/䂻/ბ/ᣝ;->䂻:Landroid/content/res/TypedArray;

    invoke-virtual {v0, p1}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1
.end method

.method public ᆻ(I)Landroid/graphics/drawable/Drawable;
    .locals 2

    iget-object v0, p0, L㚬/䂻/ბ/ᣝ;->䂻:Landroid/content/res/TypedArray;

    invoke-virtual {v0, p1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, L㚬/䂻/ბ/ᣝ;->䂻:Landroid/content/res/TypedArray;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, L㚬/䂻/ბ/ᣝ;->உ:Landroid/content/Context;

    invoke-static {p1, v0}, L㚬/䂻/㹖/உ/உ;->㺴(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1

    :cond_0
    iget-object v0, p0, L㚬/䂻/ბ/ᣝ;->䂻:Landroid/content/res/TypedArray;

    invoke-virtual {v0, p1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1
.end method

.method public ᓭ(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, L㚬/䂻/ბ/ᣝ;->䂻:Landroid/content/res/TypedArray;

    invoke-virtual {v0, p1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public ḓ(II)I
    .locals 1

    iget-object v0, p0, L㚬/䂻/ბ/ᣝ;->䂻:Landroid/content/res/TypedArray;

    invoke-virtual {v0, p1, p2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p1

    return p1
.end method

.method public ἥ(II)I
    .locals 1

    iget-object v0, p0, L㚬/䂻/ბ/ᣝ;->䂻:Landroid/content/res/TypedArray;

    invoke-virtual {v0, p1, p2}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result p1

    return p1
.end method

.method public ℓ(I)Landroid/graphics/drawable/Drawable;
    .locals 3

    iget-object v0, p0, L㚬/䂻/ბ/ᣝ;->䂻:Landroid/content/res/TypedArray;

    invoke-virtual {v0, p1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, L㚬/䂻/ბ/ᣝ;->䂻:Landroid/content/res/TypedArray;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {}, L㚬/䂻/ბ/ಫ;->䂻()L㚬/䂻/ბ/ಫ;

    move-result-object v0

    iget-object v1, p0, L㚬/䂻/ბ/ᣝ;->உ:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p1, v2}, L㚬/䂻/ბ/ಫ;->㺴(Landroid/content/Context;IZ)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public ㄏ(IF)F
    .locals 1

    iget-object v0, p0, L㚬/䂻/ბ/ᣝ;->䂻:Landroid/content/res/TypedArray;

    invoke-virtual {v0, p1, p2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p1

    return p1
.end method

.method public 㚬(I)Landroid/content/res/ColorStateList;
    .locals 2

    iget-object v0, p0, L㚬/䂻/ბ/ᣝ;->䂻:Landroid/content/res/TypedArray;

    invoke-virtual {v0, p1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, L㚬/䂻/ბ/ᣝ;->䂻:Landroid/content/res/TypedArray;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v1, p0, L㚬/䂻/ბ/ᣝ;->உ:Landroid/content/Context;

    invoke-static {v1, v0}, L㚬/䂻/㹖/உ/உ;->㚬(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, L㚬/䂻/ბ/ᣝ;->䂻:Landroid/content/res/TypedArray;

    invoke-virtual {v0, p1}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    return-object p1
.end method

.method public 㞘(I)Z
    .locals 1

    iget-object v0, p0, L㚬/䂻/ბ/ᣝ;->䂻:Landroid/content/res/TypedArray;

    invoke-virtual {v0, p1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p1

    return p1
.end method

.method public 㢏()V
    .locals 1

    iget-object v0, p0, L㚬/䂻/ბ/ᣝ;->䂻:Landroid/content/res/TypedArray;

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method public 㧦(II)I
    .locals 1

    iget-object v0, p0, L㚬/䂻/ბ/ᣝ;->䂻:Landroid/content/res/TypedArray;

    invoke-virtual {v0, p1, p2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p1

    return p1
.end method

.method public 㲝(I)[Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, L㚬/䂻/ბ/ᣝ;->䂻:Landroid/content/res/TypedArray;

    invoke-virtual {v0, p1}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1
.end method

.method public 㹖(II)I
    .locals 1

    iget-object v0, p0, L㚬/䂻/ბ/ᣝ;->䂻:Landroid/content/res/TypedArray;

    invoke-virtual {v0, p1, p2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p1

    return p1
.end method

.method public 㺴(IF)F
    .locals 1

    iget-object v0, p0, L㚬/䂻/ბ/ᣝ;->䂻:Landroid/content/res/TypedArray;

    invoke-virtual {v0, p1, p2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p1

    return p1
.end method

.method public 䂻(II)I
    .locals 1

    iget-object v0, p0, L㚬/䂻/ბ/ᣝ;->䂻:Landroid/content/res/TypedArray;

    invoke-virtual {v0, p1, p2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p1

    return p1
.end method

.method public 䆀(II)I
    .locals 1

    iget-object v0, p0, L㚬/䂻/ბ/ᣝ;->䂻:Landroid/content/res/TypedArray;

    invoke-virtual {v0, p1, p2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p1

    return p1
.end method
