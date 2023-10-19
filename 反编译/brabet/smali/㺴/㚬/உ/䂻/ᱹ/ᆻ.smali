.class public L㺴/㚬/உ/䂻/ᱹ/ᆻ;
.super Landroid/graphics/drawable/Drawable;
.source ""

# interfaces
.implements L㚬/ℓ/䆀/㹖/䂻;
.implements L㺴/㚬/உ/䂻/ᱹ/ཇ;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        L㺴/㚬/உ/䂻/ᱹ/ᆻ$㚬;
    }
.end annotation


# static fields
.field public static final ม:Landroid/graphics/Paint;


# instance fields
.field public final ಫ:Landroid/graphics/RectF;

.field public final ཇ:Landroid/graphics/Paint;

.field public final ბ:L㺴/㚬/உ/䂻/ᰘ/உ;

.field public final ᆻ:Landroid/graphics/Path;

.field public final ᓭ:Landroid/graphics/Paint;

.field public ḓ:Z

.field public ḙ:Landroid/graphics/PorterDuffColorFilter;

.field public ἥ:L㺴/㚬/உ/䂻/ᱹ/㧦;

.field public final ℓ:Landroid/graphics/Path;

.field public final ㄏ:Landroid/graphics/RectF;

.field public 㖪:Landroid/graphics/Rect;

.field public final 㚬:[L㺴/㚬/உ/䂻/ᱹ/ἥ$ᆻ;

.field public final 㞘:L㺴/㚬/உ/䂻/ᱹ/㹖;

.field public final 㢏:Landroid/graphics/RectF;

.field public final 㧦:Landroid/graphics/Region;

.field public 㭲:Landroid/graphics/PorterDuffColorFilter;

.field public final 㲝:L㺴/㚬/உ/䂻/ᱹ/㹖$உ;

.field public final 㹖:Landroid/graphics/Region;

.field public final 㺴:[L㺴/㚬/உ/䂻/ᱹ/ἥ$ᆻ;

.field public 䂻:L㺴/㚬/உ/䂻/ᱹ/ᆻ$㚬;

.field public final 䆀:Landroid/graphics/Matrix;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    sput-object v0, L㺴/㚬/உ/䂻/ᱹ/ᆻ;->ม:Landroid/graphics/Paint;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    new-instance v0, L㺴/㚬/உ/䂻/ᱹ/㧦;

    invoke-direct {v0}, L㺴/㚬/உ/䂻/ᱹ/㧦;-><init>()V

    invoke-direct {p0, v0}, L㺴/㚬/உ/䂻/ᱹ/ᆻ;-><init>(L㺴/㚬/உ/䂻/ᱹ/㧦;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    invoke-static {p1, p2, p3, p4}, L㺴/㚬/உ/䂻/ᱹ/㧦;->ḓ(Landroid/content/Context;Landroid/util/AttributeSet;II)L㺴/㚬/உ/䂻/ᱹ/㧦$䂻;

    move-result-object p1

    invoke-virtual {p1}, L㺴/㚬/உ/䂻/ᱹ/㧦$䂻;->ἥ()L㺴/㚬/உ/䂻/ᱹ/㧦;

    move-result-object p1

    invoke-direct {p0, p1}, L㺴/㚬/உ/䂻/ᱹ/ᆻ;-><init>(L㺴/㚬/உ/䂻/ᱹ/㧦;)V

    return-void
.end method

.method public constructor <init>(L㺴/㚬/உ/䂻/ᱹ/ᆻ$㚬;)V
    .locals 3

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    const/4 v0, 0x4

    new-array v1, v0, [L㺴/㚬/உ/䂻/ᱹ/ἥ$ᆻ;

    iput-object v1, p0, L㺴/㚬/உ/䂻/ᱹ/ᆻ;->㚬:[L㺴/㚬/உ/䂻/ᱹ/ἥ$ᆻ;

    new-array v0, v0, [L㺴/㚬/உ/䂻/ᱹ/ἥ$ᆻ;

    iput-object v0, p0, L㺴/㚬/உ/䂻/ᱹ/ᆻ;->㺴:[L㺴/㚬/உ/䂻/ᱹ/ἥ$ᆻ;

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, L㺴/㚬/உ/䂻/ᱹ/ᆻ;->䆀:Landroid/graphics/Matrix;

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, L㺴/㚬/உ/䂻/ᱹ/ᆻ;->ᆻ:Landroid/graphics/Path;

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, L㺴/㚬/உ/䂻/ᱹ/ᆻ;->ℓ:Landroid/graphics/Path;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, L㺴/㚬/உ/䂻/ᱹ/ᆻ;->ㄏ:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, L㺴/㚬/உ/䂻/ᱹ/ᆻ;->ಫ:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/Region;

    invoke-direct {v0}, Landroid/graphics/Region;-><init>()V

    iput-object v0, p0, L㺴/㚬/உ/䂻/ᱹ/ᆻ;->㧦:Landroid/graphics/Region;

    new-instance v0, Landroid/graphics/Region;

    invoke-direct {v0}, Landroid/graphics/Region;-><init>()V

    iput-object v0, p0, L㺴/㚬/உ/䂻/ᱹ/ᆻ;->㹖:Landroid/graphics/Region;

    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, L㺴/㚬/உ/䂻/ᱹ/ᆻ;->ཇ:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v2, p0, L㺴/㚬/உ/䂻/ᱹ/ᆻ;->ᓭ:Landroid/graphics/Paint;

    new-instance v1, L㺴/㚬/உ/䂻/ᰘ/உ;

    invoke-direct {v1}, L㺴/㚬/உ/䂻/ᰘ/உ;-><init>()V

    iput-object v1, p0, L㺴/㚬/உ/䂻/ᱹ/ᆻ;->ბ:L㺴/㚬/உ/䂻/ᰘ/உ;

    new-instance v1, L㺴/㚬/உ/䂻/ᱹ/㹖;

    invoke-direct {v1}, L㺴/㚬/உ/䂻/ᱹ/㹖;-><init>()V

    iput-object v1, p0, L㺴/㚬/உ/䂻/ᱹ/ᆻ;->㞘:L㺴/㚬/உ/䂻/ᱹ/㹖;

    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, L㺴/㚬/உ/䂻/ᱹ/ᆻ;->㢏:Landroid/graphics/RectF;

    iput-object p1, p0, L㺴/㚬/உ/䂻/ᱹ/ᆻ;->䂻:L㺴/㚬/உ/䂻/ᱹ/ᆻ$㚬;

    sget-object p1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, p1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    sget-object p1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    sget-object p1, L㺴/㚬/உ/䂻/ᱹ/ᆻ;->ม:Landroid/graphics/Paint;

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->DST_OUT:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    invoke-virtual {p0}, L㺴/㚬/உ/䂻/ᱹ/ᆻ;->Ổ()Z

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object p1

    invoke-virtual {p0, p1}, L㺴/㚬/உ/䂻/ᱹ/ᆻ;->ಇ([I)Z

    new-instance p1, L㺴/㚬/உ/䂻/ᱹ/ᆻ$உ;

    invoke-direct {p1, p0}, L㺴/㚬/உ/䂻/ᱹ/ᆻ$உ;-><init>(L㺴/㚬/உ/䂻/ᱹ/ᆻ;)V

    iput-object p1, p0, L㺴/㚬/உ/䂻/ᱹ/ᆻ;->㲝:L㺴/㚬/உ/䂻/ᱹ/㹖$உ;

    return-void
.end method

.method public synthetic constructor <init>(L㺴/㚬/உ/䂻/ᱹ/ᆻ$㚬;L㺴/㚬/உ/䂻/ᱹ/ᆻ$உ;)V
    .locals 0

    invoke-direct {p0, p1}, L㺴/㚬/உ/䂻/ᱹ/ᆻ;-><init>(L㺴/㚬/உ/䂻/ᱹ/ᆻ$㚬;)V

    return-void
.end method

.method public constructor <init>(L㺴/㚬/உ/䂻/ᱹ/㧦;)V
    .locals 2

    new-instance v0, L㺴/㚬/உ/䂻/ᱹ/ᆻ$㚬;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, L㺴/㚬/உ/䂻/ᱹ/ᆻ$㚬;-><init>(L㺴/㚬/உ/䂻/ᱹ/㧦;L㺴/㚬/உ/䂻/ㄬ/உ;)V

    invoke-direct {p0, v0}, L㺴/㚬/உ/䂻/ᱹ/ᆻ;-><init>(L㺴/㚬/உ/䂻/ᱹ/ᆻ$㚬;)V

    return-void
.end method

.method public static synthetic 㚬(L㺴/㚬/உ/䂻/ᱹ/ᆻ;)[L㺴/㚬/உ/䂻/ᱹ/ἥ$ᆻ;
    .locals 0

    iget-object p0, p0, L㺴/㚬/உ/䂻/ᱹ/ᆻ;->㺴:[L㺴/㚬/உ/䂻/ᱹ/ἥ$ᆻ;

    return-object p0
.end method

.method public static 㹖(Landroid/content/Context;F)L㺴/㚬/உ/䂻/ᱹ/ᆻ;
    .locals 2

    sget v0, L㺴/㚬/உ/䂻/䂻;->ಫ:I

    const-class v1, L㺴/㚬/உ/䂻/ᱹ/ᆻ;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, L㺴/㚬/உ/䂻/㖪/உ;->䂻(Landroid/content/Context;ILjava/lang/String;)I

    move-result v0

    new-instance v1, L㺴/㚬/உ/䂻/ᱹ/ᆻ;

    invoke-direct {v1}, L㺴/㚬/உ/䂻/ᱹ/ᆻ;-><init>()V

    invoke-virtual {v1, p0}, L㺴/㚬/உ/䂻/ᱹ/ᆻ;->㭢(Landroid/content/Context;)V

    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p0

    invoke-virtual {v1, p0}, L㺴/㚬/உ/䂻/ᱹ/ᆻ;->ᭊ(Landroid/content/res/ColorStateList;)V

    invoke-virtual {v1, p1}, L㺴/㚬/உ/䂻/ᱹ/ᆻ;->ⵦ(F)V

    return-object v1
.end method

.method public static synthetic 㺴(L㺴/㚬/உ/䂻/ᱹ/ᆻ;Z)Z
    .locals 0

    iput-boolean p1, p0, L㺴/㚬/உ/䂻/ᱹ/ᆻ;->ḓ:Z

    return p1
.end method

.method public static synthetic 䂻(L㺴/㚬/உ/䂻/ᱹ/ᆻ;)[L㺴/㚬/உ/䂻/ᱹ/ἥ$ᆻ;
    .locals 0

    iget-object p0, p0, L㺴/㚬/உ/䂻/ᱹ/ᆻ;->㚬:[L㺴/㚬/உ/䂻/ᱹ/ἥ$ᆻ;

    return-object p0
.end method

.method public static 䅚(II)I
    .locals 1

    ushr-int/lit8 v0, p1, 0x7

    add-int/2addr p1, v0

    mul-int p0, p0, p1

    ushr-int/lit8 p0, p0, 0x8

    return p0
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 8

    iget-object v0, p0, L㺴/㚬/உ/䂻/ᱹ/ᆻ;->ཇ:Landroid/graphics/Paint;

    iget-object v1, p0, L㺴/㚬/உ/䂻/ᱹ/ᆻ;->㭲:Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    iget-object v0, p0, L㺴/㚬/உ/䂻/ᱹ/ᆻ;->ཇ:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getAlpha()I

    move-result v0

    iget-object v1, p0, L㺴/㚬/உ/䂻/ᱹ/ᆻ;->ཇ:Landroid/graphics/Paint;

    iget-object v2, p0, L㺴/㚬/உ/䂻/ᱹ/ᆻ;->䂻:L㺴/㚬/உ/䂻/ᱹ/ᆻ$㚬;

    iget v2, v2, L㺴/㚬/உ/䂻/ᱹ/ᆻ$㚬;->ἥ:I

    invoke-static {v0, v2}, L㺴/㚬/உ/䂻/ᱹ/ᆻ;->䅚(II)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v1, p0, L㺴/㚬/உ/䂻/ᱹ/ᆻ;->ᓭ:Landroid/graphics/Paint;

    iget-object v2, p0, L㺴/㚬/உ/䂻/ᱹ/ᆻ;->ḙ:Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    iget-object v1, p0, L㺴/㚬/உ/䂻/ᱹ/ᆻ;->ᓭ:Landroid/graphics/Paint;

    iget-object v2, p0, L㺴/㚬/உ/䂻/ᱹ/ᆻ;->䂻:L㺴/㚬/உ/䂻/ᱹ/ᆻ$㚬;

    iget v2, v2, L㺴/㚬/உ/䂻/ᱹ/ᆻ$㚬;->㹖:F

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v1, p0, L㺴/㚬/உ/䂻/ᱹ/ᆻ;->ᓭ:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getAlpha()I

    move-result v1

    iget-object v2, p0, L㺴/㚬/உ/䂻/ᱹ/ᆻ;->ᓭ:Landroid/graphics/Paint;

    iget-object v3, p0, L㺴/㚬/உ/䂻/ᱹ/ᆻ;->䂻:L㺴/㚬/உ/䂻/ᱹ/ᆻ$㚬;

    iget v3, v3, L㺴/㚬/உ/䂻/ᱹ/ᆻ$㚬;->ἥ:I

    invoke-static {v1, v3}, L㺴/㚬/உ/䂻/ᱹ/ᆻ;->䅚(II)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-boolean v2, p0, L㺴/㚬/உ/䂻/ᱹ/ᆻ;->ḓ:Z

    if-eqz v2, :cond_0

    invoke-virtual {p0}, L㺴/㚬/உ/䂻/ᱹ/ᆻ;->ℓ()V

    invoke-virtual {p0}, L㺴/㚬/உ/䂻/ᱹ/ᆻ;->ḙ()Landroid/graphics/RectF;

    move-result-object v2

    iget-object v3, p0, L㺴/㚬/உ/䂻/ᱹ/ᆻ;->ᆻ:Landroid/graphics/Path;

    invoke-virtual {p0, v2, v3}, L㺴/㚬/உ/䂻/ᱹ/ᆻ;->䆀(Landroid/graphics/RectF;Landroid/graphics/Path;)V

    const/4 v2, 0x0

    iput-boolean v2, p0, L㺴/㚬/உ/䂻/ᱹ/ᆻ;->ḓ:Z

    :cond_0
    invoke-virtual {p0}, L㺴/㚬/உ/䂻/ᱹ/ᆻ;->㥁()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {p0, p1}, L㺴/㚬/உ/䂻/ᱹ/ᆻ;->㮕(Landroid/graphics/Canvas;)V

    iget-object v2, p0, L㺴/㚬/உ/䂻/ᱹ/ᆻ;->㢏:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v2, v3

    float-to-int v2, v2

    iget-object v3, p0, L㺴/㚬/உ/䂻/ᱹ/ᆻ;->㢏:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v3, v4

    float-to-int v3, v3

    iget-object v4, p0, L㺴/㚬/உ/䂻/ᱹ/ᆻ;->㢏:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    float-to-int v4, v4

    iget-object v5, p0, L㺴/㚬/உ/䂻/ᱹ/ᆻ;->䂻:L㺴/㚬/உ/䂻/ᱹ/ᆻ$㚬;

    iget v5, v5, L㺴/㚬/உ/䂻/ᱹ/ᆻ$㚬;->㞘:I

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    add-int/2addr v4, v2

    iget-object v5, p0, L㺴/㚬/உ/䂻/ᱹ/ᆻ;->㢏:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->height()F

    move-result v5

    float-to-int v5, v5

    iget-object v6, p0, L㺴/㚬/உ/䂻/ᱹ/ᆻ;->䂻:L㺴/㚬/உ/䂻/ᱹ/ᆻ$㚬;

    iget v6, v6, L㺴/㚬/உ/䂻/ᱹ/ᆻ$㚬;->㞘:I

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    add-int/2addr v5, v3

    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v5, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    new-instance v5, Landroid/graphics/Canvas;

    invoke-direct {v5, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v6

    iget v6, v6, Landroid/graphics/Rect;->left:I

    iget-object v7, p0, L㺴/㚬/உ/䂻/ᱹ/ᆻ;->䂻:L㺴/㚬/உ/䂻/ᱹ/ᆻ$㚬;

    iget v7, v7, L㺴/㚬/உ/䂻/ᱹ/ᆻ$㚬;->㞘:I

    sub-int/2addr v6, v7

    sub-int/2addr v6, v2

    int-to-float v2, v6

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v6

    iget v6, v6, Landroid/graphics/Rect;->top:I

    iget-object v7, p0, L㺴/㚬/உ/䂻/ᱹ/ᆻ;->䂻:L㺴/㚬/உ/䂻/ᱹ/ᆻ$㚬;

    iget v7, v7, L㺴/㚬/உ/䂻/ᱹ/ᆻ$㚬;->㞘:I

    sub-int/2addr v6, v7

    sub-int/2addr v6, v3

    int-to-float v3, v6

    neg-float v6, v2

    neg-float v7, v3

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual {p0, v5}, L㺴/㚬/உ/䂻/ᱹ/ᆻ;->ἥ(Landroid/graphics/Canvas;)V

    const/4 v5, 0x0

    invoke-virtual {p1, v4, v2, v3, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_1
    invoke-virtual {p0}, L㺴/㚬/உ/䂻/ᱹ/ᆻ;->ർ()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0, p1}, L㺴/㚬/உ/䂻/ᱹ/ᆻ;->ཇ(Landroid/graphics/Canvas;)V

    :cond_2
    invoke-virtual {p0}, L㺴/㚬/உ/䂻/ᱹ/ᆻ;->㖆()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p0, p1}, L㺴/㚬/உ/䂻/ᱹ/ᆻ;->㲝(Landroid/graphics/Canvas;)V

    :cond_3
    iget-object p1, p0, L㺴/㚬/உ/䂻/ᱹ/ᆻ;->ཇ:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object p1, p0, L㺴/㚬/உ/䂻/ᱹ/ᆻ;->ᓭ:Landroid/graphics/Paint;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method

.method public getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .locals 1

    iget-object v0, p0, L㺴/㚬/உ/䂻/ᱹ/ᆻ;->䂻:L㺴/㚬/உ/䂻/ᱹ/ᆻ$㚬;

    return-object v0
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, -0x3

    return v0
.end method

.method public getOutline(Landroid/graphics/Outline;)V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    iget-object v0, p0, L㺴/㚬/உ/䂻/ᱹ/ᆻ;->䂻:L㺴/㚬/உ/䂻/ᱹ/ᆻ$㚬;

    iget v0, v0, L㺴/㚬/உ/䂻/ᱹ/ᆻ$㚬;->㲝:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, L㺴/㚬/உ/䂻/ᱹ/ᆻ;->ỷ()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, L㺴/㚬/உ/䂻/ᱹ/ᆻ;->ש()F

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Outline;->setRoundRect(Landroid/graphics/Rect;F)V

    return-void

    :cond_1
    invoke-virtual {p0}, L㺴/㚬/உ/䂻/ᱹ/ᆻ;->ḙ()Landroid/graphics/RectF;

    move-result-object v0

    iget-object v1, p0, L㺴/㚬/உ/䂻/ᱹ/ᆻ;->ᆻ:Landroid/graphics/Path;

    invoke-virtual {p0, v0, v1}, L㺴/㚬/உ/䂻/ᱹ/ᆻ;->䆀(Landroid/graphics/RectF;Landroid/graphics/Path;)V

    iget-object v0, p0, L㺴/㚬/உ/䂻/ᱹ/ᆻ;->ᆻ:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->isConvex()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, L㺴/㚬/உ/䂻/ᱹ/ᆻ;->ᆻ:Landroid/graphics/Path;

    invoke-virtual {p1, v0}, Landroid/graphics/Outline;->setConvexPath(Landroid/graphics/Path;)V

    :cond_2
    return-void
.end method

.method public getPadding(Landroid/graphics/Rect;)Z
    .locals 1

    iget-object v0, p0, L㺴/㚬/உ/䂻/ᱹ/ᆻ;->㖪:Landroid/graphics/Rect;

    if-eqz v0, :cond_0

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    move-result p1

    return p1
.end method

.method public getTransparentRegion()Landroid/graphics/Region;
    .locals 3

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget-object v1, p0, L㺴/㚬/உ/䂻/ᱹ/ᆻ;->㧦:Landroid/graphics/Region;

    invoke-virtual {v1, v0}, Landroid/graphics/Region;->set(Landroid/graphics/Rect;)Z

    invoke-virtual {p0}, L㺴/㚬/உ/䂻/ᱹ/ᆻ;->ḙ()Landroid/graphics/RectF;

    move-result-object v0

    iget-object v1, p0, L㺴/㚬/உ/䂻/ᱹ/ᆻ;->ᆻ:Landroid/graphics/Path;

    invoke-virtual {p0, v0, v1}, L㺴/㚬/உ/䂻/ᱹ/ᆻ;->䆀(Landroid/graphics/RectF;Landroid/graphics/Path;)V

    iget-object v0, p0, L㺴/㚬/உ/䂻/ᱹ/ᆻ;->㹖:Landroid/graphics/Region;

    iget-object v1, p0, L㺴/㚬/உ/䂻/ᱹ/ᆻ;->ᆻ:Landroid/graphics/Path;

    iget-object v2, p0, L㺴/㚬/உ/䂻/ᱹ/ᆻ;->㧦:Landroid/graphics/Region;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Region;->setPath(Landroid/graphics/Path;Landroid/graphics/Region;)Z

    iget-object v0, p0, L㺴/㚬/உ/䂻/ᱹ/ᆻ;->㧦:Landroid/graphics/Region;

    iget-object v1, p0, L㺴/㚬/உ/䂻/ᱹ/ᆻ;->㹖:Landroid/graphics/Region;

    sget-object v2, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Region;->op(Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z

    iget-object v0, p0, L㺴/㚬/உ/䂻/ᱹ/ᆻ;->㧦:Landroid/graphics/Region;

    return-object v0
.end method

.method public invalidateSelf()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, L㺴/㚬/உ/䂻/ᱹ/ᆻ;->ḓ:Z

    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public isStateful()Z
    .locals 1

    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, L㺴/㚬/உ/䂻/ᱹ/ᆻ;->䂻:L㺴/㚬/உ/䂻/ᱹ/ᆻ$㚬;

    iget-object v0, v0, L㺴/㚬/உ/䂻/ᱹ/ᆻ$㚬;->ᆻ:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v0

    if-nez v0, :cond_4

    :cond_0
    iget-object v0, p0, L㺴/㚬/உ/䂻/ᱹ/ᆻ;->䂻:L㺴/㚬/உ/䂻/ᱹ/ᆻ$㚬;

    iget-object v0, v0, L㺴/㚬/உ/䂻/ᱹ/ᆻ$㚬;->䆀:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v0

    if-nez v0, :cond_4

    :cond_1
    iget-object v0, p0, L㺴/㚬/உ/䂻/ᱹ/ᆻ;->䂻:L㺴/㚬/உ/䂻/ᱹ/ᆻ$㚬;

    iget-object v0, v0, L㺴/㚬/உ/䂻/ᱹ/ᆻ$㚬;->ḓ:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v0

    if-nez v0, :cond_4

    :cond_2
    iget-object v0, p0, L㺴/㚬/உ/䂻/ᱹ/ᆻ;->䂻:L㺴/㚬/உ/䂻/ᱹ/ᆻ$㚬;

    iget-object v0, v0, L㺴/㚬/உ/䂻/ᱹ/ᆻ$㚬;->㺴:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_1

    :cond_4
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public mutate()Landroid/graphics/drawable/Drawable;
    .locals 2

    new-instance v0, L㺴/㚬/உ/䂻/ᱹ/ᆻ$㚬;

    iget-object v1, p0, L㺴/㚬/உ/䂻/ᱹ/ᆻ;->䂻:L㺴/㚬/உ/䂻/ᱹ/ᆻ$㚬;

    invoke-direct {v0, v1}, L㺴/㚬/உ/䂻/ᱹ/ᆻ$㚬;-><init>(L㺴/㚬/உ/䂻/ᱹ/ᆻ$㚬;)V

    iput-object v0, p0, L㺴/㚬/உ/䂻/ᱹ/ᆻ;->䂻:L㺴/㚬/உ/䂻/ᱹ/ᆻ$㚬;

    return-object p0
.end method

.method public onBoundsChange(Landroid/graphics/Rect;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, L㺴/㚬/உ/䂻/ᱹ/ᆻ;->ḓ:Z

    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    return-void
.end method

.method public onStateChange([I)Z
    .locals 1

    invoke-virtual {p0, p1}, L㺴/㚬/உ/䂻/ᱹ/ᆻ;->ಇ([I)Z

    move-result p1

    invoke-virtual {p0}, L㺴/㚬/உ/䂻/ᱹ/ᆻ;->Ổ()Z

    move-result v0

    if-nez p1, :cond_1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, L㺴/㚬/உ/䂻/ᱹ/ᆻ;->invalidateSelf()V

    :cond_2
    return p1
.end method

.method public setAlpha(I)V
    .locals 2

    iget-object v0, p0, L㺴/㚬/உ/䂻/ᱹ/ᆻ;->䂻:L㺴/㚬/உ/䂻/ᱹ/ᆻ$㚬;

    iget v1, v0, L㺴/㚬/உ/䂻/ᱹ/ᆻ$㚬;->ἥ:I

    if-eq v1, p1, :cond_0

    iput p1, v0, L㺴/㚬/உ/䂻/ᱹ/ᆻ$㚬;->ἥ:I

    invoke-virtual {p0}, L㺴/㚬/உ/䂻/ᱹ/ᆻ;->Խ()V

    :cond_0
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    iget-object v0, p0, L㺴/㚬/உ/䂻/ᱹ/ᆻ;->䂻:L㺴/㚬/உ/䂻/ᱹ/ᆻ$㚬;

    iput-object p1, v0, L㺴/㚬/உ/䂻/ᱹ/ᆻ$㚬;->㚬:Landroid/graphics/ColorFilter;

    invoke-virtual {p0}, L㺴/㚬/உ/䂻/ᱹ/ᆻ;->Խ()V

    return-void
.end method

.method public setShapeAppearanceModel(L㺴/㚬/உ/䂻/ᱹ/㧦;)V
    .locals 1

    iget-object v0, p0, L㺴/㚬/உ/䂻/ᱹ/ᆻ;->䂻:L㺴/㚬/உ/䂻/ᱹ/ᆻ$㚬;

    iput-object p1, v0, L㺴/㚬/உ/䂻/ᱹ/ᆻ$㚬;->உ:L㺴/㚬/உ/䂻/ᱹ/㧦;

    invoke-virtual {p0}, L㺴/㚬/உ/䂻/ᱹ/ᆻ;->invalidateSelf()V

    return-void
.end method

.method public setTint(I)V
    .locals 0

    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, L㺴/㚬/உ/䂻/ᱹ/ᆻ;->setTintList(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setTintList(Landroid/content/res/ColorStateList;)V
    .locals 1

    iget-object v0, p0, L㺴/㚬/உ/䂻/ᱹ/ᆻ;->䂻:L㺴/㚬/உ/䂻/ᱹ/ᆻ$㚬;

    iput-object p1, v0, L㺴/㚬/உ/䂻/ᱹ/ᆻ$㚬;->ᆻ:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, L㺴/㚬/உ/䂻/ᱹ/ᆻ;->Ổ()Z

    invoke-virtual {p0}, L㺴/㚬/உ/䂻/ᱹ/ᆻ;->Խ()V

    return-void
.end method

.method public setTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 2

    iget-object v0, p0, L㺴/㚬/உ/䂻/ᱹ/ᆻ;->䂻:L㺴/㚬/உ/䂻/ᱹ/ᆻ$㚬;

    iget-object v1, v0, L㺴/㚬/உ/䂻/ᱹ/ᆻ$㚬;->ℓ:Landroid/graphics/PorterDuff$Mode;

    if-eq v1, p1, :cond_0

    iput-object p1, v0, L㺴/㚬/உ/䂻/ᱹ/ᆻ$㚬;->ℓ:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p0}, L㺴/㚬/உ/䂻/ᱹ/ᆻ;->Ổ()Z

    invoke-virtual {p0}, L㺴/㚬/உ/䂻/ᱹ/ᆻ;->Խ()V

    :cond_0
    return-void
.end method

.method public Ԁ()Z
    .locals 1

    iget-object v0, p0, L㺴/㚬/உ/䂻/ᱹ/ᆻ;->䂻:L㺴/㚬/உ/䂻/ᱹ/ᆻ$㚬;

    iget-object v0, v0, L㺴/㚬/உ/䂻/ᱹ/ᆻ$㚬;->䂻:L㺴/㚬/உ/䂻/ㄬ/உ;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, L㺴/㚬/உ/䂻/ㄬ/உ;->㺴()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final Խ()V
    .locals 0

    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public ש()F
    .locals 2

    iget-object v0, p0, L㺴/㚬/உ/䂻/ᱹ/ᆻ;->䂻:L㺴/㚬/உ/䂻/ᱹ/ᆻ$㚬;

    iget-object v0, v0, L㺴/㚬/உ/䂻/ᱹ/ᆻ$㚬;->உ:L㺴/㚬/உ/䂻/ᱹ/㧦;

    invoke-virtual {v0}, L㺴/㚬/உ/䂻/ᱹ/㧦;->㞘()L㺴/㚬/உ/䂻/ᱹ/㚬;

    move-result-object v0

    invoke-virtual {p0}, L㺴/㚬/உ/䂻/ᱹ/ᆻ;->ḙ()Landroid/graphics/RectF;

    move-result-object v1

    invoke-interface {v0, v1}, L㺴/㚬/உ/䂻/ᱹ/㚬;->உ(Landroid/graphics/RectF;)F

    move-result v0

    return v0
.end method

.method public final ڈ()F
    .locals 2

    invoke-virtual {p0}, L㺴/㚬/உ/䂻/ᱹ/ᆻ;->㖆()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, L㺴/㚬/உ/䂻/ᱹ/ᆻ;->ᓭ:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final ಇ([I)Z
    .locals 4

    iget-object v0, p0, L㺴/㚬/உ/䂻/ᱹ/ᆻ;->䂻:L㺴/㚬/உ/䂻/ᱹ/ᆻ$㚬;

    iget-object v0, v0, L㺴/㚬/உ/䂻/ᱹ/ᆻ$㚬;->㺴:Landroid/content/res/ColorStateList;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, L㺴/㚬/உ/䂻/ᱹ/ᆻ;->ཇ:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    iget-object v2, p0, L㺴/㚬/உ/䂻/ᱹ/ᆻ;->䂻:L㺴/㚬/உ/䂻/ᱹ/ᆻ$㚬;

    iget-object v2, v2, L㺴/㚬/உ/䂻/ᱹ/ᆻ$㚬;->㺴:Landroid/content/res/ColorStateList;

    invoke-virtual {v2, p1, v0}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v2

    if-eq v0, v2, :cond_0

    iget-object v0, p0, L㺴/㚬/உ/䂻/ᱹ/ᆻ;->ཇ:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, L㺴/㚬/உ/䂻/ᱹ/ᆻ;->䂻:L㺴/㚬/உ/䂻/ᱹ/ᆻ$㚬;

    iget-object v2, v2, L㺴/㚬/உ/䂻/ᱹ/ᆻ$㚬;->ḓ:Landroid/content/res/ColorStateList;

    if-eqz v2, :cond_1

    iget-object v2, p0, L㺴/㚬/உ/䂻/ᱹ/ᆻ;->ᓭ:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getColor()I

    move-result v2

    iget-object v3, p0, L㺴/㚬/உ/䂻/ᱹ/ᆻ;->䂻:L㺴/㚬/உ/䂻/ᱹ/ᆻ$㚬;

    iget-object v3, v3, L㺴/㚬/உ/䂻/ᱹ/ᆻ$㚬;->ḓ:Landroid/content/res/ColorStateList;

    invoke-virtual {v3, p1, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result p1

    if-eq v2, p1, :cond_1

    iget-object v0, p0, L㺴/㚬/உ/䂻/ᱹ/ᆻ;->ᓭ:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_1

    :cond_1
    move v1, v0

    :goto_1
    return v1
.end method

.method public ಋ()I
    .locals 1

    iget-object v0, p0, L㺴/㚬/உ/䂻/ᱹ/ᆻ;->䂻:L㺴/㚬/உ/䂻/ᱹ/ᆻ$㚬;

    iget v0, v0, L㺴/㚬/உ/䂻/ᱹ/ᆻ$㚬;->㞘:I

    return v0
.end method

.method public final ಫ(Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;Landroid/graphics/Paint;Z)Landroid/graphics/PorterDuffColorFilter;
    .locals 0

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1, p2, p4}, L㺴/㚬/உ/䂻/ᱹ/ᆻ;->ㄏ(Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;Z)Landroid/graphics/PorterDuffColorFilter;

    move-result-object p1

    goto :goto_1

    :cond_1
    :goto_0
    invoke-virtual {p0, p3, p4}, L㺴/㚬/உ/䂻/ᱹ/ᆻ;->ḓ(Landroid/graphics/Paint;Z)Landroid/graphics/PorterDuffColorFilter;

    move-result-object p1

    :goto_1
    return-object p1
.end method

.method public final ർ()Z
    .locals 2

    iget-object v0, p0, L㺴/㚬/உ/䂻/ᱹ/ᆻ;->䂻:L㺴/㚬/உ/䂻/ᱹ/ᆻ$㚬;

    iget-object v0, v0, L㺴/㚬/உ/䂻/ᱹ/ᆻ$㚬;->㢏:Landroid/graphics/Paint$Style;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    if-eq v0, v1, :cond_1

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public final ග()V
    .locals 4

    invoke-virtual {p0}, L㺴/㚬/உ/䂻/ᱹ/ᆻ;->ᱹ()F

    move-result v0

    iget-object v1, p0, L㺴/㚬/உ/䂻/ᱹ/ᆻ;->䂻:L㺴/㚬/உ/䂻/ᱹ/ᆻ$㚬;

    const/high16 v2, 0x3f400000    # 0.75f

    mul-float v2, v2, v0

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    iput v2, v1, L㺴/㚬/உ/䂻/ᱹ/ᆻ$㚬;->㞘:I

    iget-object v1, p0, L㺴/㚬/உ/䂻/ᱹ/ᆻ;->䂻:L㺴/㚬/உ/䂻/ᱹ/ᆻ$㚬;

    const/high16 v2, 0x3e800000    # 0.25f

    mul-float v0, v0, v2

    float-to-double v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v0, v2

    iput v0, v1, L㺴/㚬/உ/䂻/ᱹ/ᆻ$㚬;->㭲:I

    invoke-virtual {p0}, L㺴/㚬/உ/䂻/ᱹ/ᆻ;->Ổ()Z

    invoke-virtual {p0}, L㺴/㚬/உ/䂻/ᱹ/ᆻ;->Խ()V

    return-void
.end method

.method public ม()Landroid/content/res/ColorStateList;
    .locals 1

    iget-object v0, p0, L㺴/㚬/உ/䂻/ᱹ/ᆻ;->䂻:L㺴/㚬/உ/䂻/ᱹ/ᆻ$㚬;

    iget-object v0, v0, L㺴/㚬/உ/䂻/ᱹ/ᆻ$㚬;->㺴:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public final ཇ(Landroid/graphics/Canvas;)V
    .locals 6

    iget-object v2, p0, L㺴/㚬/உ/䂻/ᱹ/ᆻ;->ཇ:Landroid/graphics/Paint;

    iget-object v3, p0, L㺴/㚬/உ/䂻/ᱹ/ᆻ;->ᆻ:Landroid/graphics/Path;

    iget-object v0, p0, L㺴/㚬/உ/䂻/ᱹ/ᆻ;->䂻:L㺴/㚬/உ/䂻/ᱹ/ᆻ$㚬;

    iget-object v4, v0, L㺴/㚬/உ/䂻/ᱹ/ᆻ$㚬;->உ:L㺴/㚬/உ/䂻/ᱹ/㧦;

    invoke-virtual {p0}, L㺴/㚬/உ/䂻/ᱹ/ᆻ;->ḙ()Landroid/graphics/RectF;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, L㺴/㚬/உ/䂻/ᱹ/ᆻ;->ბ(Landroid/graphics/Canvas;Landroid/graphics/Paint;Landroid/graphics/Path;L㺴/㚬/உ/䂻/ᱹ/㧦;Landroid/graphics/RectF;)V

    return-void
.end method

.method public final ბ(Landroid/graphics/Canvas;Landroid/graphics/Paint;Landroid/graphics/Path;L㺴/㚬/உ/䂻/ᱹ/㧦;Landroid/graphics/RectF;)V
    .locals 1

    invoke-virtual {p4, p5}, L㺴/㚬/உ/䂻/ᱹ/㧦;->㖪(Landroid/graphics/RectF;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p4}, L㺴/㚬/உ/䂻/ᱹ/㧦;->ḙ()L㺴/㚬/உ/䂻/ᱹ/㚬;

    move-result-object p3

    invoke-interface {p3, p5}, L㺴/㚬/உ/䂻/ᱹ/㚬;->உ(Landroid/graphics/RectF;)F

    move-result p3

    invoke-virtual {p1, p5, p3, p3, p2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1, p3, p2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :goto_0
    return-void
.end method

.method public final ᆻ(Landroid/graphics/RectF;Landroid/graphics/Path;)V
    .locals 6

    iget-object v0, p0, L㺴/㚬/உ/䂻/ᱹ/ᆻ;->㞘:L㺴/㚬/உ/䂻/ᱹ/㹖;

    iget-object v1, p0, L㺴/㚬/உ/䂻/ᱹ/ᆻ;->䂻:L㺴/㚬/உ/䂻/ᱹ/ᆻ$㚬;

    iget-object v2, v1, L㺴/㚬/உ/䂻/ᱹ/ᆻ$㚬;->உ:L㺴/㚬/உ/䂻/ᱹ/㧦;

    iget v3, v1, L㺴/㚬/உ/䂻/ᱹ/ᆻ$㚬;->㧦:F

    iget-object v4, p0, L㺴/㚬/உ/䂻/ᱹ/ᆻ;->㲝:L㺴/㚬/உ/䂻/ᱹ/㹖$உ;

    move-object v1, v2

    move v2, v3

    move-object v3, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, L㺴/㚬/உ/䂻/ᱹ/㹖;->ḓ(L㺴/㚬/உ/䂻/ᱹ/㧦;FLandroid/graphics/RectF;L㺴/㚬/உ/䂻/ᱹ/㹖$உ;Landroid/graphics/Path;)V

    return-void
.end method

.method public ᇿ(F)V
    .locals 2

    iget-object v0, p0, L㺴/㚬/உ/䂻/ᱹ/ᆻ;->䂻:L㺴/㚬/உ/䂻/ᱹ/ᆻ$㚬;

    iget v1, v0, L㺴/㚬/உ/䂻/ᱹ/ᆻ$㚬;->ཇ:F

    cmpl-float v1, v1, p1

    if-eqz v1, :cond_0

    iput p1, v0, L㺴/㚬/உ/䂻/ᱹ/ᆻ$㚬;->ཇ:F

    invoke-virtual {p0}, L㺴/㚬/உ/䂻/ᱹ/ᆻ;->ග()V

    :cond_0
    return-void
.end method

.method public ᓭ(Landroid/graphics/Canvas;Landroid/graphics/Paint;Landroid/graphics/Path;Landroid/graphics/RectF;)V
    .locals 7

    iget-object v0, p0, L㺴/㚬/உ/䂻/ᱹ/ᆻ;->䂻:L㺴/㚬/உ/䂻/ᱹ/ᆻ$㚬;

    iget-object v5, v0, L㺴/㚬/உ/䂻/ᱹ/ᆻ$㚬;->உ:L㺴/㚬/உ/䂻/ᱹ/㧦;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v6, p4

    invoke-virtual/range {v1 .. v6}, L㺴/㚬/உ/䂻/ᱹ/ᆻ;->ბ(Landroid/graphics/Canvas;Landroid/graphics/Paint;Landroid/graphics/Path;L㺴/㚬/உ/䂻/ᱹ/㧦;Landroid/graphics/RectF;)V

    return-void
.end method

.method public ᘚ(FLandroid/content/res/ColorStateList;)V
    .locals 0

    invoke-virtual {p0, p1}, L㺴/㚬/உ/䂻/ᱹ/ᆻ;->㽛(F)V

    invoke-virtual {p0, p2}, L㺴/㚬/உ/䂻/ᱹ/ᆻ;->ᣦ(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public ᣑ(I)V
    .locals 2

    iget-object v0, p0, L㺴/㚬/உ/䂻/ᱹ/ᆻ;->䂻:L㺴/㚬/உ/䂻/ᱹ/ᆻ$㚬;

    iget v1, v0, L㺴/㚬/உ/䂻/ᱹ/ᆻ$㚬;->ḙ:I

    if-eq v1, p1, :cond_0

    iput p1, v0, L㺴/㚬/உ/䂻/ᱹ/ᆻ$㚬;->ḙ:I

    invoke-virtual {p0}, L㺴/㚬/உ/䂻/ᱹ/ᆻ;->Խ()V

    :cond_0
    return-void
.end method

.method public ᣝ(IIII)V
    .locals 2

    iget-object v0, p0, L㺴/㚬/உ/䂻/ᱹ/ᆻ;->䂻:L㺴/㚬/உ/䂻/ᱹ/ᆻ$㚬;

    iget-object v1, v0, L㺴/㚬/உ/䂻/ᱹ/ᆻ$㚬;->ㄏ:Landroid/graphics/Rect;

    if-nez v1, :cond_0

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, v0, L㺴/㚬/உ/䂻/ᱹ/ᆻ$㚬;->ㄏ:Landroid/graphics/Rect;

    :cond_0
    iget-object v0, p0, L㺴/㚬/உ/䂻/ᱹ/ᆻ;->䂻:L㺴/㚬/உ/䂻/ᱹ/ᆻ$㚬;

    iget-object v0, v0, L㺴/㚬/உ/䂻/ᱹ/ᆻ$㚬;->ㄏ:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    iget-object p1, p0, L㺴/㚬/உ/䂻/ᱹ/ᆻ;->䂻:L㺴/㚬/உ/䂻/ᱹ/ᆻ$㚬;

    iget-object p1, p1, L㺴/㚬/உ/䂻/ᱹ/ᆻ$㚬;->ㄏ:Landroid/graphics/Rect;

    iput-object p1, p0, L㺴/㚬/உ/䂻/ᱹ/ᆻ;->㖪:Landroid/graphics/Rect;

    invoke-virtual {p0}, L㺴/㚬/உ/䂻/ᱹ/ᆻ;->invalidateSelf()V

    return-void
.end method

.method public ᣦ(Landroid/content/res/ColorStateList;)V
    .locals 2

    iget-object v0, p0, L㺴/㚬/உ/䂻/ᱹ/ᆻ;->䂻:L㺴/㚬/உ/䂻/ᱹ/ᆻ$㚬;

    iget-object v1, v0, L㺴/㚬/உ/䂻/ᱹ/ᆻ$㚬;->ḓ:Landroid/content/res/ColorStateList;

    if-eq v1, p1, :cond_0

    iput-object p1, v0, L㺴/㚬/உ/䂻/ᱹ/ᆻ$㚬;->ḓ:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object p1

    invoke-virtual {p0, p1}, L㺴/㚬/உ/䂻/ᱹ/ᆻ;->onStateChange([I)Z

    :cond_0
    return-void
.end method

.method public ᭊ(Landroid/content/res/ColorStateList;)V
    .locals 2

    iget-object v0, p0, L㺴/㚬/உ/䂻/ᱹ/ᆻ;->䂻:L㺴/㚬/உ/䂻/ᱹ/ᆻ$㚬;

    iget-object v1, v0, L㺴/㚬/உ/䂻/ᱹ/ᆻ$㚬;->㺴:Landroid/content/res/ColorStateList;

    if-eq v1, p1, :cond_0

    iput-object p1, v0, L㺴/㚬/உ/䂻/ᱹ/ᆻ$㚬;->㺴:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object p1

    invoke-virtual {p0, p1}, L㺴/㚬/உ/䂻/ᱹ/ᆻ;->onStateChange([I)Z

    :cond_0
    return-void
.end method

.method public ᰘ()F
    .locals 1

    iget-object v0, p0, L㺴/㚬/உ/䂻/ᱹ/ᆻ;->䂻:L㺴/㚬/உ/䂻/ᱹ/ᆻ$㚬;

    iget v0, v0, L㺴/㚬/உ/䂻/ᱹ/ᆻ$㚬;->ბ:F

    return v0
.end method

.method public ᱹ()F
    .locals 2

    invoke-virtual {p0}, L㺴/㚬/உ/䂻/ᱹ/ᆻ;->㢏()F

    move-result v0

    invoke-virtual {p0}, L㺴/㚬/உ/䂻/ᱹ/ᆻ;->ᰘ()F

    move-result v1

    add-float/2addr v0, v1

    return v0
.end method

.method public final ḓ(Landroid/graphics/Paint;Z)Landroid/graphics/PorterDuffColorFilter;
    .locals 1

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Paint;->getColor()I

    move-result p1

    invoke-virtual {p0, p1}, L㺴/㚬/உ/䂻/ᱹ/ᆻ;->㧦(I)I

    move-result p2

    if-eq p2, p1, :cond_0

    new-instance p1, Landroid/graphics/PorterDuffColorFilter;

    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p1, p2, v0}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public ḙ()Landroid/graphics/RectF;
    .locals 5

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget-object v1, p0, L㺴/㚬/உ/䂻/ᱹ/ᆻ;->ㄏ:Landroid/graphics/RectF;

    iget v2, v0, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    iget v3, v0, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    iget v4, v0, Landroid/graphics/Rect;->right:I

    int-to-float v4, v4

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v0, v0

    invoke-virtual {v1, v2, v3, v4, v0}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v0, p0, L㺴/㚬/உ/䂻/ᱹ/ᆻ;->ㄏ:Landroid/graphics/RectF;

    return-object v0
.end method

.method public final Ổ()Z
    .locals 7

    iget-object v0, p0, L㺴/㚬/உ/䂻/ᱹ/ᆻ;->㭲:Landroid/graphics/PorterDuffColorFilter;

    iget-object v1, p0, L㺴/㚬/உ/䂻/ᱹ/ᆻ;->ḙ:Landroid/graphics/PorterDuffColorFilter;

    iget-object v2, p0, L㺴/㚬/உ/䂻/ᱹ/ᆻ;->䂻:L㺴/㚬/உ/䂻/ᱹ/ᆻ$㚬;

    iget-object v3, v2, L㺴/㚬/உ/䂻/ᱹ/ᆻ$㚬;->ᆻ:Landroid/content/res/ColorStateList;

    iget-object v2, v2, L㺴/㚬/உ/䂻/ᱹ/ᆻ$㚬;->ℓ:Landroid/graphics/PorterDuff$Mode;

    iget-object v4, p0, L㺴/㚬/உ/䂻/ᱹ/ᆻ;->ཇ:Landroid/graphics/Paint;

    const/4 v5, 0x1

    invoke-virtual {p0, v3, v2, v4, v5}, L㺴/㚬/உ/䂻/ᱹ/ᆻ;->ಫ(Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;Landroid/graphics/Paint;Z)Landroid/graphics/PorterDuffColorFilter;

    move-result-object v2

    iput-object v2, p0, L㺴/㚬/உ/䂻/ᱹ/ᆻ;->㭲:Landroid/graphics/PorterDuffColorFilter;

    iget-object v2, p0, L㺴/㚬/உ/䂻/ᱹ/ᆻ;->䂻:L㺴/㚬/உ/䂻/ᱹ/ᆻ$㚬;

    iget-object v3, v2, L㺴/㚬/உ/䂻/ᱹ/ᆻ$㚬;->䆀:Landroid/content/res/ColorStateList;

    iget-object v2, v2, L㺴/㚬/உ/䂻/ᱹ/ᆻ$㚬;->ℓ:Landroid/graphics/PorterDuff$Mode;

    iget-object v4, p0, L㺴/㚬/உ/䂻/ᱹ/ᆻ;->ᓭ:Landroid/graphics/Paint;

    const/4 v6, 0x0

    invoke-virtual {p0, v3, v2, v4, v6}, L㺴/㚬/உ/䂻/ᱹ/ᆻ;->ಫ(Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;Landroid/graphics/Paint;Z)Landroid/graphics/PorterDuffColorFilter;

    move-result-object v2

    iput-object v2, p0, L㺴/㚬/உ/䂻/ᱹ/ᆻ;->ḙ:Landroid/graphics/PorterDuffColorFilter;

    iget-object v2, p0, L㺴/㚬/உ/䂻/ᱹ/ᆻ;->䂻:L㺴/㚬/உ/䂻/ᱹ/ᆻ$㚬;

    iget-boolean v3, v2, L㺴/㚬/உ/䂻/ᱹ/ᆻ$㚬;->㖪:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, L㺴/㚬/உ/䂻/ᱹ/ᆻ;->ბ:L㺴/㚬/உ/䂻/ᰘ/உ;

    iget-object v2, v2, L㺴/㚬/உ/䂻/ᱹ/ᆻ$㚬;->ᆻ:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object v4

    invoke-virtual {v2, v4, v6}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v2

    invoke-virtual {v3, v2}, L㺴/㚬/உ/䂻/ᰘ/உ;->㺴(I)V

    :cond_0
    iget-object v2, p0, L㺴/㚬/உ/䂻/ᱹ/ᆻ;->㭲:Landroid/graphics/PorterDuffColorFilter;

    invoke-static {v0, v2}, L㚬/ℓ/㹖/䂻;->உ(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, L㺴/㚬/உ/䂻/ᱹ/ᆻ;->ḙ:Landroid/graphics/PorterDuffColorFilter;

    invoke-static {v1, v0}, L㚬/ℓ/㹖/䂻;->உ(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    :cond_2
    :goto_0
    return v5
.end method

.method public ỷ()Z
    .locals 2

    iget-object v0, p0, L㺴/㚬/உ/䂻/ᱹ/ᆻ;->䂻:L㺴/㚬/உ/䂻/ᱹ/ᆻ$㚬;

    iget-object v0, v0, L㺴/㚬/உ/䂻/ᱹ/ᆻ$㚬;->உ:L㺴/㚬/உ/䂻/ᱹ/㧦;

    invoke-virtual {p0}, L㺴/㚬/உ/䂻/ᱹ/ᆻ;->ḙ()Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {v0, v1}, L㺴/㚬/உ/䂻/ᱹ/㧦;->㖪(Landroid/graphics/RectF;)Z

    move-result v0

    return v0
.end method

.method public final ἂ()Z
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_1

    invoke-virtual {p0}, L㺴/㚬/உ/䂻/ᱹ/ᆻ;->ỷ()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, L㺴/㚬/உ/䂻/ᱹ/ᆻ;->ᆻ:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->isConvex()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public final ἥ(Landroid/graphics/Canvas;)V
    .locals 4

    iget-object v0, p0, L㺴/㚬/உ/䂻/ᱹ/ᆻ;->䂻:L㺴/㚬/உ/䂻/ᱹ/ᆻ$㚬;

    iget v0, v0, L㺴/㚬/உ/䂻/ᱹ/ᆻ$㚬;->㭲:I

    if-eqz v0, :cond_0

    iget-object v0, p0, L㺴/㚬/உ/䂻/ᱹ/ᆻ;->ᆻ:Landroid/graphics/Path;

    iget-object v1, p0, L㺴/㚬/உ/䂻/ᱹ/ᆻ;->ბ:L㺴/㚬/உ/䂻/ᰘ/உ;

    invoke-virtual {v1}, L㺴/㚬/உ/䂻/ᰘ/உ;->㚬()Landroid/graphics/Paint;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x4

    if-ge v0, v1, :cond_1

    iget-object v1, p0, L㺴/㚬/உ/䂻/ᱹ/ᆻ;->㚬:[L㺴/㚬/உ/䂻/ᱹ/ἥ$ᆻ;

    aget-object v1, v1, v0

    iget-object v2, p0, L㺴/㚬/உ/䂻/ᱹ/ᆻ;->ბ:L㺴/㚬/உ/䂻/ᰘ/உ;

    iget-object v3, p0, L㺴/㚬/உ/䂻/ᱹ/ᆻ;->䂻:L㺴/㚬/உ/䂻/ᱹ/ᆻ$㚬;

    iget v3, v3, L㺴/㚬/உ/䂻/ᱹ/ᆻ$㚬;->㞘:I

    invoke-virtual {v1, v2, v3, p1}, L㺴/㚬/உ/䂻/ᱹ/ἥ$ᆻ;->䂻(L㺴/㚬/உ/䂻/ᰘ/உ;ILandroid/graphics/Canvas;)V

    iget-object v1, p0, L㺴/㚬/உ/䂻/ᱹ/ᆻ;->㺴:[L㺴/㚬/உ/䂻/ᱹ/ἥ$ᆻ;

    aget-object v1, v1, v0

    iget-object v2, p0, L㺴/㚬/உ/䂻/ᱹ/ᆻ;->ბ:L㺴/㚬/உ/䂻/ᰘ/உ;

    iget-object v3, p0, L㺴/㚬/உ/䂻/ᱹ/ᆻ;->䂻:L㺴/㚬/உ/䂻/ᱹ/ᆻ$㚬;

    iget v3, v3, L㺴/㚬/உ/䂻/ᱹ/ᆻ$㚬;->㞘:I

    invoke-virtual {v1, v2, v3, p1}, L㺴/㚬/உ/䂻/ᱹ/ἥ$ᆻ;->䂻(L㺴/㚬/உ/䂻/ᰘ/உ;ILandroid/graphics/Canvas;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, L㺴/㚬/உ/䂻/ᱹ/ᆻ;->ㄬ()I

    move-result v0

    invoke-virtual {p0}, L㺴/㚬/உ/䂻/ᱹ/ᆻ;->㫏()I

    move-result v1

    neg-int v2, v0

    int-to-float v2, v2

    neg-int v3, v1

    int-to-float v3, v3

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v2, p0, L㺴/㚬/உ/䂻/ᱹ/ᆻ;->ᆻ:Landroid/graphics/Path;

    sget-object v3, L㺴/㚬/உ/䂻/ᱹ/ᆻ;->ม:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    int-to-float v0, v0

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    return-void
.end method

.method public ᾦ()L㺴/㚬/உ/䂻/ᱹ/㧦;
    .locals 1

    iget-object v0, p0, L㺴/㚬/உ/䂻/ᱹ/ᆻ;->䂻:L㺴/㚬/உ/䂻/ᱹ/ᆻ$㚬;

    iget-object v0, v0, L㺴/㚬/உ/䂻/ᱹ/ᆻ$㚬;->உ:L㺴/㚬/உ/䂻/ᱹ/㧦;

    return-object v0
.end method

.method public final ℓ()V
    .locals 5

    invoke-virtual {p0}, L㺴/㚬/உ/䂻/ᱹ/ᆻ;->ڈ()F

    move-result v0

    neg-float v0, v0

    invoke-virtual {p0}, L㺴/㚬/உ/䂻/ᱹ/ᆻ;->ᾦ()L㺴/㚬/உ/䂻/ᱹ/㧦;

    move-result-object v1

    new-instance v2, L㺴/㚬/உ/䂻/ᱹ/ᆻ$䂻;

    invoke-direct {v2, p0, v0}, L㺴/㚬/உ/䂻/ᱹ/ᆻ$䂻;-><init>(L㺴/㚬/உ/䂻/ᱹ/ᆻ;F)V

    invoke-virtual {v1, v2}, L㺴/㚬/உ/䂻/ᱹ/㧦;->㲧(L㺴/㚬/உ/䂻/ᱹ/㧦$㚬;)L㺴/㚬/உ/䂻/ᱹ/㧦;

    move-result-object v0

    iput-object v0, p0, L㺴/㚬/உ/䂻/ᱹ/ᆻ;->ἥ:L㺴/㚬/உ/䂻/ᱹ/㧦;

    iget-object v1, p0, L㺴/㚬/உ/䂻/ᱹ/ᆻ;->㞘:L㺴/㚬/உ/䂻/ᱹ/㹖;

    iget-object v2, p0, L㺴/㚬/உ/䂻/ᱹ/ᆻ;->䂻:L㺴/㚬/உ/䂻/ᱹ/ᆻ$㚬;

    iget v2, v2, L㺴/㚬/உ/䂻/ᱹ/ᆻ$㚬;->㧦:F

    invoke-virtual {p0}, L㺴/㚬/உ/䂻/ᱹ/ᆻ;->㖪()Landroid/graphics/RectF;

    move-result-object v3

    iget-object v4, p0, L㺴/㚬/உ/䂻/ᱹ/ᆻ;->ℓ:Landroid/graphics/Path;

    invoke-virtual {v1, v0, v2, v3, v4}, L㺴/㚬/உ/䂻/ᱹ/㹖;->㺴(L㺴/㚬/உ/䂻/ᱹ/㧦;FLandroid/graphics/RectF;Landroid/graphics/Path;)V

    return-void
.end method

.method public ⵦ(F)V
    .locals 2

    iget-object v0, p0, L㺴/㚬/உ/䂻/ᱹ/ᆻ;->䂻:L㺴/㚬/உ/䂻/ᱹ/ᆻ$㚬;

    iget v1, v0, L㺴/㚬/உ/䂻/ᱹ/ᆻ$㚬;->ᓭ:F

    cmpl-float v1, v1, p1

    if-eqz v1, :cond_0

    iput p1, v0, L㺴/㚬/உ/䂻/ᱹ/ᆻ$㚬;->ᓭ:F

    invoke-virtual {p0}, L㺴/㚬/உ/䂻/ᱹ/ᆻ;->ග()V

    :cond_0
    return-void
.end method

.method public final ㄏ(Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;Z)Landroid/graphics/PorterDuffColorFilter;
    .locals 2

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result p1

    if-eqz p3, :cond_0

    invoke-virtual {p0, p1}, L㺴/㚬/உ/䂻/ᱹ/ᆻ;->㧦(I)I

    move-result p1

    :cond_0
    new-instance p3, Landroid/graphics/PorterDuffColorFilter;

    invoke-direct {p3, p1, p2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    return-object p3
.end method

.method public ㄬ()I
    .locals 5

    iget-object v0, p0, L㺴/㚬/உ/䂻/ᱹ/ᆻ;->䂻:L㺴/㚬/உ/䂻/ᱹ/ᆻ$㚬;

    iget v1, v0, L㺴/㚬/உ/䂻/ᱹ/ᆻ$㚬;->㭲:I

    int-to-double v1, v1

    iget v0, v0, L㺴/㚬/உ/䂻/ᱹ/ᆻ$㚬;->ḙ:I

    int-to-double v3, v0

    invoke-static {v3, v4}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v3

    mul-double v1, v1, v3

    double-to-int v0, v1

    return v0
.end method

.method public final 㖆()Z
    .locals 2

    iget-object v0, p0, L㺴/㚬/உ/䂻/ᱹ/ᆻ;->䂻:L㺴/㚬/உ/䂻/ᱹ/ᆻ$㚬;

    iget-object v0, v0, L㺴/㚬/உ/䂻/ᱹ/ᆻ$㚬;->㢏:Landroid/graphics/Paint$Style;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    if-eq v0, v1, :cond_0

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    if-ne v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, L㺴/㚬/உ/䂻/ᱹ/ᆻ;->ᓭ:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final 㖪()Landroid/graphics/RectF;
    .locals 6

    invoke-virtual {p0}, L㺴/㚬/உ/䂻/ᱹ/ᆻ;->ḙ()Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {p0}, L㺴/㚬/உ/䂻/ᱹ/ᆻ;->ڈ()F

    move-result v1

    iget-object v2, p0, L㺴/㚬/உ/䂻/ᱹ/ᆻ;->ಫ:Landroid/graphics/RectF;

    iget v3, v0, Landroid/graphics/RectF;->left:F

    add-float/2addr v3, v1

    iget v4, v0, Landroid/graphics/RectF;->top:F

    add-float/2addr v4, v1

    iget v5, v0, Landroid/graphics/RectF;->right:F

    sub-float/2addr v5, v1

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v0, v1

    invoke-virtual {v2, v3, v4, v5, v0}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v0, p0, L㺴/㚬/உ/䂻/ᱹ/ᆻ;->ಫ:Landroid/graphics/RectF;

    return-object v0
.end method

.method public 㞘()F
    .locals 2

    iget-object v0, p0, L㺴/㚬/உ/䂻/ᱹ/ᆻ;->䂻:L㺴/㚬/உ/䂻/ᱹ/ᆻ$㚬;

    iget-object v0, v0, L㺴/㚬/உ/䂻/ᱹ/ᆻ$㚬;->உ:L㺴/㚬/உ/䂻/ᱹ/㧦;

    invoke-virtual {v0}, L㺴/㚬/உ/䂻/ᱹ/㧦;->ಫ()L㺴/㚬/உ/䂻/ᱹ/㚬;

    move-result-object v0

    invoke-virtual {p0}, L㺴/㚬/உ/䂻/ᱹ/ᆻ;->ḙ()Landroid/graphics/RectF;

    move-result-object v1

    invoke-interface {v0, v1}, L㺴/㚬/உ/䂻/ᱹ/㚬;->உ(Landroid/graphics/RectF;)F

    move-result v0

    return v0
.end method

.method public 㟘(F)V
    .locals 2

    iget-object v0, p0, L㺴/㚬/உ/䂻/ᱹ/ᆻ;->䂻:L㺴/㚬/உ/䂻/ᱹ/ᆻ$㚬;

    iget v1, v0, L㺴/㚬/உ/䂻/ᱹ/ᆻ$㚬;->㧦:F

    cmpl-float v1, v1, p1

    if-eqz v1, :cond_0

    iput p1, v0, L㺴/㚬/உ/䂻/ᱹ/ᆻ$㚬;->㧦:F

    const/4 p1, 0x1

    iput-boolean p1, p0, L㺴/㚬/உ/䂻/ᱹ/ᆻ;->ḓ:Z

    invoke-virtual {p0}, L㺴/㚬/உ/䂻/ᱹ/ᆻ;->invalidateSelf()V

    :cond_0
    return-void
.end method

.method public 㢏()F
    .locals 1

    iget-object v0, p0, L㺴/㚬/உ/䂻/ᱹ/ᆻ;->䂻:L㺴/㚬/உ/䂻/ᱹ/ᆻ$㚬;

    iget v0, v0, L㺴/㚬/உ/䂻/ᱹ/ᆻ$㚬;->ᓭ:F

    return v0
.end method

.method public final 㥁()Z
    .locals 3

    iget-object v0, p0, L㺴/㚬/உ/䂻/ᱹ/ᆻ;->䂻:L㺴/㚬/உ/䂻/ᱹ/ᆻ$㚬;

    iget v1, v0, L㺴/㚬/உ/䂻/ᱹ/ᆻ$㚬;->㲝:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    iget v0, v0, L㺴/㚬/உ/䂻/ᱹ/ᆻ$㚬;->㞘:I

    if-lez v0, :cond_0

    const/4 v0, 0x2

    if-eq v1, v0, :cond_1

    invoke-virtual {p0}, L㺴/㚬/உ/䂻/ᱹ/ᆻ;->ἂ()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :cond_1
    :goto_0
    return v2
.end method

.method public final 㧦(I)I
    .locals 2

    invoke-virtual {p0}, L㺴/㚬/உ/䂻/ᱹ/ᆻ;->ᱹ()F

    move-result v0

    invoke-virtual {p0}, L㺴/㚬/உ/䂻/ᱹ/ᆻ;->㲧()F

    move-result v1

    add-float/2addr v0, v1

    iget-object v1, p0, L㺴/㚬/உ/䂻/ᱹ/ᆻ;->䂻:L㺴/㚬/உ/䂻/ᱹ/ᆻ$㚬;

    iget-object v1, v1, L㺴/㚬/உ/䂻/ᱹ/ᆻ$㚬;->䂻:L㺴/㚬/உ/䂻/ㄬ/உ;

    if-eqz v1, :cond_0

    invoke-virtual {v1, p1, v0}, L㺴/㚬/உ/䂻/ㄬ/உ;->㚬(IF)I

    move-result p1

    :cond_0
    return p1
.end method

.method public 㨃()F
    .locals 2

    iget-object v0, p0, L㺴/㚬/உ/䂻/ᱹ/ᆻ;->䂻:L㺴/㚬/உ/䂻/ᱹ/ᆻ$㚬;

    iget-object v0, v0, L㺴/㚬/உ/䂻/ᱹ/ᆻ$㚬;->உ:L㺴/㚬/உ/䂻/ᱹ/㧦;

    invoke-virtual {v0}, L㺴/㚬/உ/䂻/ᱹ/㧦;->ḙ()L㺴/㚬/உ/䂻/ᱹ/㚬;

    move-result-object v0

    invoke-virtual {p0}, L㺴/㚬/உ/䂻/ᱹ/ᆻ;->ḙ()Landroid/graphics/RectF;

    move-result-object v1

    invoke-interface {v0, v1}, L㺴/㚬/உ/䂻/ᱹ/㚬;->உ(Landroid/graphics/RectF;)F

    move-result v0

    return v0
.end method

.method public 㫏()I
    .locals 5

    iget-object v0, p0, L㺴/㚬/உ/䂻/ᱹ/ᆻ;->䂻:L㺴/㚬/உ/䂻/ᱹ/ᆻ$㚬;

    iget v1, v0, L㺴/㚬/உ/䂻/ᱹ/ᆻ$㚬;->㭲:I

    int-to-double v1, v1

    iget v0, v0, L㺴/㚬/உ/䂻/ᱹ/ᆻ$㚬;->ḙ:I

    int-to-double v3, v0

    invoke-static {v3, v4}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v3

    mul-double v1, v1, v3

    double-to-int v0, v1

    return v0
.end method

.method public 㭢(Landroid/content/Context;)V
    .locals 2

    iget-object v0, p0, L㺴/㚬/உ/䂻/ᱹ/ᆻ;->䂻:L㺴/㚬/உ/䂻/ᱹ/ᆻ$㚬;

    new-instance v1, L㺴/㚬/உ/䂻/ㄬ/உ;

    invoke-direct {v1, p1}, L㺴/㚬/உ/䂻/ㄬ/உ;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, L㺴/㚬/உ/䂻/ᱹ/ᆻ$㚬;->䂻:L㺴/㚬/உ/䂻/ㄬ/உ;

    invoke-virtual {p0}, L㺴/㚬/உ/䂻/ᱹ/ᆻ;->ග()V

    return-void
.end method

.method public 㭲()F
    .locals 2

    iget-object v0, p0, L㺴/㚬/உ/䂻/ᱹ/ᆻ;->䂻:L㺴/㚬/உ/䂻/ᱹ/ᆻ$㚬;

    iget-object v0, v0, L㺴/㚬/உ/䂻/ᱹ/ᆻ$㚬;->உ:L㺴/㚬/உ/䂻/ᱹ/㧦;

    invoke-virtual {v0}, L㺴/㚬/உ/䂻/ᱹ/㧦;->㹖()L㺴/㚬/உ/䂻/ᱹ/㚬;

    move-result-object v0

    invoke-virtual {p0}, L㺴/㚬/உ/䂻/ᱹ/ᆻ;->ḙ()Landroid/graphics/RectF;

    move-result-object v1

    invoke-interface {v0, v1}, L㺴/㚬/உ/䂻/ᱹ/㚬;->உ(Landroid/graphics/RectF;)F

    move-result v0

    return v0
.end method

.method public final 㮕(Landroid/graphics/Canvas;)V
    .locals 5

    invoke-virtual {p0}, L㺴/㚬/உ/䂻/ᱹ/ᆻ;->ㄬ()I

    move-result v0

    invoke-virtual {p0}, L㺴/㚬/உ/䂻/ᱹ/ᆻ;->㫏()I

    move-result v1

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-ge v2, v3, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getClipBounds()Landroid/graphics/Rect;

    move-result-object v2

    iget-object v3, p0, L㺴/㚬/உ/䂻/ᱹ/ᆻ;->䂻:L㺴/㚬/உ/䂻/ᱹ/ᆻ$㚬;

    iget v3, v3, L㺴/㚬/உ/䂻/ᱹ/ᆻ$㚬;->㞘:I

    neg-int v4, v3

    neg-int v3, v3

    invoke-virtual {v2, v4, v3}, Landroid/graphics/Rect;->inset(II)V

    invoke-virtual {v2, v0, v1}, Landroid/graphics/Rect;->offset(II)V

    sget-object v3, Landroid/graphics/Region$Op;->REPLACE:Landroid/graphics/Region$Op;

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    :cond_0
    int-to-float v0, v0

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    return-void
.end method

.method public 㰫()Landroid/content/res/ColorStateList;
    .locals 1

    iget-object v0, p0, L㺴/㚬/உ/䂻/ᱹ/ᆻ;->䂻:L㺴/㚬/உ/䂻/ᱹ/ᆻ$㚬;

    iget-object v0, v0, L㺴/㚬/உ/䂻/ᱹ/ᆻ$㚬;->ᆻ:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public 㲊(FI)V
    .locals 0

    invoke-virtual {p0, p1}, L㺴/㚬/உ/䂻/ᱹ/ᆻ;->㽛(F)V

    invoke-static {p2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, L㺴/㚬/உ/䂻/ᱹ/ᆻ;->ᣦ(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public final 㲝(Landroid/graphics/Canvas;)V
    .locals 6

    iget-object v2, p0, L㺴/㚬/உ/䂻/ᱹ/ᆻ;->ᓭ:Landroid/graphics/Paint;

    iget-object v3, p0, L㺴/㚬/உ/䂻/ᱹ/ᆻ;->ℓ:Landroid/graphics/Path;

    iget-object v4, p0, L㺴/㚬/உ/䂻/ᱹ/ᆻ;->ἥ:L㺴/㚬/உ/䂻/ᱹ/㧦;

    invoke-virtual {p0}, L㺴/㚬/உ/䂻/ᱹ/ᆻ;->㖪()Landroid/graphics/RectF;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, L㺴/㚬/உ/䂻/ᱹ/ᆻ;->ბ(Landroid/graphics/Canvas;Landroid/graphics/Paint;Landroid/graphics/Path;L㺴/㚬/உ/䂻/ᱹ/㧦;Landroid/graphics/RectF;)V

    return-void
.end method

.method public 㲧()F
    .locals 1

    iget-object v0, p0, L㺴/㚬/உ/䂻/ᱹ/ᆻ;->䂻:L㺴/㚬/உ/䂻/ᱹ/ᆻ$㚬;

    iget v0, v0, L㺴/㚬/உ/䂻/ᱹ/ᆻ$㚬;->ཇ:F

    return v0
.end method

.method public 㽛(F)V
    .locals 1

    iget-object v0, p0, L㺴/㚬/உ/䂻/ᱹ/ᆻ;->䂻:L㺴/㚬/உ/䂻/ᱹ/ᆻ$㚬;

    iput p1, v0, L㺴/㚬/உ/䂻/ᱹ/ᆻ$㚬;->㹖:F

    invoke-virtual {p0}, L㺴/㚬/உ/䂻/ᱹ/ᆻ;->invalidateSelf()V

    return-void
.end method

.method public final 䆀(Landroid/graphics/RectF;Landroid/graphics/Path;)V
    .locals 4

    invoke-virtual {p0, p1, p2}, L㺴/㚬/உ/䂻/ᱹ/ᆻ;->ᆻ(Landroid/graphics/RectF;Landroid/graphics/Path;)V

    iget-object v0, p0, L㺴/㚬/உ/䂻/ᱹ/ᆻ;->䂻:L㺴/㚬/உ/䂻/ᱹ/ᆻ$㚬;

    iget v0, v0, L㺴/㚬/உ/䂻/ᱹ/ᆻ$㚬;->ಫ:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    iget-object v0, p0, L㺴/㚬/உ/䂻/ᱹ/ᆻ;->䆀:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    iget-object v0, p0, L㺴/㚬/உ/䂻/ᱹ/ᆻ;->䆀:Landroid/graphics/Matrix;

    iget-object v1, p0, L㺴/㚬/உ/䂻/ᱹ/ᆻ;->䂻:L㺴/㚬/உ/䂻/ᱹ/ᆻ$㚬;

    iget v1, v1, L㺴/㚬/உ/䂻/ᱹ/ᆻ$㚬;->ಫ:F

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result p1

    div-float/2addr p1, v3

    invoke-virtual {v0, v1, v1, v2, p1}, Landroid/graphics/Matrix;->setScale(FFFF)V

    iget-object p1, p0, L㺴/㚬/உ/䂻/ᱹ/ᆻ;->䆀:Landroid/graphics/Matrix;

    invoke-virtual {p2, p1}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    :cond_0
    iget-object p1, p0, L㺴/㚬/உ/䂻/ᱹ/ᆻ;->㢏:Landroid/graphics/RectF;

    const/4 v0, 0x1

    invoke-virtual {p2, p1, v0}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    return-void
.end method
