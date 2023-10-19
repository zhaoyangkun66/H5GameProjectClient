.class public final L㺴/㚬/உ/䂻/ᾦ/உ;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final ᇿ:Landroid/graphics/Paint;

.field public static final ᣝ:Z


# instance fields
.field public Ԁ:F

.field public Խ:Landroid/animation/TimeInterpolator;

.field public ש:F

.field public ڈ:Landroid/graphics/Paint;

.field public final உ:Landroid/view/View;

.field public ಋ:Z

.field public ಫ:F

.field public final ർ:Landroid/text/TextPaint;

.field public ม:L㺴/㚬/உ/䂻/ש/உ;

.field public ཇ:F

.field public ბ:F

.field public ᆻ:I

.field public ᓭ:F

.field public ᭊ:F

.field public ᰘ:F

.field public ᱹ:[I

.field public final ḓ:Landroid/graphics/Rect;

.field public ḙ:Landroid/graphics/Typeface;

.field public ỷ:F

.field public ἂ:F

.field public ἥ:F

.field public ᾦ:Landroid/graphics/Bitmap;

.field public ℓ:I

.field public ⵦ:F

.field public ㄏ:F

.field public ㄬ:Ljava/lang/CharSequence;

.field public final 㖆:Landroid/text/TextPaint;

.field public 㖪:Landroid/graphics/Typeface;

.field public 㚬:F

.field public 㞘:F

.field public 㟘:Landroid/content/res/ColorStateList;

.field public 㢏:L㺴/㚬/உ/䂻/ש/உ;

.field public 㥁:Z

.field public 㧦:Landroid/content/res/ColorStateList;

.field public 㨃:F

.field public 㫏:Z

.field public 㭢:Landroid/animation/TimeInterpolator;

.field public 㭲:Landroid/graphics/Typeface;

.field public 㮕:Landroid/content/res/ColorStateList;

.field public 㰫:F

.field public 㲝:F

.field public 㲧:Ljava/lang/CharSequence;

.field public 㹖:Landroid/content/res/ColorStateList;

.field public final 㺴:Landroid/graphics/Rect;

.field public 䂻:Z

.field public 䅚:F

.field public final 䆀:Landroid/graphics/RectF;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x1

    const/16 v2, 0x12

    if-ge v0, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, L㺴/㚬/உ/䂻/ᾦ/உ;->ᣝ:Z

    const/4 v0, 0x0

    sput-object v0, L㺴/㚬/உ/䂻/ᾦ/உ;->ᇿ:Landroid/graphics/Paint;

    if-eqz v0, :cond_1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    const v1, -0xff01

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    :cond_1
    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x10

    iput v0, p0, L㺴/㚬/உ/䂻/ᾦ/உ;->ᆻ:I

    iput v0, p0, L㺴/㚬/உ/䂻/ᾦ/உ;->ℓ:I

    const/high16 v0, 0x41700000    # 15.0f

    iput v0, p0, L㺴/㚬/உ/䂻/ᾦ/உ;->ㄏ:F

    iput v0, p0, L㺴/㚬/உ/䂻/ᾦ/உ;->ಫ:F

    iput-object p1, p0, L㺴/㚬/உ/䂻/ᾦ/உ;->உ:Landroid/view/View;

    new-instance p1, Landroid/text/TextPaint;

    const/16 v0, 0x81

    invoke-direct {p1, v0}, Landroid/text/TextPaint;-><init>(I)V

    iput-object p1, p0, L㺴/㚬/உ/䂻/ᾦ/உ;->ർ:Landroid/text/TextPaint;

    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0, p1}, Landroid/text/TextPaint;-><init>(Landroid/graphics/Paint;)V

    iput-object v0, p0, L㺴/㚬/உ/䂻/ᾦ/உ;->㖆:Landroid/text/TextPaint;

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, L㺴/㚬/உ/䂻/ᾦ/உ;->ḓ:Landroid/graphics/Rect;

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, L㺴/㚬/உ/䂻/ᾦ/உ;->㺴:Landroid/graphics/Rect;

    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, L㺴/㚬/உ/䂻/ᾦ/உ;->䆀:Landroid/graphics/RectF;

    return-void
.end method

.method public static உ(IIF)I
    .locals 5

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p2

    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    int-to-float v1, v1

    mul-float v1, v1, v0

    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v2

    int-to-float v2, v2

    mul-float v2, v2, p2

    add-float/2addr v1, v2

    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v2

    int-to-float v2, v2

    mul-float v2, v2, v0

    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v3

    int-to-float v3, v3

    mul-float v3, v3, p2

    add-float/2addr v2, v3

    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v3

    int-to-float v3, v3

    mul-float v3, v3, v0

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v4

    int-to-float v4, v4

    mul-float v4, v4, p2

    add-float/2addr v3, v4

    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result p0

    int-to-float p0, p0

    mul-float p0, p0, v0

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result p1

    int-to-float p1, p1

    mul-float p1, p1, p2

    add-float/2addr p0, p1

    float-to-int p1, v1

    float-to-int p2, v2

    float-to-int v0, v3

    float-to-int p0, p0

    invoke-static {p1, p2, v0, p0}, Landroid/graphics/Color;->argb(IIII)I

    move-result p0

    return p0
.end method

.method public static ಋ(Landroid/graphics/Rect;IIII)Z
    .locals 1

    iget v0, p0, Landroid/graphics/Rect;->left:I

    if-ne v0, p1, :cond_0

    iget p1, p0, Landroid/graphics/Rect;->top:I

    if-ne p1, p2, :cond_0

    iget p1, p0, Landroid/graphics/Rect;->right:I

    if-ne p1, p3, :cond_0

    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    if-ne p0, p4, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static 㢏(FF)Z
    .locals 0

    sub-float/2addr p0, p1

    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    const p1, 0x3a83126f    # 0.001f

    cmpg-float p0, p0, p1

    if-gez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static 㲧(FFFLandroid/animation/TimeInterpolator;)F
    .locals 0

    if-eqz p3, :cond_0

    invoke-interface {p3, p2}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    move-result p2

    :cond_0
    invoke-static {p0, p1, p2}, L㺴/㚬/உ/䂻/㹖/உ;->உ(FFF)F

    move-result p0

    return p0
.end method


# virtual methods
.method public final Ԁ(Landroid/graphics/Typeface;)Z
    .locals 1

    iget-object v0, p0, L㺴/㚬/உ/䂻/ᾦ/உ;->㢏:L㺴/㚬/உ/䂻/ש/உ;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, L㺴/㚬/உ/䂻/ש/உ;->㚬()V

    :cond_0
    iget-object v0, p0, L㺴/㚬/உ/䂻/ᾦ/உ;->ḙ:Landroid/graphics/Typeface;

    if-eq v0, p1, :cond_1

    iput-object p1, p0, L㺴/㚬/உ/䂻/ᾦ/உ;->ḙ:Landroid/graphics/Typeface;

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public Խ(F)V
    .locals 1

    iget v0, p0, L㺴/㚬/உ/䂻/ᾦ/உ;->ㄏ:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    iput p1, p0, L㺴/㚬/உ/䂻/ᾦ/உ;->ㄏ:F

    invoke-virtual {p0}, L㺴/㚬/உ/䂻/ᾦ/உ;->㫏()V

    :cond_0
    return-void
.end method

.method public ש(Landroid/content/res/ColorStateList;)V
    .locals 1

    iget-object v0, p0, L㺴/㚬/உ/䂻/ᾦ/உ;->㹖:Landroid/content/res/ColorStateList;

    if-eq v0, p1, :cond_0

    iput-object p1, p0, L㺴/㚬/உ/䂻/ᾦ/உ;->㹖:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, L㺴/㚬/உ/䂻/ᾦ/உ;->㫏()V

    :cond_0
    return-void
.end method

.method public ڈ(Landroid/graphics/Rect;)V
    .locals 3

    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget v1, p1, Landroid/graphics/Rect;->top:I

    iget v2, p1, Landroid/graphics/Rect;->right:I

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, v0, v1, v2, p1}, L㺴/㚬/உ/䂻/ᾦ/உ;->ᾦ(IIII)V

    return-void
.end method

.method public final ಫ()V
    .locals 9

    iget-object v0, p0, L㺴/㚬/உ/䂻/ᾦ/உ;->ᾦ:Landroid/graphics/Bitmap;

    if-nez v0, :cond_2

    iget-object v0, p0, L㺴/㚬/உ/䂻/ᾦ/உ;->㺴:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, L㺴/㚬/உ/䂻/ᾦ/உ;->ㄬ:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, L㺴/㚬/உ/䂻/ᾦ/உ;->䆀(F)V

    iget-object v0, p0, L㺴/㚬/உ/䂻/ᾦ/உ;->ർ:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->ascent()F

    move-result v0

    iput v0, p0, L㺴/㚬/உ/䂻/ᾦ/உ;->㰫:F

    iget-object v0, p0, L㺴/㚬/உ/䂻/ᾦ/உ;->ർ:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->descent()F

    move-result v0

    iput v0, p0, L㺴/㚬/உ/䂻/ᾦ/உ;->ש:F

    iget-object v0, p0, L㺴/㚬/உ/䂻/ᾦ/உ;->ർ:Landroid/text/TextPaint;

    iget-object v1, p0, L㺴/㚬/உ/䂻/ᾦ/உ;->ㄬ:Ljava/lang/CharSequence;

    const/4 v2, 0x0

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/text/TextPaint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iget v1, p0, L㺴/㚬/உ/䂻/ᾦ/உ;->ש:F

    iget v2, p0, L㺴/㚬/உ/䂻/ᾦ/உ;->㰫:F

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    if-lez v0, :cond_2

    if-gtz v1, :cond_1

    goto :goto_0

    :cond_1
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, L㺴/㚬/உ/䂻/ᾦ/உ;->ᾦ:Landroid/graphics/Bitmap;

    new-instance v2, Landroid/graphics/Canvas;

    iget-object v0, p0, L㺴/㚬/உ/䂻/ᾦ/உ;->ᾦ:Landroid/graphics/Bitmap;

    invoke-direct {v2, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iget-object v3, p0, L㺴/㚬/உ/䂻/ᾦ/உ;->ㄬ:Ljava/lang/CharSequence;

    const/4 v4, 0x0

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v5

    const/4 v6, 0x0

    int-to-float v0, v1

    iget-object v1, p0, L㺴/㚬/உ/䂻/ᾦ/உ;->ർ:Landroid/text/TextPaint;

    invoke-virtual {v1}, Landroid/text/TextPaint;->descent()F

    move-result v1

    sub-float v7, v0, v1

    iget-object v8, p0, L㺴/㚬/உ/䂻/ᾦ/உ;->ർ:Landroid/text/TextPaint;

    invoke-virtual/range {v2 .. v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V

    iget-object v0, p0, L㺴/㚬/உ/䂻/ᾦ/உ;->ڈ:Landroid/graphics/Paint;

    if-nez v0, :cond_2

    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, L㺴/㚬/உ/䂻/ᾦ/உ;->ڈ:Landroid/graphics/Paint;

    :cond_2
    :goto_0
    return-void
.end method

.method public ർ(Landroid/graphics/Rect;)V
    .locals 3

    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget v1, p1, Landroid/graphics/Rect;->top:I

    iget v2, p1, Landroid/graphics/Rect;->right:I

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, v0, v1, v2, p1}, L㺴/㚬/உ/䂻/ᾦ/உ;->㥁(IIII)V

    return-void
.end method

.method public final ม()Z
    .locals 1

    iget-object v0, p0, L㺴/㚬/உ/䂻/ᾦ/உ;->㹖:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, L㺴/㚬/உ/䂻/ᾦ/உ;->㧦:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public ཇ()I
    .locals 1

    iget-object v0, p0, L㺴/㚬/உ/䂻/ᾦ/உ;->㹖:Landroid/content/res/ColorStateList;

    invoke-virtual {p0, v0}, L㺴/㚬/உ/䂻/ᾦ/உ;->ᓭ(Landroid/content/res/ColorStateList;)I

    move-result v0

    return v0
.end method

.method public final ბ()I
    .locals 1

    iget-object v0, p0, L㺴/㚬/உ/䂻/ᾦ/உ;->㧦:Landroid/content/res/ColorStateList;

    invoke-virtual {p0, v0}, L㺴/㚬/உ/䂻/ᾦ/உ;->ᓭ(Landroid/content/res/ColorStateList;)I

    move-result v0

    return v0
.end method

.method public final ᆻ(F)V
    .locals 8

    iget-object v0, p0, L㺴/㚬/உ/䂻/ᾦ/உ;->㲧:Ljava/lang/CharSequence;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, L㺴/㚬/உ/䂻/ᾦ/உ;->ḓ:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, L㺴/㚬/உ/䂻/ᾦ/உ;->㺴:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, L㺴/㚬/உ/䂻/ᾦ/உ;->ಫ:F

    invoke-static {p1, v2}, L㺴/㚬/உ/䂻/ᾦ/உ;->㢏(FF)Z

    move-result v2

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v2, :cond_2

    iget p1, p0, L㺴/㚬/உ/䂻/ᾦ/உ;->ಫ:F

    iput v3, p0, L㺴/㚬/உ/䂻/ᾦ/உ;->㨃:F

    iget-object v1, p0, L㺴/㚬/உ/䂻/ᾦ/உ;->㖪:Landroid/graphics/Typeface;

    iget-object v2, p0, L㺴/㚬/உ/䂻/ᾦ/உ;->㭲:Landroid/graphics/Typeface;

    if-eq v1, v2, :cond_1

    iput-object v2, p0, L㺴/㚬/உ/䂻/ᾦ/உ;->㖪:Landroid/graphics/Typeface;

    const/4 v1, 0x1

    goto :goto_3

    :cond_1
    const/4 v1, 0x0

    goto :goto_3

    :cond_2
    iget v2, p0, L㺴/㚬/உ/䂻/ᾦ/உ;->ㄏ:F

    iget-object v6, p0, L㺴/㚬/உ/䂻/ᾦ/உ;->㖪:Landroid/graphics/Typeface;

    iget-object v7, p0, L㺴/㚬/உ/䂻/ᾦ/உ;->ḙ:Landroid/graphics/Typeface;

    if-eq v6, v7, :cond_3

    iput-object v7, p0, L㺴/㚬/உ/䂻/ᾦ/உ;->㖪:Landroid/graphics/Typeface;

    const/4 v6, 0x1

    goto :goto_0

    :cond_3
    const/4 v6, 0x0

    :goto_0
    invoke-static {p1, v2}, L㺴/㚬/உ/䂻/ᾦ/உ;->㢏(FF)Z

    move-result v7

    if-eqz v7, :cond_4

    iput v3, p0, L㺴/㚬/உ/䂻/ᾦ/உ;->㨃:F

    goto :goto_1

    :cond_4
    iget v7, p0, L㺴/㚬/உ/䂻/ᾦ/உ;->ㄏ:F

    div-float/2addr p1, v7

    iput p1, p0, L㺴/㚬/உ/䂻/ᾦ/உ;->㨃:F

    :goto_1
    iget p1, p0, L㺴/㚬/உ/䂻/ᾦ/உ;->ಫ:F

    iget v7, p0, L㺴/㚬/உ/䂻/ᾦ/உ;->ㄏ:F

    div-float/2addr p1, v7

    mul-float v7, v1, p1

    cmpl-float v7, v7, v0

    if-lez v7, :cond_5

    div-float/2addr v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    goto :goto_2

    :cond_5
    move v0, v1

    :goto_2
    move p1, v2

    move v1, v6

    :goto_3
    const/4 v2, 0x0

    cmpl-float v2, v0, v2

    if-lez v2, :cond_8

    iget v2, p0, L㺴/㚬/உ/䂻/ᾦ/உ;->ᰘ:F

    cmpl-float v2, v2, p1

    if-nez v2, :cond_7

    iget-boolean v2, p0, L㺴/㚬/உ/䂻/ᾦ/உ;->㥁:Z

    if-nez v2, :cond_7

    if-eqz v1, :cond_6

    goto :goto_4

    :cond_6
    const/4 v1, 0x0

    goto :goto_5

    :cond_7
    :goto_4
    const/4 v1, 0x1

    :goto_5
    iput p1, p0, L㺴/㚬/உ/䂻/ᾦ/உ;->ᰘ:F

    iput-boolean v5, p0, L㺴/㚬/உ/䂻/ᾦ/உ;->㥁:Z

    :cond_8
    iget-object p1, p0, L㺴/㚬/உ/䂻/ᾦ/உ;->ㄬ:Ljava/lang/CharSequence;

    if-eqz p1, :cond_9

    if-eqz v1, :cond_b

    :cond_9
    iget-object p1, p0, L㺴/㚬/உ/䂻/ᾦ/உ;->ർ:Landroid/text/TextPaint;

    iget v1, p0, L㺴/㚬/உ/䂻/ᾦ/உ;->ᰘ:F

    invoke-virtual {p1, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    iget-object p1, p0, L㺴/㚬/உ/䂻/ᾦ/உ;->ർ:Landroid/text/TextPaint;

    iget-object v1, p0, L㺴/㚬/உ/䂻/ᾦ/உ;->㖪:Landroid/graphics/Typeface;

    invoke-virtual {p1, v1}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget-object p1, p0, L㺴/㚬/உ/䂻/ᾦ/உ;->ർ:Landroid/text/TextPaint;

    iget v1, p0, L㺴/㚬/உ/䂻/ᾦ/உ;->㨃:F

    cmpl-float v1, v1, v3

    if-eqz v1, :cond_a

    goto :goto_6

    :cond_a
    const/4 v4, 0x0

    :goto_6
    invoke-virtual {p1, v4}, Landroid/text/TextPaint;->setLinearText(Z)V

    iget-object p1, p0, L㺴/㚬/உ/䂻/ᾦ/உ;->㲧:Ljava/lang/CharSequence;

    iget-object v1, p0, L㺴/㚬/உ/䂻/ᾦ/உ;->ർ:Landroid/text/TextPaint;

    sget-object v2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-static {p1, v1, v0, v2}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object p1

    iget-object v0, p0, L㺴/㚬/உ/䂻/ᾦ/உ;->ㄬ:Ljava/lang/CharSequence;

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    iput-object p1, p0, L㺴/㚬/உ/䂻/ᾦ/உ;->ㄬ:Ljava/lang/CharSequence;

    invoke-virtual {p0, p1}, L㺴/㚬/உ/䂻/ᾦ/உ;->ḓ(Ljava/lang/CharSequence;)Z

    move-result p1

    iput-boolean p1, p0, L㺴/㚬/உ/䂻/ᾦ/உ;->㫏:Z

    :cond_b
    return-void
.end method

.method public final ᓭ(Landroid/content/res/ColorStateList;)I
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    iget-object v1, p0, L㺴/㚬/உ/䂻/ᾦ/உ;->ᱹ:[I

    if-eqz v1, :cond_1

    invoke-virtual {p1, v1, v0}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result p1

    return p1

    :cond_1
    invoke-virtual {p1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result p1

    return p1
.end method

.method public ᭊ(Landroid/animation/TimeInterpolator;)V
    .locals 0

    iput-object p1, p0, L㺴/㚬/உ/䂻/ᾦ/உ;->Խ:Landroid/animation/TimeInterpolator;

    invoke-virtual {p0}, L㺴/㚬/உ/䂻/ᾦ/உ;->㫏()V

    return-void
.end method

.method public ᰘ(Landroid/graphics/Typeface;)V
    .locals 0

    invoke-virtual {p0, p1}, L㺴/㚬/உ/䂻/ᾦ/உ;->ᱹ(Landroid/graphics/Typeface;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, L㺴/㚬/உ/䂻/ᾦ/உ;->㫏()V

    :cond_0
    return-void
.end method

.method public final ᱹ(Landroid/graphics/Typeface;)Z
    .locals 1

    iget-object v0, p0, L㺴/㚬/உ/䂻/ᾦ/உ;->ม:L㺴/㚬/உ/䂻/ש/உ;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, L㺴/㚬/உ/䂻/ש/உ;->㚬()V

    :cond_0
    iget-object v0, p0, L㺴/㚬/உ/䂻/ᾦ/உ;->㭲:Landroid/graphics/Typeface;

    if-eq v0, p1, :cond_1

    iput-object p1, p0, L㺴/㚬/உ/䂻/ᾦ/உ;->㭲:Landroid/graphics/Typeface;

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public final ḓ(Ljava/lang/CharSequence;)Z
    .locals 3

    iget-object v0, p0, L㺴/㚬/உ/䂻/ᾦ/உ;->உ:Landroid/view/View;

    invoke-static {v0}, L㚬/ℓ/ἥ/㭲;->ม(Landroid/view/View;)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_1

    sget-object v0, L㚬/ℓ/㧦/ḓ;->㺴:L㚬/ℓ/㧦/㺴;

    goto :goto_1

    :cond_1
    sget-object v0, L㚬/ℓ/㧦/ḓ;->㚬:L㚬/ℓ/㧦/㺴;

    :goto_1
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    invoke-interface {v0, p1, v1, v2}, L㚬/ℓ/㧦/㺴;->உ(Ljava/lang/CharSequence;II)Z

    move-result p1

    return p1
.end method

.method public final ḙ(Landroid/text/TextPaint;)V
    .locals 1

    iget v0, p0, L㺴/㚬/உ/䂻/ᾦ/உ;->ㄏ:F

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setTextSize(F)V

    iget-object v0, p0, L㺴/㚬/உ/䂻/ᾦ/உ;->ḙ:Landroid/graphics/Typeface;

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    return-void
.end method

.method public ỷ(F)V
    .locals 2

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {p1, v0, v1}, L㚬/ℓ/ℓ/உ;->உ(FFF)F

    move-result p1

    iget v0, p0, L㺴/㚬/உ/䂻/ᾦ/உ;->㚬:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    iput p1, p0, L㺴/㚬/உ/䂻/ᾦ/உ;->㚬:F

    invoke-virtual {p0}, L㺴/㚬/உ/䂻/ᾦ/உ;->㺴()V

    :cond_0
    return-void
.end method

.method public final ἂ([I)Z
    .locals 0

    iput-object p1, p0, L㺴/㚬/உ/䂻/ᾦ/உ;->ᱹ:[I

    invoke-virtual {p0}, L㺴/㚬/உ/䂻/ᾦ/உ;->ม()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, L㺴/㚬/உ/䂻/ᾦ/உ;->㫏()V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public ἥ()F
    .locals 1

    iget-object v0, p0, L㺴/㚬/உ/䂻/ᾦ/உ;->㖆:Landroid/text/TextPaint;

    invoke-virtual {p0, v0}, L㺴/㚬/உ/䂻/ᾦ/உ;->㭲(Landroid/text/TextPaint;)V

    iget-object v0, p0, L㺴/㚬/உ/䂻/ᾦ/உ;->㖆:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->ascent()F

    move-result v0

    neg-float v0, v0

    return v0
.end method

.method public ᾦ(IIII)V
    .locals 1

    iget-object v0, p0, L㺴/㚬/உ/䂻/ᾦ/உ;->ḓ:Landroid/graphics/Rect;

    invoke-static {v0, p1, p2, p3, p4}, L㺴/㚬/உ/䂻/ᾦ/உ;->ಋ(Landroid/graphics/Rect;IIII)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, L㺴/㚬/உ/䂻/ᾦ/உ;->ḓ:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    const/4 p1, 0x1

    iput-boolean p1, p0, L㺴/㚬/உ/䂻/ᾦ/உ;->㥁:Z

    invoke-virtual {p0}, L㺴/㚬/உ/䂻/ᾦ/உ;->ㄬ()V

    :cond_0
    return-void
.end method

.method public final ℓ()V
    .locals 1

    iget-object v0, p0, L㺴/㚬/உ/䂻/ᾦ/உ;->ᾦ:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v0, 0x0

    iput-object v0, p0, L㺴/㚬/உ/䂻/ᾦ/உ;->ᾦ:Landroid/graphics/Bitmap;

    :cond_0
    return-void
.end method

.method public ⵦ(Ljava/lang/CharSequence;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, L㺴/㚬/உ/䂻/ᾦ/உ;->㲧:Ljava/lang/CharSequence;

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iput-object p1, p0, L㺴/㚬/உ/䂻/ᾦ/உ;->㲧:Ljava/lang/CharSequence;

    const/4 p1, 0x0

    iput-object p1, p0, L㺴/㚬/உ/䂻/ᾦ/உ;->ㄬ:Ljava/lang/CharSequence;

    invoke-virtual {p0}, L㺴/㚬/உ/䂻/ᾦ/உ;->ℓ()V

    invoke-virtual {p0}, L㺴/㚬/உ/䂻/ᾦ/உ;->㫏()V

    :cond_1
    return-void
.end method

.method public ㄏ(Landroid/graphics/Canvas;)V
    .locals 9

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    iget-object v1, p0, L㺴/㚬/உ/䂻/ᾦ/உ;->ㄬ:Ljava/lang/CharSequence;

    if-eqz v1, :cond_5

    iget-boolean v1, p0, L㺴/㚬/உ/䂻/ᾦ/உ;->䂻:Z

    if-eqz v1, :cond_5

    iget v6, p0, L㺴/㚬/உ/䂻/ᾦ/உ;->㲝:F

    iget v1, p0, L㺴/㚬/உ/䂻/ᾦ/உ;->㞘:F

    iget-boolean v2, p0, L㺴/㚬/உ/䂻/ᾦ/உ;->ಋ:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, L㺴/㚬/உ/䂻/ᾦ/உ;->ᾦ:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_1

    iget v3, p0, L㺴/㚬/உ/䂻/ᾦ/உ;->㰫:F

    iget v4, p0, L㺴/㚬/உ/䂻/ᾦ/உ;->㨃:F

    mul-float v3, v3, v4

    goto :goto_1

    :cond_1
    iget-object v3, p0, L㺴/㚬/உ/䂻/ᾦ/உ;->ർ:Landroid/text/TextPaint;

    invoke-virtual {v3}, Landroid/text/TextPaint;->ascent()F

    move-result v3

    iget v4, p0, L㺴/㚬/உ/䂻/ᾦ/உ;->㨃:F

    mul-float v3, v3, v4

    iget-object v4, p0, L㺴/㚬/உ/䂻/ᾦ/உ;->ർ:Landroid/text/TextPaint;

    invoke-virtual {v4}, Landroid/text/TextPaint;->descent()F

    :goto_1
    if-eqz v2, :cond_2

    add-float/2addr v1, v3

    :cond_2
    move v7, v1

    iget v1, p0, L㺴/㚬/உ/䂻/ᾦ/உ;->㨃:F

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v3, v1, v3

    if-eqz v3, :cond_3

    invoke-virtual {p1, v1, v1, v6, v7}, Landroid/graphics/Canvas;->scale(FFFF)V

    :cond_3
    if-eqz v2, :cond_4

    iget-object v1, p0, L㺴/㚬/உ/䂻/ᾦ/உ;->ᾦ:Landroid/graphics/Bitmap;

    iget-object v2, p0, L㺴/㚬/உ/䂻/ᾦ/உ;->ڈ:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v6, v7, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_2

    :cond_4
    iget-object v3, p0, L㺴/㚬/உ/䂻/ᾦ/உ;->ㄬ:Ljava/lang/CharSequence;

    const/4 v4, 0x0

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v5

    iget-object v8, p0, L㺴/㚬/உ/䂻/ᾦ/உ;->ർ:Landroid/text/TextPaint;

    move-object v2, p1

    invoke-virtual/range {v2 .. v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V

    :cond_5
    :goto_2
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void
.end method

.method public ㄬ()V
    .locals 1

    iget-object v0, p0, L㺴/㚬/உ/䂻/ᾦ/உ;->ḓ:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, L㺴/㚬/உ/䂻/ᾦ/உ;->ḓ:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, L㺴/㚬/உ/䂻/ᾦ/உ;->㺴:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, L㺴/㚬/உ/䂻/ᾦ/உ;->㺴:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, L㺴/㚬/உ/䂻/ᾦ/உ;->䂻:Z

    return-void
.end method

.method public 㖆(Landroid/content/res/ColorStateList;)V
    .locals 1

    iget-object v0, p0, L㺴/㚬/உ/䂻/ᾦ/உ;->㧦:Landroid/content/res/ColorStateList;

    if-eq v0, p1, :cond_0

    iput-object p1, p0, L㺴/㚬/உ/䂻/ᾦ/உ;->㧦:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, L㺴/㚬/உ/䂻/ᾦ/உ;->㫏()V

    :cond_0
    return-void
.end method

.method public final 㖪(F)V
    .locals 4

    iget-object v0, p0, L㺴/㚬/உ/䂻/ᾦ/உ;->䆀:Landroid/graphics/RectF;

    iget-object v1, p0, L㺴/㚬/உ/䂻/ᾦ/உ;->㺴:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget-object v2, p0, L㺴/㚬/உ/䂻/ᾦ/உ;->ḓ:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    iget-object v3, p0, L㺴/㚬/உ/䂻/ᾦ/உ;->㭢:Landroid/animation/TimeInterpolator;

    invoke-static {v1, v2, p1, v3}, L㺴/㚬/உ/䂻/ᾦ/உ;->㲧(FFFLandroid/animation/TimeInterpolator;)F

    move-result v1

    iput v1, v0, Landroid/graphics/RectF;->left:F

    iget-object v0, p0, L㺴/㚬/உ/䂻/ᾦ/உ;->䆀:Landroid/graphics/RectF;

    iget v1, p0, L㺴/㚬/உ/䂻/ᾦ/உ;->ἥ:F

    iget v2, p0, L㺴/㚬/உ/䂻/ᾦ/உ;->ཇ:F

    iget-object v3, p0, L㺴/㚬/உ/䂻/ᾦ/உ;->㭢:Landroid/animation/TimeInterpolator;

    invoke-static {v1, v2, p1, v3}, L㺴/㚬/உ/䂻/ᾦ/உ;->㲧(FFFLandroid/animation/TimeInterpolator;)F

    move-result v1

    iput v1, v0, Landroid/graphics/RectF;->top:F

    iget-object v0, p0, L㺴/㚬/உ/䂻/ᾦ/உ;->䆀:Landroid/graphics/RectF;

    iget-object v1, p0, L㺴/㚬/உ/䂻/ᾦ/உ;->㺴:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    iget-object v2, p0, L㺴/㚬/உ/䂻/ᾦ/உ;->ḓ:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    iget-object v3, p0, L㺴/㚬/உ/䂻/ᾦ/உ;->㭢:Landroid/animation/TimeInterpolator;

    invoke-static {v1, v2, p1, v3}, L㺴/㚬/உ/䂻/ᾦ/உ;->㲧(FFFLandroid/animation/TimeInterpolator;)F

    move-result v1

    iput v1, v0, Landroid/graphics/RectF;->right:F

    iget-object v0, p0, L㺴/㚬/உ/䂻/ᾦ/உ;->䆀:Landroid/graphics/RectF;

    iget-object v1, p0, L㺴/㚬/உ/䂻/ᾦ/உ;->㺴:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, v1

    iget-object v2, p0, L㺴/㚬/உ/䂻/ᾦ/உ;->ḓ:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v2

    iget-object v3, p0, L㺴/㚬/உ/䂻/ᾦ/உ;->㭢:Landroid/animation/TimeInterpolator;

    invoke-static {v1, v2, p1, v3}, L㺴/㚬/உ/䂻/ᾦ/உ;->㲧(FFFLandroid/animation/TimeInterpolator;)F

    move-result p1

    iput p1, v0, Landroid/graphics/RectF;->bottom:F

    return-void
.end method

.method public 㚬()F
    .locals 4

    iget-object v0, p0, L㺴/㚬/உ/䂻/ᾦ/உ;->㲧:Ljava/lang/CharSequence;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, L㺴/㚬/உ/䂻/ᾦ/உ;->㖆:Landroid/text/TextPaint;

    invoke-virtual {p0, v0}, L㺴/㚬/உ/䂻/ᾦ/உ;->㭲(Landroid/text/TextPaint;)V

    iget-object v0, p0, L㺴/㚬/உ/䂻/ᾦ/உ;->㖆:Landroid/text/TextPaint;

    iget-object v1, p0, L㺴/㚬/உ/䂻/ᾦ/உ;->㲧:Ljava/lang/CharSequence;

    const/4 v2, 0x0

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/text/TextPaint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v0

    return v0
.end method

.method public 㞘()F
    .locals 1

    iget v0, p0, L㺴/㚬/உ/䂻/ᾦ/உ;->㚬:F

    return v0
.end method

.method public 㟘(Landroid/graphics/Typeface;)V
    .locals 1

    invoke-virtual {p0, p1}, L㺴/㚬/உ/䂻/ᾦ/உ;->ᱹ(Landroid/graphics/Typeface;)Z

    move-result v0

    invoke-virtual {p0, p1}, L㺴/㚬/உ/䂻/ᾦ/உ;->Ԁ(Landroid/graphics/Typeface;)Z

    move-result p1

    if-nez v0, :cond_0

    if-eqz p1, :cond_1

    :cond_0
    invoke-virtual {p0}, L㺴/㚬/உ/䂻/ᾦ/உ;->㫏()V

    :cond_1
    return-void
.end method

.method public 㥁(IIII)V
    .locals 1

    iget-object v0, p0, L㺴/㚬/உ/䂻/ᾦ/உ;->㺴:Landroid/graphics/Rect;

    invoke-static {v0, p1, p2, p3, p4}, L㺴/㚬/உ/䂻/ᾦ/உ;->ಋ(Landroid/graphics/Rect;IIII)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, L㺴/㚬/உ/䂻/ᾦ/உ;->㺴:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    const/4 p1, 0x1

    iput-boolean p1, p0, L㺴/㚬/உ/䂻/ᾦ/உ;->㥁:Z

    invoke-virtual {p0}, L㺴/㚬/உ/䂻/ᾦ/உ;->ㄬ()V

    :cond_0
    return-void
.end method

.method public 㧦(Landroid/graphics/RectF;)V
    .locals 4

    iget-object v0, p0, L㺴/㚬/உ/䂻/ᾦ/உ;->㲧:Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, L㺴/㚬/உ/䂻/ᾦ/உ;->ḓ(Ljava/lang/CharSequence;)Z

    move-result v0

    iget-object v1, p0, L㺴/㚬/உ/䂻/ᾦ/உ;->ḓ:Landroid/graphics/Rect;

    if-nez v0, :cond_0

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    goto :goto_0

    :cond_0
    iget v1, v1, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    invoke-virtual {p0}, L㺴/㚬/உ/䂻/ᾦ/உ;->㚬()F

    move-result v2

    sub-float/2addr v1, v2

    :goto_0
    iput v1, p1, Landroid/graphics/RectF;->left:F

    iget-object v2, p0, L㺴/㚬/உ/䂻/ᾦ/உ;->ḓ:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    iput v3, p1, Landroid/graphics/RectF;->top:F

    if-nez v0, :cond_1

    invoke-virtual {p0}, L㺴/㚬/உ/䂻/ᾦ/உ;->㚬()F

    move-result v0

    add-float/2addr v1, v0

    goto :goto_1

    :cond_1
    iget v0, v2, Landroid/graphics/Rect;->right:I

    int-to-float v1, v0

    :goto_1
    iput v1, p1, Landroid/graphics/RectF;->right:F

    iget-object v0, p0, L㺴/㚬/உ/䂻/ᾦ/உ;->ḓ:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    invoke-virtual {p0}, L㺴/㚬/உ/䂻/ᾦ/உ;->ἥ()F

    move-result v1

    add-float/2addr v0, v1

    iput v0, p1, Landroid/graphics/RectF;->bottom:F

    return-void
.end method

.method public 㨃(I)V
    .locals 1

    iget v0, p0, L㺴/㚬/உ/䂻/ᾦ/உ;->ℓ:I

    if-eq v0, p1, :cond_0

    iput p1, p0, L㺴/㚬/உ/䂻/ᾦ/உ;->ℓ:I

    invoke-virtual {p0}, L㺴/㚬/உ/䂻/ᾦ/உ;->㫏()V

    :cond_0
    return-void
.end method

.method public 㫏()V
    .locals 1

    iget-object v0, p0, L㺴/㚬/உ/䂻/ᾦ/உ;->உ:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, L㺴/㚬/உ/䂻/ᾦ/உ;->உ:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, L㺴/㚬/உ/䂻/ᾦ/உ;->䂻()V

    invoke-virtual {p0}, L㺴/㚬/உ/䂻/ᾦ/உ;->㺴()V

    :cond_0
    return-void
.end method

.method public 㭢(I)V
    .locals 1

    iget v0, p0, L㺴/㚬/உ/䂻/ᾦ/உ;->ᆻ:I

    if-eq v0, p1, :cond_0

    iput p1, p0, L㺴/㚬/உ/䂻/ᾦ/உ;->ᆻ:I

    invoke-virtual {p0}, L㺴/㚬/உ/䂻/ᾦ/உ;->㫏()V

    :cond_0
    return-void
.end method

.method public final 㭲(Landroid/text/TextPaint;)V
    .locals 1

    iget v0, p0, L㺴/㚬/உ/䂻/ᾦ/உ;->ಫ:F

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setTextSize(F)V

    iget-object v0, p0, L㺴/㚬/உ/䂻/ᾦ/உ;->㭲:Landroid/graphics/Typeface;

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    return-void
.end method

.method public 㮕(Landroid/animation/TimeInterpolator;)V
    .locals 0

    iput-object p1, p0, L㺴/㚬/உ/䂻/ᾦ/உ;->㭢:Landroid/animation/TimeInterpolator;

    invoke-virtual {p0}, L㺴/㚬/உ/䂻/ᾦ/உ;->㫏()V

    return-void
.end method

.method public 㰫(I)V
    .locals 3

    new-instance v0, L㺴/㚬/உ/䂻/ש/㺴;

    iget-object v1, p0, L㺴/㚬/உ/䂻/ᾦ/உ;->உ:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, L㺴/㚬/உ/䂻/ש/㺴;-><init>(Landroid/content/Context;I)V

    iget-object p1, v0, L㺴/㚬/உ/䂻/ש/㺴;->䂻:Landroid/content/res/ColorStateList;

    if-eqz p1, :cond_0

    iput-object p1, p0, L㺴/㚬/உ/䂻/ᾦ/உ;->㹖:Landroid/content/res/ColorStateList;

    :cond_0
    iget p1, v0, L㺴/㚬/உ/䂻/ש/㺴;->உ:F

    const/4 v1, 0x0

    cmpl-float v1, p1, v1

    if-eqz v1, :cond_1

    iput p1, p0, L㺴/㚬/உ/䂻/ᾦ/உ;->ಫ:F

    :cond_1
    iget-object p1, v0, L㺴/㚬/உ/䂻/ש/㺴;->䆀:Landroid/content/res/ColorStateList;

    if-eqz p1, :cond_2

    iput-object p1, p0, L㺴/㚬/உ/䂻/ᾦ/உ;->㮕:Landroid/content/res/ColorStateList;

    :cond_2
    iget p1, v0, L㺴/㚬/உ/䂻/ש/㺴;->ᆻ:F

    iput p1, p0, L㺴/㚬/உ/䂻/ᾦ/உ;->ỷ:F

    iget p1, v0, L㺴/㚬/உ/䂻/ש/㺴;->ℓ:F

    iput p1, p0, L㺴/㚬/உ/䂻/ᾦ/உ;->䅚:F

    iget p1, v0, L㺴/㚬/உ/䂻/ש/㺴;->ㄏ:F

    iput p1, p0, L㺴/㚬/உ/䂻/ᾦ/உ;->Ԁ:F

    iget-object p1, p0, L㺴/㚬/உ/䂻/ᾦ/உ;->ม:L㺴/㚬/உ/䂻/ש/உ;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, L㺴/㚬/உ/䂻/ש/உ;->㚬()V

    :cond_3
    new-instance p1, L㺴/㚬/உ/䂻/ש/உ;

    new-instance v1, L㺴/㚬/உ/䂻/ᾦ/உ$உ;

    invoke-direct {v1, p0}, L㺴/㚬/உ/䂻/ᾦ/உ$உ;-><init>(L㺴/㚬/உ/䂻/ᾦ/உ;)V

    invoke-virtual {v0}, L㺴/㚬/உ/䂻/ש/㺴;->ḓ()Landroid/graphics/Typeface;

    move-result-object v2

    invoke-direct {p1, v1, v2}, L㺴/㚬/உ/䂻/ש/உ;-><init>(L㺴/㚬/உ/䂻/ש/உ$உ;Landroid/graphics/Typeface;)V

    iput-object p1, p0, L㺴/㚬/உ/䂻/ᾦ/உ;->ม:L㺴/㚬/உ/䂻/ש/உ;

    iget-object p1, p0, L㺴/㚬/உ/䂻/ᾦ/உ;->உ:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v1, p0, L㺴/㚬/உ/䂻/ᾦ/உ;->ม:L㺴/㚬/உ/䂻/ש/உ;

    invoke-virtual {v0, p1, v1}, L㺴/㚬/உ/䂻/ש/㺴;->ℓ(Landroid/content/Context;L㺴/㚬/உ/䂻/ש/䆀;)V

    invoke-virtual {p0}, L㺴/㚬/உ/䂻/ᾦ/உ;->㫏()V

    return-void
.end method

.method public 㲝()F
    .locals 1

    iget-object v0, p0, L㺴/㚬/உ/䂻/ᾦ/உ;->㖆:Landroid/text/TextPaint;

    invoke-virtual {p0, v0}, L㺴/㚬/உ/䂻/ᾦ/உ;->ḙ(Landroid/text/TextPaint;)V

    iget-object v0, p0, L㺴/㚬/உ/䂻/ᾦ/உ;->㖆:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->ascent()F

    move-result v0

    neg-float v0, v0

    return v0
.end method

.method public 㹖()Landroid/content/res/ColorStateList;
    .locals 1

    iget-object v0, p0, L㺴/㚬/உ/䂻/ᾦ/உ;->㹖:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public final 㺴()V
    .locals 1

    iget v0, p0, L㺴/㚬/உ/䂻/ᾦ/உ;->㚬:F

    invoke-virtual {p0, v0}, L㺴/㚬/உ/䂻/ᾦ/உ;->䆀(F)V

    return-void
.end method

.method public final 䂻()V
    .locals 11

    iget v0, p0, L㺴/㚬/உ/䂻/ᾦ/உ;->ᰘ:F

    iget v1, p0, L㺴/㚬/உ/䂻/ᾦ/உ;->ಫ:F

    invoke-virtual {p0, v1}, L㺴/㚬/உ/䂻/ᾦ/உ;->ᆻ(F)V

    iget-object v1, p0, L㺴/㚬/உ/䂻/ᾦ/உ;->ㄬ:Ljava/lang/CharSequence;

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    iget-object v4, p0, L㺴/㚬/உ/䂻/ᾦ/உ;->ർ:Landroid/text/TextPaint;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v5

    invoke-virtual {v4, v1, v2, v5}, Landroid/text/TextPaint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iget v4, p0, L㺴/㚬/உ/䂻/ᾦ/உ;->ℓ:I

    iget-boolean v5, p0, L㺴/㚬/உ/䂻/ᾦ/உ;->㫏:Z

    invoke-static {v4, v5}, L㚬/ℓ/ἥ/㺴;->䂻(II)I

    move-result v4

    and-int/lit8 v5, v4, 0x70

    const/16 v6, 0x50

    const/16 v7, 0x30

    const/high16 v8, 0x40000000    # 2.0f

    if-eq v5, v7, :cond_2

    if-eq v5, v6, :cond_1

    iget-object v5, p0, L㺴/㚬/உ/䂻/ᾦ/உ;->ർ:Landroid/text/TextPaint;

    invoke-virtual {v5}, Landroid/text/TextPaint;->descent()F

    move-result v5

    iget-object v9, p0, L㺴/㚬/உ/䂻/ᾦ/உ;->ർ:Landroid/text/TextPaint;

    invoke-virtual {v9}, Landroid/text/TextPaint;->ascent()F

    move-result v9

    sub-float/2addr v5, v9

    div-float/2addr v5, v8

    iget-object v9, p0, L㺴/㚬/உ/䂻/ᾦ/உ;->ർ:Landroid/text/TextPaint;

    invoke-virtual {v9}, Landroid/text/TextPaint;->descent()F

    move-result v9

    sub-float/2addr v5, v9

    iget-object v9, p0, L㺴/㚬/உ/䂻/ᾦ/உ;->ḓ:Landroid/graphics/Rect;

    invoke-virtual {v9}, Landroid/graphics/Rect;->centerY()I

    move-result v9

    int-to-float v9, v9

    add-float/2addr v9, v5

    iput v9, p0, L㺴/㚬/உ/䂻/ᾦ/உ;->ཇ:F

    goto :goto_2

    :cond_1
    iget-object v5, p0, L㺴/㚬/உ/䂻/ᾦ/உ;->ḓ:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    int-to-float v5, v5

    goto :goto_1

    :cond_2
    iget-object v5, p0, L㺴/㚬/உ/䂻/ᾦ/உ;->ḓ:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    int-to-float v5, v5

    iget-object v9, p0, L㺴/㚬/உ/䂻/ᾦ/உ;->ർ:Landroid/text/TextPaint;

    invoke-virtual {v9}, Landroid/text/TextPaint;->ascent()F

    move-result v9

    sub-float/2addr v5, v9

    :goto_1
    iput v5, p0, L㺴/㚬/உ/䂻/ᾦ/உ;->ཇ:F

    :goto_2
    const v5, 0x800007

    and-int/2addr v4, v5

    const/4 v9, 0x5

    const/4 v10, 0x1

    if-eq v4, v10, :cond_4

    if-eq v4, v9, :cond_3

    iget-object v1, p0, L㺴/㚬/உ/䂻/ᾦ/உ;->ḓ:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iput v1, p0, L㺴/㚬/உ/䂻/ᾦ/உ;->ბ:F

    goto :goto_4

    :cond_3
    iget-object v4, p0, L㺴/㚬/உ/䂻/ᾦ/உ;->ḓ:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    int-to-float v4, v4

    goto :goto_3

    :cond_4
    iget-object v4, p0, L㺴/㚬/உ/䂻/ᾦ/உ;->ḓ:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->centerX()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v1, v8

    :goto_3
    sub-float/2addr v4, v1

    iput v4, p0, L㺴/㚬/உ/䂻/ᾦ/உ;->ბ:F

    :goto_4
    iget v1, p0, L㺴/㚬/உ/䂻/ᾦ/உ;->ㄏ:F

    invoke-virtual {p0, v1}, L㺴/㚬/உ/䂻/ᾦ/உ;->ᆻ(F)V

    iget-object v1, p0, L㺴/㚬/உ/䂻/ᾦ/உ;->ㄬ:Ljava/lang/CharSequence;

    if-eqz v1, :cond_5

    iget-object v3, p0, L㺴/㚬/உ/䂻/ᾦ/உ;->ർ:Landroid/text/TextPaint;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    invoke-virtual {v3, v1, v2, v4}, Landroid/text/TextPaint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v3

    :cond_5
    iget v1, p0, L㺴/㚬/உ/䂻/ᾦ/உ;->ᆻ:I

    iget-boolean v2, p0, L㺴/㚬/உ/䂻/ᾦ/உ;->㫏:Z

    invoke-static {v1, v2}, L㚬/ℓ/ἥ/㺴;->䂻(II)I

    move-result v1

    and-int/lit8 v2, v1, 0x70

    if-eq v2, v7, :cond_7

    if-eq v2, v6, :cond_6

    iget-object v2, p0, L㺴/㚬/உ/䂻/ᾦ/உ;->ർ:Landroid/text/TextPaint;

    invoke-virtual {v2}, Landroid/text/TextPaint;->descent()F

    move-result v2

    iget-object v4, p0, L㺴/㚬/உ/䂻/ᾦ/உ;->ർ:Landroid/text/TextPaint;

    invoke-virtual {v4}, Landroid/text/TextPaint;->ascent()F

    move-result v4

    sub-float/2addr v2, v4

    div-float/2addr v2, v8

    iget-object v4, p0, L㺴/㚬/உ/䂻/ᾦ/உ;->ർ:Landroid/text/TextPaint;

    invoke-virtual {v4}, Landroid/text/TextPaint;->descent()F

    move-result v4

    sub-float/2addr v2, v4

    iget-object v4, p0, L㺴/㚬/உ/䂻/ᾦ/உ;->㺴:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->centerY()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v4, v2

    iput v4, p0, L㺴/㚬/உ/䂻/ᾦ/உ;->ἥ:F

    goto :goto_6

    :cond_6
    iget-object v2, p0, L㺴/㚬/உ/䂻/ᾦ/உ;->㺴:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v2

    goto :goto_5

    :cond_7
    iget-object v2, p0, L㺴/㚬/உ/䂻/ᾦ/உ;->㺴:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    iget-object v4, p0, L㺴/㚬/உ/䂻/ᾦ/உ;->ർ:Landroid/text/TextPaint;

    invoke-virtual {v4}, Landroid/text/TextPaint;->ascent()F

    move-result v4

    sub-float/2addr v2, v4

    :goto_5
    iput v2, p0, L㺴/㚬/உ/䂻/ᾦ/உ;->ἥ:F

    :goto_6
    and-int/2addr v1, v5

    if-eq v1, v10, :cond_9

    if-eq v1, v9, :cond_8

    iget-object v1, p0, L㺴/㚬/உ/䂻/ᾦ/உ;->㺴:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    goto :goto_8

    :cond_8
    iget-object v1, p0, L㺴/㚬/உ/䂻/ᾦ/உ;->㺴:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    goto :goto_7

    :cond_9
    iget-object v1, p0, L㺴/㚬/உ/䂻/ᾦ/உ;->㺴:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v3, v8

    :goto_7
    sub-float/2addr v1, v3

    :goto_8
    iput v1, p0, L㺴/㚬/உ/䂻/ᾦ/உ;->ᓭ:F

    invoke-virtual {p0}, L㺴/㚬/உ/䂻/ᾦ/உ;->ℓ()V

    invoke-virtual {p0, v0}, L㺴/㚬/உ/䂻/ᾦ/உ;->䅚(F)V

    return-void
.end method

.method public final 䅚(F)V
    .locals 1

    invoke-virtual {p0, p1}, L㺴/㚬/உ/䂻/ᾦ/உ;->ᆻ(F)V

    sget-boolean p1, L㺴/㚬/உ/䂻/ᾦ/உ;->ᣝ:Z

    if-eqz p1, :cond_0

    iget p1, p0, L㺴/㚬/உ/䂻/ᾦ/உ;->㨃:F

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float p1, p1, v0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, L㺴/㚬/உ/䂻/ᾦ/உ;->ಋ:Z

    if-eqz p1, :cond_1

    invoke-virtual {p0}, L㺴/㚬/உ/䂻/ᾦ/உ;->ಫ()V

    :cond_1
    iget-object p1, p0, L㺴/㚬/உ/䂻/ᾦ/உ;->உ:Landroid/view/View;

    invoke-static {p1}, L㚬/ℓ/ἥ/㭲;->ᣝ(Landroid/view/View;)V

    return-void
.end method

.method public final 䆀(F)V
    .locals 6

    invoke-virtual {p0, p1}, L㺴/㚬/உ/䂻/ᾦ/உ;->㖪(F)V

    iget v0, p0, L㺴/㚬/உ/䂻/ᾦ/உ;->ᓭ:F

    iget v1, p0, L㺴/㚬/உ/䂻/ᾦ/உ;->ბ:F

    iget-object v2, p0, L㺴/㚬/உ/䂻/ᾦ/உ;->㭢:Landroid/animation/TimeInterpolator;

    invoke-static {v0, v1, p1, v2}, L㺴/㚬/உ/䂻/ᾦ/உ;->㲧(FFFLandroid/animation/TimeInterpolator;)F

    move-result v0

    iput v0, p0, L㺴/㚬/உ/䂻/ᾦ/உ;->㲝:F

    iget v0, p0, L㺴/㚬/உ/䂻/ᾦ/உ;->ἥ:F

    iget v1, p0, L㺴/㚬/உ/䂻/ᾦ/உ;->ཇ:F

    iget-object v2, p0, L㺴/㚬/உ/䂻/ᾦ/உ;->㭢:Landroid/animation/TimeInterpolator;

    invoke-static {v0, v1, p1, v2}, L㺴/㚬/உ/䂻/ᾦ/உ;->㲧(FFFLandroid/animation/TimeInterpolator;)F

    move-result v0

    iput v0, p0, L㺴/㚬/உ/䂻/ᾦ/உ;->㞘:F

    iget v0, p0, L㺴/㚬/உ/䂻/ᾦ/உ;->ㄏ:F

    iget v1, p0, L㺴/㚬/உ/䂻/ᾦ/உ;->ಫ:F

    iget-object v2, p0, L㺴/㚬/உ/䂻/ᾦ/உ;->Խ:Landroid/animation/TimeInterpolator;

    invoke-static {v0, v1, p1, v2}, L㺴/㚬/உ/䂻/ᾦ/உ;->㲧(FFFLandroid/animation/TimeInterpolator;)F

    move-result v0

    invoke-virtual {p0, v0}, L㺴/㚬/உ/䂻/ᾦ/உ;->䅚(F)V

    iget-object v0, p0, L㺴/㚬/உ/䂻/ᾦ/உ;->㹖:Landroid/content/res/ColorStateList;

    iget-object v1, p0, L㺴/㚬/உ/䂻/ᾦ/உ;->㧦:Landroid/content/res/ColorStateList;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, L㺴/㚬/உ/䂻/ᾦ/உ;->ർ:Landroid/text/TextPaint;

    invoke-virtual {p0}, L㺴/㚬/உ/䂻/ᾦ/உ;->ბ()I

    move-result v1

    invoke-virtual {p0}, L㺴/㚬/உ/䂻/ᾦ/உ;->ཇ()I

    move-result v2

    invoke-static {v1, v2, p1}, L㺴/㚬/உ/䂻/ᾦ/உ;->உ(IIF)I

    move-result v1

    goto :goto_0

    :cond_0
    iget-object v0, p0, L㺴/㚬/உ/䂻/ᾦ/உ;->ർ:Landroid/text/TextPaint;

    invoke-virtual {p0}, L㺴/㚬/உ/䂻/ᾦ/உ;->ཇ()I

    move-result v1

    :goto_0
    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    iget-object v0, p0, L㺴/㚬/உ/䂻/ᾦ/உ;->ർ:Landroid/text/TextPaint;

    iget v1, p0, L㺴/㚬/உ/䂻/ᾦ/உ;->ἂ:F

    iget v2, p0, L㺴/㚬/உ/䂻/ᾦ/உ;->Ԁ:F

    const/4 v3, 0x0

    invoke-static {v1, v2, p1, v3}, L㺴/㚬/உ/䂻/ᾦ/உ;->㲧(FFFLandroid/animation/TimeInterpolator;)F

    move-result v1

    iget v2, p0, L㺴/㚬/உ/䂻/ᾦ/உ;->ⵦ:F

    iget v4, p0, L㺴/㚬/உ/䂻/ᾦ/உ;->ỷ:F

    invoke-static {v2, v4, p1, v3}, L㺴/㚬/உ/䂻/ᾦ/உ;->㲧(FFFLandroid/animation/TimeInterpolator;)F

    move-result v2

    iget v4, p0, L㺴/㚬/உ/䂻/ᾦ/உ;->ᭊ:F

    iget v5, p0, L㺴/㚬/உ/䂻/ᾦ/உ;->䅚:F

    invoke-static {v4, v5, p1, v3}, L㺴/㚬/உ/䂻/ᾦ/உ;->㲧(FFFLandroid/animation/TimeInterpolator;)F

    move-result v3

    iget-object v4, p0, L㺴/㚬/உ/䂻/ᾦ/உ;->㟘:Landroid/content/res/ColorStateList;

    invoke-virtual {p0, v4}, L㺴/㚬/உ/䂻/ᾦ/உ;->ᓭ(Landroid/content/res/ColorStateList;)I

    move-result v4

    iget-object v5, p0, L㺴/㚬/உ/䂻/ᾦ/உ;->㮕:Landroid/content/res/ColorStateList;

    invoke-virtual {p0, v5}, L㺴/㚬/உ/䂻/ᾦ/உ;->ᓭ(Landroid/content/res/ColorStateList;)I

    move-result v5

    invoke-static {v4, v5, p1}, L㺴/㚬/உ/䂻/ᾦ/உ;->உ(IIF)I

    move-result p1

    invoke-virtual {v0, v1, v2, v3, p1}, Landroid/text/TextPaint;->setShadowLayer(FFFI)V

    iget-object p1, p0, L㺴/㚬/உ/䂻/ᾦ/உ;->உ:Landroid/view/View;

    invoke-static {p1}, L㚬/ℓ/ἥ/㭲;->ᣝ(Landroid/view/View;)V

    return-void
.end method
