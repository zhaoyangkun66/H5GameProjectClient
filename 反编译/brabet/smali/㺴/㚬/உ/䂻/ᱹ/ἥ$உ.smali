.class public L㺴/㚬/உ/䂻/ᱹ/ἥ$உ;
.super L㺴/㚬/உ/䂻/ᱹ/ἥ$ᆻ;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = L㺴/㚬/உ/䂻/ᱹ/ἥ;->ḓ(Landroid/graphics/Matrix;)L㺴/㚬/உ/䂻/ᱹ/ἥ$ᆻ;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic 㚬:Landroid/graphics/Matrix;

.field public final synthetic 䂻:Ljava/util/List;


# direct methods
.method public constructor <init>(L㺴/㚬/உ/䂻/ᱹ/ἥ;Ljava/util/List;Landroid/graphics/Matrix;)V
    .locals 0

    iput-object p2, p0, L㺴/㚬/உ/䂻/ᱹ/ἥ$உ;->䂻:Ljava/util/List;

    iput-object p3, p0, L㺴/㚬/உ/䂻/ᱹ/ἥ$உ;->㚬:Landroid/graphics/Matrix;

    invoke-direct {p0}, L㺴/㚬/உ/䂻/ᱹ/ἥ$ᆻ;-><init>()V

    return-void
.end method


# virtual methods
.method public உ(Landroid/graphics/Matrix;L㺴/㚬/உ/䂻/ᰘ/உ;ILandroid/graphics/Canvas;)V
    .locals 2

    iget-object p1, p0, L㺴/㚬/உ/䂻/ᱹ/ἥ$உ;->䂻:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, L㺴/㚬/உ/䂻/ᱹ/ἥ$ᆻ;

    iget-object v1, p0, L㺴/㚬/உ/䂻/ᱹ/ἥ$உ;->㚬:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1, p2, p3, p4}, L㺴/㚬/உ/䂻/ᱹ/ἥ$ᆻ;->உ(Landroid/graphics/Matrix;L㺴/㚬/உ/䂻/ᰘ/உ;ILandroid/graphics/Canvas;)V

    goto :goto_0

    :cond_0
    return-void
.end method
