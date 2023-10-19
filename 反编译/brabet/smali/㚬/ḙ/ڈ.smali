.class public L㚬/ḙ/ڈ;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final உ:L㚬/ḙ/㥁;

.field public static final 䂻:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Landroid/view/View;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    new-instance v0, L㚬/ḙ/ᱹ;

    invoke-direct {v0}, L㚬/ḙ/ᱹ;-><init>()V

    :goto_0
    sput-object v0, L㚬/ḙ/ڈ;->உ:L㚬/ḙ/㥁;

    goto :goto_1

    :cond_0
    const/16 v1, 0x17

    if-lt v0, v1, :cond_1

    new-instance v0, L㚬/ḙ/ᰘ;

    invoke-direct {v0}, L㚬/ḙ/ᰘ;-><init>()V

    goto :goto_0

    :cond_1
    const/16 v1, 0x16

    if-lt v0, v1, :cond_2

    new-instance v0, L㚬/ḙ/㨃;

    invoke-direct {v0}, L㚬/ḙ/㨃;-><init>()V

    goto :goto_0

    :cond_2
    const/16 v1, 0x15

    if-lt v0, v1, :cond_3

    new-instance v0, L㚬/ḙ/ש;

    invoke-direct {v0}, L㚬/ḙ/ש;-><init>()V

    goto :goto_0

    :cond_3
    const/16 v1, 0x13

    if-lt v0, v1, :cond_4

    new-instance v0, L㚬/ḙ/㰫;

    invoke-direct {v0}, L㚬/ḙ/㰫;-><init>()V

    goto :goto_0

    :cond_4
    new-instance v0, L㚬/ḙ/㥁;

    invoke-direct {v0}, L㚬/ḙ/㥁;-><init>()V

    goto :goto_0

    :goto_1
    new-instance v0, L㚬/ḙ/ڈ$உ;

    const-class v1, Ljava/lang/Float;

    const-string v2, "translationAlpha"

    invoke-direct {v0, v1, v2}, L㚬/ḙ/ڈ$உ;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, L㚬/ḙ/ڈ;->䂻:Landroid/util/Property;

    new-instance v0, L㚬/ḙ/ڈ$䂻;

    const-class v1, Landroid/graphics/Rect;

    const-string v2, "clipBounds"

    invoke-direct {v0, v1, v2}, L㚬/ḙ/ڈ$䂻;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    return-void
.end method

.method public static உ(Landroid/view/View;)V
    .locals 1

    sget-object v0, L㚬/ḙ/ڈ;->உ:L㚬/ḙ/㥁;

    invoke-virtual {v0, p0}, L㚬/ḙ/㥁;->உ(Landroid/view/View;)V

    return-void
.end method

.method public static ಫ(Landroid/view/View;Landroid/graphics/Matrix;)V
    .locals 1

    sget-object v0, L㚬/ḙ/ڈ;->உ:L㚬/ḙ/㥁;

    invoke-virtual {v0, p0, p1}, L㚬/ḙ/㥁;->ㄏ(Landroid/view/View;Landroid/graphics/Matrix;)V

    return-void
.end method

.method public static ᆻ(Landroid/view/View;F)V
    .locals 1

    sget-object v0, L㚬/ḙ/ڈ;->உ:L㚬/ḙ/㥁;

    invoke-virtual {v0, p0, p1}, L㚬/ḙ/㥁;->䆀(Landroid/view/View;F)V

    return-void
.end method

.method public static ḓ(Landroid/view/View;)V
    .locals 1

    sget-object v0, L㚬/ḙ/ڈ;->உ:L㚬/ḙ/㥁;

    invoke-virtual {v0, p0}, L㚬/ḙ/㥁;->㺴(Landroid/view/View;)V

    return-void
.end method

.method public static ℓ(Landroid/view/View;I)V
    .locals 1

    sget-object v0, L㚬/ḙ/ڈ;->உ:L㚬/ḙ/㥁;

    invoke-virtual {v0, p0, p1}, L㚬/ḙ/㥁;->ᆻ(Landroid/view/View;I)V

    return-void
.end method

.method public static ㄏ(Landroid/view/View;Landroid/graphics/Matrix;)V
    .locals 1

    sget-object v0, L㚬/ḙ/ڈ;->உ:L㚬/ḙ/㥁;

    invoke-virtual {v0, p0, p1}, L㚬/ḙ/㥁;->ℓ(Landroid/view/View;Landroid/graphics/Matrix;)V

    return-void
.end method

.method public static 㚬(Landroid/view/View;)F
    .locals 1

    sget-object v0, L㚬/ḙ/ڈ;->உ:L㚬/ḙ/㥁;

    invoke-virtual {v0, p0}, L㚬/ḙ/㥁;->㚬(Landroid/view/View;)F

    move-result p0

    return p0
.end method

.method public static 㺴(Landroid/view/View;)L㚬/ḙ/Խ;
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_0

    new-instance v0, L㚬/ḙ/㭢;

    invoke-direct {v0, p0}, L㚬/ḙ/㭢;-><init>(Landroid/view/View;)V

    return-object v0

    :cond_0
    new-instance v0, L㚬/ḙ/㖆;

    invoke-virtual {p0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object p0

    invoke-direct {v0, p0}, L㚬/ḙ/㖆;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static 䂻(Landroid/view/View;)L㚬/ḙ/ᾦ;
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_0

    new-instance v0, L㚬/ḙ/ಋ;

    invoke-direct {v0, p0}, L㚬/ḙ/ಋ;-><init>(Landroid/view/View;)V

    return-object v0

    :cond_0
    invoke-static {p0}, L㚬/ḙ/㫏;->ḓ(Landroid/view/View;)L㚬/ḙ/㫏;

    move-result-object p0

    return-object p0
.end method

.method public static 䆀(Landroid/view/View;IIII)V
    .locals 6

    sget-object v0, L㚬/ḙ/ڈ;->உ:L㚬/ḙ/㥁;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, L㚬/ḙ/㥁;->ḓ(Landroid/view/View;IIII)V

    return-void
.end method
