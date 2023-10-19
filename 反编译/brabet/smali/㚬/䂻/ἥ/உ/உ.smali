.class public L㚬/䂻/ἥ/உ/உ;
.super L㚬/䂻/ἥ/உ/㺴;
.source ""

# interfaces
.implements L㚬/ℓ/䆀/㹖/䂻;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "RestrictedAPI"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        L㚬/䂻/ἥ/உ/உ$䆀;,
        L㚬/䂻/ἥ/உ/உ$㚬;,
        L㚬/䂻/ἥ/உ/உ$㺴;,
        L㚬/䂻/ἥ/உ/உ$ḓ;,
        L㚬/䂻/ἥ/உ/உ$䂻;,
        L㚬/䂻/ἥ/உ/உ$ᆻ;
    }
.end annotation


# instance fields
.field public ბ:L㚬/䂻/ἥ/உ/உ$㚬;

.field public ḙ:Z

.field public 㞘:I

.field public 㭲:I

.field public 㲝:L㚬/䂻/ἥ/உ/உ$ᆻ;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-class v0, L㚬/䂻/ἥ/உ/உ;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, L㚬/䂻/ἥ/உ/உ;-><init>(L㚬/䂻/ἥ/உ/உ$㚬;Landroid/content/res/Resources;)V

    return-void
.end method

.method public constructor <init>(L㚬/䂻/ἥ/உ/உ$㚬;Landroid/content/res/Resources;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, L㚬/䂻/ἥ/உ/㺴;-><init>(L㚬/䂻/ἥ/உ/㺴$உ;)V

    const/4 v0, -0x1

    iput v0, p0, L㚬/䂻/ἥ/உ/உ;->㞘:I

    iput v0, p0, L㚬/䂻/ἥ/உ/உ;->㭲:I

    new-instance v0, L㚬/䂻/ἥ/உ/உ$㚬;

    invoke-direct {v0, p1, p0, p2}, L㚬/䂻/ἥ/உ/உ$㚬;-><init>(L㚬/䂻/ἥ/உ/உ$㚬;L㚬/䂻/ἥ/உ/உ;Landroid/content/res/Resources;)V

    invoke-virtual {p0, v0}, L㚬/䂻/ἥ/உ/உ;->ℓ(L㚬/䂻/ἥ/உ/䂻$㚬;)V

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object p1

    invoke-virtual {p0, p1}, L㚬/䂻/ἥ/உ/உ;->onStateChange([I)Z

    invoke-virtual {p0}, L㚬/䂻/ἥ/உ/உ;->jumpToCurrentState()V

    return-void
.end method

.method public static ἥ(Landroid/content/Context;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)L㚬/䂻/ἥ/உ/உ;
    .locals 8

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "animated-selector"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, L㚬/䂻/ἥ/உ/உ;

    invoke-direct {v0}, L㚬/䂻/ἥ/உ/உ;-><init>()V

    move-object v2, v0

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-virtual/range {v2 .. v7}, L㚬/䂻/ἥ/உ/உ;->ཇ(Landroid/content/Context;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    return-object v0

    :cond_0
    new-instance p0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ": invalid animated-selector tag "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public isStateful()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public jumpToCurrentState()V
    .locals 1

    invoke-super {p0}, L㚬/䂻/ἥ/உ/䂻;->jumpToCurrentState()V

    iget-object v0, p0, L㚬/䂻/ἥ/உ/உ;->㲝:L㚬/䂻/ἥ/உ/உ$ᆻ;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, L㚬/䂻/ἥ/உ/உ$ᆻ;->㺴()V

    const/4 v0, 0x0

    iput-object v0, p0, L㚬/䂻/ἥ/உ/உ;->㲝:L㚬/䂻/ἥ/உ/உ$ᆻ;

    iget v0, p0, L㚬/䂻/ἥ/உ/உ;->㞘:I

    invoke-virtual {p0, v0}, L㚬/䂻/ἥ/உ/䂻;->ᆻ(I)Z

    const/4 v0, -0x1

    iput v0, p0, L㚬/䂻/ἥ/உ/உ;->㞘:I

    iput v0, p0, L㚬/䂻/ἥ/உ/உ;->㭲:I

    :cond_0
    return-void
.end method

.method public mutate()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-boolean v0, p0, L㚬/䂻/ἥ/உ/உ;->ḙ:Z

    if-nez v0, :cond_0

    invoke-super {p0}, L㚬/䂻/ἥ/உ/㺴;->mutate()Landroid/graphics/drawable/Drawable;

    if-ne p0, p0, :cond_0

    iget-object v0, p0, L㚬/䂻/ἥ/உ/உ;->ბ:L㚬/䂻/ἥ/உ/உ$㚬;

    invoke-virtual {v0}, L㚬/䂻/ἥ/உ/உ$㚬;->㞘()V

    const/4 v0, 0x1

    iput-boolean v0, p0, L㚬/䂻/ἥ/உ/உ;->ḙ:Z

    :cond_0
    return-object p0
.end method

.method public onStateChange([I)Z
    .locals 2

    iget-object v0, p0, L㚬/䂻/ἥ/உ/உ;->ბ:L㚬/䂻/ἥ/உ/உ$㚬;

    invoke-virtual {v0, p1}, L㚬/䂻/ἥ/உ/உ$㚬;->㨃([I)I

    move-result v0

    invoke-virtual {p0}, L㚬/䂻/ἥ/உ/䂻;->㚬()I

    move-result v1

    if-eq v0, v1, :cond_1

    invoke-virtual {p0, v0}, L㚬/䂻/ἥ/உ/உ;->㭲(I)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0, v0}, L㚬/䂻/ἥ/உ/䂻;->ᆻ(I)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, L㚬/䂻/ἥ/உ/䂻;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result p1

    or-int/2addr v0, p1

    :cond_2
    return v0
.end method

.method public setVisible(ZZ)Z
    .locals 2

    invoke-super {p0, p1, p2}, L㚬/䂻/ἥ/உ/䂻;->setVisible(ZZ)Z

    move-result v0

    iget-object v1, p0, L㚬/䂻/ἥ/உ/உ;->㲝:L㚬/䂻/ἥ/உ/உ$ᆻ;

    if-eqz v1, :cond_2

    if-nez v0, :cond_0

    if-eqz p2, :cond_2

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {v1}, L㚬/䂻/ἥ/உ/உ$ᆻ;->㚬()V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, L㚬/䂻/ἥ/உ/உ;->jumpToCurrentState()V

    :cond_2
    :goto_0
    return v0
.end method

.method public bridge synthetic ಫ()L㚬/䂻/ἥ/உ/㺴$உ;
    .locals 1

    invoke-virtual {p0}, L㚬/䂻/ἥ/உ/உ;->㹖()L㚬/䂻/ἥ/உ/உ$㚬;

    move-result-object v0

    return-object v0
.end method

.method public ཇ(Landroid/content/Context;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    .locals 3

    sget-object v0, L㚬/䂻/ཇ/䂻;->உ:[I

    invoke-static {p2, p5, p4, v0}, L㚬/ℓ/ḓ/㚬/ᆻ;->㧦(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    sget v1, L㚬/䂻/ཇ/䂻;->㚬:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    invoke-virtual {p0, v1, v2}, L㚬/䂻/ἥ/உ/உ;->setVisible(ZZ)Z

    invoke-virtual {p0, v0}, L㚬/䂻/ἥ/உ/உ;->ḙ(Landroid/content/res/TypedArray;)V

    invoke-virtual {p0, p2}, L㚬/䂻/ἥ/உ/䂻;->ㄏ(Landroid/content/res/Resources;)V

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual/range {p0 .. p5}, L㚬/䂻/ἥ/உ/உ;->ᓭ(Landroid/content/Context;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    invoke-virtual {p0}, L㚬/䂻/ἥ/உ/உ;->ბ()V

    return-void
.end method

.method public final ბ()V
    .locals 1

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object v0

    invoke-virtual {p0, v0}, L㚬/䂻/ἥ/உ/உ;->onStateChange([I)Z

    return-void
.end method

.method public final ᓭ(Landroid/content/Context;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    .locals 5

    invoke-interface {p3}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    :cond_0
    :goto_0
    invoke-interface {p3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    if-eq v2, v1, :cond_5

    invoke-interface {p3}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    if-ge v3, v0, :cond_1

    const/4 v4, 0x3

    if-eq v2, v4, :cond_5

    :cond_1
    const/4 v4, 0x2

    if-eq v2, v4, :cond_2

    goto :goto_0

    :cond_2
    if-le v3, v0, :cond_3

    goto :goto_0

    :cond_3
    invoke-interface {p3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "item"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual/range {p0 .. p5}, L㚬/䂻/ἥ/உ/உ;->㲝(Landroid/content/Context;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)I

    goto :goto_0

    :cond_4
    invoke-interface {p3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "transition"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual/range {p0 .. p5}, L㚬/䂻/ἥ/உ/உ;->㞘(Landroid/content/Context;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)I

    goto :goto_0

    :cond_5
    return-void
.end method

.method public final ḙ(Landroid/content/res/TypedArray;)V
    .locals 3

    iget-object v0, p0, L㚬/䂻/ἥ/உ/உ;->ბ:L㚬/䂻/ἥ/உ/உ$㚬;

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_0

    iget v1, v0, L㚬/䂻/ἥ/உ/䂻$㚬;->㺴:I

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    move-result v2

    or-int/2addr v1, v2

    iput v1, v0, L㚬/䂻/ἥ/உ/䂻$㚬;->㺴:I

    :cond_0
    sget v1, L㚬/䂻/ཇ/䂻;->㺴:I

    iget-boolean v2, v0, L㚬/䂻/ἥ/உ/䂻$㚬;->ㄏ:Z

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    invoke-virtual {v0, v1}, L㚬/䂻/ἥ/உ/䂻$㚬;->㲧(Z)V

    sget v1, L㚬/䂻/ཇ/䂻;->ḓ:I

    iget-boolean v2, v0, L㚬/䂻/ἥ/உ/䂻$㚬;->㹖:Z

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    invoke-virtual {v0, v1}, L㚬/䂻/ἥ/உ/䂻$㚬;->ḙ(Z)V

    sget v1, L㚬/䂻/ཇ/䂻;->䆀:I

    iget v2, v0, L㚬/䂻/ἥ/உ/䂻$㚬;->ಋ:I

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    invoke-virtual {v0, v1}, L㚬/䂻/ἥ/உ/䂻$㚬;->㖪(I)V

    sget v1, L㚬/䂻/ཇ/䂻;->ᆻ:I

    iget v2, v0, L㚬/䂻/ἥ/உ/䂻$㚬;->ᾦ:I

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    invoke-virtual {v0, v1}, L㚬/䂻/ἥ/உ/䂻$㚬;->㢏(I)V

    sget v1, L㚬/䂻/ཇ/䂻;->䂻:I

    iget-boolean v0, v0, L㚬/䂻/ἥ/உ/䂻$㚬;->㲧:Z

    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    invoke-virtual {p0, p1}, L㚬/䂻/ἥ/உ/䂻;->setDither(Z)V

    return-void
.end method

.method public ℓ(L㚬/䂻/ἥ/உ/䂻$㚬;)V
    .locals 1

    invoke-super {p0, p1}, L㚬/䂻/ἥ/உ/㺴;->ℓ(L㚬/䂻/ἥ/உ/䂻$㚬;)V

    instance-of v0, p1, L㚬/䂻/ἥ/உ/உ$㚬;

    if-eqz v0, :cond_0

    check-cast p1, L㚬/䂻/ἥ/உ/உ$㚬;

    iput-object p1, p0, L㚬/䂻/ἥ/உ/உ;->ბ:L㚬/䂻/ἥ/உ/உ$㚬;

    :cond_0
    return-void
.end method

.method public final 㞘(Landroid/content/Context;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)I
    .locals 7

    sget-object v0, L㚬/䂻/ཇ/䂻;->㧦:[I

    invoke-static {p2, p5, p4, v0}, L㚬/ℓ/ḓ/㚬/ᆻ;->㧦(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    sget v1, L㚬/䂻/ཇ/䂻;->ཇ:I

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    sget v3, L㚬/䂻/ཇ/䂻;->ἥ:I

    invoke-virtual {v0, v3, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    sget v4, L㚬/䂻/ཇ/䂻;->㹖:I

    invoke-virtual {v0, v4, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    if-lez v4, :cond_0

    invoke-static {}, L㚬/䂻/ბ/㭢;->ℓ()L㚬/䂻/ბ/㭢;

    move-result-object v5

    invoke-virtual {v5, p1, v4}, L㚬/䂻/ბ/㭢;->ಫ(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    sget v5, L㚬/䂻/ཇ/䂻;->ᓭ:I

    const/4 v6, 0x0

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    const-string v0, ": <transition> tag requires a \'drawable\' attribute or child tag defining a drawable"

    if-nez v4, :cond_5

    :goto_1
    invoke-interface {p3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v4

    const/4 v6, 0x4

    if-ne v4, v6, :cond_1

    goto :goto_1

    :cond_1
    const/4 v6, 0x2

    if-ne v4, v6, :cond_4

    invoke-interface {p3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v6, "animated-vector"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-static {p1, p2, p3, p4, p5}, L㚬/㖪/உ/உ/䂻;->உ(Landroid/content/Context;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)L㚬/㖪/உ/உ/䂻;

    move-result-object v4

    goto :goto_2

    :cond_2
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x15

    if-lt p1, v4, :cond_3

    invoke-static {p2, p3, p4, p5}, Landroid/graphics/drawable/Drawable;->createFromXmlInner(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    goto :goto_2

    :cond_3
    invoke-static {p2, p3, p4}, Landroid/graphics/drawable/Drawable;->createFromXmlInner(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    goto :goto_2

    :cond_4
    new-instance p1, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p3}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    :goto_2
    if-eqz v4, :cond_7

    if-eq v1, v2, :cond_6

    if-eq v3, v2, :cond_6

    iget-object p1, p0, L㚬/䂻/ἥ/உ/உ;->ბ:L㚬/䂻/ἥ/உ/உ$㚬;

    invoke-virtual {p1, v1, v3, v4, v5}, L㚬/䂻/ἥ/உ/உ$㚬;->ڈ(IILandroid/graphics/drawable/Drawable;Z)I

    move-result p1

    return p1

    :cond_6
    new-instance p1, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p3}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ": <transition> tag requires \'fromId\' & \'toId\' attributes"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_7
    new-instance p1, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p3}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final 㭲(I)Z
    .locals 9

    iget-object v0, p0, L㚬/䂻/ἥ/உ/உ;->㲝:L㚬/䂻/ἥ/உ/உ$ᆻ;

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    iget v2, p0, L㚬/䂻/ἥ/உ/உ;->㞘:I

    if-ne p1, v2, :cond_0

    return v1

    :cond_0
    iget v2, p0, L㚬/䂻/ἥ/உ/உ;->㭲:I

    if-ne p1, v2, :cond_1

    invoke-virtual {v0}, L㚬/䂻/ἥ/உ/உ$ᆻ;->உ()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, L㚬/䂻/ἥ/உ/உ$ᆻ;->䂻()V

    iget v0, p0, L㚬/䂻/ἥ/உ/உ;->㭲:I

    iput v0, p0, L㚬/䂻/ἥ/உ/உ;->㞘:I

    iput p1, p0, L㚬/䂻/ἥ/உ/உ;->㭲:I

    return v1

    :cond_1
    iget v2, p0, L㚬/䂻/ἥ/உ/உ;->㞘:I

    invoke-virtual {v0}, L㚬/䂻/ἥ/உ/உ$ᆻ;->㺴()V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, L㚬/䂻/ἥ/உ/䂻;->㚬()I

    move-result v2

    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, L㚬/䂻/ἥ/உ/உ;->㲝:L㚬/䂻/ἥ/உ/உ$ᆻ;

    const/4 v0, -0x1

    iput v0, p0, L㚬/䂻/ἥ/உ/உ;->㭲:I

    iput v0, p0, L㚬/䂻/ἥ/உ/உ;->㞘:I

    iget-object v0, p0, L㚬/䂻/ἥ/உ/உ;->ბ:L㚬/䂻/ἥ/உ/உ$㚬;

    invoke-virtual {v0, v2}, L㚬/䂻/ἥ/உ/உ$㚬;->ש(I)I

    move-result v3

    invoke-virtual {v0, p1}, L㚬/䂻/ἥ/உ/உ$㚬;->ש(I)I

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_7

    if-nez v3, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {v0, v3, v4}, L㚬/䂻/ἥ/உ/உ$㚬;->ᰘ(II)I

    move-result v6

    if-gez v6, :cond_4

    return v5

    :cond_4
    invoke-virtual {v0, v3, v4}, L㚬/䂻/ἥ/உ/உ$㚬;->㥁(II)Z

    move-result v7

    invoke-virtual {p0, v6}, L㚬/䂻/ἥ/உ/䂻;->ᆻ(I)Z

    invoke-virtual {p0}, L㚬/䂻/ἥ/உ/䂻;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    instance-of v8, v6, Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v8, :cond_5

    invoke-virtual {v0, v3, v4}, L㚬/䂻/ἥ/உ/உ$㚬;->ᱹ(II)Z

    move-result v0

    new-instance v3, L㚬/䂻/ἥ/உ/உ$ḓ;

    check-cast v6, Landroid/graphics/drawable/AnimationDrawable;

    invoke-direct {v3, v6, v0, v7}, L㚬/䂻/ἥ/உ/உ$ḓ;-><init>(Landroid/graphics/drawable/AnimationDrawable;ZZ)V

    goto :goto_1

    :cond_5
    instance-of v0, v6, L㚬/㖪/உ/உ/䂻;

    if-eqz v0, :cond_6

    new-instance v3, L㚬/䂻/ἥ/உ/உ$㺴;

    check-cast v6, L㚬/㖪/உ/உ/䂻;

    invoke-direct {v3, v6}, L㚬/䂻/ἥ/உ/உ$㺴;-><init>(L㚬/㖪/உ/உ/䂻;)V

    goto :goto_1

    :cond_6
    instance-of v0, v6, Landroid/graphics/drawable/Animatable;

    if-eqz v0, :cond_7

    new-instance v3, L㚬/䂻/ἥ/உ/உ$䂻;

    check-cast v6, Landroid/graphics/drawable/Animatable;

    invoke-direct {v3, v6}, L㚬/䂻/ἥ/உ/உ$䂻;-><init>(Landroid/graphics/drawable/Animatable;)V

    :goto_1
    invoke-virtual {v3}, L㚬/䂻/ἥ/உ/உ$ᆻ;->㚬()V

    iput-object v3, p0, L㚬/䂻/ἥ/உ/உ;->㲝:L㚬/䂻/ἥ/உ/உ$ᆻ;

    iput v2, p0, L㚬/䂻/ἥ/உ/உ;->㭲:I

    iput p1, p0, L㚬/䂻/ἥ/உ/உ;->㞘:I

    return v1

    :cond_7
    :goto_2
    return v5
.end method

.method public final 㲝(Landroid/content/Context;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)I
    .locals 4

    sget-object v0, L㚬/䂻/ཇ/䂻;->ℓ:[I

    invoke-static {p2, p5, p4, v0}, L㚬/ℓ/ḓ/㚬/ᆻ;->㧦(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    sget v1, L㚬/䂻/ཇ/䂻;->ㄏ:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    sget v2, L㚬/䂻/ཇ/䂻;->ಫ:I

    const/4 v3, -0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    if-lez v2, :cond_0

    invoke-static {}, L㚬/䂻/ბ/㭢;->ℓ()L㚬/䂻/ბ/㭢;

    move-result-object v3

    invoke-virtual {v3, p1, v2}, L㚬/䂻/ბ/㭢;->ಫ(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {p0, p4}, L㚬/䂻/ἥ/உ/㺴;->㧦(Landroid/util/AttributeSet;)[I

    move-result-object v0

    const-string v2, ": <item> tag requires a \'drawable\' attribute or child tag defining a drawable"

    if-nez p1, :cond_5

    :goto_1
    invoke-interface {p3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result p1

    const/4 v3, 0x4

    if-ne p1, v3, :cond_1

    goto :goto_1

    :cond_1
    const/4 v3, 0x2

    if-ne p1, v3, :cond_4

    invoke-interface {p3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v3, "vector"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-static {p2, p3, p4, p5}, L㚬/㖪/உ/உ/ℓ;->㚬(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)L㚬/㖪/உ/உ/ℓ;

    move-result-object p1

    goto :goto_2

    :cond_2
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt p1, v3, :cond_3

    invoke-static {p2, p3, p4, p5}, Landroid/graphics/drawable/Drawable;->createFromXmlInner(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    goto :goto_2

    :cond_3
    invoke-static {p2, p3, p4}, Landroid/graphics/drawable/Drawable;->createFromXmlInner(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    goto :goto_2

    :cond_4
    new-instance p1, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p3}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    :goto_2
    if-eqz p1, :cond_6

    iget-object p2, p0, L㚬/䂻/ἥ/உ/உ;->ბ:L㚬/䂻/ἥ/உ/உ$㚬;

    invoke-virtual {p2, v0, p1, v1}, L㚬/䂻/ἥ/உ/உ$㚬;->ᾦ([ILandroid/graphics/drawable/Drawable;I)I

    move-result p1

    return p1

    :cond_6
    new-instance p1, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p3}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public 㹖()L㚬/䂻/ἥ/உ/உ$㚬;
    .locals 3

    new-instance v0, L㚬/䂻/ἥ/உ/உ$㚬;

    iget-object v1, p0, L㚬/䂻/ἥ/உ/உ;->ბ:L㚬/䂻/ἥ/உ/உ$㚬;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, L㚬/䂻/ἥ/உ/உ$㚬;-><init>(L㚬/䂻/ἥ/உ/உ$㚬;L㚬/䂻/ἥ/உ/உ;Landroid/content/res/Resources;)V

    return-object v0
.end method

.method public bridge synthetic 䂻()L㚬/䂻/ἥ/உ/䂻$㚬;
    .locals 1

    invoke-virtual {p0}, L㚬/䂻/ἥ/உ/உ;->㹖()L㚬/䂻/ἥ/உ/உ$㚬;

    move-result-object v0

    return-object v0
.end method
