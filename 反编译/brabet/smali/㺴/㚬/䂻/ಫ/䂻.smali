.class public final L㺴/㚬/䂻/ಫ/䂻;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field public final ḓ:[I

.field public final 㚬:I

.field public final 㺴:I

.field public final 䂻:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0, p1, p1}, L㺴/㚬/䂻/ಫ/䂻;-><init>(II)V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-lez p1, :cond_0

    if-lez p2, :cond_0

    iput p1, p0, L㺴/㚬/䂻/ಫ/䂻;->䂻:I

    iput p2, p0, L㺴/㚬/䂻/ಫ/䂻;->㚬:I

    add-int/lit8 p1, p1, 0x1f

    div-int/lit8 p1, p1, 0x20

    iput p1, p0, L㺴/㚬/䂻/ಫ/䂻;->㺴:I

    mul-int p1, p1, p2

    new-array p1, p1, [I

    iput-object p1, p0, L㺴/㚬/䂻/ಫ/䂻;->ḓ:[I

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Both dimensions must be greater than 0"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(III[I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, L㺴/㚬/䂻/ಫ/䂻;->䂻:I

    iput p2, p0, L㺴/㚬/䂻/ಫ/䂻;->㚬:I

    iput p3, p0, L㺴/㚬/䂻/ಫ/䂻;->㺴:I

    iput-object p4, p0, L㺴/㚬/䂻/ಫ/䂻;->ḓ:[I

    return-void
.end method


# virtual methods
.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, L㺴/㚬/䂻/ಫ/䂻;->㚬()L㺴/㚬/䂻/ಫ/䂻;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, L㺴/㚬/䂻/ಫ/䂻;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, L㺴/㚬/䂻/ಫ/䂻;

    iget v0, p0, L㺴/㚬/䂻/ಫ/䂻;->䂻:I

    iget v2, p1, L㺴/㚬/䂻/ಫ/䂻;->䂻:I

    if-ne v0, v2, :cond_1

    iget v0, p0, L㺴/㚬/䂻/ಫ/䂻;->㚬:I

    iget v2, p1, L㺴/㚬/䂻/ಫ/䂻;->㚬:I

    if-ne v0, v2, :cond_1

    iget v0, p0, L㺴/㚬/䂻/ಫ/䂻;->㺴:I

    iget v2, p1, L㺴/㚬/䂻/ಫ/䂻;->㺴:I

    if-ne v0, v2, :cond_1

    iget-object v0, p0, L㺴/㚬/䂻/ಫ/䂻;->ḓ:[I

    iget-object p1, p1, L㺴/㚬/䂻/ಫ/䂻;->ḓ:[I

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([I[I)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, L㺴/㚬/䂻/ಫ/䂻;->䂻:I

    mul-int/lit8 v1, v0, 0x1f

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget v0, p0, L㺴/㚬/䂻/ಫ/䂻;->㚬:I

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget v0, p0, L㺴/㚬/䂻/ಫ/䂻;->㺴:I

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, L㺴/㚬/䂻/ಫ/䂻;->ḓ:[I

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([I)I

    move-result v0

    add-int/2addr v1, v0

    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    const-string v0, "X "

    const-string v1, "  "

    invoke-virtual {p0, v0, v1}, L㺴/㚬/䂻/ಫ/䂻;->ㄏ(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final உ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    iget v1, p0, L㺴/㚬/䂻/ಫ/䂻;->㚬:I

    iget v2, p0, L㺴/㚬/䂻/ಫ/䂻;->䂻:I

    add-int/lit8 v2, v2, 0x1

    mul-int v1, v1, v2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    iget v3, p0, L㺴/㚬/䂻/ಫ/䂻;->㚬:I

    if-ge v2, v3, :cond_2

    const/4 v3, 0x0

    :goto_1
    iget v4, p0, L㺴/㚬/䂻/ಫ/䂻;->䂻:I

    if-ge v3, v4, :cond_1

    invoke-virtual {p0, v3, v2}, L㺴/㚬/䂻/ಫ/䂻;->㺴(II)Z

    move-result v4

    if-eqz v4, :cond_0

    move-object v4, p1

    goto :goto_2

    :cond_0
    move-object v4, p2

    :goto_2
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public ᆻ(II)V
    .locals 3

    iget v0, p0, L㺴/㚬/䂻/ಫ/䂻;->㺴:I

    mul-int p2, p2, v0

    div-int/lit8 v0, p1, 0x20

    add-int/2addr p2, v0

    iget-object v0, p0, L㺴/㚬/䂻/ಫ/䂻;->ḓ:[I

    aget v1, v0, p2

    and-int/lit8 p1, p1, 0x1f

    const/4 v2, 0x1

    shl-int p1, v2, p1

    or-int/2addr p1, v1

    aput p1, v0, p2

    return-void
.end method

.method public ḓ()I
    .locals 1

    iget v0, p0, L㺴/㚬/䂻/ಫ/䂻;->㚬:I

    return v0
.end method

.method public ℓ(IIII)V
    .locals 7

    if-ltz p2, :cond_4

    if-ltz p1, :cond_4

    if-lez p4, :cond_3

    if-lez p3, :cond_3

    add-int/2addr p3, p1

    add-int/2addr p4, p2

    iget v0, p0, L㺴/㚬/䂻/ಫ/䂻;->㚬:I

    if-gt p4, v0, :cond_2

    iget v0, p0, L㺴/㚬/䂻/ಫ/䂻;->䂻:I

    if-gt p3, v0, :cond_2

    :goto_0
    if-ge p2, p4, :cond_1

    iget v0, p0, L㺴/㚬/䂻/ಫ/䂻;->㺴:I

    mul-int v0, v0, p2

    move v1, p1

    :goto_1
    if-ge v1, p3, :cond_0

    iget-object v2, p0, L㺴/㚬/䂻/ಫ/䂻;->ḓ:[I

    div-int/lit8 v3, v1, 0x20

    add-int/2addr v3, v0

    aget v4, v2, v3

    and-int/lit8 v5, v1, 0x1f

    const/4 v6, 0x1

    shl-int v5, v6, v5

    or-int/2addr v4, v5

    aput v4, v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    return-void

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The region must fit inside the matrix"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Height and width must be at least 1"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Left and top must be nonnegative"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public ㄏ(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "\n"

    invoke-virtual {p0, p1, p2, v0}, L㺴/㚬/䂻/ಫ/䂻;->உ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public 㚬()L㺴/㚬/䂻/ಫ/䂻;
    .locals 5

    new-instance v0, L㺴/㚬/䂻/ಫ/䂻;

    iget v1, p0, L㺴/㚬/䂻/ಫ/䂻;->䂻:I

    iget v2, p0, L㺴/㚬/䂻/ಫ/䂻;->㚬:I

    iget v3, p0, L㺴/㚬/䂻/ಫ/䂻;->㺴:I

    iget-object v4, p0, L㺴/㚬/䂻/ಫ/䂻;->ḓ:[I

    invoke-virtual {v4}, [I->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [I

    invoke-direct {v0, v1, v2, v3, v4}, L㺴/㚬/䂻/ಫ/䂻;-><init>(III[I)V

    return-object v0
.end method

.method public 㺴(II)Z
    .locals 1

    iget v0, p0, L㺴/㚬/䂻/ಫ/䂻;->㺴:I

    mul-int p2, p2, v0

    div-int/lit8 v0, p1, 0x20

    add-int/2addr p2, v0

    iget-object v0, p0, L㺴/㚬/䂻/ಫ/䂻;->ḓ:[I

    aget p2, v0, p2

    and-int/lit8 p1, p1, 0x1f

    ushr-int p1, p2, p1

    const/4 p2, 0x1

    and-int/2addr p1, p2

    if-eqz p1, :cond_0

    return p2

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public 䂻()V
    .locals 4

    iget-object v0, p0, L㺴/㚬/䂻/ಫ/䂻;->ḓ:[I

    array-length v0, v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    iget-object v3, p0, L㺴/㚬/䂻/ಫ/䂻;->ḓ:[I

    aput v1, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public 䆀()I
    .locals 1

    iget v0, p0, L㺴/㚬/䂻/ಫ/䂻;->䂻:I

    return v0
.end method
