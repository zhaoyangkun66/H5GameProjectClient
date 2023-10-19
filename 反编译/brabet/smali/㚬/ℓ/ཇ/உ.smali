.class public abstract L㚬/ℓ/ཇ/உ;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        L㚬/ℓ/ཇ/உ$உ;,
        L㚬/ℓ/ཇ/உ$䂻;
    }
.end annotation


# static fields
.field public static final 㭲:I


# instance fields
.field public ಫ:[F

.field public ཇ:Z

.field public ბ:Z

.field public ᆻ:[F

.field public ᓭ:Z

.field public ḓ:Ljava/lang/Runnable;

.field public ἥ:Z

.field public ℓ:I

.field public ㄏ:I

.field public final 㚬:Landroid/view/animation/Interpolator;

.field public 㞘:Z

.field public 㧦:[F

.field public 㲝:Z

.field public 㹖:[F

.field public final 㺴:Landroid/view/View;

.field public final 䂻:L㚬/ℓ/ཇ/உ$உ;

.field public 䆀:[F


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v0

    sput v0, L㚬/ℓ/ཇ/உ;->㭲:I

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, L㚬/ℓ/ཇ/உ$உ;

    invoke-direct {v0}, L㚬/ℓ/ཇ/உ$உ;-><init>()V

    iput-object v0, p0, L㚬/ℓ/ཇ/உ;->䂻:L㚬/ℓ/ཇ/உ$உ;

    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    iput-object v0, p0, L㚬/ℓ/ཇ/உ;->㚬:Landroid/view/animation/Interpolator;

    const/4 v0, 0x2

    new-array v1, v0, [F

    fill-array-data v1, :array_0

    iput-object v1, p0, L㚬/ℓ/ཇ/உ;->䆀:[F

    new-array v1, v0, [F

    fill-array-data v1, :array_1

    iput-object v1, p0, L㚬/ℓ/ཇ/உ;->ᆻ:[F

    new-array v1, v0, [F

    fill-array-data v1, :array_2

    iput-object v1, p0, L㚬/ℓ/ཇ/உ;->ಫ:[F

    new-array v1, v0, [F

    fill-array-data v1, :array_3

    iput-object v1, p0, L㚬/ℓ/ཇ/உ;->㧦:[F

    new-array v0, v0, [F

    fill-array-data v0, :array_4

    iput-object v0, p0, L㚬/ℓ/ཇ/உ;->㹖:[F

    iput-object p1, p0, L㚬/ℓ/ཇ/உ;->㺴:Landroid/view/View;

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    const v0, 0x44c4e000    # 1575.0f

    mul-float v0, v0, p1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    const v2, 0x439d8000    # 315.0f

    mul-float p1, p1, v2

    add-float/2addr p1, v1

    float-to-int p1, p1

    int-to-float v0, v0

    invoke-virtual {p0, v0, v0}, L㚬/ℓ/ཇ/உ;->ᓭ(FF)L㚬/ℓ/ཇ/உ;

    int-to-float p1, p1

    invoke-virtual {p0, p1, p1}, L㚬/ℓ/ཇ/உ;->ბ(FF)L㚬/ℓ/ཇ/உ;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, L㚬/ℓ/ཇ/உ;->㹖(I)L㚬/ℓ/ཇ/உ;

    const p1, 0x7f7fffff    # Float.MAX_VALUE

    invoke-virtual {p0, p1, p1}, L㚬/ℓ/ཇ/உ;->ཇ(FF)L㚬/ℓ/ཇ/உ;

    const p1, 0x3e4ccccd    # 0.2f

    invoke-virtual {p0, p1, p1}, L㚬/ℓ/ཇ/உ;->㭲(FF)L㚬/ℓ/ཇ/உ;

    const/high16 p1, 0x3f800000    # 1.0f

    invoke-virtual {p0, p1, p1}, L㚬/ℓ/ཇ/உ;->ḙ(FF)L㚬/ℓ/ཇ/உ;

    sget p1, L㚬/ℓ/ཇ/உ;->㭲:I

    invoke-virtual {p0, p1}, L㚬/ℓ/ཇ/உ;->㧦(I)L㚬/ℓ/ཇ/உ;

    const/16 p1, 0x1f4

    invoke-virtual {p0, p1}, L㚬/ℓ/ཇ/உ;->㞘(I)L㚬/ℓ/ཇ/உ;

    invoke-virtual {p0, p1}, L㚬/ℓ/ཇ/உ;->㲝(I)L㚬/ℓ/ཇ/உ;

    return-void

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x7f7fffff    # Float.MAX_VALUE
        0x7f7fffff    # Float.MAX_VALUE
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x0
    .end array-data

    :array_3
    .array-data 4
        0x0
        0x0
    .end array-data

    :array_4
    .array-data 4
        0x7f7fffff    # Float.MAX_VALUE
        0x7f7fffff    # Float.MAX_VALUE
    .end array-data
.end method

.method public static ḓ(FFF)F
    .locals 1

    cmpl-float v0, p0, p2

    if-lez v0, :cond_0

    return p2

    :cond_0
    cmpg-float p2, p0, p1

    if-gez p2, :cond_1

    return p1

    :cond_1
    return p0
.end method

.method public static 䆀(III)I
    .locals 0

    if-le p0, p2, :cond_0

    return p2

    :cond_0
    if-ge p0, p1, :cond_1

    return p1

    :cond_1
    return p0
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5

    iget-boolean v0, p0, L㚬/ℓ/ཇ/உ;->㲝:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    if-eq v0, v2, :cond_1

    const/4 v3, 0x2

    if-eq v0, v3, :cond_3

    const/4 p1, 0x3

    if-eq v0, p1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, L㚬/ℓ/ཇ/உ;->ㄏ()V

    goto :goto_0

    :cond_2
    iput-boolean v2, p0, L㚬/ℓ/ཇ/உ;->ᓭ:Z

    iput-boolean v1, p0, L㚬/ℓ/ཇ/உ;->ἥ:Z

    :cond_3
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, L㚬/ℓ/ཇ/உ;->㺴:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p0, v1, v0, v3, v4}, L㚬/ℓ/ཇ/உ;->㺴(IFFF)F

    move-result v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    int-to-float p1, p1

    iget-object v3, p0, L㚬/ℓ/ཇ/உ;->㺴:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p0, v2, p2, p1, v3}, L㚬/ℓ/ཇ/உ;->㺴(IFFF)F

    move-result p1

    iget-object p2, p0, L㚬/ℓ/ཇ/உ;->䂻:L㚬/ℓ/ཇ/உ$உ;

    invoke-virtual {p2, v0, p1}, L㚬/ℓ/ཇ/உ$உ;->㹖(FF)V

    iget-boolean p1, p0, L㚬/ℓ/ཇ/உ;->ბ:Z

    if-nez p1, :cond_4

    invoke-virtual {p0}, L㚬/ℓ/ཇ/உ;->㖪()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-virtual {p0}, L㚬/ℓ/ཇ/உ;->㢏()V

    :cond_4
    :goto_0
    iget-boolean p1, p0, L㚬/ℓ/ཇ/உ;->㞘:Z

    if-eqz p1, :cond_5

    iget-boolean p1, p0, L㚬/ℓ/ཇ/உ;->ბ:Z

    if-eqz p1, :cond_5

    const/4 v1, 0x1

    :cond_5
    return v1
.end method

.method public abstract உ(I)Z
.end method

.method public abstract ಫ(II)V
.end method

.method public ཇ(FF)L㚬/ℓ/ཇ/உ;
    .locals 2

    iget-object v0, p0, L㚬/ℓ/ཇ/உ;->ᆻ:[F

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 p1, 0x1

    aput p2, v0, p1

    return-object p0
.end method

.method public ბ(FF)L㚬/ℓ/ཇ/உ;
    .locals 3

    iget-object v0, p0, L㚬/ℓ/ཇ/உ;->㧦:[F

    const/high16 v1, 0x447a0000    # 1000.0f

    div-float/2addr p1, v1

    const/4 v2, 0x0

    aput p1, v0, v2

    div-float/2addr p2, v1

    const/4 p1, 0x1

    aput p2, v0, p1

    return-object p0
.end method

.method public final ᆻ(FF)F
    .locals 5

    const/4 v0, 0x0

    cmpl-float v1, p2, v0

    if-nez v1, :cond_0

    return v0

    :cond_0
    iget v1, p0, L㚬/ℓ/ཇ/உ;->ℓ:I

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    if-eq v1, v2, :cond_2

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    goto :goto_0

    :cond_1
    cmpg-float v1, p1, v0

    if-gez v1, :cond_4

    neg-float p2, p2

    div-float/2addr p1, p2

    return p1

    :cond_2
    cmpg-float v3, p1, p2

    if-gez v3, :cond_4

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v4, p1, v0

    if-ltz v4, :cond_3

    div-float/2addr p1, p2

    sub-float/2addr v3, p1

    return v3

    :cond_3
    iget-boolean p1, p0, L㚬/ℓ/ཇ/உ;->ბ:Z

    if-eqz p1, :cond_4

    if-ne v1, v2, :cond_4

    return v3

    :cond_4
    :goto_0
    return v0
.end method

.method public ᓭ(FF)L㚬/ℓ/ཇ/உ;
    .locals 3

    iget-object v0, p0, L㚬/ℓ/ཇ/உ;->㹖:[F

    const/high16 v1, 0x447a0000    # 1000.0f

    div-float/2addr p1, v1

    const/4 v2, 0x0

    aput p1, v0, v2

    div-float/2addr p2, v1

    const/4 p1, 0x1

    aput p2, v0, p1

    return-object p0
.end method

.method public ḙ(FF)L㚬/ℓ/ཇ/உ;
    .locals 3

    iget-object v0, p0, L㚬/ℓ/ཇ/உ;->ಫ:[F

    const/high16 v1, 0x447a0000    # 1000.0f

    div-float/2addr p1, v1

    const/4 v2, 0x0

    aput p1, v0, v2

    div-float/2addr p2, v1

    const/4 p1, 0x1

    aput p2, v0, p1

    return-object p0
.end method

.method public ἥ(Z)L㚬/ℓ/ཇ/உ;
    .locals 1

    iget-boolean v0, p0, L㚬/ℓ/ཇ/உ;->㲝:Z

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    invoke-virtual {p0}, L㚬/ℓ/ཇ/உ;->ㄏ()V

    :cond_0
    iput-boolean p1, p0, L㚬/ℓ/ཇ/உ;->㲝:Z

    return-object p0
.end method

.method public final ℓ(FFFF)F
    .locals 1

    mul-float p1, p1, p2

    const/4 v0, 0x0

    invoke-static {p1, v0, p3}, L㚬/ℓ/ཇ/உ;->ḓ(FFF)F

    move-result p1

    invoke-virtual {p0, p4, p1}, L㚬/ℓ/ཇ/உ;->ᆻ(FF)F

    move-result p3

    sub-float/2addr p2, p4

    invoke-virtual {p0, p2, p1}, L㚬/ℓ/ཇ/உ;->ᆻ(FF)F

    move-result p1

    sub-float/2addr p1, p3

    cmpg-float p2, p1, v0

    if-gez p2, :cond_0

    iget-object p2, p0, L㚬/ℓ/ཇ/உ;->㚬:Landroid/view/animation/Interpolator;

    neg-float p1, p1

    invoke-interface {p2, p1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result p1

    neg-float p1, p1

    goto :goto_0

    :cond_0
    cmpl-float p2, p1, v0

    if-lez p2, :cond_1

    iget-object p2, p0, L㚬/ℓ/ཇ/உ;->㚬:Landroid/view/animation/Interpolator;

    invoke-interface {p2, p1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result p1

    :goto_0
    const/high16 p2, -0x40800000    # -1.0f

    const/high16 p3, 0x3f800000    # 1.0f

    invoke-static {p1, p2, p3}, L㚬/ℓ/ཇ/உ;->ḓ(FFF)F

    move-result p1

    return p1

    :cond_1
    return v0
.end method

.method public final ㄏ()V
    .locals 1

    iget-boolean v0, p0, L㚬/ℓ/ཇ/உ;->ཇ:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, L㚬/ℓ/ཇ/உ;->ბ:Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, L㚬/ℓ/ཇ/உ;->䂻:L㚬/ℓ/ཇ/உ$உ;

    invoke-virtual {v0}, L㚬/ℓ/ཇ/உ$உ;->ㄏ()V

    :goto_0
    return-void
.end method

.method public 㖪()Z
    .locals 2

    iget-object v0, p0, L㚬/ℓ/ཇ/உ;->䂻:L㚬/ℓ/ཇ/உ$உ;

    invoke-virtual {v0}, L㚬/ℓ/ཇ/உ$உ;->䆀()I

    move-result v1

    invoke-virtual {v0}, L㚬/ℓ/ཇ/உ$உ;->㺴()I

    move-result v0

    if-eqz v1, :cond_0

    invoke-virtual {p0, v1}, L㚬/ℓ/ཇ/உ;->䂻(I)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    if-eqz v0, :cond_2

    invoke-virtual {p0, v0}, L㚬/ℓ/ཇ/உ;->உ(I)Z

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

.method public 㚬()V
    .locals 8

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-wide v0, v2

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v0

    iget-object v1, p0, L㚬/ℓ/ཇ/உ;->㺴:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    return-void
.end method

.method public 㞘(I)L㚬/ℓ/ཇ/உ;
    .locals 1

    iget-object v0, p0, L㚬/ℓ/ཇ/உ;->䂻:L㚬/ℓ/ཇ/உ$உ;

    invoke-virtual {v0, p1}, L㚬/ℓ/ཇ/உ$உ;->㧦(I)V

    return-object p0
.end method

.method public final 㢏()V
    .locals 6

    iget-object v0, p0, L㚬/ℓ/ཇ/உ;->ḓ:Ljava/lang/Runnable;

    if-nez v0, :cond_0

    new-instance v0, L㚬/ℓ/ཇ/உ$䂻;

    invoke-direct {v0, p0}, L㚬/ℓ/ཇ/உ$䂻;-><init>(L㚬/ℓ/ཇ/உ;)V

    iput-object v0, p0, L㚬/ℓ/ཇ/உ;->ḓ:Ljava/lang/Runnable;

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, L㚬/ℓ/ཇ/உ;->ბ:Z

    iput-boolean v0, p0, L㚬/ℓ/ཇ/உ;->ཇ:Z

    iget-boolean v1, p0, L㚬/ℓ/ཇ/உ;->ἥ:Z

    if-nez v1, :cond_1

    iget v1, p0, L㚬/ℓ/ཇ/உ;->ㄏ:I

    if-lez v1, :cond_1

    iget-object v2, p0, L㚬/ℓ/ཇ/உ;->㺴:Landroid/view/View;

    iget-object v3, p0, L㚬/ℓ/ཇ/உ;->ḓ:Ljava/lang/Runnable;

    int-to-long v4, v1

    invoke-static {v2, v3, v4, v5}, L㚬/ℓ/ἥ/㭲;->ᣑ(Landroid/view/View;Ljava/lang/Runnable;J)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, L㚬/ℓ/ཇ/உ;->ḓ:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    :goto_0
    iput-boolean v0, p0, L㚬/ℓ/ཇ/உ;->ἥ:Z

    return-void
.end method

.method public 㧦(I)L㚬/ℓ/ཇ/உ;
    .locals 0

    iput p1, p0, L㚬/ℓ/ཇ/உ;->ㄏ:I

    return-object p0
.end method

.method public 㭲(FF)L㚬/ℓ/ཇ/உ;
    .locals 2

    iget-object v0, p0, L㚬/ℓ/ཇ/உ;->䆀:[F

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 p1, 0x1

    aput p2, v0, p1

    return-object p0
.end method

.method public 㲝(I)L㚬/ℓ/ཇ/உ;
    .locals 1

    iget-object v0, p0, L㚬/ℓ/ཇ/உ;->䂻:L㚬/ℓ/ཇ/உ$உ;

    invoke-virtual {v0, p1}, L㚬/ℓ/ཇ/உ$உ;->ಫ(I)V

    return-object p0
.end method

.method public 㹖(I)L㚬/ℓ/ཇ/உ;
    .locals 0

    iput p1, p0, L㚬/ℓ/ཇ/உ;->ℓ:I

    return-object p0
.end method

.method public final 㺴(IFFF)F
    .locals 3

    iget-object v0, p0, L㚬/ℓ/ཇ/உ;->䆀:[F

    aget v0, v0, p1

    iget-object v1, p0, L㚬/ℓ/ཇ/உ;->ᆻ:[F

    aget v1, v1, p1

    invoke-virtual {p0, v0, p3, v1, p2}, L㚬/ℓ/ཇ/உ;->ℓ(FFFF)F

    move-result p2

    const/4 p3, 0x0

    cmpl-float v0, p2, p3

    if-nez v0, :cond_0

    return p3

    :cond_0
    iget-object p3, p0, L㚬/ℓ/ཇ/உ;->ಫ:[F

    aget p3, p3, p1

    iget-object v1, p0, L㚬/ℓ/ཇ/உ;->㧦:[F

    aget v1, v1, p1

    iget-object v2, p0, L㚬/ℓ/ཇ/உ;->㹖:[F

    aget p1, v2, p1

    mul-float p3, p3, p4

    if-lez v0, :cond_1

    mul-float p2, p2, p3

    invoke-static {p2, v1, p1}, L㚬/ℓ/ཇ/உ;->ḓ(FFF)F

    move-result p1

    return p1

    :cond_1
    neg-float p2, p2

    mul-float p2, p2, p3

    invoke-static {p2, v1, p1}, L㚬/ℓ/ཇ/உ;->ḓ(FFF)F

    move-result p1

    neg-float p1, p1

    return p1
.end method

.method public abstract 䂻(I)Z
.end method
