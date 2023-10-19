.class public L㺴/㚬/உ/䂻/ᱹ/ἥ$䂻;
.super L㺴/㚬/உ/䂻/ᱹ/ἥ$ᆻ;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = L㺴/㚬/உ/䂻/ᱹ/ἥ;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "\u40bb"
.end annotation


# instance fields
.field public final 䂻:L㺴/㚬/உ/䂻/ᱹ/ἥ$㺴;


# direct methods
.method public constructor <init>(L㺴/㚬/உ/䂻/ᱹ/ἥ$㺴;)V
    .locals 0

    invoke-direct {p0}, L㺴/㚬/உ/䂻/ᱹ/ἥ$ᆻ;-><init>()V

    iput-object p1, p0, L㺴/㚬/உ/䂻/ᱹ/ἥ$䂻;->䂻:L㺴/㚬/உ/䂻/ᱹ/ἥ$㺴;

    return-void
.end method


# virtual methods
.method public உ(Landroid/graphics/Matrix;L㺴/㚬/உ/䂻/ᰘ/உ;ILandroid/graphics/Canvas;)V
    .locals 8

    iget-object v0, p0, L㺴/㚬/உ/䂻/ᱹ/ἥ$䂻;->䂻:L㺴/㚬/உ/䂻/ᱹ/ἥ$㺴;

    invoke-static {v0}, L㺴/㚬/உ/䂻/ᱹ/ἥ$㺴;->ℓ(L㺴/㚬/உ/䂻/ᱹ/ἥ$㺴;)F

    move-result v6

    iget-object v0, p0, L㺴/㚬/உ/䂻/ᱹ/ἥ$䂻;->䂻:L㺴/㚬/உ/䂻/ᱹ/ἥ$㺴;

    invoke-static {v0}, L㺴/㚬/உ/䂻/ᱹ/ἥ$㺴;->ㄏ(L㺴/㚬/உ/䂻/ᱹ/ἥ$㺴;)F

    move-result v7

    new-instance v4, Landroid/graphics/RectF;

    iget-object v0, p0, L㺴/㚬/உ/䂻/ᱹ/ἥ$䂻;->䂻:L㺴/㚬/உ/䂻/ᱹ/ἥ$㺴;

    invoke-static {v0}, L㺴/㚬/உ/䂻/ᱹ/ἥ$㺴;->䂻(L㺴/㚬/உ/䂻/ᱹ/ἥ$㺴;)F

    move-result v0

    iget-object v1, p0, L㺴/㚬/உ/䂻/ᱹ/ἥ$䂻;->䂻:L㺴/㚬/உ/䂻/ᱹ/ἥ$㺴;

    invoke-static {v1}, L㺴/㚬/உ/䂻/ᱹ/ἥ$㺴;->㚬(L㺴/㚬/உ/䂻/ᱹ/ἥ$㺴;)F

    move-result v1

    iget-object v2, p0, L㺴/㚬/உ/䂻/ᱹ/ἥ$䂻;->䂻:L㺴/㚬/உ/䂻/ᱹ/ἥ$㺴;

    invoke-static {v2}, L㺴/㚬/உ/䂻/ᱹ/ἥ$㺴;->㺴(L㺴/㚬/உ/䂻/ᱹ/ἥ$㺴;)F

    move-result v2

    iget-object v3, p0, L㺴/㚬/உ/䂻/ᱹ/ἥ$䂻;->䂻:L㺴/㚬/உ/䂻/ᱹ/ἥ$㺴;

    invoke-static {v3}, L㺴/㚬/உ/䂻/ᱹ/ἥ$㺴;->ḓ(L㺴/㚬/உ/䂻/ᱹ/ἥ$㺴;)F

    move-result v3

    invoke-direct {v4, v0, v1, v2, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    move-object v1, p2

    move-object v2, p4

    move-object v3, p1

    move v5, p3

    invoke-virtual/range {v1 .. v7}, L㺴/㚬/உ/䂻/ᰘ/உ;->உ(Landroid/graphics/Canvas;Landroid/graphics/Matrix;Landroid/graphics/RectF;IFF)V

    return-void
.end method
