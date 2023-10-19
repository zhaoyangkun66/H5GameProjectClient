.class public L㺴/㚬/உ/䂻/㭲/உ;
.super L㺴/㚬/உ/䂻/ᱹ/ᆻ;
.source ""

# interfaces
.implements L㚬/ℓ/䆀/㹖/䂻;
.implements Landroid/graphics/drawable/Drawable$Callback;
.implements L㺴/㚬/உ/䂻/ᾦ/䆀$䂻;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        L㺴/㚬/உ/䂻/㭲/உ$உ;
    }
.end annotation


# static fields
.field public static final Ⱝ:[I

.field public static final 㜱:Landroid/graphics/drawable/ShapeDrawable;


# instance fields
.field public ϣ:I

.field public Ӣ:Landroid/graphics/PorterDuff$Mode;

.field public Ԁ:Landroid/content/res/ColorStateList;

.field public Խ:Landroid/graphics/drawable/Drawable;

.field public ש:Ljava/lang/CharSequence;

.field public ڈ:F

.field public क:I

.field public ध:I

.field public ਬ:Z

.field public ಇ:F

.field public ಋ:F

.field public ർ:Z

.field public final ග:Landroid/graphics/Paint;

.field public ᇿ:F

.field public ፖ:I

.field public Ꭿ:I

.field public final Ᏼ:Landroid/graphics/Paint;

.field public ᓟ:Landroid/content/res/ColorStateList;

.field public ᗫ:[I

.field public ᗼ:I

.field public ᘚ:F

.field public ᙏ:Landroid/graphics/PorterDuffColorFilter;

.field public ᣑ:F

.field public ᣝ:F

.field public ᣦ:F

.field public ᨧ:I

.field public ᭊ:L㺴/㚬/உ/䂻/㹖/ℓ;

.field public ᰘ:Landroid/graphics/drawable/Drawable;

.field public ᱹ:Landroid/content/res/ColorStateList;

.field public ᴇ:Z

.field public ᵁ:Landroid/text/TextUtils$TruncateAt;

.field public ᶠ:Landroid/graphics/ColorFilter;

.field public final Ổ:Landroid/content/Context;

.field public ỷ:F

.field public ἂ:Z

.field public final ἃ:Landroid/graphics/PointF;

.field public ἴ:Z

.field public ᾦ:Landroid/content/res/ColorStateList;

.field public ⵦ:Landroid/graphics/drawable/Drawable;

.field public final ⶬ:L㺴/㚬/உ/䂻/ᾦ/䆀;

.field public ⷜ:I

.field public ㄬ:Landroid/content/res/ColorStateList;

.field public 㖆:Z

.field public 㟘:L㺴/㚬/உ/䂻/㹖/ℓ;

.field public final 㠭:Landroid/graphics/Paint$FontMetrics;

.field public 㥁:F

.field public 㨃:Z

.field public 㫏:F

.field public 㭢:Landroid/graphics/drawable/Drawable;

.field public 㮕:Z

.field public 㰫:Landroid/content/res/ColorStateList;

.field public 㱱:Landroid/content/res/ColorStateList;

.field public 㲊:F

.field public 㲧:Landroid/content/res/ColorStateList;

.field public 㴩:Z

.field public 㽛:F

.field public 䃻:I

.field public 䅚:Ljava/lang/CharSequence;

.field public final 䆍:Landroid/graphics/Path;

.field public 䆚:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "L\u3eb4/\u36ac/\u0b89/\u40bb/\u3b72/\u0b89$\u0b89;",
            ">;"
        }
    .end annotation
.end field

.field public final 䋡:Landroid/graphics/RectF;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x101009e

    aput v2, v0, v1

    sput-object v0, L㺴/㚬/உ/䂻/㭲/உ;->Ⱝ:[I

    new-instance v0, Landroid/graphics/drawable/ShapeDrawable;

    new-instance v1, Landroid/graphics/drawable/shapes/OvalShape;

    invoke-direct {v1}, Landroid/graphics/drawable/shapes/OvalShape;-><init>()V

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    sput-object v0, L㺴/㚬/உ/䂻/㭲/உ;->㜱:Landroid/graphics/drawable/ShapeDrawable;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1

    invoke-direct {p0, p1, p2, p3, p4}, L㺴/㚬/உ/䂻/ᱹ/ᆻ;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    new-instance p2, Landroid/graphics/Paint;

    const/4 p3, 0x1

    invoke-direct {p2, p3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p2, p0, L㺴/㚬/உ/䂻/㭲/உ;->ග:Landroid/graphics/Paint;

    new-instance p2, Landroid/graphics/Paint$FontMetrics;

    invoke-direct {p2}, Landroid/graphics/Paint$FontMetrics;-><init>()V

    iput-object p2, p0, L㺴/㚬/உ/䂻/㭲/உ;->㠭:Landroid/graphics/Paint$FontMetrics;

    new-instance p2, Landroid/graphics/RectF;

    invoke-direct {p2}, Landroid/graphics/RectF;-><init>()V

    iput-object p2, p0, L㺴/㚬/உ/䂻/㭲/உ;->䋡:Landroid/graphics/RectF;

    new-instance p2, Landroid/graphics/PointF;

    invoke-direct {p2}, Landroid/graphics/PointF;-><init>()V

    iput-object p2, p0, L㺴/㚬/உ/䂻/㭲/உ;->ἃ:Landroid/graphics/PointF;

    new-instance p2, Landroid/graphics/Path;

    invoke-direct {p2}, Landroid/graphics/Path;-><init>()V

    iput-object p2, p0, L㺴/㚬/உ/䂻/㭲/உ;->䆍:Landroid/graphics/Path;

    const/16 p2, 0xff

    iput p2, p0, L㺴/㚬/உ/䂻/㭲/உ;->ध:I

    sget-object p2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    iput-object p2, p0, L㺴/㚬/உ/䂻/㭲/உ;->Ӣ:Landroid/graphics/PorterDuff$Mode;

    new-instance p2, Ljava/lang/ref/WeakReference;

    const/4 p4, 0x0

    invoke-direct {p2, p4}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, L㺴/㚬/உ/䂻/㭲/உ;->䆚:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0, p1}, L㺴/㚬/உ/䂻/ᱹ/ᆻ;->㭢(Landroid/content/Context;)V

    iput-object p1, p0, L㺴/㚬/உ/䂻/㭲/உ;->Ổ:Landroid/content/Context;

    new-instance p2, L㺴/㚬/உ/䂻/ᾦ/䆀;

    invoke-direct {p2, p0}, L㺴/㚬/உ/䂻/ᾦ/䆀;-><init>(L㺴/㚬/உ/䂻/ᾦ/䆀$䂻;)V

    iput-object p2, p0, L㺴/㚬/உ/䂻/㭲/உ;->ⶬ:L㺴/㚬/உ/䂻/ᾦ/䆀;

    const-string v0, ""

    iput-object v0, p0, L㺴/㚬/உ/䂻/㭲/உ;->ש:Ljava/lang/CharSequence;

    invoke-virtual {p2}, L㺴/㚬/உ/䂻/ᾦ/䆀;->ḓ()Landroid/text/TextPaint;

    move-result-object p2

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    iput p1, p2, Landroid/text/TextPaint;->density:F

    iput-object p4, p0, L㺴/㚬/உ/䂻/㭲/உ;->Ᏼ:Landroid/graphics/Paint;

    sget-object p1, L㺴/㚬/உ/䂻/㭲/உ;->Ⱝ:[I

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    invoke-virtual {p0, p1}, L㺴/㚬/உ/䂻/㭲/உ;->ᵐ([I)Z

    iput-boolean p3, p0, L㺴/㚬/உ/䂻/㭲/உ;->ᴇ:Z

    sget-boolean p1, L㺴/㚬/உ/䂻/㨃/䂻;->உ:Z

    if-eqz p1, :cond_0

    sget-object p1, L㺴/㚬/உ/䂻/㭲/உ;->㜱:Landroid/graphics/drawable/ShapeDrawable;

    const/4 p2, -0x1

    invoke-virtual {p1, p2}, Landroid/graphics/drawable/ShapeDrawable;->setTint(I)V

    :cond_0
    return-void
.end method

.method public static β([II)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget v3, p0, v2

    if-ne v3, p1, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method public static Ꮐ(Landroid/content/res/ColorStateList;)Z
    .locals 0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static ᨧ(Landroid/content/Context;Landroid/util/AttributeSet;II)L㺴/㚬/உ/䂻/㭲/உ;
    .locals 1

    new-instance v0, L㺴/㚬/உ/䂻/㭲/உ;

    invoke-direct {v0, p0, p1, p2, p3}, L㺴/㚬/உ/䂻/㭲/உ;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    invoke-virtual {v0, p1, p2, p3}, L㺴/㚬/உ/䂻/㭲/உ;->Ⅎ(Landroid/util/AttributeSet;II)V

    return-object v0
.end method

.method public static 㗽(Landroid/graphics/drawable/Drawable;)Z
    .locals 0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static 䇌(L㺴/㚬/உ/䂻/ש/㺴;)Z
    .locals 0

    if-eqz p0, :cond_0

    iget-object p0, p0, L㺴/㚬/உ/䂻/ש/㺴;->䂻:Landroid/content/res/ColorStateList;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 9

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {p0}, L㺴/㚬/உ/䂻/㭲/உ;->getAlpha()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    iget v7, p0, L㺴/㚬/உ/䂻/㭲/உ;->ध:I

    const/16 v8, 0xff

    if-ge v7, v8, :cond_1

    iget v1, v0, Landroid/graphics/Rect;->left:I

    int-to-float v3, v1

    iget v1, v0, Landroid/graphics/Rect;->top:I

    int-to-float v4, v1

    iget v1, v0, Landroid/graphics/Rect;->right:I

    int-to-float v5, v1

    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v6, v1

    move-object v2, p1

    invoke-static/range {v2 .. v7}, L㺴/㚬/உ/䂻/ბ/உ;->உ(Landroid/graphics/Canvas;FFFFI)I

    move-result v1

    :cond_1
    invoke-virtual {p0, p1, v0}, L㺴/㚬/உ/䂻/㭲/உ;->ᙏ(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    invoke-virtual {p0, p1, v0}, L㺴/㚬/உ/䂻/㭲/உ;->Ꭿ(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    iget-boolean v2, p0, L㺴/㚬/உ/䂻/㭲/உ;->ἴ:Z

    if-eqz v2, :cond_2

    invoke-super {p0, p1}, L㺴/㚬/உ/䂻/ᱹ/ᆻ;->draw(Landroid/graphics/Canvas;)V

    :cond_2
    invoke-virtual {p0, p1, v0}, L㺴/㚬/உ/䂻/㭲/உ;->ᶠ(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    invoke-virtual {p0, p1, v0}, L㺴/㚬/உ/䂻/㭲/உ;->Ӣ(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    invoke-virtual {p0, p1, v0}, L㺴/㚬/உ/䂻/㭲/உ;->ध(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    invoke-virtual {p0, p1, v0}, L㺴/㚬/உ/䂻/㭲/உ;->ਬ(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    iget-boolean v2, p0, L㺴/㚬/உ/䂻/㭲/உ;->ᴇ:Z

    if-eqz v2, :cond_3

    invoke-virtual {p0, p1, v0}, L㺴/㚬/உ/䂻/㭲/உ;->㴩(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    :cond_3
    invoke-virtual {p0, p1, v0}, L㺴/㚬/உ/䂻/㭲/உ;->㱱(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    invoke-virtual {p0, p1, v0}, L㺴/㚬/உ/䂻/㭲/உ;->ᗫ(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    iget v0, p0, L㺴/㚬/உ/䂻/㭲/உ;->ध:I

    if-ge v0, v8, :cond_4

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_4
    :goto_0
    return-void
.end method

.method public getAlpha()I
    .locals 1

    iget v0, p0, L㺴/㚬/உ/䂻/㭲/உ;->ध:I

    return v0
.end method

.method public getColorFilter()Landroid/graphics/ColorFilter;
    .locals 1

    iget-object v0, p0, L㺴/㚬/உ/䂻/㭲/உ;->ᶠ:Landroid/graphics/ColorFilter;

    return-object v0
.end method

.method public getIntrinsicHeight()I
    .locals 1

    iget v0, p0, L㺴/㚬/உ/䂻/㭲/உ;->㫏:F

    float-to-int v0, v0

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 3

    iget v0, p0, L㺴/㚬/உ/䂻/㭲/உ;->ᣝ:F

    invoke-virtual {p0}, L㺴/㚬/உ/䂻/㭲/உ;->䋡()F

    move-result v1

    add-float/2addr v0, v1

    iget v1, p0, L㺴/㚬/உ/䂻/㭲/உ;->㲊:F

    add-float/2addr v0, v1

    iget-object v1, p0, L㺴/㚬/உ/䂻/㭲/உ;->ⶬ:L㺴/㚬/உ/䂻/ᾦ/䆀;

    invoke-virtual {p0}, L㺴/㚬/உ/䂻/㭲/உ;->㣩()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, L㺴/㚬/உ/䂻/ᾦ/䆀;->䆀(Ljava/lang/String;)F

    move-result v1

    add-float/2addr v0, v1

    iget v1, p0, L㺴/㚬/உ/䂻/㭲/உ;->ᘚ:F

    add-float/2addr v0, v1

    invoke-virtual {p0}, L㺴/㚬/உ/䂻/㭲/உ;->क()F

    move-result v1

    add-float/2addr v0, v1

    iget v1, p0, L㺴/㚬/உ/䂻/㭲/உ;->ಇ:F

    add-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iget v1, p0, L㺴/㚬/உ/䂻/㭲/உ;->ፖ:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, -0x3

    return v0
.end method

.method public getOutline(Landroid/graphics/Outline;)V
    .locals 8
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    iget-boolean v0, p0, L㺴/㚬/உ/䂻/㭲/உ;->ἴ:Z

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, L㺴/㚬/உ/䂻/ᱹ/ᆻ;->getOutline(Landroid/graphics/Outline;)V

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    iget v1, p0, L㺴/㚬/உ/䂻/㭲/உ;->ಋ:F

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Outline;->setRoundRect(Landroid/graphics/Rect;F)V

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {p0}, L㺴/㚬/உ/䂻/㭲/உ;->getIntrinsicWidth()I

    move-result v5

    invoke-virtual {p0}, L㺴/㚬/உ/䂻/㭲/உ;->getIntrinsicHeight()I

    move-result v6

    iget v7, p0, L㺴/㚬/உ/䂻/㭲/உ;->ಋ:F

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Outline;->setRoundRect(IIIIF)V

    :goto_0
    invoke-virtual {p0}, L㺴/㚬/உ/䂻/㭲/உ;->getAlpha()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x437f0000    # 255.0f

    div-float/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/graphics/Outline;->setAlpha(F)V

    return-void
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-interface {p1, p0}, Landroid/graphics/drawable/Drawable$Callback;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public isStateful()Z
    .locals 1

    iget-object v0, p0, L㺴/㚬/உ/䂻/㭲/உ;->㲧:Landroid/content/res/ColorStateList;

    invoke-static {v0}, L㺴/㚬/உ/䂻/㭲/உ;->Ꮐ(Landroid/content/res/ColorStateList;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, L㺴/㚬/உ/䂻/㭲/உ;->ㄬ:Landroid/content/res/ColorStateList;

    invoke-static {v0}, L㺴/㚬/உ/䂻/㭲/உ;->Ꮐ(Landroid/content/res/ColorStateList;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, L㺴/㚬/உ/䂻/㭲/உ;->ᾦ:Landroid/content/res/ColorStateList;

    invoke-static {v0}, L㺴/㚬/உ/䂻/㭲/உ;->Ꮐ(Landroid/content/res/ColorStateList;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-boolean v0, p0, L㺴/㚬/உ/䂻/㭲/உ;->㴩:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, L㺴/㚬/உ/䂻/㭲/உ;->ᓟ:Landroid/content/res/ColorStateList;

    invoke-static {v0}, L㺴/㚬/உ/䂻/㭲/உ;->Ꮐ(Landroid/content/res/ColorStateList;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    iget-object v0, p0, L㺴/㚬/உ/䂻/㭲/உ;->ⶬ:L㺴/㚬/உ/䂻/ᾦ/䆀;

    invoke-virtual {v0}, L㺴/㚬/உ/䂻/ᾦ/䆀;->㺴()L㺴/㚬/உ/䂻/ש/㺴;

    move-result-object v0

    invoke-static {v0}, L㺴/㚬/உ/䂻/㭲/உ;->䇌(L㺴/㚬/உ/䂻/ש/㺴;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, L㺴/㚬/உ/䂻/㭲/உ;->ϣ()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, L㺴/㚬/உ/䂻/㭲/உ;->ᰘ:Landroid/graphics/drawable/Drawable;

    invoke-static {v0}, L㺴/㚬/உ/䂻/㭲/உ;->㗽(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, L㺴/㚬/உ/䂻/㭲/உ;->ⵦ:Landroid/graphics/drawable/Drawable;

    invoke-static {v0}, L㺴/㚬/உ/䂻/㭲/உ;->㗽(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, L㺴/㚬/உ/䂻/㭲/உ;->㱱:Landroid/content/res/ColorStateList;

    invoke-static {v0}, L㺴/㚬/உ/䂻/㭲/உ;->Ꮐ(Landroid/content/res/ColorStateList;)Z

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

.method public onLayoutDirectionChanged(I)Z
    .locals 2

    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onLayoutDirectionChanged(I)Z

    move-result v0

    invoke-virtual {p0}, L㺴/㚬/உ/䂻/㭲/உ;->ℭ()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, L㺴/㚬/உ/䂻/㭲/உ;->ᰘ:Landroid/graphics/drawable/Drawable;

    invoke-static {v1, p1}, L㚬/ℓ/䆀/㹖/உ;->ἥ(Landroid/graphics/drawable/Drawable;I)Z

    move-result v1

    or-int/2addr v0, v1

    :cond_0
    invoke-virtual {p0}, L㺴/㚬/உ/䂻/㭲/உ;->䃤()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, L㺴/㚬/உ/䂻/㭲/உ;->ⵦ:Landroid/graphics/drawable/Drawable;

    invoke-static {v1, p1}, L㚬/ℓ/䆀/㹖/உ;->ἥ(Landroid/graphics/drawable/Drawable;I)Z

    move-result v1

    or-int/2addr v0, v1

    :cond_1
    invoke-virtual {p0}, L㺴/㚬/உ/䂻/㭲/உ;->䉁()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, L㺴/㚬/உ/䂻/㭲/உ;->㭢:Landroid/graphics/drawable/Drawable;

    invoke-static {v1, p1}, L㚬/ℓ/䆀/㹖/உ;->ἥ(Landroid/graphics/drawable/Drawable;I)Z

    move-result p1

    or-int/2addr v0, p1

    :cond_2
    if-eqz v0, :cond_3

    invoke-virtual {p0}, L㺴/㚬/உ/䂻/ᱹ/ᆻ;->invalidateSelf()V

    :cond_3
    const/4 p1, 0x1

    return p1
.end method

.method public onLevelChange(I)Z
    .locals 2

    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onLevelChange(I)Z

    move-result v0

    invoke-virtual {p0}, L㺴/㚬/உ/䂻/㭲/உ;->ℭ()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, L㺴/㚬/உ/䂻/㭲/உ;->ᰘ:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    move-result v1

    or-int/2addr v0, v1

    :cond_0
    invoke-virtual {p0}, L㺴/㚬/உ/䂻/㭲/உ;->䃤()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, L㺴/㚬/உ/䂻/㭲/உ;->ⵦ:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    move-result v1

    or-int/2addr v0, v1

    :cond_1
    invoke-virtual {p0}, L㺴/㚬/உ/䂻/㭲/உ;->䉁()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, L㺴/㚬/உ/䂻/㭲/உ;->㭢:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    move-result p1

    or-int/2addr v0, p1

    :cond_2
    if-eqz v0, :cond_3

    invoke-virtual {p0}, L㺴/㚬/உ/䂻/ᱹ/ᆻ;->invalidateSelf()V

    :cond_3
    return v0
.end method

.method public onStateChange([I)Z
    .locals 1

    iget-boolean v0, p0, L㺴/㚬/உ/䂻/㭲/உ;->ἴ:Z

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, L㺴/㚬/உ/䂻/ᱹ/ᆻ;->onStateChange([I)Z

    :cond_0
    invoke-virtual {p0}, L㺴/㚬/உ/䂻/㭲/உ;->䆋()[I

    move-result-object v0

    invoke-virtual {p0, p1, v0}, L㺴/㚬/உ/䂻/㭲/உ;->Ꭸ([I[I)Z

    move-result p1

    return p1
.end method

.method public scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V
    .locals 0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-interface {p1, p0, p2, p3, p4}, Landroid/graphics/drawable/Drawable$Callback;->scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V

    :cond_0
    return-void
.end method

.method public setAlpha(I)V
    .locals 1

    iget v0, p0, L㺴/㚬/உ/䂻/㭲/உ;->ध:I

    if-eq v0, p1, :cond_0

    iput p1, p0, L㺴/㚬/உ/䂻/㭲/உ;->ध:I

    invoke-virtual {p0}, L㺴/㚬/உ/䂻/ᱹ/ᆻ;->invalidateSelf()V

    :cond_0
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    iget-object v0, p0, L㺴/㚬/உ/䂻/㭲/உ;->ᶠ:Landroid/graphics/ColorFilter;

    if-eq v0, p1, :cond_0

    iput-object p1, p0, L㺴/㚬/உ/䂻/㭲/உ;->ᶠ:Landroid/graphics/ColorFilter;

    invoke-virtual {p0}, L㺴/㚬/உ/䂻/ᱹ/ᆻ;->invalidateSelf()V

    :cond_0
    return-void
.end method

.method public setTintList(Landroid/content/res/ColorStateList;)V
    .locals 1

    iget-object v0, p0, L㺴/㚬/உ/䂻/㭲/உ;->㱱:Landroid/content/res/ColorStateList;

    if-eq v0, p1, :cond_0

    iput-object p1, p0, L㺴/㚬/உ/䂻/㭲/உ;->㱱:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object p1

    invoke-virtual {p0, p1}, L㺴/㚬/உ/䂻/㭲/உ;->onStateChange([I)Z

    :cond_0
    return-void
.end method

.method public setTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1

    iget-object v0, p0, L㺴/㚬/உ/䂻/㭲/உ;->Ӣ:Landroid/graphics/PorterDuff$Mode;

    if-eq v0, p1, :cond_0

    iput-object p1, p0, L㺴/㚬/உ/䂻/㭲/உ;->Ӣ:Landroid/graphics/PorterDuff$Mode;

    iget-object v0, p0, L㺴/㚬/உ/䂻/㭲/உ;->㱱:Landroid/content/res/ColorStateList;

    invoke-static {p0, v0, p1}, L㺴/㚬/உ/䂻/㲧/உ;->உ(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object p1

    iput-object p1, p0, L㺴/㚬/உ/䂻/㭲/உ;->ᙏ:Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {p0}, L㺴/㚬/உ/䂻/ᱹ/ᆻ;->invalidateSelf()V

    :cond_0
    return-void
.end method

.method public setVisible(ZZ)Z
    .locals 2

    invoke-super {p0, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    move-result v0

    invoke-virtual {p0}, L㺴/㚬/உ/䂻/㭲/உ;->ℭ()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, L㺴/㚬/உ/䂻/㭲/உ;->ᰘ:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    move-result v1

    or-int/2addr v0, v1

    :cond_0
    invoke-virtual {p0}, L㺴/㚬/உ/䂻/㭲/உ;->䃤()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, L㺴/㚬/உ/䂻/㭲/உ;->ⵦ:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    move-result v1

    or-int/2addr v0, v1

    :cond_1
    invoke-virtual {p0}, L㺴/㚬/உ/䂻/㭲/உ;->䉁()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, L㺴/㚬/உ/䂻/㭲/உ;->㭢:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    move-result p1

    or-int/2addr v0, p1

    :cond_2
    if-eqz v0, :cond_3

    invoke-virtual {p0}, L㺴/㚬/உ/䂻/ᱹ/ᆻ;->invalidateSelf()V

    :cond_3
    return v0
.end method

.method public unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V
    .locals 0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-interface {p1, p0, p2}, Landroid/graphics/drawable/Drawable$Callback;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public Ϋ(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    invoke-virtual {p0}, L㺴/㚬/உ/䂻/㭲/உ;->ፖ()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eq v0, p1, :cond_2

    invoke-virtual {p0}, L㺴/㚬/உ/䂻/㭲/உ;->䋡()F

    move-result v1

    if-eqz p1, :cond_0

    invoke-static {p1}, L㚬/ℓ/䆀/㹖/உ;->㞘(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, L㺴/㚬/உ/䂻/㭲/உ;->ᰘ:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, L㺴/㚬/உ/䂻/㭲/உ;->䋡()F

    move-result p1

    invoke-virtual {p0, v0}, L㺴/㚬/உ/䂻/㭲/உ;->ᨁ(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0}, L㺴/㚬/உ/䂻/㭲/உ;->ℭ()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, L㺴/㚬/உ/䂻/㭲/உ;->ᰘ:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, L㺴/㚬/உ/䂻/㭲/உ;->Ᏼ(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    invoke-virtual {p0}, L㺴/㚬/உ/䂻/ᱹ/ᆻ;->invalidateSelf()V

    cmpl-float p1, v1, p1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, L㺴/㚬/உ/䂻/㭲/உ;->ཌྷ()V

    :cond_2
    return-void
.end method

.method public final ϣ()Z
    .locals 1

    iget-boolean v0, p0, L㺴/㚬/உ/䂻/㭲/உ;->ἂ:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, L㺴/㚬/உ/䂻/㭲/உ;->ⵦ:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, L㺴/㚬/உ/䂻/㭲/உ;->㮕:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public ѝ(L㺴/㚬/உ/䂻/㹖/ℓ;)V
    .locals 0

    iput-object p1, p0, L㺴/㚬/உ/䂻/㭲/உ;->㟘:L㺴/㚬/உ/䂻/㹖/ℓ;

    return-void
.end method

.method public ѵ()L㺴/㚬/உ/䂻/㹖/ℓ;
    .locals 1

    iget-object v0, p0, L㺴/㚬/உ/䂻/㭲/உ;->㟘:L㺴/㚬/உ/䂻/㹖/ℓ;

    return-object v0
.end method

.method public final ә(Landroid/content/res/ColorStateList;)V
    .locals 1

    iget-object v0, p0, L㺴/㚬/உ/䂻/㭲/உ;->㲧:Landroid/content/res/ColorStateList;

    if-eq v0, p1, :cond_0

    iput-object p1, p0, L㺴/㚬/உ/䂻/㭲/உ;->㲧:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object p1

    invoke-virtual {p0, p1}, L㺴/㚬/உ/䂻/㭲/உ;->onStateChange([I)Z

    :cond_0
    return-void
.end method

.method public final Ӣ(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V
    .locals 3

    iget-object v0, p0, L㺴/㚬/உ/䂻/㭲/உ;->ග:Landroid/graphics/Paint;

    iget v1, p0, L㺴/㚬/உ/䂻/㭲/உ;->ϣ:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, L㺴/㚬/உ/䂻/㭲/உ;->ග:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, L㺴/㚬/உ/䂻/㭲/உ;->䋡:Landroid/graphics/RectF;

    invoke-virtual {v0, p2}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    iget-boolean v0, p0, L㺴/㚬/உ/䂻/㭲/உ;->ἴ:Z

    if-nez v0, :cond_0

    iget-object p2, p0, L㺴/㚬/உ/䂻/㭲/உ;->䋡:Landroid/graphics/RectF;

    invoke-virtual {p0}, L㺴/㚬/உ/䂻/㭲/உ;->ᵁ()F

    move-result v0

    invoke-virtual {p0}, L㺴/㚬/உ/䂻/㭲/உ;->ᵁ()F

    move-result v1

    iget-object v2, p0, L㺴/㚬/உ/䂻/㭲/உ;->ග:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, v0, v1, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0, p2}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    iget-object p2, p0, L㺴/㚬/உ/䂻/㭲/உ;->䆍:Landroid/graphics/Path;

    invoke-virtual {p0, v0, p2}, L㺴/㚬/உ/䂻/ᱹ/ᆻ;->ᆻ(Landroid/graphics/RectF;Landroid/graphics/Path;)V

    iget-object p2, p0, L㺴/㚬/உ/䂻/㭲/உ;->ග:Landroid/graphics/Paint;

    iget-object v0, p0, L㺴/㚬/உ/䂻/㭲/உ;->䆍:Landroid/graphics/Path;

    invoke-virtual {p0}, L㺴/㚬/உ/䂻/ᱹ/ᆻ;->ḙ()Landroid/graphics/RectF;

    move-result-object v1

    invoke-super {p0, p1, p2, v0, v1}, L㺴/㚬/உ/䂻/ᱹ/ᆻ;->ᓭ(Landroid/graphics/Canvas;Landroid/graphics/Paint;Landroid/graphics/Path;Landroid/graphics/RectF;)V

    :goto_0
    return-void
.end method

.method public Ձ(I)V
    .locals 1

    iget-object v0, p0, L㺴/㚬/உ/䂻/㭲/உ;->Ổ:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    invoke-virtual {p0, p1}, L㺴/㚬/உ/䂻/㭲/உ;->ḑ(F)V

    return-void
.end method

.method public ڪ(F)V
    .locals 1

    iget v0, p0, L㺴/㚬/உ/䂻/㭲/உ;->ᣝ:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    iput p1, p0, L㺴/㚬/உ/䂻/㭲/உ;->ᣝ:F

    invoke-virtual {p0}, L㺴/㚬/உ/䂻/ᱹ/ᆻ;->invalidateSelf()V

    invoke-virtual {p0}, L㺴/㚬/உ/䂻/㭲/உ;->ཌྷ()V

    :cond_0
    return-void
.end method

.method public ܕ(I)V
    .locals 1

    iget-object v0, p0, L㺴/㚬/உ/䂻/㭲/உ;->Ổ:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    invoke-virtual {p0, p1}, L㺴/㚬/உ/䂻/㭲/உ;->ᰊ(Z)V

    return-void
.end method

.method public ܙ(I)V
    .locals 1

    iget-object v0, p0, L㺴/㚬/உ/䂻/㭲/உ;->Ổ:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    invoke-virtual {p0, p1}, L㺴/㚬/உ/䂻/㭲/உ;->წ(F)V

    return-void
.end method

.method public ܯ(I)V
    .locals 1

    iget-object v0, p0, L㺴/㚬/உ/䂻/㭲/உ;->Ổ:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    invoke-virtual {p0, p1}, L㺴/㚬/உ/䂻/㭲/உ;->ㆡ(F)V

    return-void
.end method

.method public ނ(I)V
    .locals 1

    iget-object v0, p0, L㺴/㚬/உ/䂻/㭲/உ;->Ổ:Landroid/content/Context;

    invoke-static {v0, p1}, L㺴/㚬/உ/䂻/㹖/ℓ;->㚬(Landroid/content/Context;I)L㺴/㚬/உ/䂻/㹖/ℓ;

    move-result-object p1

    invoke-virtual {p0, p1}, L㺴/㚬/உ/䂻/㭲/உ;->ѝ(L㺴/㚬/உ/䂻/㹖/ℓ;)V

    return-void
.end method

.method public ޒ()F
    .locals 1

    iget v0, p0, L㺴/㚬/உ/䂻/㭲/உ;->ᣝ:F

    return v0
.end method

.method public ࢫ(Z)V
    .locals 1

    iget-boolean v0, p0, L㺴/㚬/உ/䂻/㭲/உ;->ἂ:Z

    if-eq v0, p1, :cond_2

    invoke-virtual {p0}, L㺴/㚬/உ/䂻/㭲/உ;->䃤()Z

    move-result v0

    iput-boolean p1, p0, L㺴/㚬/உ/䂻/㭲/உ;->ἂ:Z

    invoke-virtual {p0}, L㺴/㚬/உ/䂻/㭲/உ;->䃤()Z

    move-result p1

    if-eq v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    if-eqz p1, :cond_1

    iget-object p1, p0, L㺴/㚬/உ/䂻/㭲/உ;->ⵦ:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, L㺴/㚬/உ/䂻/㭲/உ;->Ᏼ(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    :cond_1
    iget-object p1, p0, L㺴/㚬/உ/䂻/㭲/உ;->ⵦ:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, L㺴/㚬/உ/䂻/㭲/உ;->ᨁ(Landroid/graphics/drawable/Drawable;)V

    :goto_1
    invoke-virtual {p0}, L㺴/㚬/உ/䂻/ᱹ/ᆻ;->invalidateSelf()V

    invoke-virtual {p0}, L㺴/㚬/உ/䂻/㭲/உ;->ཌྷ()V

    :cond_2
    return-void
.end method

.method public क()F
    .locals 2

    invoke-virtual {p0}, L㺴/㚬/உ/䂻/㭲/உ;->䉁()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, L㺴/㚬/உ/䂻/㭲/உ;->ᣦ:F

    iget v1, p0, L㺴/㚬/உ/䂻/㭲/உ;->ỷ:F

    add-float/2addr v0, v1

    iget v1, p0, L㺴/㚬/உ/䂻/㭲/உ;->㽛:F

    add-float/2addr v0, v1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final ध(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V
    .locals 5

    invoke-virtual {p0}, L㺴/㚬/உ/䂻/㭲/உ;->ℭ()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, L㺴/㚬/உ/䂻/㭲/உ;->䋡:Landroid/graphics/RectF;

    invoke-virtual {p0, p2, v0}, L㺴/㚬/உ/䂻/㭲/உ;->㠭(Landroid/graphics/Rect;Landroid/graphics/RectF;)V

    iget-object p2, p0, L㺴/㚬/உ/䂻/㭲/உ;->䋡:Landroid/graphics/RectF;

    iget v0, p2, Landroid/graphics/RectF;->left:F

    iget p2, p2, Landroid/graphics/RectF;->top:F

    invoke-virtual {p1, v0, p2}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v1, p0, L㺴/㚬/உ/䂻/㭲/உ;->ᰘ:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, L㺴/㚬/உ/䂻/㭲/உ;->䋡:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    float-to-int v2, v2

    iget-object v3, p0, L㺴/㚬/உ/䂻/㭲/உ;->䋡:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    float-to-int v3, v3

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v4, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v1, p0, L㺴/㚬/உ/䂻/㭲/உ;->ᰘ:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    neg-float v0, v0

    neg-float p2, p2

    invoke-virtual {p1, v0, p2}, Landroid/graphics/Canvas;->translate(FF)V

    :cond_0
    return-void
.end method

.method public ঔ(I)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, L㺴/㚬/உ/䂻/㭲/உ;->Ổ:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    invoke-virtual {p0, p1}, L㺴/㚬/உ/䂻/㭲/உ;->ም(F)V

    return-void
.end method

.method public ਚ(F)V
    .locals 1

    iget v0, p0, L㺴/㚬/உ/䂻/㭲/உ;->ỷ:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    iput p1, p0, L㺴/㚬/உ/䂻/㭲/உ;->ỷ:F

    invoke-virtual {p0}, L㺴/㚬/உ/䂻/ᱹ/ᆻ;->invalidateSelf()V

    invoke-virtual {p0}, L㺴/㚬/உ/䂻/㭲/உ;->䉁()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, L㺴/㚬/உ/䂻/㭲/உ;->ཌྷ()V

    :cond_0
    return-void
.end method

.method public ਣ(F)V
    .locals 1

    iget v0, p0, L㺴/㚬/உ/䂻/㭲/உ;->ᣑ:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    invoke-virtual {p0}, L㺴/㚬/உ/䂻/㭲/உ;->䋡()F

    move-result v0

    iput p1, p0, L㺴/㚬/உ/䂻/㭲/உ;->ᣑ:F

    invoke-virtual {p0}, L㺴/㚬/உ/䂻/㭲/உ;->䋡()F

    move-result p1

    invoke-virtual {p0}, L㺴/㚬/உ/䂻/ᱹ/ᆻ;->invalidateSelf()V

    cmpl-float p1, v0, p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, L㺴/㚬/உ/䂻/㭲/உ;->ཌྷ()V

    :cond_0
    return-void
.end method

.method public final ਬ(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V
    .locals 5

    invoke-virtual {p0}, L㺴/㚬/உ/䂻/㭲/உ;->䃤()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, L㺴/㚬/உ/䂻/㭲/உ;->䋡:Landroid/graphics/RectF;

    invoke-virtual {p0, p2, v0}, L㺴/㚬/உ/䂻/㭲/உ;->㠭(Landroid/graphics/Rect;Landroid/graphics/RectF;)V

    iget-object p2, p0, L㺴/㚬/உ/䂻/㭲/உ;->䋡:Landroid/graphics/RectF;

    iget v0, p2, Landroid/graphics/RectF;->left:F

    iget p2, p2, Landroid/graphics/RectF;->top:F

    invoke-virtual {p1, v0, p2}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v1, p0, L㺴/㚬/உ/䂻/㭲/உ;->ⵦ:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, L㺴/㚬/உ/䂻/㭲/உ;->䋡:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    float-to-int v2, v2

    iget-object v3, p0, L㺴/㚬/உ/䂻/㭲/உ;->䋡:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    float-to-int v3, v3

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v4, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v1, p0, L㺴/㚬/உ/䂻/㭲/உ;->ⵦ:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    neg-float v0, v0

    neg-float p2, p2

    invoke-virtual {p1, v0, p2}, Landroid/graphics/Canvas;->translate(FF)V

    :cond_0
    return-void
.end method

.method public ਮ(Landroid/content/res/ColorStateList;)V
    .locals 1

    iget-object v0, p0, L㺴/㚬/உ/䂻/㭲/உ;->ㄬ:Landroid/content/res/ColorStateList;

    if-eq v0, p1, :cond_0

    iput-object p1, p0, L㺴/㚬/உ/䂻/㭲/உ;->ㄬ:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object p1

    invoke-virtual {p0, p1}, L㺴/㚬/உ/䂻/㭲/உ;->onStateChange([I)Z

    :cond_0
    return-void
.end method

.method public ଜ()Z
    .locals 1

    iget-boolean v0, p0, L㺴/㚬/உ/䂻/㭲/உ;->㮕:Z

    return v0
.end method

.method public உ()V
    .locals 0

    invoke-virtual {p0}, L㺴/㚬/உ/䂻/㭲/உ;->ཌྷ()V

    invoke-virtual {p0}, L㺴/㚬/உ/䂻/ᱹ/ᆻ;->invalidateSelf()V

    return-void
.end method

.method public final ഏ()Landroid/graphics/ColorFilter;
    .locals 1

    iget-object v0, p0, L㺴/㚬/உ/䂻/㭲/உ;->ᶠ:Landroid/graphics/ColorFilter;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, L㺴/㚬/உ/䂻/㭲/உ;->ᙏ:Landroid/graphics/PorterDuffColorFilter;

    :goto_0
    return-object v0
.end method

.method public വ(Landroid/content/res/ColorStateList;)V
    .locals 1

    iget-object v0, p0, L㺴/㚬/உ/䂻/㭲/உ;->Ԁ:Landroid/content/res/ColorStateList;

    if-eq v0, p1, :cond_1

    iput-object p1, p0, L㺴/㚬/உ/䂻/㭲/உ;->Ԁ:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, L㺴/㚬/உ/䂻/㭲/உ;->䉁()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, L㺴/㚬/உ/䂻/㭲/உ;->㭢:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, p1}, L㚬/ℓ/䆀/㹖/உ;->ᓭ(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    :cond_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object p1

    invoke-virtual {p0, p1}, L㺴/㚬/உ/䂻/㭲/உ;->onStateChange([I)Z

    :cond_1
    return-void
.end method

.method public ඌ(Ljava/lang/CharSequence;)V
    .locals 1

    if-nez p1, :cond_0

    const-string p1, ""

    :cond_0
    iget-object v0, p0, L㺴/㚬/உ/䂻/㭲/உ;->ש:Ljava/lang/CharSequence;

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iput-object p1, p0, L㺴/㚬/உ/䂻/㭲/உ;->ש:Ljava/lang/CharSequence;

    iget-object p1, p0, L㺴/㚬/உ/䂻/㭲/உ;->ⶬ:L㺴/㚬/உ/䂻/ᾦ/䆀;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, L㺴/㚬/உ/䂻/ᾦ/䆀;->ㄏ(Z)V

    invoke-virtual {p0}, L㺴/㚬/உ/䂻/ᱹ/ᆻ;->invalidateSelf()V

    invoke-virtual {p0}, L㺴/㚬/உ/䂻/㭲/உ;->ཌྷ()V

    :cond_1
    return-void
.end method

.method public ཌྷ()V
    .locals 1

    iget-object v0, p0, L㺴/㚬/உ/䂻/㭲/உ;->䆚:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, L㺴/㚬/உ/䂻/㭲/உ$உ;

    if-eqz v0, :cond_0

    invoke-interface {v0}, L㺴/㚬/உ/䂻/㭲/உ$உ;->உ()V

    :cond_0
    return-void
.end method

.method public ၶ()F
    .locals 1

    iget v0, p0, L㺴/㚬/உ/䂻/㭲/உ;->ᣑ:F

    return v0
.end method

.method public წ(F)V
    .locals 1

    iget v0, p0, L㺴/㚬/உ/䂻/㭲/உ;->ᣦ:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    iput p1, p0, L㺴/㚬/உ/䂻/㭲/உ;->ᣦ:F

    invoke-virtual {p0}, L㺴/㚬/உ/䂻/ᱹ/ᆻ;->invalidateSelf()V

    invoke-virtual {p0}, L㺴/㚬/உ/䂻/㭲/உ;->䉁()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, L㺴/㚬/உ/䂻/㭲/உ;->ཌྷ()V

    :cond_0
    return-void
.end method

.method public ᄂ(I)V
    .locals 1

    iget-object v0, p0, L㺴/㚬/உ/䂻/㭲/உ;->Ổ:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    invoke-virtual {p0, p1}, L㺴/㚬/உ/䂻/㭲/உ;->䉄(Z)V

    return-void
.end method

.method public ᄹ(I)V
    .locals 1

    iget-object v0, p0, L㺴/㚬/உ/䂻/㭲/உ;->Ổ:Landroid/content/Context;

    invoke-static {v0, p1}, L㚬/䂻/㹖/உ/உ;->㺴(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, L㺴/㚬/உ/䂻/㭲/உ;->Ϋ(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public ᄺ()F
    .locals 1

    iget v0, p0, L㺴/㚬/உ/䂻/㭲/உ;->㲊:F

    return v0
.end method

.method public ም(F)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget v0, p0, L㺴/㚬/உ/䂻/㭲/உ;->ಋ:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    iput p1, p0, L㺴/㚬/உ/䂻/㭲/உ;->ಋ:F

    invoke-virtual {p0}, L㺴/㚬/உ/䂻/ᱹ/ᆻ;->ᾦ()L㺴/㚬/உ/䂻/ᱹ/㧦;

    move-result-object v0

    invoke-virtual {v0, p1}, L㺴/㚬/உ/䂻/ᱹ/㧦;->ม(F)L㺴/㚬/உ/䂻/ᱹ/㧦;

    move-result-object p1

    invoke-virtual {p0, p1}, L㺴/㚬/உ/䂻/ᱹ/ᆻ;->setShapeAppearanceModel(L㺴/㚬/உ/䂻/ᱹ/㧦;)V

    :cond_0
    return-void
.end method

.method public ሩ()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, L㺴/㚬/உ/䂻/㭲/உ;->㭢:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-static {v0}, L㚬/ℓ/䆀/㹖/உ;->㲝(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public ጘ()Z
    .locals 1

    iget-object v0, p0, L㺴/㚬/உ/䂻/㭲/உ;->㭢:Landroid/graphics/drawable/Drawable;

    invoke-static {v0}, L㺴/㚬/உ/䂻/㭲/உ;->㗽(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    return v0
.end method

.method public ጜ(L㺴/㚬/உ/䂻/㹖/ℓ;)V
    .locals 0

    iput-object p1, p0, L㺴/㚬/உ/䂻/㭲/உ;->ᭊ:L㺴/㚬/உ/䂻/㹖/ℓ;

    return-void
.end method

.method public ፖ()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, L㺴/㚬/உ/䂻/㭲/உ;->ᰘ:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-static {v0}, L㚬/ℓ/䆀/㹖/உ;->㲝(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public final Ꭸ([I[I)Z
    .locals 6

    invoke-super {p0, p1}, L㺴/㚬/உ/䂻/ᱹ/ᆻ;->onStateChange([I)Z

    move-result v0

    iget-object v1, p0, L㺴/㚬/உ/䂻/㭲/உ;->㲧:Landroid/content/res/ColorStateList;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget v3, p0, L㺴/㚬/உ/䂻/㭲/உ;->क:I

    invoke-virtual {v1, p1, v3}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iget v3, p0, L㺴/㚬/உ/䂻/㭲/உ;->क:I

    const/4 v4, 0x1

    if-eq v3, v1, :cond_1

    iput v1, p0, L㺴/㚬/உ/䂻/㭲/உ;->क:I

    const/4 v0, 0x1

    :cond_1
    iget-object v3, p0, L㺴/㚬/உ/䂻/㭲/உ;->ㄬ:Landroid/content/res/ColorStateList;

    if-eqz v3, :cond_2

    iget v5, p0, L㺴/㚬/உ/䂻/㭲/உ;->ⷜ:I

    invoke-virtual {v3, p1, v5}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v3

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    :goto_1
    iget v5, p0, L㺴/㚬/உ/䂻/㭲/உ;->ⷜ:I

    if-eq v5, v3, :cond_3

    iput v3, p0, L㺴/㚬/உ/䂻/㭲/உ;->ⷜ:I

    const/4 v0, 0x1

    :cond_3
    invoke-static {v1, v3}, L㺴/㚬/உ/䂻/㖪/உ;->ḓ(II)I

    move-result v1

    iget v3, p0, L㺴/㚬/உ/䂻/㭲/உ;->䃻:I

    if-eq v3, v1, :cond_4

    const/4 v3, 0x1

    goto :goto_2

    :cond_4
    const/4 v3, 0x0

    :goto_2
    invoke-virtual {p0}, L㺴/㚬/உ/䂻/ᱹ/ᆻ;->ม()Landroid/content/res/ColorStateList;

    move-result-object v5

    if-nez v5, :cond_5

    const/4 v5, 0x1

    goto :goto_3

    :cond_5
    const/4 v5, 0x0

    :goto_3
    or-int/2addr v3, v5

    if-eqz v3, :cond_6

    iput v1, p0, L㺴/㚬/உ/䂻/㭲/உ;->䃻:I

    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p0, v0}, L㺴/㚬/உ/䂻/ᱹ/ᆻ;->ᭊ(Landroid/content/res/ColorStateList;)V

    const/4 v0, 0x1

    :cond_6
    iget-object v1, p0, L㺴/㚬/உ/䂻/㭲/உ;->ᾦ:Landroid/content/res/ColorStateList;

    if-eqz v1, :cond_7

    iget v3, p0, L㺴/㚬/உ/䂻/㭲/உ;->ᗼ:I

    invoke-virtual {v1, p1, v3}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v1

    goto :goto_4

    :cond_7
    const/4 v1, 0x0

    :goto_4
    iget v3, p0, L㺴/㚬/உ/䂻/㭲/உ;->ᗼ:I

    if-eq v3, v1, :cond_8

    iput v1, p0, L㺴/㚬/உ/䂻/㭲/உ;->ᗼ:I

    const/4 v0, 0x1

    :cond_8
    iget-object v1, p0, L㺴/㚬/உ/䂻/㭲/உ;->ᓟ:Landroid/content/res/ColorStateList;

    if-eqz v1, :cond_9

    invoke-static {p1}, L㺴/㚬/உ/䂻/㨃/䂻;->䂻([I)Z

    move-result v1

    if-eqz v1, :cond_9

    iget-object v1, p0, L㺴/㚬/உ/䂻/㭲/உ;->ᓟ:Landroid/content/res/ColorStateList;

    iget v3, p0, L㺴/㚬/உ/䂻/㭲/உ;->ϣ:I

    invoke-virtual {v1, p1, v3}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v1

    goto :goto_5

    :cond_9
    const/4 v1, 0x0

    :goto_5
    iget v3, p0, L㺴/㚬/உ/䂻/㭲/உ;->ϣ:I

    if-eq v3, v1, :cond_a

    iput v1, p0, L㺴/㚬/உ/䂻/㭲/உ;->ϣ:I

    iget-boolean v1, p0, L㺴/㚬/உ/䂻/㭲/உ;->㴩:Z

    if-eqz v1, :cond_a

    const/4 v0, 0x1

    :cond_a
    iget-object v1, p0, L㺴/㚬/உ/䂻/㭲/உ;->ⶬ:L㺴/㚬/உ/䂻/ᾦ/䆀;

    invoke-virtual {v1}, L㺴/㚬/உ/䂻/ᾦ/䆀;->㺴()L㺴/㚬/உ/䂻/ש/㺴;

    move-result-object v1

    if-eqz v1, :cond_b

    iget-object v1, p0, L㺴/㚬/உ/䂻/㭲/உ;->ⶬ:L㺴/㚬/உ/䂻/ᾦ/䆀;

    invoke-virtual {v1}, L㺴/㚬/உ/䂻/ᾦ/䆀;->㺴()L㺴/㚬/உ/䂻/ש/㺴;

    move-result-object v1

    iget-object v1, v1, L㺴/㚬/உ/䂻/ש/㺴;->䂻:Landroid/content/res/ColorStateList;

    if-eqz v1, :cond_b

    iget-object v1, p0, L㺴/㚬/உ/䂻/㭲/உ;->ⶬ:L㺴/㚬/உ/䂻/ᾦ/䆀;

    invoke-virtual {v1}, L㺴/㚬/உ/䂻/ᾦ/䆀;->㺴()L㺴/㚬/உ/䂻/ש/㺴;

    move-result-object v1

    iget-object v1, v1, L㺴/㚬/உ/䂻/ש/㺴;->䂻:Landroid/content/res/ColorStateList;

    iget v3, p0, L㺴/㚬/உ/䂻/㭲/உ;->ᨧ:I

    invoke-virtual {v1, p1, v3}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v1

    goto :goto_6

    :cond_b
    const/4 v1, 0x0

    :goto_6
    iget v3, p0, L㺴/㚬/உ/䂻/㭲/உ;->ᨧ:I

    if-eq v3, v1, :cond_c

    iput v1, p0, L㺴/㚬/உ/䂻/㭲/உ;->ᨧ:I

    const/4 v0, 0x1

    :cond_c
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object v1

    const v3, 0x10100a0

    invoke-static {v1, v3}, L㺴/㚬/உ/䂻/㭲/உ;->β([II)Z

    move-result v1

    if-eqz v1, :cond_d

    iget-boolean v1, p0, L㺴/㚬/உ/䂻/㭲/உ;->㮕:Z

    if-eqz v1, :cond_d

    const/4 v1, 0x1

    goto :goto_7

    :cond_d
    const/4 v1, 0x0

    :goto_7
    iget-boolean v3, p0, L㺴/㚬/உ/䂻/㭲/உ;->ਬ:Z

    if-eq v3, v1, :cond_f

    iget-object v3, p0, L㺴/㚬/உ/䂻/㭲/உ;->ⵦ:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_f

    invoke-virtual {p0}, L㺴/㚬/உ/䂻/㭲/உ;->䋡()F

    move-result v0

    iput-boolean v1, p0, L㺴/㚬/உ/䂻/㭲/உ;->ਬ:Z

    invoke-virtual {p0}, L㺴/㚬/உ/䂻/㭲/உ;->䋡()F

    move-result v1

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    const/4 v1, 0x1

    goto :goto_8

    :cond_e
    const/4 v0, 0x1

    :cond_f
    const/4 v1, 0x0

    :goto_8
    iget-object v3, p0, L㺴/㚬/உ/䂻/㭲/உ;->㱱:Landroid/content/res/ColorStateList;

    if-eqz v3, :cond_10

    iget v5, p0, L㺴/㚬/உ/䂻/㭲/உ;->Ꭿ:I

    invoke-virtual {v3, p1, v5}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v3

    goto :goto_9

    :cond_10
    const/4 v3, 0x0

    :goto_9
    iget v5, p0, L㺴/㚬/உ/䂻/㭲/உ;->Ꭿ:I

    if-eq v5, v3, :cond_11

    iput v3, p0, L㺴/㚬/உ/䂻/㭲/உ;->Ꭿ:I

    iget-object v0, p0, L㺴/㚬/உ/䂻/㭲/உ;->㱱:Landroid/content/res/ColorStateList;

    iget-object v3, p0, L㺴/㚬/உ/䂻/㭲/உ;->Ӣ:Landroid/graphics/PorterDuff$Mode;

    invoke-static {p0, v0, v3}, L㺴/㚬/உ/䂻/㲧/உ;->உ(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object v0

    iput-object v0, p0, L㺴/㚬/உ/䂻/㭲/உ;->ᙏ:Landroid/graphics/PorterDuffColorFilter;

    goto :goto_a

    :cond_11
    move v4, v0

    :goto_a
    iget-object v0, p0, L㺴/㚬/உ/䂻/㭲/உ;->ᰘ:Landroid/graphics/drawable/Drawable;

    invoke-static {v0}, L㺴/㚬/உ/䂻/㭲/உ;->㗽(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p0, L㺴/㚬/உ/䂻/㭲/உ;->ᰘ:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v0

    or-int/2addr v4, v0

    :cond_12
    iget-object v0, p0, L㺴/㚬/உ/䂻/㭲/உ;->ⵦ:Landroid/graphics/drawable/Drawable;

    invoke-static {v0}, L㺴/㚬/உ/䂻/㭲/உ;->㗽(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, p0, L㺴/㚬/உ/䂻/㭲/உ;->ⵦ:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v0

    or-int/2addr v4, v0

    :cond_13
    iget-object v0, p0, L㺴/㚬/உ/䂻/㭲/உ;->㭢:Landroid/graphics/drawable/Drawable;

    invoke-static {v0}, L㺴/㚬/உ/䂻/㭲/உ;->㗽(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-eqz v0, :cond_14

    array-length v0, p1

    array-length v3, p2

    add-int/2addr v0, v3

    new-array v0, v0, [I

    array-length v3, p1

    invoke-static {p1, v2, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length p1, p1

    array-length v3, p2

    invoke-static {p2, v2, v0, p1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p1, p0, L㺴/㚬/உ/䂻/㭲/உ;->㭢:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result p1

    or-int/2addr v4, p1

    :cond_14
    sget-boolean p1, L㺴/㚬/உ/䂻/㨃/䂻;->உ:Z

    if-eqz p1, :cond_15

    iget-object p1, p0, L㺴/㚬/உ/䂻/㭲/உ;->Խ:Landroid/graphics/drawable/Drawable;

    invoke-static {p1}, L㺴/㚬/உ/䂻/㭲/உ;->㗽(Landroid/graphics/drawable/Drawable;)Z

    move-result p1

    if-eqz p1, :cond_15

    iget-object p1, p0, L㺴/㚬/உ/䂻/㭲/உ;->Խ:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, p2}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result p1

    or-int/2addr v4, p1

    :cond_15
    if-eqz v4, :cond_16

    invoke-virtual {p0}, L㺴/㚬/உ/䂻/ᱹ/ᆻ;->invalidateSelf()V

    :cond_16
    if-eqz v1, :cond_17

    invoke-virtual {p0}, L㺴/㚬/உ/䂻/㭲/உ;->ཌྷ()V

    :cond_17
    return v4
.end method

.method public final Ꭿ(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V
    .locals 3

    iget-boolean v0, p0, L㺴/㚬/உ/䂻/㭲/உ;->ἴ:Z

    if-nez v0, :cond_0

    iget-object v0, p0, L㺴/㚬/உ/䂻/㭲/உ;->ග:Landroid/graphics/Paint;

    iget v1, p0, L㺴/㚬/உ/䂻/㭲/உ;->ⷜ:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, L㺴/㚬/உ/䂻/㭲/உ;->ග:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, L㺴/㚬/உ/䂻/㭲/உ;->ග:Landroid/graphics/Paint;

    invoke-virtual {p0}, L㺴/㚬/உ/䂻/㭲/உ;->ഏ()Landroid/graphics/ColorFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    iget-object v0, p0, L㺴/㚬/உ/䂻/㭲/உ;->䋡:Landroid/graphics/RectF;

    invoke-virtual {v0, p2}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    iget-object p2, p0, L㺴/㚬/உ/䂻/㭲/உ;->䋡:Landroid/graphics/RectF;

    invoke-virtual {p0}, L㺴/㚬/உ/䂻/㭲/உ;->ᵁ()F

    move-result v0

    invoke-virtual {p0}, L㺴/㚬/உ/䂻/㭲/உ;->ᵁ()F

    move-result v1

    iget-object v2, p0, L㺴/㚬/உ/䂻/㭲/உ;->ග:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, v0, v1, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method public final Ᏼ(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    invoke-static {p0}, L㚬/ℓ/䆀/㹖/உ;->䆀(Landroid/graphics/drawable/Drawable;)I

    move-result v0

    invoke-static {p1, v0}, L㚬/ℓ/䆀/㹖/உ;->ἥ(Landroid/graphics/drawable/Drawable;I)Z

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getLevel()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    iget-object v0, p0, L㺴/㚬/உ/䂻/㭲/உ;->㭢:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_2

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, L㺴/㚬/உ/䂻/㭲/உ;->䆋()[I

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_1
    iget-object v0, p0, L㺴/㚬/உ/䂻/㭲/உ;->Ԁ:Landroid/content/res/ColorStateList;

    invoke-static {p1, v0}, L㚬/ℓ/䆀/㹖/உ;->ᓭ(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    return-void

    :cond_2
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_3
    iget-object v0, p0, L㺴/㚬/உ/䂻/㭲/உ;->ᰘ:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_4

    iget-boolean p1, p0, L㺴/㚬/உ/䂻/㭲/உ;->ർ:Z

    if-eqz p1, :cond_4

    iget-object p1, p0, L㺴/㚬/உ/䂻/㭲/உ;->ᱹ:Landroid/content/res/ColorStateList;

    invoke-static {v0, p1}, L㚬/ℓ/䆀/㹖/உ;->ᓭ(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    :cond_4
    return-void
.end method

.method public final ᐇ()V
    .locals 1

    iget-boolean v0, p0, L㺴/㚬/உ/䂻/㭲/உ;->㴩:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, L㺴/㚬/உ/䂻/㭲/உ;->㰫:Landroid/content/res/ColorStateList;

    invoke-static {v0}, L㺴/㚬/உ/䂻/㨃/䂻;->உ(Landroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, L㺴/㚬/உ/䂻/㭲/உ;->ᓟ:Landroid/content/res/ColorStateList;

    return-void
.end method

.method public ᐶ(I)V
    .locals 1

    iget-object v0, p0, L㺴/㚬/உ/䂻/㭲/உ;->Ổ:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    invoke-virtual {p0, p1}, L㺴/㚬/உ/䂻/㭲/உ;->ࢫ(Z)V

    return-void
.end method

.method public ᑈ(Landroid/content/res/ColorStateList;)V
    .locals 1

    iget-object v0, p0, L㺴/㚬/உ/䂻/㭲/உ;->ᾦ:Landroid/content/res/ColorStateList;

    if-eq v0, p1, :cond_1

    iput-object p1, p0, L㺴/㚬/உ/䂻/㭲/உ;->ᾦ:Landroid/content/res/ColorStateList;

    iget-boolean v0, p0, L㺴/㚬/உ/䂻/㭲/உ;->ἴ:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, L㺴/㚬/உ/䂻/ᱹ/ᆻ;->ᣦ(Landroid/content/res/ColorStateList;)V

    :cond_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object p1

    invoke-virtual {p0, p1}, L㺴/㚬/உ/䂻/㭲/உ;->onStateChange([I)Z

    :cond_1
    return-void
.end method

.method public ᑕ(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    iget-object v0, p0, L㺴/㚬/உ/䂻/㭲/உ;->ⵦ:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_0

    invoke-virtual {p0}, L㺴/㚬/உ/䂻/㭲/உ;->䋡()F

    move-result v0

    iput-object p1, p0, L㺴/㚬/உ/䂻/㭲/உ;->ⵦ:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, L㺴/㚬/உ/䂻/㭲/உ;->䋡()F

    move-result p1

    iget-object v1, p0, L㺴/㚬/உ/䂻/㭲/உ;->ⵦ:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v1}, L㺴/㚬/உ/䂻/㭲/உ;->ᨁ(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, L㺴/㚬/உ/䂻/㭲/உ;->ⵦ:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v1}, L㺴/㚬/உ/䂻/㭲/உ;->Ᏼ(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0}, L㺴/㚬/உ/䂻/ᱹ/ᆻ;->invalidateSelf()V

    cmpl-float p1, v0, p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, L㺴/㚬/உ/䂻/㭲/உ;->ཌྷ()V

    :cond_0
    return-void
.end method

.method public ᓇ(Landroid/text/TextUtils$TruncateAt;)V
    .locals 0

    iput-object p1, p0, L㺴/㚬/உ/䂻/㭲/உ;->ᵁ:Landroid/text/TextUtils$TruncateAt;

    return-void
.end method

.method public ᓓ(L㺴/㚬/உ/䂻/ש/㺴;)V
    .locals 2

    iget-object v0, p0, L㺴/㚬/உ/䂻/㭲/உ;->ⶬ:L㺴/㚬/உ/䂻/ᾦ/䆀;

    iget-object v1, p0, L㺴/㚬/உ/䂻/㭲/உ;->Ổ:Landroid/content/Context;

    invoke-virtual {v0, p1, v1}, L㺴/㚬/உ/䂻/ᾦ/䆀;->ℓ(L㺴/㚬/உ/䂻/ש/㺴;Landroid/content/Context;)V

    return-void
.end method

.method public ᓟ()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, L㺴/㚬/உ/䂻/㭲/உ;->ⵦ:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public ᖰ(I)V
    .locals 1

    iget-object v0, p0, L㺴/㚬/உ/䂻/㭲/உ;->Ổ:Landroid/content/Context;

    invoke-static {v0, p1}, L㚬/䂻/㹖/உ/உ;->㚬(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, L㺴/㚬/உ/䂻/㭲/உ;->ਮ(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public final ᗫ(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V
    .locals 9

    iget-object v0, p0, L㺴/㚬/உ/䂻/㭲/உ;->Ᏼ:Landroid/graphics/Paint;

    if-eqz v0, :cond_4

    const/high16 v1, -0x1000000

    const/16 v2, 0x7f

    invoke-static {v1, v2}, L㚬/ℓ/䆀/உ;->㺴(II)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, L㺴/㚬/உ/䂻/㭲/உ;->Ᏼ:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, v0}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    invoke-virtual {p0}, L㺴/㚬/உ/䂻/㭲/உ;->ℭ()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, L㺴/㚬/உ/䂻/㭲/உ;->䃤()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, L㺴/㚬/உ/䂻/㭲/உ;->䋡:Landroid/graphics/RectF;

    invoke-virtual {p0, p2, v0}, L㺴/㚬/உ/䂻/㭲/உ;->㠭(Landroid/graphics/Rect;Landroid/graphics/RectF;)V

    iget-object v0, p0, L㺴/㚬/உ/䂻/㭲/உ;->䋡:Landroid/graphics/RectF;

    iget-object v1, p0, L㺴/㚬/உ/䂻/㭲/உ;->Ᏼ:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    :cond_1
    iget-object v0, p0, L㺴/㚬/உ/䂻/㭲/உ;->ש:Ljava/lang/CharSequence;

    if-eqz v0, :cond_2

    iget v0, p2, Landroid/graphics/Rect;->left:I

    int-to-float v4, v0

    invoke-virtual {p2}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v5

    iget v0, p2, Landroid/graphics/Rect;->right:I

    int-to-float v6, v0

    invoke-virtual {p2}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v7

    iget-object v8, p0, L㺴/㚬/உ/䂻/㭲/உ;->Ᏼ:Landroid/graphics/Paint;

    move-object v3, p1

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :cond_2
    invoke-virtual {p0}, L㺴/㚬/உ/䂻/㭲/உ;->䉁()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, L㺴/㚬/உ/䂻/㭲/உ;->䋡:Landroid/graphics/RectF;

    invoke-virtual {p0, p2, v0}, L㺴/㚬/உ/䂻/㭲/உ;->䆍(Landroid/graphics/Rect;Landroid/graphics/RectF;)V

    iget-object v0, p0, L㺴/㚬/உ/䂻/㭲/உ;->䋡:Landroid/graphics/RectF;

    iget-object v1, p0, L㺴/㚬/உ/䂻/㭲/உ;->Ᏼ:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    :cond_3
    iget-object v0, p0, L㺴/㚬/உ/䂻/㭲/உ;->Ᏼ:Landroid/graphics/Paint;

    const/high16 v1, -0x10000

    invoke-static {v1, v2}, L㚬/ℓ/䆀/உ;->㺴(II)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, L㺴/㚬/உ/䂻/㭲/உ;->䋡:Landroid/graphics/RectF;

    invoke-virtual {p0, p2, v0}, L㺴/㚬/உ/䂻/㭲/உ;->ἃ(Landroid/graphics/Rect;Landroid/graphics/RectF;)V

    iget-object v0, p0, L㺴/㚬/உ/䂻/㭲/உ;->䋡:Landroid/graphics/RectF;

    iget-object v1, p0, L㺴/㚬/உ/䂻/㭲/உ;->Ᏼ:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    iget-object v0, p0, L㺴/㚬/உ/䂻/㭲/உ;->Ᏼ:Landroid/graphics/Paint;

    const v1, -0xff0100

    invoke-static {v1, v2}, L㚬/ℓ/䆀/உ;->㺴(II)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, L㺴/㚬/உ/䂻/㭲/உ;->䋡:Landroid/graphics/RectF;

    invoke-virtual {p0, p2, v0}, L㺴/㚬/உ/䂻/㭲/உ;->ⶬ(Landroid/graphics/Rect;Landroid/graphics/RectF;)V

    iget-object p2, p0, L㺴/㚬/உ/䂻/㭲/உ;->䋡:Landroid/graphics/RectF;

    iget-object v0, p0, L㺴/㚬/உ/䂻/㭲/உ;->Ᏼ:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, v0}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    :cond_4
    return-void
.end method

.method public ᗼ(Landroid/graphics/Rect;Landroid/graphics/PointF;)Landroid/graphics/Paint$Align;
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p2, v0, v0}, Landroid/graphics/PointF;->set(FF)V

    sget-object v0, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    iget-object v1, p0, L㺴/㚬/உ/䂻/㭲/உ;->ש:Ljava/lang/CharSequence;

    if-eqz v1, :cond_1

    iget v0, p0, L㺴/㚬/உ/䂻/㭲/உ;->ᣝ:F

    invoke-virtual {p0}, L㺴/㚬/உ/䂻/㭲/உ;->䋡()F

    move-result v1

    add-float/2addr v0, v1

    iget v1, p0, L㺴/㚬/உ/䂻/㭲/உ;->㲊:F

    add-float/2addr v0, v1

    invoke-static {p0}, L㚬/ℓ/䆀/㹖/உ;->䆀(Landroid/graphics/drawable/Drawable;)I

    move-result v1

    if-nez v1, :cond_0

    iget v1, p1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    add-float/2addr v1, v0

    iput v1, p2, Landroid/graphics/PointF;->x:F

    sget-object v0, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    goto :goto_0

    :cond_0
    iget v1, p1, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    sub-float/2addr v1, v0

    iput v1, p2, Landroid/graphics/PointF;->x:F

    sget-object v0, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    :goto_0
    invoke-virtual {p1}, Landroid/graphics/Rect;->centerY()I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {p0}, L㺴/㚬/உ/䂻/㭲/உ;->䃻()F

    move-result v1

    sub-float/2addr p1, v1

    iput p1, p2, Landroid/graphics/PointF;->y:F

    :cond_1
    return-object v0
.end method

.method public final ᙏ(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V
    .locals 3

    iget-boolean v0, p0, L㺴/㚬/உ/䂻/㭲/உ;->ἴ:Z

    if-nez v0, :cond_0

    iget-object v0, p0, L㺴/㚬/உ/䂻/㭲/உ;->ග:Landroid/graphics/Paint;

    iget v1, p0, L㺴/㚬/உ/䂻/㭲/உ;->क:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, L㺴/㚬/உ/䂻/㭲/உ;->ග:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, L㺴/㚬/உ/䂻/㭲/உ;->䋡:Landroid/graphics/RectF;

    invoke-virtual {v0, p2}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    iget-object p2, p0, L㺴/㚬/உ/䂻/㭲/உ;->䋡:Landroid/graphics/RectF;

    invoke-virtual {p0}, L㺴/㚬/உ/䂻/㭲/உ;->ᵁ()F

    move-result v0

    invoke-virtual {p0}, L㺴/㚬/உ/䂻/㭲/உ;->ᵁ()F

    move-result v1

    iget-object v2, p0, L㺴/㚬/உ/䂻/㭲/உ;->ග:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, v0, v1, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method public ᡳ(Z)V
    .locals 0

    iput-boolean p1, p0, L㺴/㚬/உ/䂻/㭲/உ;->ᴇ:Z

    return-void
.end method

.method public ᢪ(I)V
    .locals 1

    iget-object v0, p0, L㺴/㚬/உ/䂻/㭲/உ;->Ổ:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    invoke-virtual {p0, p1}, L㺴/㚬/உ/䂻/㭲/உ;->䉏(F)V

    return-void
.end method

.method public ᤍ(I)V
    .locals 1

    iget-object v0, p0, L㺴/㚬/உ/䂻/㭲/உ;->Ổ:Landroid/content/Context;

    invoke-static {v0, p1}, L㚬/䂻/㹖/உ/உ;->㚬(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, L㺴/㚬/உ/䂻/㭲/உ;->ᑈ(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public ᤜ(I)V
    .locals 1

    iget-object v0, p0, L㺴/㚬/உ/䂻/㭲/உ;->Ổ:Landroid/content/Context;

    invoke-static {v0, p1}, L㚬/䂻/㹖/உ/உ;->㺴(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, L㺴/㚬/உ/䂻/㭲/உ;->ᑕ(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public ᥟ()F
    .locals 1

    iget v0, p0, L㺴/㚬/உ/䂻/㭲/உ;->ỷ:F

    return v0
.end method

.method public final ᨁ(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    :cond_0
    return-void
.end method

.method public ᯕ(I)V
    .locals 1

    iget-object v0, p0, L㺴/㚬/உ/䂻/㭲/உ;->Ổ:Landroid/content/Context;

    invoke-static {v0, p1}, L㚬/䂻/㹖/உ/உ;->㚬(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, L㺴/㚬/உ/䂻/㭲/உ;->Ṻ(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public ᰊ(Z)V
    .locals 1

    iget-boolean v0, p0, L㺴/㚬/உ/䂻/㭲/உ;->㮕:Z

    if-eq v0, p1, :cond_1

    iput-boolean p1, p0, L㺴/㚬/உ/䂻/㭲/உ;->㮕:Z

    invoke-virtual {p0}, L㺴/㚬/உ/䂻/㭲/உ;->䋡()F

    move-result v0

    if-nez p1, :cond_0

    iget-boolean p1, p0, L㺴/㚬/உ/䂻/㭲/உ;->ਬ:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    iput-boolean p1, p0, L㺴/㚬/உ/䂻/㭲/உ;->ਬ:Z

    :cond_0
    invoke-virtual {p0}, L㺴/㚬/உ/䂻/㭲/உ;->䋡()F

    move-result p1

    invoke-virtual {p0}, L㺴/㚬/உ/䂻/ᱹ/ᆻ;->invalidateSelf()V

    cmpl-float p1, v0, p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, L㺴/㚬/உ/䂻/㭲/உ;->ཌྷ()V

    :cond_1
    return-void
.end method

.method public ᴇ()F
    .locals 1

    iget v0, p0, L㺴/㚬/உ/䂻/㭲/உ;->ಇ:F

    return v0
.end method

.method public ᴪ()Z
    .locals 1

    iget-boolean v0, p0, L㺴/㚬/உ/䂻/㭲/உ;->㖆:Z

    return v0
.end method

.method public ᵁ()F
    .locals 1

    iget-boolean v0, p0, L㺴/㚬/உ/䂻/㭲/உ;->ἴ:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, L㺴/㚬/உ/䂻/ᱹ/ᆻ;->ש()F

    move-result v0

    goto :goto_0

    :cond_0
    iget v0, p0, L㺴/㚬/உ/䂻/㭲/உ;->ಋ:F

    :goto_0
    return v0
.end method

.method public ᵐ([I)Z
    .locals 1

    iget-object v0, p0, L㺴/㚬/உ/䂻/㭲/உ;->ᗫ:[I

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v0

    if-nez v0, :cond_0

    iput-object p1, p0, L㺴/㚬/உ/䂻/㭲/உ;->ᗫ:[I

    invoke-virtual {p0}, L㺴/㚬/உ/䂻/㭲/உ;->䉁()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object v0

    invoke-virtual {p0, v0, p1}, L㺴/㚬/உ/䂻/㭲/உ;->Ꭸ([I[I)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public ᵹ(F)V
    .locals 1

    iget v0, p0, L㺴/㚬/உ/䂻/㭲/உ;->㲊:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    iput p1, p0, L㺴/㚬/உ/䂻/㭲/உ;->㲊:F

    invoke-virtual {p0}, L㺴/㚬/உ/䂻/ᱹ/ᆻ;->invalidateSelf()V

    invoke-virtual {p0}, L㺴/㚬/உ/䂻/㭲/உ;->ཌྷ()V

    :cond_0
    return-void
.end method

.method public final ᶠ(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V
    .locals 7

    iget v0, p0, L㺴/㚬/உ/䂻/㭲/உ;->ڈ:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    iget-boolean v0, p0, L㺴/㚬/உ/䂻/㭲/உ;->ἴ:Z

    if-nez v0, :cond_1

    iget-object v0, p0, L㺴/㚬/உ/䂻/㭲/உ;->ග:Landroid/graphics/Paint;

    iget v1, p0, L㺴/㚬/உ/䂻/㭲/உ;->ᗼ:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, L㺴/㚬/உ/䂻/㭲/உ;->ග:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-boolean v0, p0, L㺴/㚬/உ/䂻/㭲/உ;->ἴ:Z

    if-nez v0, :cond_0

    iget-object v0, p0, L㺴/㚬/உ/䂻/㭲/உ;->ග:Landroid/graphics/Paint;

    invoke-virtual {p0}, L㺴/㚬/உ/䂻/㭲/உ;->ഏ()Landroid/graphics/ColorFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    :cond_0
    iget-object v0, p0, L㺴/㚬/உ/䂻/㭲/உ;->䋡:Landroid/graphics/RectF;

    iget v1, p2, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget v2, p0, L㺴/㚬/உ/䂻/㭲/உ;->ڈ:F

    const/high16 v3, 0x40000000    # 2.0f

    div-float v4, v2, v3

    add-float/2addr v1, v4

    iget v4, p2, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    div-float v5, v2, v3

    add-float/2addr v4, v5

    iget v5, p2, Landroid/graphics/Rect;->right:I

    int-to-float v5, v5

    div-float v6, v2, v3

    sub-float/2addr v5, v6

    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    int-to-float p2, p2

    div-float/2addr v2, v3

    sub-float/2addr p2, v2

    invoke-virtual {v0, v1, v4, v5, p2}, Landroid/graphics/RectF;->set(FFFF)V

    iget p2, p0, L㺴/㚬/உ/䂻/㭲/உ;->ಋ:F

    iget v0, p0, L㺴/㚬/உ/䂻/㭲/உ;->ڈ:F

    div-float/2addr v0, v3

    sub-float/2addr p2, v0

    iget-object v0, p0, L㺴/㚬/உ/䂻/㭲/உ;->䋡:Landroid/graphics/RectF;

    iget-object v1, p0, L㺴/㚬/உ/䂻/㭲/உ;->ග:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, p2, p2, v1}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    :cond_1
    return-void
.end method

.method public ḑ(F)V
    .locals 1

    iget v0, p0, L㺴/㚬/உ/䂻/㭲/உ;->ᘚ:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    iput p1, p0, L㺴/㚬/உ/䂻/㭲/உ;->ᘚ:F

    invoke-virtual {p0}, L㺴/㚬/உ/䂻/ᱹ/ᆻ;->invalidateSelf()V

    invoke-virtual {p0}, L㺴/㚬/உ/䂻/㭲/உ;->ཌྷ()V

    :cond_0
    return-void
.end method

.method public Ḣ(I)V
    .locals 1

    iget-object v0, p0, L㺴/㚬/உ/䂻/㭲/உ;->Ổ:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    invoke-virtual {p0, p1}, L㺴/㚬/உ/䂻/㭲/உ;->ᵹ(F)V

    return-void
.end method

.method public Ṻ(Landroid/content/res/ColorStateList;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, L㺴/㚬/உ/䂻/㭲/உ;->ർ:Z

    iget-object v0, p0, L㺴/㚬/உ/䂻/㭲/உ;->ᱹ:Landroid/content/res/ColorStateList;

    if-eq v0, p1, :cond_1

    iput-object p1, p0, L㺴/㚬/உ/䂻/㭲/உ;->ᱹ:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, L㺴/㚬/உ/䂻/㭲/உ;->ℭ()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, L㺴/㚬/உ/䂻/㭲/உ;->ᰘ:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, p1}, L㚬/ℓ/䆀/㹖/உ;->ᓭ(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    :cond_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object p1

    invoke-virtual {p0, p1}, L㺴/㚬/உ/䂻/㭲/உ;->onStateChange([I)Z

    :cond_1
    return-void
.end method

.method public Ẉ(I)V
    .locals 1

    iget-object v0, p0, L㺴/㚬/உ/䂻/㭲/உ;->Ổ:Landroid/content/Context;

    invoke-static {v0, p1}, L㺴/㚬/உ/䂻/㹖/ℓ;->㚬(Landroid/content/Context;I)L㺴/㚬/உ/䂻/㹖/ℓ;

    move-result-object p1

    invoke-virtual {p0, p1}, L㺴/㚬/உ/䂻/㭲/உ;->ጜ(L㺴/㚬/உ/䂻/㹖/ℓ;)V

    return-void
.end method

.method public final ἃ(Landroid/graphics/Rect;Landroid/graphics/RectF;)V
    .locals 2

    invoke-virtual {p2, p1}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    invoke-virtual {p0}, L㺴/㚬/உ/䂻/㭲/உ;->䉁()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, L㺴/㚬/உ/䂻/㭲/உ;->ಇ:F

    iget v1, p0, L㺴/㚬/உ/䂻/㭲/உ;->㽛:F

    add-float/2addr v0, v1

    iget v1, p0, L㺴/㚬/உ/䂻/㭲/உ;->ỷ:F

    add-float/2addr v0, v1

    iget v1, p0, L㺴/㚬/உ/䂻/㭲/உ;->ᣦ:F

    add-float/2addr v0, v1

    iget v1, p0, L㺴/㚬/உ/䂻/㭲/உ;->ᘚ:F

    add-float/2addr v0, v1

    invoke-static {p0}, L㚬/ℓ/䆀/㹖/உ;->䆀(Landroid/graphics/drawable/Drawable;)I

    move-result v1

    if-nez v1, :cond_0

    iget p1, p1, Landroid/graphics/Rect;->right:I

    int-to-float p1, p1

    sub-float/2addr p1, v0

    iput p1, p2, Landroid/graphics/RectF;->right:F

    goto :goto_0

    :cond_0
    iget p1, p1, Landroid/graphics/Rect;->left:I

    int-to-float p1, p1

    add-float/2addr p1, v0

    iput p1, p2, Landroid/graphics/RectF;->left:F

    :cond_1
    :goto_0
    return-void
.end method

.method public ἇ()L㺴/㚬/உ/䂻/ש/㺴;
    .locals 1

    iget-object v0, p0, L㺴/㚬/உ/䂻/㭲/உ;->ⶬ:L㺴/㚬/உ/䂻/ᾦ/䆀;

    invoke-virtual {v0}, L㺴/㚬/உ/䂻/ᾦ/䆀;->㺴()L㺴/㚬/உ/䂻/ש/㺴;

    move-result-object v0

    return-object v0
.end method

.method public ἴ()F
    .locals 1

    iget v0, p0, L㺴/㚬/உ/䂻/㭲/உ;->㥁:F

    return v0
.end method

.method public final ℭ()Z
    .locals 1

    iget-boolean v0, p0, L㺴/㚬/உ/䂻/㭲/உ;->㨃:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, L㺴/㚬/உ/䂻/㭲/உ;->ᰘ:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final Ⅎ(Landroid/util/AttributeSet;II)V
    .locals 7

    iget-object v0, p0, L㺴/㚬/உ/䂻/㭲/உ;->Ổ:Landroid/content/Context;

    sget-object v2, L㺴/㚬/உ/䂻/㧦;->ᓭ:[I

    const/4 v6, 0x0

    new-array v5, v6, [I

    move-object v1, p1

    move v3, p2

    move v4, p3

    invoke-static/range {v0 .. v5}, L㺴/㚬/உ/䂻/ᾦ/ᆻ;->㧦(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)Landroid/content/res/TypedArray;

    move-result-object p2

    sget p3, L㺴/㚬/உ/䂻/㧦;->㲊:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p3

    iput-boolean p3, p0, L㺴/㚬/உ/䂻/㭲/உ;->ἴ:Z

    iget-object p3, p0, L㺴/㚬/உ/䂻/㭲/உ;->Ổ:Landroid/content/Context;

    sget v0, L㺴/㚬/உ/䂻/㧦;->㭢:I

    invoke-static {p3, p2, v0}, L㺴/㚬/உ/䂻/ש/㚬;->உ(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object p3

    invoke-virtual {p0, p3}, L㺴/㚬/உ/䂻/㭲/உ;->ә(Landroid/content/res/ColorStateList;)V

    iget-object p3, p0, L㺴/㚬/உ/䂻/㭲/உ;->Ổ:Landroid/content/Context;

    sget v0, L㺴/㚬/உ/䂻/㧦;->ㄬ:I

    invoke-static {p3, p2, v0}, L㺴/㚬/உ/䂻/ש/㚬;->உ(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object p3

    invoke-virtual {p0, p3}, L㺴/㚬/உ/䂻/㭲/உ;->ਮ(Landroid/content/res/ColorStateList;)V

    sget p3, L㺴/㚬/உ/䂻/㧦;->ᰘ:I

    const/4 v0, 0x0

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p3

    invoke-virtual {p0, p3}, L㺴/㚬/உ/䂻/㭲/உ;->㚫(F)V

    sget p3, L㺴/㚬/உ/䂻/㧦;->㫏:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p3

    invoke-virtual {p0, p3}, L㺴/㚬/உ/䂻/㭲/உ;->ም(F)V

    :cond_0
    iget-object p3, p0, L㺴/㚬/உ/䂻/㭲/உ;->Ổ:Landroid/content/Context;

    sget v1, L㺴/㚬/உ/䂻/㧦;->ർ:I

    invoke-static {p3, p2, v1}, L㺴/㚬/உ/䂻/ש/㚬;->உ(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object p3

    invoke-virtual {p0, p3}, L㺴/㚬/உ/䂻/㭲/உ;->ᑈ(Landroid/content/res/ColorStateList;)V

    sget p3, L㺴/㚬/உ/䂻/㧦;->㖆:I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p3

    invoke-virtual {p0, p3}, L㺴/㚬/உ/䂻/㭲/உ;->㪦(F)V

    iget-object p3, p0, L㺴/㚬/உ/䂻/㭲/உ;->Ổ:Landroid/content/Context;

    sget v1, L㺴/㚬/உ/䂻/㧦;->ᣑ:I

    invoke-static {p3, p2, v1}, L㺴/㚬/உ/䂻/ש/㚬;->உ(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object p3

    invoke-virtual {p0, p3}, L㺴/㚬/உ/䂻/㭲/உ;->䈳(Landroid/content/res/ColorStateList;)V

    sget p3, L㺴/㚬/உ/䂻/㧦;->ḙ:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object p3

    invoke-virtual {p0, p3}, L㺴/㚬/உ/䂻/㭲/உ;->ඌ(Ljava/lang/CharSequence;)V

    iget-object p3, p0, L㺴/㚬/உ/䂻/㭲/உ;->Ổ:Landroid/content/Context;

    sget v1, L㺴/㚬/உ/䂻/㧦;->ბ:I

    invoke-static {p3, p2, v1}, L㺴/㚬/உ/䂻/ש/㚬;->䆀(Landroid/content/Context;Landroid/content/res/TypedArray;I)L㺴/㚬/உ/䂻/ש/㺴;

    move-result-object p3

    invoke-virtual {p0, p3}, L㺴/㚬/உ/䂻/㭲/உ;->ᓓ(L㺴/㚬/உ/䂻/ש/㺴;)V

    sget p3, L㺴/㚬/உ/䂻/㧦;->㞘:I

    invoke-virtual {p2, p3, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p3

    const/4 v1, 0x1

    if-eq p3, v1, :cond_3

    const/4 v1, 0x2

    if-eq p3, v1, :cond_2

    const/4 v1, 0x3

    if-eq p3, v1, :cond_1

    goto :goto_1

    :cond_1
    sget-object p3, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    goto :goto_0

    :cond_2
    sget-object p3, Landroid/text/TextUtils$TruncateAt;->MIDDLE:Landroid/text/TextUtils$TruncateAt;

    goto :goto_0

    :cond_3
    sget-object p3, Landroid/text/TextUtils$TruncateAt;->START:Landroid/text/TextUtils$TruncateAt;

    :goto_0
    invoke-virtual {p0, p3}, L㺴/㚬/உ/䂻/㭲/உ;->ᓇ(Landroid/text/TextUtils$TruncateAt;)V

    :goto_1
    sget p3, L㺴/㚬/உ/䂻/㧦;->㨃:I

    invoke-virtual {p2, p3, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    invoke-virtual {p0, p3}, L㺴/㚬/உ/䂻/㭲/உ;->䉄(Z)V

    const-string p3, "http://schemas.android.com/apk/res-auto"

    if-eqz p1, :cond_4

    const-string v1, "chipIconEnabled"

    invoke-interface {p1, p3, v1}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    const-string v1, "chipIconVisible"

    invoke-interface {p1, p3, v1}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_4

    sget v1, L㺴/㚬/உ/䂻/㧦;->ڈ:I

    invoke-virtual {p2, v1, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    invoke-virtual {p0, v1}, L㺴/㚬/உ/䂻/㭲/உ;->䉄(Z)V

    :cond_4
    iget-object v1, p0, L㺴/㚬/உ/䂻/㭲/உ;->Ổ:Landroid/content/Context;

    sget v2, L㺴/㚬/உ/䂻/㧦;->ᾦ:I

    invoke-static {v1, p2, v2}, L㺴/㚬/உ/䂻/ש/㚬;->㺴(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0, v1}, L㺴/㚬/உ/䂻/㭲/உ;->Ϋ(Landroid/graphics/drawable/Drawable;)V

    sget v1, L㺴/㚬/உ/䂻/㧦;->ש:I

    invoke-virtual {p2, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, L㺴/㚬/உ/䂻/㭲/உ;->Ổ:Landroid/content/Context;

    invoke-static {v2, p2, v1}, L㺴/㚬/உ/䂻/ש/㚬;->உ(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {p0, v1}, L㺴/㚬/உ/䂻/㭲/உ;->Ṻ(Landroid/content/res/ColorStateList;)V

    :cond_5
    sget v1, L㺴/㚬/உ/䂻/㧦;->㰫:I

    invoke-virtual {p2, v1, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    invoke-virtual {p0, v1}, L㺴/㚬/உ/䂻/㭲/உ;->ㆡ(F)V

    sget v1, L㺴/㚬/உ/䂻/㧦;->ⵦ:I

    invoke-virtual {p2, v1, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    invoke-virtual {p0, v1}, L㺴/㚬/உ/䂻/㭲/உ;->㗁(Z)V

    if-eqz p1, :cond_6

    const-string v1, "closeIconEnabled"

    invoke-interface {p1, p3, v1}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6

    const-string v1, "closeIconVisible"

    invoke-interface {p1, p3, v1}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_6

    sget v1, L㺴/㚬/உ/䂻/㧦;->Ԁ:I

    invoke-virtual {p2, v1, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    invoke-virtual {p0, v1}, L㺴/㚬/உ/䂻/㭲/உ;->㗁(Z)V

    :cond_6
    iget-object v1, p0, L㺴/㚬/உ/䂻/㭲/உ;->Ổ:Landroid/content/Context;

    sget v2, L㺴/㚬/உ/䂻/㧦;->Խ:I

    invoke-static {v1, p2, v2}, L㺴/㚬/உ/䂻/ש/㚬;->㺴(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0, v1}, L㺴/㚬/உ/䂻/㭲/உ;->㳗(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, L㺴/㚬/உ/䂻/㭲/உ;->Ổ:Landroid/content/Context;

    sget v2, L㺴/㚬/உ/䂻/㧦;->ἂ:I

    invoke-static {v1, p2, v2}, L㺴/㚬/உ/䂻/ש/㚬;->உ(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {p0, v1}, L㺴/㚬/உ/䂻/㭲/உ;->വ(Landroid/content/res/ColorStateList;)V

    sget v1, L㺴/㚬/உ/䂻/㧦;->䅚:I

    invoke-virtual {p2, v1, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    invoke-virtual {p0, v1}, L㺴/㚬/உ/䂻/㭲/உ;->ਚ(F)V

    sget v1, L㺴/㚬/உ/䂻/㧦;->㖪:I

    invoke-virtual {p2, v1, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    invoke-virtual {p0, v1}, L㺴/㚬/உ/䂻/㭲/உ;->ᰊ(Z)V

    sget v1, L㺴/㚬/உ/䂻/㧦;->㲧:I

    invoke-virtual {p2, v1, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    invoke-virtual {p0, v1}, L㺴/㚬/உ/䂻/㭲/உ;->ࢫ(Z)V

    if-eqz p1, :cond_7

    const-string v1, "checkedIconEnabled"

    invoke-interface {p1, p3, v1}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_7

    const-string v1, "checkedIconVisible"

    invoke-interface {p1, p3, v1}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_7

    sget p1, L㺴/㚬/உ/䂻/㧦;->ม:I

    invoke-virtual {p2, p1, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    invoke-virtual {p0, p1}, L㺴/㚬/உ/䂻/㭲/உ;->ࢫ(Z)V

    :cond_7
    iget-object p1, p0, L㺴/㚬/உ/䂻/㭲/உ;->Ổ:Landroid/content/Context;

    sget p3, L㺴/㚬/உ/䂻/㧦;->㢏:I

    invoke-static {p1, p2, p3}, L㺴/㚬/உ/䂻/ש/㚬;->㺴(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, L㺴/㚬/உ/䂻/㭲/உ;->ᑕ(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, L㺴/㚬/உ/䂻/㭲/உ;->Ổ:Landroid/content/Context;

    sget p3, L㺴/㚬/உ/䂻/㧦;->ᘚ:I

    invoke-static {p1, p2, p3}, L㺴/㚬/உ/䂻/㹖/ℓ;->䂻(Landroid/content/Context;Landroid/content/res/TypedArray;I)L㺴/㚬/உ/䂻/㹖/ℓ;

    move-result-object p1

    invoke-virtual {p0, p1}, L㺴/㚬/உ/䂻/㭲/உ;->ጜ(L㺴/㚬/உ/䂻/㹖/ℓ;)V

    iget-object p1, p0, L㺴/㚬/உ/䂻/㭲/உ;->Ổ:Landroid/content/Context;

    sget p3, L㺴/㚬/உ/䂻/㧦;->㟘:I

    invoke-static {p1, p2, p3}, L㺴/㚬/உ/䂻/㹖/ℓ;->䂻(Landroid/content/Context;Landroid/content/res/TypedArray;I)L㺴/㚬/உ/䂻/㹖/ℓ;

    move-result-object p1

    invoke-virtual {p0, p1}, L㺴/㚬/உ/䂻/㭲/உ;->ѝ(L㺴/㚬/உ/䂻/㹖/ℓ;)V

    sget p1, L㺴/㚬/உ/䂻/㧦;->㥁:I

    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p1

    invoke-virtual {p0, p1}, L㺴/㚬/உ/䂻/㭲/உ;->ڪ(F)V

    sget p1, L㺴/㚬/உ/䂻/㧦;->ᇿ:I

    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p1

    invoke-virtual {p0, p1}, L㺴/㚬/உ/䂻/㭲/உ;->㒺(F)V

    sget p1, L㺴/㚬/உ/䂻/㧦;->ᣝ:I

    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p1

    invoke-virtual {p0, p1}, L㺴/㚬/உ/䂻/㭲/உ;->ਣ(F)V

    sget p1, L㺴/㚬/உ/䂻/㧦;->㽛:I

    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p1

    invoke-virtual {p0, p1}, L㺴/㚬/உ/䂻/㭲/உ;->ᵹ(F)V

    sget p1, L㺴/㚬/உ/䂻/㧦;->ᣦ:I

    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p1

    invoke-virtual {p0, p1}, L㺴/㚬/உ/䂻/㭲/உ;->ḑ(F)V

    sget p1, L㺴/㚬/உ/䂻/㧦;->㮕:I

    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p1

    invoke-virtual {p0, p1}, L㺴/㚬/உ/䂻/㭲/உ;->წ(F)V

    sget p1, L㺴/㚬/உ/䂻/㧦;->ỷ:I

    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p1

    invoke-virtual {p0, p1}, L㺴/㚬/உ/䂻/㭲/உ;->㠯(F)V

    sget p1, L㺴/㚬/உ/䂻/㧦;->ಋ:I

    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p1

    invoke-virtual {p0, p1}, L㺴/㚬/உ/䂻/㭲/உ;->䉏(F)V

    sget p1, L㺴/㚬/உ/䂻/㧦;->㭲:I

    const p3, 0x7fffffff

    invoke-virtual {p2, p1, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p1

    invoke-virtual {p0, p1}, L㺴/㚬/உ/䂻/㭲/உ;->㞜(I)V

    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method public Ⱉ(I)V
    .locals 1

    iget-object v0, p0, L㺴/㚬/உ/䂻/㭲/உ;->Ổ:Landroid/content/Context;

    invoke-static {v0, p1}, L㚬/䂻/㹖/உ/உ;->㚬(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, L㺴/㚬/உ/䂻/㭲/உ;->വ(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public Ⱝ()Landroid/content/res/ColorStateList;
    .locals 1

    iget-object v0, p0, L㺴/㚬/உ/䂻/㭲/உ;->ᱹ:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public Ⳟ(I)V
    .locals 1

    iget-object v0, p0, L㺴/㚬/உ/䂻/㭲/உ;->Ổ:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    invoke-virtual {p0, p1}, L㺴/㚬/உ/䂻/㭲/உ;->㪦(F)V

    return-void
.end method

.method public final ⶬ(Landroid/graphics/Rect;Landroid/graphics/RectF;)V
    .locals 3

    invoke-virtual {p2}, Landroid/graphics/RectF;->setEmpty()V

    invoke-virtual {p0}, L㺴/㚬/உ/䂻/㭲/உ;->䉁()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, L㺴/㚬/உ/䂻/㭲/உ;->ಇ:F

    iget v1, p0, L㺴/㚬/உ/䂻/㭲/உ;->㽛:F

    add-float/2addr v0, v1

    iget v1, p0, L㺴/㚬/உ/䂻/㭲/உ;->ỷ:F

    add-float/2addr v0, v1

    iget v1, p0, L㺴/㚬/உ/䂻/㭲/உ;->ᣦ:F

    add-float/2addr v0, v1

    iget v1, p0, L㺴/㚬/உ/䂻/㭲/உ;->ᘚ:F

    add-float/2addr v0, v1

    invoke-static {p0}, L㚬/ℓ/䆀/㹖/உ;->䆀(Landroid/graphics/drawable/Drawable;)I

    move-result v1

    if-nez v1, :cond_0

    iget v1, p1, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    iput v1, p2, Landroid/graphics/RectF;->right:F

    sub-float/2addr v1, v0

    iput v1, p2, Landroid/graphics/RectF;->left:F

    goto :goto_0

    :cond_0
    iget v1, p1, Landroid/graphics/Rect;->left:I

    int-to-float v2, v1

    iput v2, p2, Landroid/graphics/RectF;->left:F

    int-to-float v1, v1

    add-float/2addr v1, v0

    iput v1, p2, Landroid/graphics/RectF;->right:F

    :goto_0
    iget v0, p1, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    iput v0, p2, Landroid/graphics/RectF;->top:F

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float p1, p1

    iput p1, p2, Landroid/graphics/RectF;->bottom:F

    :cond_1
    return-void
.end method

.method public final ⷜ(Landroid/graphics/Rect;Landroid/graphics/RectF;)V
    .locals 3

    invoke-virtual {p2}, Landroid/graphics/RectF;->setEmpty()V

    iget-object v0, p0, L㺴/㚬/உ/䂻/㭲/உ;->ש:Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    iget v0, p0, L㺴/㚬/உ/䂻/㭲/உ;->ᣝ:F

    invoke-virtual {p0}, L㺴/㚬/உ/䂻/㭲/உ;->䋡()F

    move-result v1

    add-float/2addr v0, v1

    iget v1, p0, L㺴/㚬/உ/䂻/㭲/உ;->㲊:F

    add-float/2addr v0, v1

    iget v1, p0, L㺴/㚬/உ/䂻/㭲/உ;->ಇ:F

    invoke-virtual {p0}, L㺴/㚬/உ/䂻/㭲/உ;->क()F

    move-result v2

    add-float/2addr v1, v2

    iget v2, p0, L㺴/㚬/உ/䂻/㭲/உ;->ᘚ:F

    add-float/2addr v1, v2

    invoke-static {p0}, L㚬/ℓ/䆀/㹖/உ;->䆀(Landroid/graphics/drawable/Drawable;)I

    move-result v2

    if-nez v2, :cond_0

    iget v2, p1, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    add-float/2addr v2, v0

    iput v2, p2, Landroid/graphics/RectF;->left:F

    iget v0, p1, Landroid/graphics/Rect;->right:I

    int-to-float v0, v0

    sub-float/2addr v0, v1

    iput v0, p2, Landroid/graphics/RectF;->right:F

    goto :goto_0

    :cond_0
    iget v2, p1, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    add-float/2addr v2, v1

    iput v2, p2, Landroid/graphics/RectF;->left:F

    iget v1, p1, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    sub-float/2addr v1, v0

    iput v1, p2, Landroid/graphics/RectF;->right:F

    :goto_0
    iget v0, p1, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    iput v0, p2, Landroid/graphics/RectF;->top:F

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float p1, p1

    iput p1, p2, Landroid/graphics/RectF;->bottom:F

    :cond_1
    return-void
.end method

.method public 〵()F
    .locals 1

    iget v0, p0, L㺴/㚬/உ/䂻/㭲/உ;->ᣦ:F

    return v0
.end method

.method public ㅛ(Landroid/graphics/RectF;)V
    .locals 1

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, L㺴/㚬/உ/䂻/㭲/உ;->ⶬ(Landroid/graphics/Rect;Landroid/graphics/RectF;)V

    return-void
.end method

.method public ㆡ(F)V
    .locals 1

    iget v0, p0, L㺴/㚬/உ/䂻/㭲/உ;->㥁:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    invoke-virtual {p0}, L㺴/㚬/உ/䂻/㭲/உ;->䋡()F

    move-result v0

    iput p1, p0, L㺴/㚬/உ/䂻/㭲/உ;->㥁:F

    invoke-virtual {p0}, L㺴/㚬/உ/䂻/㭲/உ;->䋡()F

    move-result p1

    invoke-virtual {p0}, L㺴/㚬/உ/䂻/ᱹ/ᆻ;->invalidateSelf()V

    cmpl-float p1, v0, p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, L㺴/㚬/உ/䂻/㭲/உ;->ཌྷ()V

    :cond_0
    return-void
.end method

.method public 㐇(I)V
    .locals 1

    iget-object v0, p0, L㺴/㚬/உ/䂻/㭲/உ;->Ổ:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    invoke-virtual {p0, p1}, L㺴/㚬/உ/䂻/㭲/உ;->ਚ(F)V

    return-void
.end method

.method public 㐱()F
    .locals 1

    iget v0, p0, L㺴/㚬/உ/䂻/㭲/உ;->ڈ:F

    return v0
.end method

.method public 㑹()F
    .locals 1

    iget v0, p0, L㺴/㚬/உ/䂻/㭲/உ;->㽛:F

    return v0
.end method

.method public 㒱(Ljava/lang/CharSequence;)V
    .locals 1

    iget-object v0, p0, L㺴/㚬/உ/䂻/㭲/உ;->䅚:Ljava/lang/CharSequence;

    if-eq v0, p1, :cond_0

    invoke-static {}, L㚬/ℓ/㧦/உ;->㚬()L㚬/ℓ/㧦/உ;

    move-result-object v0

    invoke-virtual {v0, p1}, L㚬/ℓ/㧦/உ;->ℓ(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, L㺴/㚬/உ/䂻/㭲/உ;->䅚:Ljava/lang/CharSequence;

    invoke-virtual {p0}, L㺴/㚬/உ/䂻/ᱹ/ᆻ;->invalidateSelf()V

    :cond_0
    return-void
.end method

.method public 㒶()L㺴/㚬/உ/䂻/㹖/ℓ;
    .locals 1

    iget-object v0, p0, L㺴/㚬/உ/䂻/㭲/உ;->ᭊ:L㺴/㚬/உ/䂻/㹖/ℓ;

    return-object v0
.end method

.method public 㒺(F)V
    .locals 1

    iget v0, p0, L㺴/㚬/உ/䂻/㭲/உ;->ᇿ:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    invoke-virtual {p0}, L㺴/㚬/உ/䂻/㭲/உ;->䋡()F

    move-result v0

    iput p1, p0, L㺴/㚬/உ/䂻/㭲/உ;->ᇿ:F

    invoke-virtual {p0}, L㺴/㚬/உ/䂻/㭲/உ;->䋡()F

    move-result p1

    invoke-virtual {p0}, L㺴/㚬/உ/䂻/ᱹ/ᆻ;->invalidateSelf()V

    cmpl-float p1, v0, p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, L㺴/㚬/உ/䂻/㭲/உ;->ཌྷ()V

    :cond_0
    return-void
.end method

.method public 㓎()Landroid/text/TextUtils$TruncateAt;
    .locals 1

    iget-object v0, p0, L㺴/㚬/உ/䂻/㭲/உ;->ᵁ:Landroid/text/TextUtils$TruncateAt;

    return-object v0
.end method

.method public 㗁(Z)V
    .locals 1

    iget-boolean v0, p0, L㺴/㚬/உ/䂻/㭲/உ;->㖆:Z

    if-eq v0, p1, :cond_2

    invoke-virtual {p0}, L㺴/㚬/உ/䂻/㭲/உ;->䉁()Z

    move-result v0

    iput-boolean p1, p0, L㺴/㚬/உ/䂻/㭲/உ;->㖆:Z

    invoke-virtual {p0}, L㺴/㚬/உ/䂻/㭲/உ;->䉁()Z

    move-result p1

    if-eq v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    if-eqz p1, :cond_1

    iget-object p1, p0, L㺴/㚬/உ/䂻/㭲/உ;->㭢:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, L㺴/㚬/உ/䂻/㭲/உ;->Ᏼ(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    :cond_1
    iget-object p1, p0, L㺴/㚬/உ/䂻/㭲/உ;->㭢:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, L㺴/㚬/உ/䂻/㭲/உ;->ᨁ(Landroid/graphics/drawable/Drawable;)V

    :goto_1
    invoke-virtual {p0}, L㺴/㚬/உ/䂻/ᱹ/ᆻ;->invalidateSelf()V

    invoke-virtual {p0}, L㺴/㚬/உ/䂻/㭲/உ;->ཌྷ()V

    :cond_2
    return-void
.end method

.method public 㚫(F)V
    .locals 1

    iget v0, p0, L㺴/㚬/உ/䂻/㭲/உ;->㫏:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    iput p1, p0, L㺴/㚬/உ/䂻/㭲/உ;->㫏:F

    invoke-virtual {p0}, L㺴/㚬/உ/䂻/ᱹ/ᆻ;->invalidateSelf()V

    invoke-virtual {p0}, L㺴/㚬/உ/䂻/㭲/உ;->ཌྷ()V

    :cond_0
    return-void
.end method

.method public 㛒(I)V
    .locals 1

    iget-object v0, p0, L㺴/㚬/உ/䂻/㭲/உ;->Ổ:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    invoke-virtual {p0, p1}, L㺴/㚬/உ/䂻/㭲/உ;->㚫(F)V

    return-void
.end method

.method public 㜱()F
    .locals 1

    iget v0, p0, L㺴/㚬/உ/䂻/㭲/உ;->㫏:F

    return v0
.end method

.method public final 㜷()V
    .locals 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    new-instance v0, Landroid/graphics/drawable/RippleDrawable;

    invoke-virtual {p0}, L㺴/㚬/உ/䂻/㭲/உ;->㲶()Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-static {v1}, L㺴/㚬/உ/䂻/㨃/䂻;->உ(Landroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;

    move-result-object v1

    iget-object v2, p0, L㺴/㚬/உ/䂻/㭲/உ;->㭢:Landroid/graphics/drawable/Drawable;

    sget-object v3, L㺴/㚬/உ/䂻/㭲/உ;->㜱:Landroid/graphics/drawable/ShapeDrawable;

    invoke-direct {v0, v1, v2, v3}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iput-object v0, p0, L㺴/㚬/உ/䂻/㭲/உ;->Խ:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public 㝒()Landroid/content/res/ColorStateList;
    .locals 1

    iget-object v0, p0, L㺴/㚬/உ/䂻/㭲/உ;->Ԁ:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public 㞜(I)V
    .locals 0

    iput p1, p0, L㺴/㚬/உ/䂻/㭲/உ;->ፖ:I

    return-void
.end method

.method public final 㠭(Landroid/graphics/Rect;Landroid/graphics/RectF;)V
    .locals 2

    invoke-virtual {p2}, Landroid/graphics/RectF;->setEmpty()V

    invoke-virtual {p0}, L㺴/㚬/உ/䂻/㭲/உ;->ℭ()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, L㺴/㚬/உ/䂻/㭲/உ;->䃤()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    iget v0, p0, L㺴/㚬/உ/䂻/㭲/உ;->ᣝ:F

    iget v1, p0, L㺴/㚬/உ/䂻/㭲/உ;->ᇿ:F

    add-float/2addr v0, v1

    invoke-static {p0}, L㚬/ℓ/䆀/㹖/உ;->䆀(Landroid/graphics/drawable/Drawable;)I

    move-result v1

    if-nez v1, :cond_1

    iget v1, p1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    add-float/2addr v1, v0

    iput v1, p2, Landroid/graphics/RectF;->left:F

    iget v0, p0, L㺴/㚬/உ/䂻/㭲/உ;->㥁:F

    add-float/2addr v1, v0

    iput v1, p2, Landroid/graphics/RectF;->right:F

    goto :goto_0

    :cond_1
    iget v1, p1, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    sub-float/2addr v1, v0

    iput v1, p2, Landroid/graphics/RectF;->right:F

    iget v0, p0, L㺴/㚬/உ/䂻/㭲/உ;->㥁:F

    sub-float/2addr v1, v0

    iput v1, p2, Landroid/graphics/RectF;->left:F

    :goto_0
    invoke-virtual {p1}, Landroid/graphics/Rect;->exactCenterY()F

    move-result p1

    iget v0, p0, L㺴/㚬/உ/䂻/㭲/உ;->㥁:F

    const/high16 v1, 0x40000000    # 2.0f

    div-float v1, v0, v1

    sub-float/2addr p1, v1

    iput p1, p2, Landroid/graphics/RectF;->top:F

    add-float/2addr p1, v0

    iput p1, p2, Landroid/graphics/RectF;->bottom:F

    :cond_2
    return-void
.end method

.method public 㠯(F)V
    .locals 1

    iget v0, p0, L㺴/㚬/உ/䂻/㭲/உ;->㽛:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    iput p1, p0, L㺴/㚬/உ/䂻/㭲/உ;->㽛:F

    invoke-virtual {p0}, L㺴/㚬/உ/䂻/ᱹ/ᆻ;->invalidateSelf()V

    invoke-virtual {p0}, L㺴/㚬/உ/䂻/㭲/உ;->䉁()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, L㺴/㚬/உ/䂻/㭲/உ;->ཌྷ()V

    :cond_0
    return-void
.end method

.method public 㣩()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, L㺴/㚬/உ/䂻/㭲/உ;->ש:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public 㦄()Landroid/content/res/ColorStateList;
    .locals 1

    iget-object v0, p0, L㺴/㚬/உ/䂻/㭲/உ;->ᾦ:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public 㦗(Z)V
    .locals 1

    iget-boolean v0, p0, L㺴/㚬/உ/䂻/㭲/உ;->㴩:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, L㺴/㚬/உ/䂻/㭲/உ;->㴩:Z

    invoke-virtual {p0}, L㺴/㚬/உ/䂻/㭲/உ;->ᐇ()V

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object p1

    invoke-virtual {p0, p1}, L㺴/㚬/உ/䂻/㭲/உ;->onStateChange([I)Z

    :cond_0
    return-void
.end method

.method public 㧚(I)V
    .locals 1

    iget-object v0, p0, L㺴/㚬/உ/䂻/㭲/உ;->Ổ:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    invoke-virtual {p0, p1}, L㺴/㚬/உ/䂻/㭲/உ;->㠯(F)V

    return-void
.end method

.method public 㩇(I)V
    .locals 1

    iget-object v0, p0, L㺴/㚬/உ/䂻/㭲/உ;->Ổ:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    invoke-virtual {p0, p1}, L㺴/㚬/உ/䂻/㭲/உ;->ਣ(F)V

    return-void
.end method

.method public 㪦(F)V
    .locals 1

    iget v0, p0, L㺴/㚬/உ/䂻/㭲/உ;->ڈ:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_1

    iput p1, p0, L㺴/㚬/உ/䂻/㭲/உ;->ڈ:F

    iget-object v0, p0, L㺴/㚬/உ/䂻/㭲/உ;->ග:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-boolean v0, p0, L㺴/㚬/உ/䂻/㭲/உ;->ἴ:Z

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, L㺴/㚬/உ/䂻/ᱹ/ᆻ;->㽛(F)V

    :cond_0
    invoke-virtual {p0}, L㺴/㚬/உ/䂻/ᱹ/ᆻ;->invalidateSelf()V

    :cond_1
    return-void
.end method

.method public 㭭(I)V
    .locals 1

    iget-object v0, p0, L㺴/㚬/உ/䂻/㭲/உ;->Ổ:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    invoke-virtual {p0, p1}, L㺴/㚬/உ/䂻/㭲/உ;->㒺(F)V

    return-void
.end method

.method public 㯇(L㺴/㚬/உ/䂻/㭲/உ$உ;)V
    .locals 1

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, L㺴/㚬/உ/䂻/㭲/உ;->䆚:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public final 㱱(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V
    .locals 5

    invoke-virtual {p0}, L㺴/㚬/உ/䂻/㭲/உ;->䉁()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, L㺴/㚬/உ/䂻/㭲/உ;->䋡:Landroid/graphics/RectF;

    invoke-virtual {p0, p2, v0}, L㺴/㚬/உ/䂻/㭲/உ;->䆍(Landroid/graphics/Rect;Landroid/graphics/RectF;)V

    iget-object p2, p0, L㺴/㚬/உ/䂻/㭲/உ;->䋡:Landroid/graphics/RectF;

    iget v0, p2, Landroid/graphics/RectF;->left:F

    iget p2, p2, Landroid/graphics/RectF;->top:F

    invoke-virtual {p1, v0, p2}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v1, p0, L㺴/㚬/உ/䂻/㭲/உ;->㭢:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, L㺴/㚬/உ/䂻/㭲/உ;->䋡:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    float-to-int v2, v2

    iget-object v3, p0, L㺴/㚬/உ/䂻/㭲/உ;->䋡:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    float-to-int v3, v3

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v4, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    sget-boolean v1, L㺴/㚬/உ/䂻/㨃/䂻;->உ:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, L㺴/㚬/உ/䂻/㭲/உ;->Խ:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, L㺴/㚬/உ/䂻/㭲/உ;->㭢:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    iget-object v1, p0, L㺴/㚬/உ/䂻/㭲/உ;->Խ:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    iget-object v1, p0, L㺴/㚬/உ/䂻/㭲/உ;->Խ:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    :cond_0
    iget-object v1, p0, L㺴/㚬/உ/䂻/㭲/உ;->㭢:Landroid/graphics/drawable/Drawable;

    :goto_0
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    neg-float v0, v0

    neg-float p2, p2

    invoke-virtual {p1, v0, p2}, Landroid/graphics/Canvas;->translate(FF)V

    :cond_1
    return-void
.end method

.method public 㲲(I)V
    .locals 1

    iget-object v0, p0, L㺴/㚬/உ/䂻/㭲/உ;->Ổ:Landroid/content/Context;

    invoke-static {v0, p1}, L㚬/䂻/㹖/உ/உ;->㚬(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, L㺴/㚬/உ/䂻/㭲/உ;->䈳(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public 㲶()Landroid/content/res/ColorStateList;
    .locals 1

    iget-object v0, p0, L㺴/㚬/உ/䂻/㭲/உ;->㰫:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public 㳗(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    invoke-virtual {p0}, L㺴/㚬/உ/䂻/㭲/உ;->ሩ()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eq v0, p1, :cond_3

    invoke-virtual {p0}, L㺴/㚬/உ/䂻/㭲/உ;->क()F

    move-result v1

    if-eqz p1, :cond_0

    invoke-static {p1}, L㚬/ℓ/䆀/㹖/உ;->㞘(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, L㺴/㚬/உ/䂻/㭲/உ;->㭢:Landroid/graphics/drawable/Drawable;

    sget-boolean p1, L㺴/㚬/உ/䂻/㨃/䂻;->உ:Z

    if-eqz p1, :cond_1

    invoke-virtual {p0}, L㺴/㚬/உ/䂻/㭲/உ;->㜷()V

    :cond_1
    invoke-virtual {p0}, L㺴/㚬/உ/䂻/㭲/உ;->क()F

    move-result p1

    invoke-virtual {p0, v0}, L㺴/㚬/உ/䂻/㭲/உ;->ᨁ(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0}, L㺴/㚬/உ/䂻/㭲/உ;->䉁()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, L㺴/㚬/உ/䂻/㭲/உ;->㭢:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, L㺴/㚬/உ/䂻/㭲/உ;->Ᏼ(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    invoke-virtual {p0}, L㺴/㚬/உ/䂻/ᱹ/ᆻ;->invalidateSelf()V

    cmpl-float p1, v1, p1

    if-eqz p1, :cond_3

    invoke-virtual {p0}, L㺴/㚬/உ/䂻/㭲/உ;->ཌྷ()V

    :cond_3
    return-void
.end method

.method public 㴟()F
    .locals 1

    iget v0, p0, L㺴/㚬/உ/䂻/㭲/உ;->ᘚ:F

    return v0
.end method

.method public final 㴩(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V
    .locals 9

    iget-object v0, p0, L㺴/㚬/உ/䂻/㭲/உ;->ש:Ljava/lang/CharSequence;

    if-eqz v0, :cond_4

    iget-object v0, p0, L㺴/㚬/உ/䂻/㭲/உ;->ἃ:Landroid/graphics/PointF;

    invoke-virtual {p0, p2, v0}, L㺴/㚬/உ/䂻/㭲/உ;->ᗼ(Landroid/graphics/Rect;Landroid/graphics/PointF;)Landroid/graphics/Paint$Align;

    move-result-object v0

    iget-object v1, p0, L㺴/㚬/உ/䂻/㭲/உ;->䋡:Landroid/graphics/RectF;

    invoke-virtual {p0, p2, v1}, L㺴/㚬/உ/䂻/㭲/உ;->ⷜ(Landroid/graphics/Rect;Landroid/graphics/RectF;)V

    iget-object p2, p0, L㺴/㚬/உ/䂻/㭲/உ;->ⶬ:L㺴/㚬/உ/䂻/ᾦ/䆀;

    invoke-virtual {p2}, L㺴/㚬/உ/䂻/ᾦ/䆀;->㺴()L㺴/㚬/உ/䂻/ש/㺴;

    move-result-object p2

    if-eqz p2, :cond_0

    iget-object p2, p0, L㺴/㚬/உ/䂻/㭲/உ;->ⶬ:L㺴/㚬/உ/䂻/ᾦ/䆀;

    invoke-virtual {p2}, L㺴/㚬/உ/䂻/ᾦ/䆀;->ḓ()Landroid/text/TextPaint;

    move-result-object p2

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object v1

    iput-object v1, p2, Landroid/text/TextPaint;->drawableState:[I

    iget-object p2, p0, L㺴/㚬/உ/䂻/㭲/உ;->ⶬ:L㺴/㚬/உ/䂻/ᾦ/䆀;

    iget-object v1, p0, L㺴/㚬/உ/䂻/㭲/உ;->Ổ:Landroid/content/Context;

    invoke-virtual {p2, v1}, L㺴/㚬/உ/䂻/ᾦ/䆀;->ಫ(Landroid/content/Context;)V

    :cond_0
    iget-object p2, p0, L㺴/㚬/உ/䂻/㭲/உ;->ⶬ:L㺴/㚬/உ/䂻/ᾦ/䆀;

    invoke-virtual {p2}, L㺴/㚬/உ/䂻/ᾦ/䆀;->ḓ()Landroid/text/TextPaint;

    move-result-object p2

    invoke-virtual {p2, v0}, Landroid/text/TextPaint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    iget-object p2, p0, L㺴/㚬/உ/䂻/㭲/உ;->ⶬ:L㺴/㚬/உ/䂻/ᾦ/䆀;

    invoke-virtual {p0}, L㺴/㚬/உ/䂻/㭲/உ;->㣩()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, L㺴/㚬/உ/䂻/ᾦ/䆀;->䆀(Ljava/lang/String;)F

    move-result p2

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p2

    iget-object v0, p0, L㺴/㚬/உ/䂻/㭲/உ;->䋡:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    const/4 v1, 0x0

    if-le p2, v0, :cond_1

    const/4 p2, 0x1

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    :goto_0
    if-eqz p2, :cond_2

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v1

    iget-object v0, p0, L㺴/㚬/உ/䂻/㭲/உ;->䋡:Landroid/graphics/RectF;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;)Z

    :cond_2
    iget-object v0, p0, L㺴/㚬/உ/䂻/㭲/உ;->ש:Ljava/lang/CharSequence;

    if-eqz p2, :cond_3

    iget-object v2, p0, L㺴/㚬/உ/䂻/㭲/உ;->ᵁ:Landroid/text/TextUtils$TruncateAt;

    if-eqz v2, :cond_3

    iget-object v2, p0, L㺴/㚬/உ/䂻/㭲/உ;->ⶬ:L㺴/㚬/உ/䂻/ᾦ/䆀;

    invoke-virtual {v2}, L㺴/㚬/உ/䂻/ᾦ/䆀;->ḓ()Landroid/text/TextPaint;

    move-result-object v2

    iget-object v3, p0, L㺴/㚬/உ/䂻/㭲/உ;->䋡:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    iget-object v4, p0, L㺴/㚬/உ/䂻/㭲/உ;->ᵁ:Landroid/text/TextUtils$TruncateAt;

    invoke-static {v0, v2, v3, v4}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object v0

    :cond_3
    move-object v3, v0

    const/4 v4, 0x0

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v5

    iget-object v0, p0, L㺴/㚬/உ/䂻/㭲/உ;->ἃ:Landroid/graphics/PointF;

    iget v6, v0, Landroid/graphics/PointF;->x:F

    iget v7, v0, Landroid/graphics/PointF;->y:F

    iget-object v0, p0, L㺴/㚬/உ/䂻/㭲/உ;->ⶬ:L㺴/㚬/உ/䂻/ᾦ/䆀;

    invoke-virtual {v0}, L㺴/㚬/உ/䂻/ᾦ/䆀;->ḓ()Landroid/text/TextPaint;

    move-result-object v8

    move-object v2, p1

    invoke-virtual/range {v2 .. v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V

    if-eqz p2, :cond_4

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_4
    return-void
.end method

.method public 㷚()Z
    .locals 1

    iget-boolean v0, p0, L㺴/㚬/உ/䂻/㭲/உ;->㴩:Z

    return v0
.end method

.method public 㷵()Z
    .locals 1

    iget-boolean v0, p0, L㺴/㚬/உ/䂻/㭲/உ;->ᴇ:Z

    return v0
.end method

.method public 㸜(I)V
    .locals 1

    iget-object v0, p0, L㺴/㚬/உ/䂻/㭲/உ;->Ổ:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    invoke-virtual {p0, p1}, L㺴/㚬/உ/䂻/㭲/உ;->ڪ(F)V

    return-void
.end method

.method public 㼲()F
    .locals 1

    iget v0, p0, L㺴/㚬/உ/䂻/㭲/உ;->ᇿ:F

    return v0
.end method

.method public 䃆(I)V
    .locals 2

    new-instance v0, L㺴/㚬/உ/䂻/ש/㺴;

    iget-object v1, p0, L㺴/㚬/உ/䂻/㭲/உ;->Ổ:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, L㺴/㚬/உ/䂻/ש/㺴;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p0, v0}, L㺴/㚬/உ/䂻/㭲/உ;->ᓓ(L㺴/㚬/உ/䂻/ש/㺴;)V

    return-void
.end method

.method public final 䃤()Z
    .locals 1

    iget-boolean v0, p0, L㺴/㚬/உ/䂻/㭲/உ;->ἂ:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, L㺴/㚬/உ/䂻/㭲/உ;->ⵦ:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, L㺴/㚬/உ/䂻/㭲/உ;->ਬ:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final 䃻()F
    .locals 2

    iget-object v0, p0, L㺴/㚬/உ/䂻/㭲/உ;->ⶬ:L㺴/㚬/உ/䂻/ᾦ/䆀;

    invoke-virtual {v0}, L㺴/㚬/உ/䂻/ᾦ/䆀;->ḓ()Landroid/text/TextPaint;

    move-result-object v0

    iget-object v1, p0, L㺴/㚬/உ/䂻/㭲/உ;->㠭:Landroid/graphics/Paint$FontMetrics;

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->getFontMetrics(Landroid/graphics/Paint$FontMetrics;)F

    iget-object v0, p0, L㺴/㚬/உ/䂻/㭲/உ;->㠭:Landroid/graphics/Paint$FontMetrics;

    iget v1, v0, Landroid/graphics/Paint$FontMetrics;->descent:F

    iget v0, v0, Landroid/graphics/Paint$FontMetrics;->ascent:F

    add-float/2addr v1, v0

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr v1, v0

    return v1
.end method

.method public 䆋()[I
    .locals 1

    iget-object v0, p0, L㺴/㚬/உ/䂻/㭲/உ;->ᗫ:[I

    return-object v0
.end method

.method public final 䆍(Landroid/graphics/Rect;Landroid/graphics/RectF;)V
    .locals 2

    invoke-virtual {p2}, Landroid/graphics/RectF;->setEmpty()V

    invoke-virtual {p0}, L㺴/㚬/உ/䂻/㭲/உ;->䉁()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, L㺴/㚬/உ/䂻/㭲/உ;->ಇ:F

    iget v1, p0, L㺴/㚬/உ/䂻/㭲/உ;->㽛:F

    add-float/2addr v0, v1

    invoke-static {p0}, L㚬/ℓ/䆀/㹖/உ;->䆀(Landroid/graphics/drawable/Drawable;)I

    move-result v1

    if-nez v1, :cond_0

    iget v1, p1, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    sub-float/2addr v1, v0

    iput v1, p2, Landroid/graphics/RectF;->right:F

    iget v0, p0, L㺴/㚬/உ/䂻/㭲/உ;->ỷ:F

    sub-float/2addr v1, v0

    iput v1, p2, Landroid/graphics/RectF;->left:F

    goto :goto_0

    :cond_0
    iget v1, p1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    add-float/2addr v1, v0

    iput v1, p2, Landroid/graphics/RectF;->left:F

    iget v0, p0, L㺴/㚬/உ/䂻/㭲/உ;->ỷ:F

    add-float/2addr v1, v0

    iput v1, p2, Landroid/graphics/RectF;->right:F

    :goto_0
    invoke-virtual {p1}, Landroid/graphics/Rect;->exactCenterY()F

    move-result p1

    iget v0, p0, L㺴/㚬/உ/䂻/㭲/உ;->ỷ:F

    const/high16 v1, 0x40000000    # 2.0f

    div-float v1, v0, v1

    sub-float/2addr p1, v1

    iput p1, p2, Landroid/graphics/RectF;->top:F

    add-float/2addr p1, v0

    iput p1, p2, Landroid/graphics/RectF;->bottom:F

    :cond_1
    return-void
.end method

.method public 䆚()Landroid/content/res/ColorStateList;
    .locals 1

    iget-object v0, p0, L㺴/㚬/உ/䂻/㭲/உ;->ㄬ:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public 䈳(Landroid/content/res/ColorStateList;)V
    .locals 1

    iget-object v0, p0, L㺴/㚬/உ/䂻/㭲/உ;->㰫:Landroid/content/res/ColorStateList;

    if-eq v0, p1, :cond_0

    iput-object p1, p0, L㺴/㚬/உ/䂻/㭲/உ;->㰫:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, L㺴/㚬/உ/䂻/㭲/உ;->ᐇ()V

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object p1

    invoke-virtual {p0, p1}, L㺴/㚬/உ/䂻/㭲/உ;->onStateChange([I)Z

    :cond_0
    return-void
.end method

.method public final 䉁()Z
    .locals 1

    iget-boolean v0, p0, L㺴/㚬/உ/䂻/㭲/உ;->㖆:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, L㺴/㚬/உ/䂻/㭲/உ;->㭢:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public 䉃()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, L㺴/㚬/உ/䂻/㭲/உ;->䅚:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public 䉄(Z)V
    .locals 1

    iget-boolean v0, p0, L㺴/㚬/உ/䂻/㭲/உ;->㨃:Z

    if-eq v0, p1, :cond_2

    invoke-virtual {p0}, L㺴/㚬/உ/䂻/㭲/உ;->ℭ()Z

    move-result v0

    iput-boolean p1, p0, L㺴/㚬/உ/䂻/㭲/உ;->㨃:Z

    invoke-virtual {p0}, L㺴/㚬/உ/䂻/㭲/உ;->ℭ()Z

    move-result p1

    if-eq v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    if-eqz p1, :cond_1

    iget-object p1, p0, L㺴/㚬/உ/䂻/㭲/உ;->ᰘ:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, L㺴/㚬/உ/䂻/㭲/உ;->Ᏼ(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    :cond_1
    iget-object p1, p0, L㺴/㚬/உ/䂻/㭲/உ;->ᰘ:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, L㺴/㚬/உ/䂻/㭲/உ;->ᨁ(Landroid/graphics/drawable/Drawable;)V

    :goto_1
    invoke-virtual {p0}, L㺴/㚬/உ/䂻/ᱹ/ᆻ;->invalidateSelf()V

    invoke-virtual {p0}, L㺴/㚬/உ/䂻/㭲/உ;->ཌྷ()V

    :cond_2
    return-void
.end method

.method public 䉏(F)V
    .locals 1

    iget v0, p0, L㺴/㚬/உ/䂻/㭲/உ;->ಇ:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    iput p1, p0, L㺴/㚬/உ/䂻/㭲/உ;->ಇ:F

    invoke-virtual {p0}, L㺴/㚬/உ/䂻/ᱹ/ᆻ;->invalidateSelf()V

    invoke-virtual {p0}, L㺴/㚬/உ/䂻/㭲/உ;->ཌྷ()V

    :cond_0
    return-void
.end method

.method public 䊉(I)V
    .locals 1

    iget-object v0, p0, L㺴/㚬/உ/䂻/㭲/உ;->Ổ:Landroid/content/Context;

    invoke-static {v0, p1}, L㚬/䂻/㹖/உ/உ;->㺴(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, L㺴/㚬/உ/䂻/㭲/உ;->㳗(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public 䋡()F
    .locals 2

    invoke-virtual {p0}, L㺴/㚬/உ/䂻/㭲/உ;->ℭ()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, L㺴/㚬/உ/䂻/㭲/உ;->䃤()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    iget v0, p0, L㺴/㚬/உ/䂻/㭲/உ;->ᇿ:F

    iget v1, p0, L㺴/㚬/உ/䂻/㭲/உ;->㥁:F

    add-float/2addr v0, v1

    iget v1, p0, L㺴/㚬/உ/䂻/㭲/உ;->ᣑ:F

    add-float/2addr v0, v1

    return v0
.end method
