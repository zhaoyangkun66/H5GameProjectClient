.class public final L㺴/㚬/உ/䂻/ᾦ/ᆻ;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final உ:[I

.field public static final 㚬:[I

.field public static final 㺴:[I

.field public static final 䂻:[I


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x1

    new-array v1, v0, [I

    sget v2, L㺴/㚬/உ/䂻/䂻;->ℓ:I

    const/4 v3, 0x0

    aput v2, v1, v3

    sput-object v1, L㺴/㚬/உ/䂻/ᾦ/ᆻ;->உ:[I

    new-array v1, v0, [I

    sget v2, L㺴/㚬/உ/䂻/䂻;->ㄏ:I

    aput v2, v1, v3

    sput-object v1, L㺴/㚬/உ/䂻/ᾦ/ᆻ;->䂻:[I

    const/4 v1, 0x2

    new-array v1, v1, [I

    const/high16 v2, 0x1010000

    aput v2, v1, v3

    sget v2, L㺴/㚬/உ/䂻/䂻;->㫏:I

    aput v2, v1, v0

    sput-object v1, L㺴/㚬/உ/䂻/ᾦ/ᆻ;->㚬:[I

    new-array v0, v0, [I

    sget v1, L㺴/㚬/உ/䂻/䂻;->㲝:I

    aput v1, v0, v3

    sput-object v0, L㺴/㚬/உ/䂻/ᾦ/ᆻ;->㺴:[I

    return-void
.end method

.method public static உ(Landroid/content/Context;)V
    .locals 2

    sget-object v0, L㺴/㚬/உ/䂻/ᾦ/ᆻ;->உ:[I

    const-string v1, "Theme.AppCompat"

    invoke-static {p0, v0, v1}, L㺴/㚬/உ/䂻/ᾦ/ᆻ;->ḓ(Landroid/content/Context;[ILjava/lang/String;)V

    return-void
.end method

.method public static ಫ(Landroid/content/Context;Landroid/util/AttributeSet;II)I
    .locals 1

    sget-object v0, L㺴/㚬/உ/䂻/ᾦ/ᆻ;->㺴:[I

    invoke-virtual {p0, p1, v0, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1, p1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p1

    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    return p1
.end method

.method public static varargs ᆻ(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)Z
    .locals 1

    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p0

    array-length p1, p5

    const/4 p2, 0x0

    const/4 p3, 0x0

    :goto_0
    if-ge p3, p1, :cond_1

    aget p4, p5, p3

    const/4 v0, -0x1

    invoke-virtual {p0, p4, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p4

    if-ne p4, v0, :cond_0

    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    return p2

    :cond_0
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    const/4 p0, 0x1

    return p0
.end method

.method public static ḓ(Landroid/content/Context;[ILjava/lang/String;)V
    .locals 1

    invoke-static {p0, p1}, L㺴/㚬/உ/䂻/ᾦ/ᆻ;->ℓ(Landroid/content/Context;[I)Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "The style on this component requires your app theme to be "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " (or a descendant)."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static ℓ(Landroid/content/Context;[I)Z
    .locals 3

    invoke-virtual {p0, p1}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object p0

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_1

    invoke-virtual {p0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    const/4 p0, 0x1

    return p0
.end method

.method public static ㄏ(Landroid/content/Context;Landroid/util/AttributeSet;)I
    .locals 2

    sget-object v0, L㺴/㚬/உ/䂻/ᾦ/ᆻ;->㚬:[I

    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1, p1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p0, v1, p1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p1

    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    if-eqz v0, :cond_0

    return v0

    :cond_0
    return p1
.end method

.method public static 㚬(Landroid/content/Context;)V
    .locals 2

    sget-object v0, L㺴/㚬/உ/䂻/ᾦ/ᆻ;->䂻:[I

    const-string v1, "Theme.MaterialComponents"

    invoke-static {p0, v0, v1}, L㺴/㚬/உ/䂻/ᾦ/ᆻ;->ḓ(Landroid/content/Context;[ILjava/lang/String;)V

    return-void
.end method

.method public static varargs 㧦(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)Landroid/content/res/TypedArray;
    .locals 0

    invoke-static {p0, p1, p3, p4}, L㺴/㚬/உ/䂻/ᾦ/ᆻ;->䂻(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    invoke-static/range {p0 .. p5}, L㺴/㚬/உ/䂻/ᾦ/ᆻ;->㺴(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)V

    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p0

    return-object p0
.end method

.method public static varargs 㹖(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)L㚬/䂻/ბ/ᣝ;
    .locals 0

    invoke-static {p0, p1, p3, p4}, L㺴/㚬/உ/䂻/ᾦ/ᆻ;->䂻(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    invoke-static/range {p0 .. p5}, L㺴/㚬/உ/䂻/ᾦ/ᆻ;->㺴(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)V

    invoke-static {p0, p1, p2, p3, p4}, L㚬/䂻/ბ/ᣝ;->㖪(Landroid/content/Context;Landroid/util/AttributeSet;[III)L㚬/䂻/ბ/ᣝ;

    move-result-object p0

    return-object p0
.end method

.method public static varargs 㺴(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)V
    .locals 3

    sget-object v0, L㺴/㚬/உ/䂻/㧦;->㐤:[I

    invoke-virtual {p0, p1, v0, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    sget v1, L㺴/㚬/உ/䂻/㧦;->ᴠ:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    :cond_0
    if-eqz p5, :cond_2

    array-length v1, p5

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-static/range {p0 .. p5}, L㺴/㚬/உ/䂻/ᾦ/ᆻ;->ᆻ(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)Z

    move-result p0

    goto :goto_1

    :cond_2
    :goto_0
    sget p0, L㺴/㚬/உ/䂻/㧦;->䊛:I

    const/4 p1, -0x1

    invoke-virtual {v0, p0, p1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p0

    if-eq p0, p1, :cond_3

    const/4 v2, 0x1

    :cond_3
    move p0, v2

    :goto_1
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    if-eqz p0, :cond_4

    return-void

    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "This component requires that you specify a valid TextAppearance attribute. Update your app theme to inherit from Theme.MaterialComponents (or a descendant)."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static 䂻(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1

    sget-object v0, L㺴/㚬/உ/䂻/㧦;->㐤:[I

    invoke-virtual {p0, p1, v0, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    sget p2, L㺴/㚬/உ/䂻/㧦;->ⱔ:I

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    if-eqz p2, :cond_1

    new-instance p1, Landroid/util/TypedValue;

    invoke-direct {p1}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p2

    sget p3, L㺴/㚬/உ/䂻/䂻;->ཇ:I

    const/4 v0, 0x1

    invoke-virtual {p2, p3, p1, v0}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result p2

    if-eqz p2, :cond_0

    iget p2, p1, Landroid/util/TypedValue;->type:I

    const/16 p3, 0x12

    if-ne p2, p3, :cond_1

    iget p1, p1, Landroid/util/TypedValue;->data:I

    if-nez p1, :cond_1

    :cond_0
    invoke-static {p0}, L㺴/㚬/உ/䂻/ᾦ/ᆻ;->㚬(Landroid/content/Context;)V

    :cond_1
    invoke-static {p0}, L㺴/㚬/உ/䂻/ᾦ/ᆻ;->உ(Landroid/content/Context;)V

    return-void
.end method

.method public static 䆀(Landroid/content/Context;Landroid/util/AttributeSet;II)Landroid/content/Context;
    .locals 0

    invoke-static {p0, p1, p2, p3}, L㺴/㚬/உ/䂻/ᾦ/ᆻ;->ಫ(Landroid/content/Context;Landroid/util/AttributeSet;II)I

    move-result p2

    if-eqz p2, :cond_2

    instance-of p3, p0, L㚬/䂻/ᓭ/㺴;

    if-eqz p3, :cond_0

    move-object p3, p0

    check-cast p3, L㚬/䂻/ᓭ/㺴;

    invoke-virtual {p3}, L㚬/䂻/ᓭ/㺴;->䂻()I

    move-result p3

    if-eq p3, p2, :cond_2

    :cond_0
    new-instance p3, L㚬/䂻/ᓭ/㺴;

    invoke-direct {p3, p0, p2}, L㚬/䂻/ᓭ/㺴;-><init>(Landroid/content/Context;I)V

    invoke-static {p3, p1}, L㺴/㚬/உ/䂻/ᾦ/ᆻ;->ㄏ(Landroid/content/Context;Landroid/util/AttributeSet;)I

    move-result p0

    if-eqz p0, :cond_1

    new-instance p1, L㚬/䂻/ᓭ/㺴;

    invoke-direct {p1, p3, p0}, L㚬/䂻/ᓭ/㺴;-><init>(Landroid/content/Context;I)V

    move-object p0, p1

    goto :goto_0

    :cond_1
    move-object p0, p3

    :cond_2
    :goto_0
    return-object p0
.end method
