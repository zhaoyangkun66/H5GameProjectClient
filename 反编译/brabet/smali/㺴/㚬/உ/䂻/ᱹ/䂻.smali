.class public final L㺴/㚬/உ/䂻/ᱹ/䂻;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements L㺴/㚬/உ/䂻/ᱹ/㚬;


# instance fields
.field public final உ:L㺴/㚬/உ/䂻/ᱹ/㚬;

.field public final 䂻:F


# direct methods
.method public constructor <init>(FL㺴/㚬/உ/䂻/ᱹ/㚬;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    :goto_0
    instance-of v0, p2, L㺴/㚬/உ/䂻/ᱹ/䂻;

    if-eqz v0, :cond_0

    check-cast p2, L㺴/㚬/உ/䂻/ᱹ/䂻;

    iget-object p2, p2, L㺴/㚬/உ/䂻/ᱹ/䂻;->உ:L㺴/㚬/உ/䂻/ᱹ/㚬;

    move-object v0, p2

    check-cast v0, L㺴/㚬/உ/䂻/ᱹ/䂻;

    iget v0, v0, L㺴/㚬/உ/䂻/ᱹ/䂻;->䂻:F

    add-float/2addr p1, v0

    goto :goto_0

    :cond_0
    iput-object p2, p0, L㺴/㚬/உ/䂻/ᱹ/䂻;->உ:L㺴/㚬/உ/䂻/ᱹ/㚬;

    iput p1, p0, L㺴/㚬/உ/䂻/ᱹ/䂻;->䂻:F

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, L㺴/㚬/உ/䂻/ᱹ/䂻;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, L㺴/㚬/உ/䂻/ᱹ/䂻;

    iget-object v1, p0, L㺴/㚬/உ/䂻/ᱹ/䂻;->உ:L㺴/㚬/உ/䂻/ᱹ/㚬;

    iget-object v3, p1, L㺴/㚬/உ/䂻/ᱹ/䂻;->உ:L㺴/㚬/உ/䂻/ᱹ/㚬;

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget v1, p0, L㺴/㚬/உ/䂻/ᱹ/䂻;->䂻:F

    iget p1, p1, L㺴/㚬/உ/䂻/ᱹ/䂻;->䂻:F

    cmpl-float p1, v1, p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, L㺴/㚬/உ/䂻/ᱹ/䂻;->உ:L㺴/㚬/உ/䂻/ᱹ/㚬;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, L㺴/㚬/உ/䂻/ᱹ/䂻;->䂻:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public உ(Landroid/graphics/RectF;)F
    .locals 1

    iget-object v0, p0, L㺴/㚬/உ/䂻/ᱹ/䂻;->உ:L㺴/㚬/உ/䂻/ᱹ/㚬;

    invoke-interface {v0, p1}, L㺴/㚬/உ/䂻/ᱹ/㚬;->உ(Landroid/graphics/RectF;)F

    move-result p1

    iget v0, p0, L㺴/㚬/உ/䂻/ᱹ/䂻;->䂻:F

    add-float/2addr p1, v0

    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    return p1
.end method
