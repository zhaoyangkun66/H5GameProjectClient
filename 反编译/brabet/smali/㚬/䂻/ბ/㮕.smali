.class public L㚬/䂻/ბ/㮕;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final உ:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Landroid/util/TypedValue;",
            ">;"
        }
    .end annotation
.end field

.field public static final ᆻ:[I

.field public static final ḓ:[I

.field public static final 㚬:[I

.field public static final 㺴:[I

.field public static final 䂻:[I

.field public static final 䆀:[I


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, L㚬/䂻/ბ/㮕;->உ:Ljava/lang/ThreadLocal;

    const/4 v0, 0x1

    new-array v1, v0, [I

    const v2, -0x101009e

    const/4 v3, 0x0

    aput v2, v1, v3

    sput-object v1, L㚬/䂻/ბ/㮕;->䂻:[I

    new-array v1, v0, [I

    const v2, 0x101009c

    aput v2, v1, v3

    sput-object v1, L㚬/䂻/ბ/㮕;->㚬:[I

    new-array v1, v0, [I

    const v2, 0x10100a7

    aput v2, v1, v3

    sput-object v1, L㚬/䂻/ბ/㮕;->㺴:[I

    new-array v1, v0, [I

    const v2, 0x10100a0

    aput v2, v1, v3

    sput-object v1, L㚬/䂻/ბ/㮕;->ḓ:[I

    new-array v1, v3, [I

    sput-object v1, L㚬/䂻/ბ/㮕;->䆀:[I

    new-array v0, v0, [I

    sput-object v0, L㚬/䂻/ბ/㮕;->ᆻ:[I

    return-void
.end method

.method public static உ(Landroid/content/Context;I)I
    .locals 4

    invoke-static {p0, p1}, L㚬/䂻/ბ/㮕;->㺴(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object p0, L㚬/䂻/ბ/㮕;->䂻:[I

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result p1

    invoke-virtual {v0, p0, p1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result p0

    return p0

    :cond_0
    invoke-static {}, L㚬/䂻/ბ/㮕;->ḓ()Landroid/util/TypedValue;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const v2, 0x1010033

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    invoke-virtual {v0}, Landroid/util/TypedValue;->getFloat()F

    move-result v0

    invoke-static {p0, p1, v0}, L㚬/䂻/ბ/㮕;->㚬(Landroid/content/Context;IF)I

    move-result p0

    return p0
.end method

.method public static ḓ()Landroid/util/TypedValue;
    .locals 2

    sget-object v0, L㚬/䂻/ბ/㮕;->உ:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/TypedValue;

    if-nez v1, :cond_0

    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :cond_0
    return-object v1
.end method

.method public static 㚬(Landroid/content/Context;IF)I
    .locals 0

    invoke-static {p0, p1}, L㚬/䂻/ბ/㮕;->䂻(Landroid/content/Context;I)I

    move-result p0

    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    move-result p1

    int-to-float p1, p1

    mul-float p1, p1, p2

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    invoke-static {p0, p1}, L㚬/ℓ/䆀/உ;->㺴(II)I

    move-result p0

    return p0
.end method

.method public static 㺴(Landroid/content/Context;I)Landroid/content/res/ColorStateList;
    .locals 2

    sget-object v0, L㚬/䂻/ბ/㮕;->ᆻ:[I

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 p1, 0x0

    invoke-static {p0, p1, v0}, L㚬/䂻/ბ/ᣝ;->ḙ(Landroid/content/Context;Landroid/util/AttributeSet;[I)L㚬/䂻/ბ/ᣝ;

    move-result-object p0

    :try_start_0
    invoke-virtual {p0, v1}, L㚬/䂻/ბ/ᣝ;->㚬(I)Landroid/content/res/ColorStateList;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, L㚬/䂻/ბ/ᣝ;->㢏()V

    return-object p1

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, L㚬/䂻/ბ/ᣝ;->㢏()V

    throw p1
.end method

.method public static 䂻(Landroid/content/Context;I)I
    .locals 2

    sget-object v0, L㚬/䂻/ბ/㮕;->ᆻ:[I

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 p1, 0x0

    invoke-static {p0, p1, v0}, L㚬/䂻/ბ/ᣝ;->ḙ(Landroid/content/Context;Landroid/util/AttributeSet;[I)L㚬/䂻/ბ/ᣝ;

    move-result-object p0

    :try_start_0
    invoke-virtual {p0, v1, v1}, L㚬/䂻/ბ/ᣝ;->䂻(II)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, L㚬/䂻/ბ/ᣝ;->㢏()V

    return p1

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, L㚬/䂻/ბ/ᣝ;->㢏()V

    throw p1
.end method
