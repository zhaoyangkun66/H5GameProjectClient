.class public L㺴/㚬/உ/䂻/ᱹ/ἥ$㺴;
.super L㺴/㚬/உ/䂻/ᱹ/ἥ$䆀;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = L㺴/㚬/உ/䂻/ᱹ/ἥ;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "\u3eb4"
.end annotation


# static fields
.field public static final ℓ:Landroid/graphics/RectF;


# instance fields
.field public ᆻ:F
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public ḓ:F
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public 㚬:F
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public 㺴:F
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public 䂻:F
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public 䆀:F
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    sput-object v0, L㺴/㚬/உ/䂻/ᱹ/ἥ$㺴;->ℓ:Landroid/graphics/RectF;

    return-void
.end method

.method public constructor <init>(FFFF)V
    .locals 0

    invoke-direct {p0}, L㺴/㚬/உ/䂻/ᱹ/ἥ$䆀;-><init>()V

    invoke-virtual {p0, p1}, L㺴/㚬/உ/䂻/ᱹ/ἥ$㺴;->㲝(F)V

    invoke-virtual {p0, p2}, L㺴/㚬/உ/䂻/ᱹ/ἥ$㺴;->㖪(F)V

    invoke-virtual {p0, p3}, L㺴/㚬/உ/䂻/ᱹ/ἥ$㺴;->㞘(F)V

    invoke-virtual {p0, p4}, L㺴/㚬/உ/䂻/ᱹ/ἥ$㺴;->ბ(F)V

    return-void
.end method

.method public static synthetic ᆻ(L㺴/㚬/உ/䂻/ᱹ/ἥ$㺴;F)V
    .locals 0

    invoke-virtual {p0, p1}, L㺴/㚬/உ/䂻/ᱹ/ἥ$㺴;->ḙ(F)V

    return-void
.end method

.method public static synthetic ḓ(L㺴/㚬/உ/䂻/ᱹ/ἥ$㺴;)F
    .locals 0

    invoke-virtual {p0}, L㺴/㚬/உ/䂻/ᱹ/ἥ$㺴;->ಫ()F

    move-result p0

    return p0
.end method

.method public static synthetic ℓ(L㺴/㚬/உ/䂻/ᱹ/ἥ$㺴;)F
    .locals 0

    invoke-virtual {p0}, L㺴/㚬/உ/䂻/ᱹ/ἥ$㺴;->ἥ()F

    move-result p0

    return p0
.end method

.method public static synthetic ㄏ(L㺴/㚬/உ/䂻/ᱹ/ἥ$㺴;)F
    .locals 0

    invoke-virtual {p0}, L㺴/㚬/உ/䂻/ᱹ/ἥ$㺴;->ཇ()F

    move-result p0

    return p0
.end method

.method public static synthetic 㚬(L㺴/㚬/உ/䂻/ᱹ/ἥ$㺴;)F
    .locals 0

    invoke-virtual {p0}, L㺴/㚬/உ/䂻/ᱹ/ἥ$㺴;->ᓭ()F

    move-result p0

    return p0
.end method

.method public static synthetic 㺴(L㺴/㚬/உ/䂻/ᱹ/ἥ$㺴;)F
    .locals 0

    invoke-virtual {p0}, L㺴/㚬/உ/䂻/ᱹ/ἥ$㺴;->㹖()F

    move-result p0

    return p0
.end method

.method public static synthetic 䂻(L㺴/㚬/உ/䂻/ᱹ/ἥ$㺴;)F
    .locals 0

    invoke-virtual {p0}, L㺴/㚬/உ/䂻/ᱹ/ἥ$㺴;->㧦()F

    move-result p0

    return p0
.end method

.method public static synthetic 䆀(L㺴/㚬/உ/䂻/ᱹ/ἥ$㺴;F)V
    .locals 0

    invoke-virtual {p0, p1}, L㺴/㚬/உ/䂻/ᱹ/ἥ$㺴;->㭲(F)V

    return-void
.end method


# virtual methods
.method public உ(Landroid/graphics/Matrix;Landroid/graphics/Path;)V
    .locals 5

    iget-object v0, p0, L㺴/㚬/உ/䂻/ᱹ/ἥ$䆀;->உ:Landroid/graphics/Matrix;

    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    invoke-virtual {p2, v0}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    sget-object v0, L㺴/㚬/உ/䂻/ᱹ/ἥ$㺴;->ℓ:Landroid/graphics/RectF;

    invoke-virtual {p0}, L㺴/㚬/உ/䂻/ᱹ/ἥ$㺴;->㧦()F

    move-result v1

    invoke-virtual {p0}, L㺴/㚬/உ/䂻/ᱹ/ἥ$㺴;->ᓭ()F

    move-result v2

    invoke-virtual {p0}, L㺴/㚬/உ/䂻/ᱹ/ἥ$㺴;->㹖()F

    move-result v3

    invoke-virtual {p0}, L㺴/㚬/உ/䂻/ᱹ/ἥ$㺴;->ಫ()F

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    invoke-virtual {p0}, L㺴/㚬/உ/䂻/ᱹ/ἥ$㺴;->ἥ()F

    move-result v1

    invoke-virtual {p0}, L㺴/㚬/உ/䂻/ᱹ/ἥ$㺴;->ཇ()F

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {p2, v0, v1, v2, v3}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FFZ)V

    invoke-virtual {p2, p1}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    return-void
.end method

.method public final ಫ()F
    .locals 1

    iget v0, p0, L㺴/㚬/உ/䂻/ᱹ/ἥ$㺴;->ḓ:F

    return v0
.end method

.method public final ཇ()F
    .locals 1

    iget v0, p0, L㺴/㚬/உ/䂻/ᱹ/ἥ$㺴;->ᆻ:F

    return v0
.end method

.method public final ბ(F)V
    .locals 0

    iput p1, p0, L㺴/㚬/உ/䂻/ᱹ/ἥ$㺴;->ḓ:F

    return-void
.end method

.method public final ᓭ()F
    .locals 1

    iget v0, p0, L㺴/㚬/உ/䂻/ᱹ/ἥ$㺴;->㚬:F

    return v0
.end method

.method public final ḙ(F)V
    .locals 0

    iput p1, p0, L㺴/㚬/உ/䂻/ᱹ/ἥ$㺴;->ᆻ:F

    return-void
.end method

.method public final ἥ()F
    .locals 1

    iget v0, p0, L㺴/㚬/உ/䂻/ᱹ/ἥ$㺴;->䆀:F

    return v0
.end method

.method public final 㖪(F)V
    .locals 0

    iput p1, p0, L㺴/㚬/உ/䂻/ᱹ/ἥ$㺴;->㚬:F

    return-void
.end method

.method public final 㞘(F)V
    .locals 0

    iput p1, p0, L㺴/㚬/உ/䂻/ᱹ/ἥ$㺴;->㺴:F

    return-void
.end method

.method public final 㧦()F
    .locals 1

    iget v0, p0, L㺴/㚬/உ/䂻/ᱹ/ἥ$㺴;->䂻:F

    return v0
.end method

.method public final 㭲(F)V
    .locals 0

    iput p1, p0, L㺴/㚬/உ/䂻/ᱹ/ἥ$㺴;->䆀:F

    return-void
.end method

.method public final 㲝(F)V
    .locals 0

    iput p1, p0, L㺴/㚬/உ/䂻/ᱹ/ἥ$㺴;->䂻:F

    return-void
.end method

.method public final 㹖()F
    .locals 1

    iget v0, p0, L㺴/㚬/உ/䂻/ᱹ/ἥ$㺴;->㺴:F

    return v0
.end method
