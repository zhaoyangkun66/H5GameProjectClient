.class public L㚬/ℓ/ḓ/㚬/ᆻ;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public static உ(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IZ)Z
    .locals 0

    invoke-static {p1, p2}, L㚬/ℓ/ḓ/㚬/ᆻ;->ಫ(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    return p4

    :cond_0
    invoke-virtual {p0, p3, p4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p0

    return p0
.end method

.method public static ಫ(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z
    .locals 1

    const-string v0, "http://schemas.android.com/apk/res/android"

    invoke-interface {p0, v0, p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static ᆻ(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I
    .locals 0

    invoke-static {p1, p2}, L㚬/ℓ/ḓ/㚬/ᆻ;->ಫ(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    return p4

    :cond_0
    invoke-virtual {p0, p3, p4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p0

    return p0
.end method

.method public static ḓ(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/Resources$Theme;Ljava/lang/String;II)L㚬/ℓ/ḓ/㚬/䂻;
    .locals 1

    invoke-static {p1, p3}, L㚬/ℓ/ḓ/㚬/ᆻ;->ಫ(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    new-instance p1, Landroid/util/TypedValue;

    invoke-direct {p1}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p0, p4, p1}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    iget p3, p1, Landroid/util/TypedValue;->type:I

    const/16 v0, 0x1c

    if-lt p3, v0, :cond_0

    const/16 v0, 0x1f

    if-gt p3, v0, :cond_0

    iget p0, p1, Landroid/util/TypedValue;->data:I

    invoke-static {p0}, L㚬/ℓ/ḓ/㚬/䂻;->䂻(I)L㚬/ℓ/ḓ/㚬/䂻;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const/4 p3, 0x0

    invoke-virtual {p0, p4, p3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p0

    invoke-static {p1, p0, p2}, L㚬/ℓ/ḓ/㚬/䂻;->ᆻ(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)L㚬/ℓ/ḓ/㚬/䂻;

    move-result-object p0

    if-eqz p0, :cond_1

    return-object p0

    :cond_1
    invoke-static {p5}, L㚬/ℓ/ḓ/㚬/䂻;->䂻(I)L㚬/ℓ/ḓ/㚬/䂻;

    move-result-object p0

    return-object p0
.end method

.method public static ℓ(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I
    .locals 0

    invoke-static {p1, p2}, L㚬/ℓ/ḓ/㚬/ᆻ;->ಫ(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    return p4

    :cond_0
    invoke-virtual {p0, p3, p4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p0

    return p0
.end method

.method public static ㄏ(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)Ljava/lang/String;
    .locals 0

    invoke-static {p1, p2}, L㚬/ℓ/ḓ/㚬/ᆻ;->ಫ(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0, p3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static 㚬(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/Resources$Theme;Ljava/lang/String;I)Landroid/content/res/ColorStateList;
    .locals 1

    invoke-static {p1, p3}, L㚬/ℓ/ḓ/㚬/ᆻ;->ಫ(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    new-instance p1, Landroid/util/TypedValue;

    invoke-direct {p1}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p0, p4, p1}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    iget p3, p1, Landroid/util/TypedValue;->type:I

    const/4 v0, 0x2

    if-eq p3, v0, :cond_1

    const/16 v0, 0x1c

    if-lt p3, v0, :cond_0

    const/16 v0, 0x1f

    if-gt p3, v0, :cond_0

    invoke-static {p1}, L㚬/ℓ/ḓ/㚬/ᆻ;->㺴(Landroid/util/TypedValue;)Landroid/content/res/ColorStateList;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const/4 p3, 0x0

    invoke-virtual {p0, p4, p3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p0

    invoke-static {p1, p0, p2}, L㚬/ℓ/ḓ/㚬/உ;->㚬(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Failed to resolve attribute at index "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ": "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public static 㧦(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;
    .locals 0

    if-nez p1, :cond_0

    invoke-virtual {p0, p2, p3}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    invoke-virtual {p1, p2, p3, p0, p0}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p0

    return-object p0
.end method

.method public static 㹖(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)Landroid/util/TypedValue;
    .locals 0

    invoke-static {p1, p2}, L㚬/ℓ/ḓ/㚬/ᆻ;->ಫ(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0, p3}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object p0

    return-object p0
.end method

.method public static 㺴(Landroid/util/TypedValue;)Landroid/content/res/ColorStateList;
    .locals 0

    iget p0, p0, Landroid/util/TypedValue;->data:I

    invoke-static {p0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p0

    return-object p0
.end method

.method public static 䂻(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I
    .locals 0

    invoke-static {p1, p2}, L㚬/ℓ/ḓ/㚬/ᆻ;->ಫ(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    return p4

    :cond_0
    invoke-virtual {p0, p3, p4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p0

    return p0
.end method

.method public static 䆀(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F
    .locals 0

    invoke-static {p1, p2}, L㚬/ℓ/ḓ/㚬/ᆻ;->ಫ(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    return p4

    :cond_0
    invoke-virtual {p0, p3, p4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p0

    return p0
.end method
