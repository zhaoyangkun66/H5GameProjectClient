.class public L㚬/㖪/உ/உ/ℓ;
.super L㚬/㖪/உ/உ/ᆻ;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        L㚬/㖪/உ/உ/ℓ$㚬;,
        L㚬/㖪/உ/உ/ℓ$䂻;,
        L㚬/㖪/உ/உ/ℓ$䆀;,
        L㚬/㖪/உ/உ/ℓ$㺴;,
        L㚬/㖪/உ/உ/ℓ$ḓ;,
        L㚬/㖪/உ/உ/ℓ$ᆻ;,
        L㚬/㖪/உ/உ/ℓ$ℓ;,
        L㚬/㖪/உ/உ/ℓ$ㄏ;
    }
.end annotation


# static fields
.field public static final 㧦:Landroid/graphics/PorterDuff$Mode;


# instance fields
.field public final ಫ:Landroid/graphics/Rect;

.field public ᆻ:Z

.field public ḓ:Landroid/graphics/ColorFilter;

.field public final ℓ:[F

.field public final ㄏ:Landroid/graphics/Matrix;

.field public 㚬:L㚬/㖪/உ/உ/ℓ$ℓ;

.field public 㺴:Landroid/graphics/PorterDuffColorFilter;

.field public 䆀:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    sput-object v0, L㚬/㖪/உ/உ/ℓ;->㧦:Landroid/graphics/PorterDuff$Mode;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, L㚬/㖪/உ/உ/ᆻ;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, L㚬/㖪/உ/உ/ℓ;->ᆻ:Z

    const/16 v0, 0x9

    new-array v0, v0, [F

    iput-object v0, p0, L㚬/㖪/உ/உ/ℓ;->ℓ:[F

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, L㚬/㖪/உ/உ/ℓ;->ㄏ:Landroid/graphics/Matrix;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, L㚬/㖪/உ/உ/ℓ;->ಫ:Landroid/graphics/Rect;

    new-instance v0, L㚬/㖪/உ/உ/ℓ$ℓ;

    invoke-direct {v0}, L㚬/㖪/உ/உ/ℓ$ℓ;-><init>()V

    iput-object v0, p0, L㚬/㖪/உ/உ/ℓ;->㚬:L㚬/㖪/உ/உ/ℓ$ℓ;

    return-void
.end method

.method public constructor <init>(L㚬/㖪/உ/உ/ℓ$ℓ;)V
    .locals 2

    invoke-direct {p0}, L㚬/㖪/உ/உ/ᆻ;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, L㚬/㖪/உ/உ/ℓ;->ᆻ:Z

    const/16 v0, 0x9

    new-array v0, v0, [F

    iput-object v0, p0, L㚬/㖪/உ/உ/ℓ;->ℓ:[F

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, L㚬/㖪/உ/உ/ℓ;->ㄏ:Landroid/graphics/Matrix;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, L㚬/㖪/உ/உ/ℓ;->ಫ:Landroid/graphics/Rect;

    iput-object p1, p0, L㚬/㖪/உ/உ/ℓ;->㚬:L㚬/㖪/உ/உ/ℓ$ℓ;

    iget-object v0, p0, L㚬/㖪/உ/உ/ℓ;->㺴:Landroid/graphics/PorterDuffColorFilter;

    iget-object v1, p1, L㚬/㖪/உ/உ/ℓ$ℓ;->㚬:Landroid/content/res/ColorStateList;

    iget-object p1, p1, L㚬/㖪/உ/உ/ℓ$ℓ;->㺴:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p0, v0, v1, p1}, L㚬/㖪/உ/உ/ℓ;->ಫ(Landroid/graphics/PorterDuffColorFilter;Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object p1

    iput-object p1, p0, L㚬/㖪/உ/உ/ℓ;->㺴:Landroid/graphics/PorterDuffColorFilter;

    return-void
.end method

.method public static உ(IF)I
    .locals 2

    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    const v1, 0xffffff

    and-int/2addr p0, v1

    int-to-float v0, v0

    mul-float v0, v0, p1

    float-to-int p1, v0

    shl-int/lit8 p1, p1, 0x18

    or-int/2addr p0, p1

    return p0
.end method

.method public static ᆻ(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;
    .locals 1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_2

    const/4 v0, 0x5

    if-eq p0, v0, :cond_1

    const/16 v0, 0x9

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    return-object p1

    :pswitch_0
    sget-object p0, Landroid/graphics/PorterDuff$Mode;->ADD:Landroid/graphics/PorterDuff$Mode;

    return-object p0

    :pswitch_1
    sget-object p0, Landroid/graphics/PorterDuff$Mode;->SCREEN:Landroid/graphics/PorterDuff$Mode;

    return-object p0

    :pswitch_2
    sget-object p0, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    return-object p0

    :cond_0
    sget-object p0, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    return-object p0

    :cond_1
    sget-object p0, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    return-object p0

    :cond_2
    sget-object p0, Landroid/graphics/PorterDuff$Mode;->SRC_OVER:Landroid/graphics/PorterDuff$Mode;

    return-object p0

    :pswitch_data_0
    .packed-switch 0xe
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static 㚬(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)L㚬/㖪/உ/உ/ℓ;
    .locals 1

    new-instance v0, L㚬/㖪/உ/உ/ℓ;

    invoke-direct {v0}, L㚬/㖪/உ/உ/ℓ;-><init>()V

    invoke-virtual {v0, p0, p1, p2, p3}, L㚬/㖪/உ/உ/ℓ;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    return-object v0
.end method

.method public static 䂻(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)L㚬/㖪/உ/உ/ℓ;
    .locals 6

    const-string v0, "parser error"

    const-string v1, "VectorDrawableCompat"

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x18

    if-lt v2, v3, :cond_0

    new-instance v0, L㚬/㖪/உ/உ/ℓ;

    invoke-direct {v0}, L㚬/㖪/உ/உ/ℓ;-><init>()V

    invoke-static {p0, p1, p2}, L㚬/ℓ/ḓ/㚬/䆀;->உ(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    iput-object p0, v0, L㚬/㖪/உ/உ/ᆻ;->䂻:Landroid/graphics/drawable/Drawable;

    new-instance p0, L㚬/㖪/உ/உ/ℓ$ㄏ;

    iget-object p1, v0, L㚬/㖪/உ/உ/ᆻ;->䂻:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object p1

    invoke-direct {p0, p1}, L㚬/㖪/உ/உ/ℓ$ㄏ;-><init>(Landroid/graphics/drawable/Drawable$ConstantState;)V

    return-object v0

    :cond_0
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object p1

    invoke-static {p1}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v2

    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    const/4 v4, 0x2

    if-eq v3, v4, :cond_1

    const/4 v5, 0x1

    if-eq v3, v5, :cond_1

    goto :goto_0

    :cond_1
    if-ne v3, v4, :cond_2

    invoke-static {p0, p1, v2, p2}, L㚬/㖪/உ/உ/ℓ;->㚬(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)L㚬/㖪/உ/உ/ℓ;

    move-result-object p0

    return-object p0

    :cond_2
    new-instance p0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string p1, "No start tag found"

    invoke-direct {p0, p1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p0

    goto :goto_1

    :catch_1
    move-exception p0

    :goto_1
    invoke-static {v1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public canApplyTheme()Z
    .locals 1

    iget-object v0, p0, L㚬/㖪/உ/உ/ᆻ;->䂻:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-static {v0}, L㚬/ℓ/䆀/㹖/உ;->䂻(Landroid/graphics/drawable/Drawable;)Z

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 9

    iget-object v0, p0, L㚬/㖪/உ/உ/ᆻ;->䂻:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-void

    :cond_0
    iget-object v0, p0, L㚬/㖪/உ/உ/ℓ;->ಫ:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/Drawable;->copyBounds(Landroid/graphics/Rect;)V

    iget-object v0, p0, L㚬/㖪/உ/உ/ℓ;->ಫ:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    if-lez v0, :cond_9

    iget-object v0, p0, L㚬/㖪/உ/உ/ℓ;->ಫ:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    if-gtz v0, :cond_1

    goto/16 :goto_1

    :cond_1
    iget-object v0, p0, L㚬/㖪/உ/உ/ℓ;->ḓ:Landroid/graphics/ColorFilter;

    if-nez v0, :cond_2

    iget-object v0, p0, L㚬/㖪/உ/உ/ℓ;->㺴:Landroid/graphics/PorterDuffColorFilter;

    :cond_2
    iget-object v1, p0, L㚬/㖪/உ/உ/ℓ;->ㄏ:Landroid/graphics/Matrix;

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->getMatrix(Landroid/graphics/Matrix;)V

    iget-object v1, p0, L㚬/㖪/உ/உ/ℓ;->ㄏ:Landroid/graphics/Matrix;

    iget-object v2, p0, L㚬/㖪/உ/உ/ℓ;->ℓ:[F

    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->getValues([F)V

    iget-object v1, p0, L㚬/㖪/உ/உ/ℓ;->ℓ:[F

    const/4 v2, 0x0

    aget v1, v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget-object v3, p0, L㚬/㖪/உ/உ/ℓ;->ℓ:[F

    const/4 v4, 0x4

    aget v3, v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iget-object v4, p0, L㚬/㖪/உ/உ/ℓ;->ℓ:[F

    const/4 v5, 0x1

    aget v4, v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    iget-object v5, p0, L㚬/㖪/உ/உ/ℓ;->ℓ:[F

    const/4 v6, 0x3

    aget v5, v5, v6

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    cmpl-float v4, v4, v7

    if-nez v4, :cond_3

    cmpl-float v4, v5, v7

    if-eqz v4, :cond_4

    :cond_3
    const/high16 v1, 0x3f800000    # 1.0f

    const/high16 v3, 0x3f800000    # 1.0f

    :cond_4
    iget-object v4, p0, L㚬/㖪/உ/உ/ℓ;->ಫ:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v4, v4

    mul-float v4, v4, v1

    float-to-int v1, v4

    iget-object v4, p0, L㚬/㖪/உ/உ/ℓ;->ಫ:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v4, v4

    mul-float v4, v4, v3

    float-to-int v3, v4

    const/16 v4, 0x800

    invoke-static {v4, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v4, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    if-lez v1, :cond_9

    if-gtz v3, :cond_5

    goto :goto_1

    :cond_5
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v4

    iget-object v5, p0, L㚬/㖪/உ/உ/ℓ;->ಫ:Landroid/graphics/Rect;

    iget v8, v5, Landroid/graphics/Rect;->left:I

    int-to-float v8, v8

    iget v5, v5, Landroid/graphics/Rect;->top:I

    int-to-float v5, v5

    invoke-virtual {p1, v8, v5}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual {p0}, L㚬/㖪/உ/உ/ℓ;->䆀()Z

    move-result v5

    if-eqz v5, :cond_6

    iget-object v5, p0, L㚬/㖪/உ/உ/ℓ;->ಫ:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {p1, v5, v7}, Landroid/graphics/Canvas;->translate(FF)V

    const/high16 v5, -0x40800000    # -1.0f

    invoke-virtual {p1, v5, v6}, Landroid/graphics/Canvas;->scale(FF)V

    :cond_6
    iget-object v5, p0, L㚬/㖪/உ/உ/ℓ;->ಫ:Landroid/graphics/Rect;

    invoke-virtual {v5, v2, v2}, Landroid/graphics/Rect;->offsetTo(II)V

    iget-object v2, p0, L㚬/㖪/உ/உ/ℓ;->㚬:L㚬/㖪/உ/உ/ℓ$ℓ;

    invoke-virtual {v2, v1, v3}, L㚬/㖪/உ/உ/ℓ$ℓ;->㚬(II)V

    iget-boolean v2, p0, L㚬/㖪/உ/உ/ℓ;->ᆻ:Z

    if-nez v2, :cond_7

    iget-object v2, p0, L㚬/㖪/உ/உ/ℓ;->㚬:L㚬/㖪/உ/உ/ℓ$ℓ;

    invoke-virtual {v2, v1, v3}, L㚬/㖪/உ/உ/ℓ$ℓ;->ಫ(II)V

    goto :goto_0

    :cond_7
    iget-object v2, p0, L㚬/㖪/உ/உ/ℓ;->㚬:L㚬/㖪/உ/உ/ℓ$ℓ;

    invoke-virtual {v2}, L㚬/㖪/உ/உ/ℓ$ℓ;->䂻()Z

    move-result v2

    if-nez v2, :cond_8

    iget-object v2, p0, L㚬/㖪/உ/உ/ℓ;->㚬:L㚬/㖪/உ/உ/ℓ$ℓ;

    invoke-virtual {v2, v1, v3}, L㚬/㖪/உ/உ/ℓ$ℓ;->ಫ(II)V

    iget-object v1, p0, L㚬/㖪/உ/உ/ℓ;->㚬:L㚬/㖪/உ/உ/ℓ$ℓ;

    invoke-virtual {v1}, L㚬/㖪/உ/உ/ℓ$ℓ;->ㄏ()V

    :cond_8
    :goto_0
    iget-object v1, p0, L㚬/㖪/உ/உ/ℓ;->㚬:L㚬/㖪/உ/உ/ℓ$ℓ;

    iget-object v2, p0, L㚬/㖪/உ/உ/ℓ;->ಫ:Landroid/graphics/Rect;

    invoke-virtual {v1, p1, v0, v2}, L㚬/㖪/உ/உ/ℓ$ℓ;->㺴(Landroid/graphics/Canvas;Landroid/graphics/ColorFilter;Landroid/graphics/Rect;)V

    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_9
    :goto_1
    return-void
.end method

.method public getAlpha()I
    .locals 1

    iget-object v0, p0, L㚬/㖪/உ/உ/ᆻ;->䂻:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-static {v0}, L㚬/ℓ/䆀/㹖/உ;->㺴(Landroid/graphics/drawable/Drawable;)I

    move-result v0

    return v0

    :cond_0
    iget-object v0, p0, L㚬/㖪/உ/உ/ℓ;->㚬:L㚬/㖪/உ/உ/ℓ$ℓ;

    iget-object v0, v0, L㚬/㖪/உ/உ/ℓ$ℓ;->䂻:L㚬/㖪/உ/உ/ℓ$ᆻ;

    invoke-virtual {v0}, L㚬/㖪/உ/உ/ℓ$ᆻ;->getRootAlpha()I

    move-result v0

    return v0
.end method

.method public getChangingConfigurations()I
    .locals 2

    iget-object v0, p0, L㚬/㖪/உ/உ/ᆻ;->䂻:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    move-result v0

    return v0

    :cond_0
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    move-result v0

    iget-object v1, p0, L㚬/㖪/உ/உ/ℓ;->㚬:L㚬/㖪/உ/உ/ℓ$ℓ;

    invoke-virtual {v1}, L㚬/㖪/உ/உ/ℓ$ℓ;->getChangingConfigurations()I

    move-result v1

    or-int/2addr v0, v1

    return v0
.end method

.method public getColorFilter()Landroid/graphics/ColorFilter;
    .locals 1

    iget-object v0, p0, L㚬/㖪/உ/உ/ᆻ;->䂻:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-static {v0}, L㚬/ℓ/䆀/㹖/உ;->ḓ(Landroid/graphics/drawable/Drawable;)Landroid/graphics/ColorFilter;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, L㚬/㖪/உ/உ/ℓ;->ḓ:Landroid/graphics/ColorFilter;

    return-object v0
.end method

.method public getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .locals 2

    iget-object v0, p0, L㚬/㖪/உ/உ/ᆻ;->䂻:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    new-instance v0, L㚬/㖪/உ/உ/ℓ$ㄏ;

    iget-object v1, p0, L㚬/㖪/உ/உ/ᆻ;->䂻:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v1

    invoke-direct {v0, v1}, L㚬/㖪/உ/உ/ℓ$ㄏ;-><init>(Landroid/graphics/drawable/Drawable$ConstantState;)V

    return-object v0

    :cond_0
    iget-object v0, p0, L㚬/㖪/உ/உ/ℓ;->㚬:L㚬/㖪/உ/உ/ℓ$ℓ;

    invoke-virtual {p0}, L㚬/㖪/உ/உ/ℓ;->getChangingConfigurations()I

    move-result v1

    iput v1, v0, L㚬/㖪/உ/உ/ℓ$ℓ;->உ:I

    iget-object v0, p0, L㚬/㖪/உ/உ/ℓ;->㚬:L㚬/㖪/உ/உ/ℓ$ℓ;

    return-object v0
.end method

.method public getIntrinsicHeight()I
    .locals 1

    iget-object v0, p0, L㚬/㖪/உ/உ/ᆻ;->䂻:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    return v0

    :cond_0
    iget-object v0, p0, L㚬/㖪/உ/உ/ℓ;->㚬:L㚬/㖪/உ/உ/ℓ$ℓ;

    iget-object v0, v0, L㚬/㖪/உ/உ/ℓ$ℓ;->䂻:L㚬/㖪/உ/உ/ℓ$ᆻ;

    iget v0, v0, L㚬/㖪/உ/உ/ℓ$ᆻ;->ಫ:F

    float-to-int v0, v0

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    iget-object v0, p0, L㚬/㖪/உ/உ/ᆻ;->䂻:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    return v0

    :cond_0
    iget-object v0, p0, L㚬/㖪/உ/உ/ℓ;->㚬:L㚬/㖪/உ/உ/ℓ$ℓ;

    iget-object v0, v0, L㚬/㖪/உ/உ/ℓ$ℓ;->䂻:L㚬/㖪/உ/உ/ℓ$ᆻ;

    iget v0, v0, L㚬/㖪/உ/உ/ℓ$ᆻ;->ㄏ:F

    float-to-int v0, v0

    return v0
.end method

.method public getOpacity()I
    .locals 1

    iget-object v0, p0, L㚬/㖪/உ/உ/ᆻ;->䂻:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, -0x3

    return v0
.end method

.method public inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)V
    .locals 1

    iget-object v0, p0, L㚬/㖪/உ/உ/ᆻ;->䂻:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2, p3}, Landroid/graphics/drawable/Drawable;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, L㚬/㖪/உ/உ/ℓ;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    return-void
.end method

.method public inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    .locals 2

    iget-object v0, p0, L㚬/㖪/உ/உ/ᆻ;->䂻:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-static {v0, p1, p2, p3, p4}, L㚬/ℓ/䆀/㹖/உ;->ᆻ(Landroid/graphics/drawable/Drawable;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    return-void

    :cond_0
    iget-object v0, p0, L㚬/㖪/உ/உ/ℓ;->㚬:L㚬/㖪/உ/உ/ℓ$ℓ;

    new-instance v1, L㚬/㖪/உ/உ/ℓ$ᆻ;

    invoke-direct {v1}, L㚬/㖪/உ/உ/ℓ$ᆻ;-><init>()V

    iput-object v1, v0, L㚬/㖪/உ/உ/ℓ$ℓ;->䂻:L㚬/㖪/உ/உ/ℓ$ᆻ;

    sget-object v1, L㚬/㖪/உ/உ/உ;->உ:[I

    invoke-static {p1, p4, p3, v1}, L㚬/ℓ/ḓ/㚬/ᆻ;->㧦(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    invoke-virtual {p0, v1, p2, p4}, L㚬/㖪/உ/உ/ℓ;->ㄏ(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/Resources$Theme;)V

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {p0}, L㚬/㖪/உ/உ/ℓ;->getChangingConfigurations()I

    move-result v1

    iput v1, v0, L㚬/㖪/உ/உ/ℓ$ℓ;->உ:I

    const/4 v1, 0x1

    iput-boolean v1, v0, L㚬/㖪/உ/உ/ℓ$ℓ;->㧦:Z

    invoke-virtual {p0, p1, p2, p3, p4}, L㚬/㖪/உ/உ/ℓ;->ḓ(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    iget-object p1, p0, L㚬/㖪/உ/உ/ℓ;->㺴:Landroid/graphics/PorterDuffColorFilter;

    iget-object p2, v0, L㚬/㖪/உ/உ/ℓ$ℓ;->㚬:Landroid/content/res/ColorStateList;

    iget-object p3, v0, L㚬/㖪/உ/உ/ℓ$ℓ;->㺴:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p0, p1, p2, p3}, L㚬/㖪/உ/உ/ℓ;->ಫ(Landroid/graphics/PorterDuffColorFilter;Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object p1

    iput-object p1, p0, L㚬/㖪/உ/உ/ℓ;->㺴:Landroid/graphics/PorterDuffColorFilter;

    return-void
.end method

.method public invalidateSelf()V
    .locals 1

    iget-object v0, p0, L㚬/㖪/உ/உ/ᆻ;->䂻:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void

    :cond_0
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public isAutoMirrored()Z
    .locals 1

    iget-object v0, p0, L㚬/㖪/உ/உ/ᆻ;->䂻:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-static {v0}, L㚬/ℓ/䆀/㹖/உ;->ℓ(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    return v0

    :cond_0
    iget-object v0, p0, L㚬/㖪/உ/உ/ℓ;->㚬:L㚬/㖪/உ/உ/ℓ$ℓ;

    iget-boolean v0, v0, L㚬/㖪/உ/உ/ℓ$ℓ;->ḓ:Z

    return v0
.end method

.method public isStateful()Z
    .locals 1

    iget-object v0, p0, L㚬/㖪/உ/உ/ᆻ;->䂻:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    return v0

    :cond_0
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, L㚬/㖪/உ/உ/ℓ;->㚬:L㚬/㖪/உ/உ/ℓ$ℓ;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, L㚬/㖪/உ/உ/ℓ$ℓ;->ᆻ()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, L㚬/㖪/உ/உ/ℓ;->㚬:L㚬/㖪/உ/உ/ℓ$ℓ;

    iget-object v0, v0, L㚬/㖪/உ/உ/ℓ$ℓ;->㚬:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public mutate()Landroid/graphics/drawable/Drawable;
    .locals 2

    iget-object v0, p0, L㚬/㖪/உ/உ/ᆻ;->䂻:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    return-object p0

    :cond_0
    iget-boolean v0, p0, L㚬/㖪/உ/உ/ℓ;->䆀:Z

    if-nez v0, :cond_1

    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-ne v0, p0, :cond_1

    new-instance v0, L㚬/㖪/உ/உ/ℓ$ℓ;

    iget-object v1, p0, L㚬/㖪/உ/உ/ℓ;->㚬:L㚬/㖪/உ/உ/ℓ$ℓ;

    invoke-direct {v0, v1}, L㚬/㖪/உ/உ/ℓ$ℓ;-><init>(L㚬/㖪/உ/உ/ℓ$ℓ;)V

    iput-object v0, p0, L㚬/㖪/உ/உ/ℓ;->㚬:L㚬/㖪/உ/உ/ℓ$ℓ;

    const/4 v0, 0x1

    iput-boolean v0, p0, L㚬/㖪/உ/உ/ℓ;->䆀:Z

    :cond_1
    return-object p0
.end method

.method public onBoundsChange(Landroid/graphics/Rect;)V
    .locals 1

    iget-object v0, p0, L㚬/㖪/உ/உ/ᆻ;->䂻:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    :cond_0
    return-void
.end method

.method public onStateChange([I)Z
    .locals 5

    iget-object v0, p0, L㚬/㖪/உ/உ/ᆻ;->䂻:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result p1

    return p1

    :cond_0
    const/4 v0, 0x0

    iget-object v1, p0, L㚬/㖪/உ/உ/ℓ;->㚬:L㚬/㖪/உ/உ/ℓ$ℓ;

    iget-object v2, v1, L㚬/㖪/உ/உ/ℓ$ℓ;->㚬:Landroid/content/res/ColorStateList;

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    iget-object v4, v1, L㚬/㖪/உ/உ/ℓ$ℓ;->㺴:Landroid/graphics/PorterDuff$Mode;

    if-eqz v4, :cond_1

    iget-object v0, p0, L㚬/㖪/உ/உ/ℓ;->㺴:Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {p0, v0, v2, v4}, L㚬/㖪/உ/உ/ℓ;->ಫ(Landroid/graphics/PorterDuffColorFilter;Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object v0

    iput-object v0, p0, L㚬/㖪/உ/உ/ℓ;->㺴:Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {p0}, L㚬/㖪/உ/உ/ℓ;->invalidateSelf()V

    const/4 v0, 0x1

    :cond_1
    invoke-virtual {v1}, L㚬/㖪/உ/உ/ℓ$ℓ;->ᆻ()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1, p1}, L㚬/㖪/உ/உ/ℓ$ℓ;->ℓ([I)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, L㚬/㖪/உ/உ/ℓ;->invalidateSelf()V

    goto :goto_0

    :cond_2
    move v3, v0

    :goto_0
    return v3
.end method

.method public scheduleSelf(Ljava/lang/Runnable;J)V
    .locals 1

    iget-object v0, p0, L㚬/㖪/உ/உ/ᆻ;->䂻:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2, p3}, Landroid/graphics/drawable/Drawable;->scheduleSelf(Ljava/lang/Runnable;J)V

    return-void

    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/graphics/drawable/Drawable;->scheduleSelf(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public setAlpha(I)V
    .locals 1

    iget-object v0, p0, L㚬/㖪/உ/உ/ᆻ;->䂻:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    return-void

    :cond_0
    iget-object v0, p0, L㚬/㖪/உ/உ/ℓ;->㚬:L㚬/㖪/உ/உ/ℓ$ℓ;

    iget-object v0, v0, L㚬/㖪/உ/உ/ℓ$ℓ;->䂻:L㚬/㖪/உ/உ/ℓ$ᆻ;

    invoke-virtual {v0}, L㚬/㖪/உ/உ/ℓ$ᆻ;->getRootAlpha()I

    move-result v0

    if-eq v0, p1, :cond_1

    iget-object v0, p0, L㚬/㖪/உ/உ/ℓ;->㚬:L㚬/㖪/உ/உ/ℓ$ℓ;

    iget-object v0, v0, L㚬/㖪/உ/உ/ℓ$ℓ;->䂻:L㚬/㖪/உ/உ/ℓ$ᆻ;

    invoke-virtual {v0, p1}, L㚬/㖪/உ/உ/ℓ$ᆻ;->setRootAlpha(I)V

    invoke-virtual {p0}, L㚬/㖪/உ/உ/ℓ;->invalidateSelf()V

    :cond_1
    return-void
.end method

.method public setAutoMirrored(Z)V
    .locals 1

    iget-object v0, p0, L㚬/㖪/உ/உ/ᆻ;->䂻:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-static {v0, p1}, L㚬/ℓ/䆀/㹖/உ;->ಫ(Landroid/graphics/drawable/Drawable;Z)V

    return-void

    :cond_0
    iget-object v0, p0, L㚬/㖪/உ/உ/ℓ;->㚬:L㚬/㖪/உ/உ/ℓ$ℓ;

    iput-boolean p1, v0, L㚬/㖪/உ/உ/ℓ$ℓ;->ḓ:Z

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    iget-object v0, p0, L㚬/㖪/உ/உ/ᆻ;->䂻:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    return-void

    :cond_0
    iput-object p1, p0, L㚬/㖪/உ/உ/ℓ;->ḓ:Landroid/graphics/ColorFilter;

    invoke-virtual {p0}, L㚬/㖪/உ/உ/ℓ;->invalidateSelf()V

    return-void
.end method

.method public setTint(I)V
    .locals 1

    iget-object v0, p0, L㚬/㖪/உ/உ/ᆻ;->䂻:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-static {v0, p1}, L㚬/ℓ/䆀/㹖/உ;->ཇ(Landroid/graphics/drawable/Drawable;I)V

    return-void

    :cond_0
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, L㚬/㖪/உ/உ/ℓ;->setTintList(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setTintList(Landroid/content/res/ColorStateList;)V
    .locals 2

    iget-object v0, p0, L㚬/㖪/உ/உ/ᆻ;->䂻:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-static {v0, p1}, L㚬/ℓ/䆀/㹖/உ;->ᓭ(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    return-void

    :cond_0
    iget-object v0, p0, L㚬/㖪/உ/உ/ℓ;->㚬:L㚬/㖪/உ/உ/ℓ$ℓ;

    iget-object v1, v0, L㚬/㖪/உ/உ/ℓ$ℓ;->㚬:Landroid/content/res/ColorStateList;

    if-eq v1, p1, :cond_1

    iput-object p1, v0, L㚬/㖪/உ/உ/ℓ$ℓ;->㚬:Landroid/content/res/ColorStateList;

    iget-object v1, p0, L㚬/㖪/உ/உ/ℓ;->㺴:Landroid/graphics/PorterDuffColorFilter;

    iget-object v0, v0, L㚬/㖪/உ/உ/ℓ$ℓ;->㺴:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p0, v1, p1, v0}, L㚬/㖪/உ/உ/ℓ;->ಫ(Landroid/graphics/PorterDuffColorFilter;Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object p1

    iput-object p1, p0, L㚬/㖪/உ/உ/ℓ;->㺴:Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {p0}, L㚬/㖪/உ/உ/ℓ;->invalidateSelf()V

    :cond_1
    return-void
.end method

.method public setTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 2

    iget-object v0, p0, L㚬/㖪/உ/உ/ᆻ;->䂻:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-static {v0, p1}, L㚬/ℓ/䆀/㹖/உ;->ბ(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V

    return-void

    :cond_0
    iget-object v0, p0, L㚬/㖪/உ/உ/ℓ;->㚬:L㚬/㖪/உ/உ/ℓ$ℓ;

    iget-object v1, v0, L㚬/㖪/உ/உ/ℓ$ℓ;->㺴:Landroid/graphics/PorterDuff$Mode;

    if-eq v1, p1, :cond_1

    iput-object p1, v0, L㚬/㖪/உ/உ/ℓ$ℓ;->㺴:Landroid/graphics/PorterDuff$Mode;

    iget-object v1, p0, L㚬/㖪/உ/உ/ℓ;->㺴:Landroid/graphics/PorterDuffColorFilter;

    iget-object v0, v0, L㚬/㖪/உ/உ/ℓ$ℓ;->㚬:Landroid/content/res/ColorStateList;

    invoke-virtual {p0, v1, v0, p1}, L㚬/㖪/உ/உ/ℓ;->ಫ(Landroid/graphics/PorterDuffColorFilter;Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object p1

    iput-object p1, p0, L㚬/㖪/உ/உ/ℓ;->㺴:Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {p0}, L㚬/㖪/உ/உ/ℓ;->invalidateSelf()V

    :cond_1
    return-void
.end method

.method public setVisible(ZZ)Z
    .locals 1

    iget-object v0, p0, L㚬/㖪/உ/உ/ᆻ;->䂻:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    move-result p1

    return p1

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    move-result p1

    return p1
.end method

.method public unscheduleSelf(Ljava/lang/Runnable;)V
    .locals 1

    iget-object v0, p0, L㚬/㖪/உ/உ/ᆻ;->䂻:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->unscheduleSelf(Ljava/lang/Runnable;)V

    return-void

    :cond_0
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->unscheduleSelf(Ljava/lang/Runnable;)V

    return-void
.end method

.method public ಫ(Landroid/graphics/PorterDuffColorFilter;Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;
    .locals 1

    if-eqz p2, :cond_1

    if-nez p3, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, L㚬/㖪/உ/உ/ᆻ;->getState()[I

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result p1

    new-instance p2, Landroid/graphics/PorterDuffColorFilter;

    invoke-direct {p2, p1, p3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    return-object p2

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final ḓ(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    .locals 10

    iget-object v0, p0, L㚬/㖪/உ/உ/ℓ;->㚬:L㚬/㖪/உ/உ/ℓ$ℓ;

    iget-object v1, v0, L㚬/㖪/உ/உ/ℓ$ℓ;->䂻:L㚬/㖪/உ/உ/ℓ$ᆻ;

    new-instance v2, Ljava/util/ArrayDeque;

    invoke-direct {v2}, Ljava/util/ArrayDeque;-><init>()V

    iget-object v3, v1, L㚬/㖪/உ/உ/ℓ$ᆻ;->ℓ:L㚬/㖪/உ/உ/ℓ$㺴;

    invoke-virtual {v2, v3}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v3

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v4

    const/4 v5, 0x1

    add-int/2addr v4, v5

    const/4 v6, 0x1

    :goto_0
    if-eq v3, v5, :cond_8

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v7

    const/4 v8, 0x3

    if-ge v7, v4, :cond_0

    if-eq v3, v8, :cond_8

    :cond_0
    const/4 v7, 0x2

    const-string v9, "group"

    if-ne v3, v7, :cond_6

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, L㚬/㖪/உ/உ/ℓ$㺴;

    const-string v8, "path"

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    new-instance v3, L㚬/㖪/உ/உ/ℓ$㚬;

    invoke-direct {v3}, L㚬/㖪/உ/உ/ℓ$㚬;-><init>()V

    invoke-virtual {v3, p1, p3, p4, p2}, L㚬/㖪/உ/உ/ℓ$㚬;->ᆻ(Landroid/content/res/Resources;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;Lorg/xmlpull/v1/XmlPullParser;)V

    iget-object v6, v7, L㚬/㖪/உ/உ/ℓ$㺴;->䂻:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v3}, L㚬/㖪/உ/உ/ℓ$䆀;->getPathName()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_1

    iget-object v6, v1, L㚬/㖪/உ/உ/ℓ$ᆻ;->ბ:L㚬/䆀/உ;

    invoke-virtual {v3}, L㚬/㖪/உ/உ/ℓ$䆀;->getPathName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7, v3}, L㚬/䆀/ᆻ;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    const/4 v6, 0x0

    goto :goto_1

    :cond_2
    const-string v8, "clip-path"

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    new-instance v3, L㚬/㖪/உ/உ/ℓ$䂻;

    invoke-direct {v3}, L㚬/㖪/உ/உ/ℓ$䂻;-><init>()V

    invoke-virtual {v3, p1, p3, p4, p2}, L㚬/㖪/உ/உ/ℓ$䂻;->ḓ(Landroid/content/res/Resources;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;Lorg/xmlpull/v1/XmlPullParser;)V

    iget-object v7, v7, L㚬/㖪/உ/உ/ℓ$㺴;->䂻:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v3}, L㚬/㖪/உ/உ/ℓ$䆀;->getPathName()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_3

    iget-object v7, v1, L㚬/㖪/உ/உ/ℓ$ᆻ;->ბ:L㚬/䆀/உ;

    invoke-virtual {v3}, L㚬/㖪/உ/உ/ℓ$䆀;->getPathName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8, v3}, L㚬/䆀/ᆻ;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    :goto_1
    iget v7, v0, L㚬/㖪/உ/உ/ℓ$ℓ;->உ:I

    iget v3, v3, L㚬/㖪/உ/உ/ℓ$䆀;->㺴:I

    :goto_2
    or-int/2addr v3, v7

    iput v3, v0, L㚬/㖪/உ/உ/ℓ$ℓ;->உ:I

    goto :goto_3

    :cond_4
    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    new-instance v3, L㚬/㖪/உ/உ/ℓ$㺴;

    invoke-direct {v3}, L㚬/㖪/உ/உ/ℓ$㺴;-><init>()V

    invoke-virtual {v3, p1, p3, p4, p2}, L㚬/㖪/உ/உ/ℓ$㺴;->㚬(Landroid/content/res/Resources;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;Lorg/xmlpull/v1/XmlPullParser;)V

    iget-object v7, v7, L㚬/㖪/உ/உ/ℓ$㺴;->䂻:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2, v3}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    invoke-virtual {v3}, L㚬/㖪/உ/உ/ℓ$㺴;->getGroupName()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_5

    iget-object v7, v1, L㚬/㖪/உ/உ/ℓ$ᆻ;->ბ:L㚬/䆀/உ;

    invoke-virtual {v3}, L㚬/㖪/உ/உ/ℓ$㺴;->getGroupName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8, v3}, L㚬/䆀/ᆻ;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    iget v7, v0, L㚬/㖪/உ/உ/ℓ$ℓ;->உ:I

    iget v3, v3, L㚬/㖪/உ/உ/ℓ$㺴;->㧦:I

    goto :goto_2

    :cond_6
    if-ne v3, v8, :cond_7

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    :cond_7
    :goto_3
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    goto/16 :goto_0

    :cond_8
    if-nez v6, :cond_9

    return-void

    :cond_9
    new-instance p1, Lorg/xmlpull/v1/XmlPullParserException;

    const-string p2, "no path defined"

    invoke-direct {p1, p2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public ℓ(Z)V
    .locals 0

    iput-boolean p1, p0, L㚬/㖪/உ/உ/ℓ;->ᆻ:Z

    return-void
.end method

.method public final ㄏ(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/Resources$Theme;)V
    .locals 5

    iget-object v0, p0, L㚬/㖪/உ/உ/ℓ;->㚬:L㚬/㖪/உ/உ/ℓ$ℓ;

    iget-object v1, v0, L㚬/㖪/உ/உ/ℓ$ℓ;->䂻:L㚬/㖪/உ/உ/ℓ$ᆻ;

    const-string v2, "tintMode"

    const/4 v3, 0x6

    const/4 v4, -0x1

    invoke-static {p1, p2, v2, v3, v4}, L㚬/ℓ/ḓ/㚬/ᆻ;->ᆻ(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    move-result v2

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-static {v2, v3}, L㚬/㖪/உ/உ/ℓ;->ᆻ(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v2

    iput-object v2, v0, L㚬/㖪/உ/உ/ℓ$ℓ;->㺴:Landroid/graphics/PorterDuff$Mode;

    const-string v2, "tint"

    const/4 v3, 0x1

    invoke-static {p1, p2, p3, v2, v3}, L㚬/ℓ/ḓ/㚬/ᆻ;->㚬(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/Resources$Theme;Ljava/lang/String;I)Landroid/content/res/ColorStateList;

    move-result-object p3

    if-eqz p3, :cond_0

    iput-object p3, v0, L㚬/㖪/உ/உ/ℓ$ℓ;->㚬:Landroid/content/res/ColorStateList;

    :cond_0
    const/4 p3, 0x5

    iget-boolean v2, v0, L㚬/㖪/உ/உ/ℓ$ℓ;->ḓ:Z

    const-string v3, "autoMirrored"

    invoke-static {p1, p2, v3, p3, v2}, L㚬/ℓ/ḓ/㚬/ᆻ;->உ(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IZ)Z

    move-result p3

    iput-boolean p3, v0, L㚬/㖪/உ/உ/ℓ$ℓ;->ḓ:Z

    const/4 p3, 0x7

    iget v0, v1, L㚬/㖪/உ/உ/ℓ$ᆻ;->㧦:F

    const-string v2, "viewportWidth"

    invoke-static {p1, p2, v2, p3, v0}, L㚬/ℓ/ḓ/㚬/ᆻ;->䆀(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result p3

    iput p3, v1, L㚬/㖪/உ/உ/ℓ$ᆻ;->㧦:F

    const/16 p3, 0x8

    iget v0, v1, L㚬/㖪/உ/உ/ℓ$ᆻ;->㹖:F

    const-string v2, "viewportHeight"

    invoke-static {p1, p2, v2, p3, v0}, L㚬/ℓ/ḓ/㚬/ᆻ;->䆀(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result p3

    iput p3, v1, L㚬/㖪/உ/உ/ℓ$ᆻ;->㹖:F

    iget v0, v1, L㚬/㖪/உ/உ/ℓ$ᆻ;->㧦:F

    const/4 v2, 0x0

    cmpg-float v0, v0, v2

    if-lez v0, :cond_5

    cmpg-float p3, p3, v2

    if-lez p3, :cond_4

    const/4 p3, 0x3

    iget v0, v1, L㚬/㖪/உ/உ/ℓ$ᆻ;->ㄏ:F

    invoke-virtual {p1, p3, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p3

    iput p3, v1, L㚬/㖪/உ/உ/ℓ$ᆻ;->ㄏ:F

    const/4 p3, 0x2

    iget v0, v1, L㚬/㖪/உ/உ/ℓ$ᆻ;->ಫ:F

    invoke-virtual {p1, p3, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p3

    iput p3, v1, L㚬/㖪/உ/உ/ℓ$ᆻ;->ಫ:F

    iget v0, v1, L㚬/㖪/உ/உ/ℓ$ᆻ;->ㄏ:F

    cmpg-float v0, v0, v2

    if-lez v0, :cond_3

    cmpg-float p3, p3, v2

    if-lez p3, :cond_2

    const/4 p3, 0x4

    invoke-virtual {v1}, L㚬/㖪/உ/உ/ℓ$ᆻ;->getAlpha()F

    move-result v0

    const-string v2, "alpha"

    invoke-static {p1, p2, v2, p3, v0}, L㚬/ℓ/ḓ/㚬/ᆻ;->䆀(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result p2

    invoke-virtual {v1, p2}, L㚬/㖪/உ/உ/ℓ$ᆻ;->setAlpha(F)V

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    iput-object p1, v1, L㚬/㖪/உ/உ/ℓ$ᆻ;->ཇ:Ljava/lang/String;

    iget-object p2, v1, L㚬/㖪/உ/உ/ℓ$ᆻ;->ბ:L㚬/䆀/உ;

    invoke-virtual {p2, p1, v1}, L㚬/䆀/ᆻ;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void

    :cond_2
    new-instance p2, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getPositionDescription()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "<vector> tag requires height > 0"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_3
    new-instance p2, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getPositionDescription()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "<vector> tag requires width > 0"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_4
    new-instance p2, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getPositionDescription()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "<vector> tag requires viewportHeight > 0"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_5
    new-instance p2, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getPositionDescription()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "<vector> tag requires viewportWidth > 0"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public 㺴(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, L㚬/㖪/உ/உ/ℓ;->㚬:L㚬/㖪/உ/உ/ℓ$ℓ;

    iget-object v0, v0, L㚬/㖪/உ/உ/ℓ$ℓ;->䂻:L㚬/㖪/உ/உ/ℓ$ᆻ;

    iget-object v0, v0, L㚬/㖪/உ/உ/ℓ$ᆻ;->ბ:L㚬/䆀/உ;

    invoke-virtual {v0, p1}, L㚬/䆀/ᆻ;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final 䆀()Z
    .locals 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x11

    if-lt v0, v2, :cond_0

    invoke-virtual {p0}, L㚬/㖪/உ/உ/ℓ;->isAutoMirrored()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    invoke-static {p0}, L㚬/ℓ/䆀/㹖/உ;->䆀(Landroid/graphics/drawable/Drawable;)I

    move-result v0

    if-ne v0, v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method
