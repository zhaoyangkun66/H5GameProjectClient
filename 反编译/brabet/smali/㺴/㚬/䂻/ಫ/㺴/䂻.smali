.class public final L㺴/㚬/䂻/ಫ/㺴/䂻;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final உ:L㺴/㚬/䂻/ಫ/㺴/உ;

.field public final 䂻:[I


# direct methods
.method public constructor <init>(L㺴/㚬/䂻/ಫ/㺴/உ;[I)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    array-length v0, p2

    if-eqz v0, :cond_3

    iput-object p1, p0, L㺴/㚬/䂻/ಫ/㺴/䂻;->உ:L㺴/㚬/䂻/ಫ/㺴/உ;

    array-length p1, p2

    const/4 v0, 0x1

    if-le p1, v0, :cond_2

    const/4 v1, 0x0

    aget v2, p2, v1

    if-nez v2, :cond_2

    const/4 v2, 0x1

    :goto_0
    if-ge v2, p1, :cond_0

    aget v3, p2, v2

    if-nez v3, :cond_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    if-ne v2, p1, :cond_1

    new-array p1, v0, [I

    aput v1, p1, v1

    iput-object p1, p0, L㺴/㚬/䂻/ಫ/㺴/䂻;->䂻:[I

    return-void

    :cond_1
    sub-int/2addr p1, v2

    new-array p1, p1, [I

    iput-object p1, p0, L㺴/㚬/䂻/ಫ/㺴/䂻;->䂻:[I

    array-length v0, p1

    invoke-static {p2, v2, p1, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void

    :cond_2
    iput-object p2, p0, L㺴/㚬/䂻/ಫ/㺴/䂻;->䂻:[I

    return-void

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, L㺴/㚬/䂻/ಫ/㺴/䂻;->ḓ()I

    move-result v1

    mul-int/lit8 v1, v1, 0x8

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {p0}, L㺴/㚬/䂻/ಫ/㺴/䂻;->ḓ()I

    move-result v1

    :goto_0
    if-ltz v1, :cond_8

    invoke-virtual {p0, v1}, L㺴/㚬/䂻/ಫ/㺴/䂻;->㚬(I)I

    move-result v2

    if-eqz v2, :cond_7

    if-gez v2, :cond_0

    const-string v3, " - "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    neg-int v2, v2

    goto :goto_1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_1

    const-string v3, " + "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    :goto_1
    const/4 v3, 0x1

    if-eqz v1, :cond_2

    if-eq v2, v3, :cond_5

    :cond_2
    iget-object v4, p0, L㺴/㚬/䂻/ಫ/㺴/䂻;->உ:L㺴/㚬/䂻/ಫ/㺴/உ;

    invoke-virtual {v4, v2}, L㺴/㚬/䂻/ಫ/㺴/உ;->ᆻ(I)I

    move-result v2

    if-nez v2, :cond_3

    const/16 v2, 0x31

    :goto_2
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_3
    if-ne v2, v3, :cond_4

    const/16 v2, 0x61

    goto :goto_2

    :cond_4
    const-string v4, "a^"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_5
    :goto_3
    if-eqz v1, :cond_7

    if-ne v1, v3, :cond_6

    const/16 v2, 0x78

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_4

    :cond_6
    const-string v2, "x^"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_7
    :goto_4
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_8
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public உ(L㺴/㚬/䂻/ಫ/㺴/䂻;)L㺴/㚬/䂻/ಫ/㺴/䂻;
    .locals 7

    iget-object v0, p0, L㺴/㚬/䂻/ಫ/㺴/䂻;->உ:L㺴/㚬/䂻/ಫ/㺴/உ;

    iget-object v1, p1, L㺴/㚬/䂻/ಫ/㺴/䂻;->உ:L㺴/㚬/䂻/ಫ/㺴/உ;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, L㺴/㚬/䂻/ಫ/㺴/䂻;->䆀()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    :cond_0
    invoke-virtual {p1}, L㺴/㚬/䂻/ಫ/㺴/䂻;->䆀()Z

    move-result v0

    if-eqz v0, :cond_1

    return-object p0

    :cond_1
    iget-object v0, p0, L㺴/㚬/䂻/ಫ/㺴/䂻;->䂻:[I

    iget-object p1, p1, L㺴/㚬/䂻/ಫ/㺴/䂻;->䂻:[I

    array-length v1, v0

    array-length v2, p1

    if-le v1, v2, :cond_2

    goto :goto_0

    :cond_2
    move-object v6, v0

    move-object v0, p1

    move-object p1, v6

    :goto_0
    array-length v1, v0

    new-array v1, v1, [I

    array-length v2, v0

    array-length v3, p1

    sub-int/2addr v2, v3

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move v3, v2

    :goto_1
    array-length v4, v0

    if-ge v3, v4, :cond_3

    sub-int v4, v3, v2

    aget v4, p1, v4

    aget v5, v0, v3

    invoke-static {v4, v5}, L㺴/㚬/䂻/ಫ/㺴/உ;->உ(II)I

    move-result v4

    aput v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    new-instance p1, L㺴/㚬/䂻/ಫ/㺴/䂻;

    iget-object v0, p0, L㺴/㚬/䂻/ಫ/㺴/䂻;->உ:L㺴/㚬/䂻/ಫ/㺴/உ;

    invoke-direct {p1, v0, v1}, L㺴/㚬/䂻/ಫ/㺴/䂻;-><init>(L㺴/㚬/䂻/ಫ/㺴/உ;[I)V

    return-object p1

    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "GenericGFPolys do not have same GenericGF field"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public ᆻ(L㺴/㚬/䂻/ಫ/㺴/䂻;)L㺴/㚬/䂻/ಫ/㺴/䂻;
    .locals 12

    iget-object v0, p0, L㺴/㚬/䂻/ಫ/㺴/䂻;->உ:L㺴/㚬/䂻/ಫ/㺴/உ;

    iget-object v1, p1, L㺴/㚬/䂻/ಫ/㺴/䂻;->உ:L㺴/㚬/䂻/ಫ/㺴/உ;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, L㺴/㚬/䂻/ಫ/㺴/䂻;->䆀()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p1}, L㺴/㚬/䂻/ಫ/㺴/䂻;->䆀()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    :cond_0
    iget-object v0, p0, L㺴/㚬/䂻/ಫ/㺴/䂻;->䂻:[I

    array-length v1, v0

    iget-object p1, p1, L㺴/㚬/䂻/ಫ/㺴/䂻;->䂻:[I

    array-length v2, p1

    add-int v3, v1, v2

    add-int/lit8 v3, v3, -0x1

    new-array v3, v3, [I

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v1, :cond_2

    aget v6, v0, v5

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v2, :cond_1

    add-int v8, v5, v7

    aget v9, v3, v8

    iget-object v10, p0, L㺴/㚬/䂻/ಫ/㺴/䂻;->உ:L㺴/㚬/䂻/ಫ/㺴/உ;

    aget v11, p1, v7

    invoke-virtual {v10, v6, v11}, L㺴/㚬/䂻/ಫ/㺴/உ;->ℓ(II)I

    move-result v10

    invoke-static {v9, v10}, L㺴/㚬/䂻/ಫ/㺴/உ;->உ(II)I

    move-result v9

    aput v9, v3, v8

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    new-instance p1, L㺴/㚬/䂻/ಫ/㺴/䂻;

    iget-object v0, p0, L㺴/㚬/䂻/ಫ/㺴/䂻;->உ:L㺴/㚬/䂻/ಫ/㺴/உ;

    invoke-direct {p1, v0, v3}, L㺴/㚬/䂻/ಫ/㺴/䂻;-><init>(L㺴/㚬/䂻/ಫ/㺴/உ;[I)V

    return-object p1

    :cond_3
    :goto_2
    iget-object p1, p0, L㺴/㚬/䂻/ಫ/㺴/䂻;->உ:L㺴/㚬/䂻/ಫ/㺴/உ;

    invoke-virtual {p1}, L㺴/㚬/䂻/ಫ/㺴/உ;->ḓ()L㺴/㚬/䂻/ಫ/㺴/䂻;

    move-result-object p1

    return-object p1

    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "GenericGFPolys do not have same GenericGF field"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public ḓ()I
    .locals 1

    iget-object v0, p0, L㺴/㚬/䂻/ಫ/㺴/䂻;->䂻:[I

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public ℓ(II)L㺴/㚬/䂻/ಫ/㺴/䂻;
    .locals 4

    if-ltz p1, :cond_2

    if-nez p2, :cond_0

    iget-object p1, p0, L㺴/㚬/䂻/ಫ/㺴/䂻;->உ:L㺴/㚬/䂻/ಫ/㺴/உ;

    invoke-virtual {p1}, L㺴/㚬/䂻/ಫ/㺴/உ;->ḓ()L㺴/㚬/䂻/ಫ/㺴/䂻;

    move-result-object p1

    return-object p1

    :cond_0
    iget-object v0, p0, L㺴/㚬/䂻/ಫ/㺴/䂻;->䂻:[I

    array-length v0, v0

    add-int/2addr p1, v0

    new-array p1, p1, [I

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v2, p0, L㺴/㚬/䂻/ಫ/㺴/䂻;->உ:L㺴/㚬/䂻/ಫ/㺴/உ;

    iget-object v3, p0, L㺴/㚬/䂻/ಫ/㺴/䂻;->䂻:[I

    aget v3, v3, v1

    invoke-virtual {v2, v3, p2}, L㺴/㚬/䂻/ಫ/㺴/உ;->ℓ(II)I

    move-result v2

    aput v2, p1, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    new-instance p2, L㺴/㚬/䂻/ಫ/㺴/䂻;

    iget-object v0, p0, L㺴/㚬/䂻/ಫ/㺴/䂻;->உ:L㺴/㚬/䂻/ಫ/㺴/உ;

    invoke-direct {p2, v0, p1}, L㺴/㚬/䂻/ಫ/㺴/䂻;-><init>(L㺴/㚬/䂻/ಫ/㺴/உ;[I)V

    return-object p2

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public 㚬(I)I
    .locals 2

    iget-object v0, p0, L㺴/㚬/䂻/ಫ/㺴/䂻;->䂻:[I

    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    sub-int/2addr v1, p1

    aget p1, v0, v1

    return p1
.end method

.method public 㺴()[I
    .locals 1

    iget-object v0, p0, L㺴/㚬/䂻/ಫ/㺴/䂻;->䂻:[I

    return-object v0
.end method

.method public 䂻(L㺴/㚬/䂻/ಫ/㺴/䂻;)[L㺴/㚬/䂻/ಫ/㺴/䂻;
    .locals 7

    iget-object v0, p0, L㺴/㚬/䂻/ಫ/㺴/䂻;->உ:L㺴/㚬/䂻/ಫ/㺴/உ;

    iget-object v1, p1, L㺴/㚬/䂻/ಫ/㺴/䂻;->உ:L㺴/㚬/䂻/ಫ/㺴/உ;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, L㺴/㚬/䂻/ಫ/㺴/䂻;->䆀()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, L㺴/㚬/䂻/ಫ/㺴/䂻;->உ:L㺴/㚬/䂻/ಫ/㺴/உ;

    invoke-virtual {v0}, L㺴/㚬/䂻/ಫ/㺴/உ;->ḓ()L㺴/㚬/䂻/ಫ/㺴/䂻;

    move-result-object v0

    invoke-virtual {p1}, L㺴/㚬/䂻/ಫ/㺴/䂻;->ḓ()I

    move-result v1

    invoke-virtual {p1, v1}, L㺴/㚬/䂻/ಫ/㺴/䂻;->㚬(I)I

    move-result v1

    iget-object v2, p0, L㺴/㚬/䂻/ಫ/㺴/䂻;->உ:L㺴/㚬/䂻/ಫ/㺴/உ;

    invoke-virtual {v2, v1}, L㺴/㚬/䂻/ಫ/㺴/உ;->䆀(I)I

    move-result v1

    move-object v2, p0

    :goto_0
    invoke-virtual {v2}, L㺴/㚬/䂻/ಫ/㺴/䂻;->ḓ()I

    move-result v3

    invoke-virtual {p1}, L㺴/㚬/䂻/ಫ/㺴/䂻;->ḓ()I

    move-result v4

    if-lt v3, v4, :cond_0

    invoke-virtual {v2}, L㺴/㚬/䂻/ಫ/㺴/䂻;->䆀()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2}, L㺴/㚬/䂻/ಫ/㺴/䂻;->ḓ()I

    move-result v3

    invoke-virtual {p1}, L㺴/㚬/䂻/ಫ/㺴/䂻;->ḓ()I

    move-result v4

    sub-int/2addr v3, v4

    iget-object v4, p0, L㺴/㚬/䂻/ಫ/㺴/䂻;->உ:L㺴/㚬/䂻/ಫ/㺴/உ;

    invoke-virtual {v2}, L㺴/㚬/䂻/ಫ/㺴/䂻;->ḓ()I

    move-result v5

    invoke-virtual {v2, v5}, L㺴/㚬/䂻/ಫ/㺴/䂻;->㚬(I)I

    move-result v5

    invoke-virtual {v4, v5, v1}, L㺴/㚬/䂻/ಫ/㺴/உ;->ℓ(II)I

    move-result v4

    invoke-virtual {p1, v3, v4}, L㺴/㚬/䂻/ಫ/㺴/䂻;->ℓ(II)L㺴/㚬/䂻/ಫ/㺴/䂻;

    move-result-object v5

    iget-object v6, p0, L㺴/㚬/䂻/ಫ/㺴/䂻;->உ:L㺴/㚬/䂻/ಫ/㺴/உ;

    invoke-virtual {v6, v3, v4}, L㺴/㚬/䂻/ಫ/㺴/உ;->䂻(II)L㺴/㚬/䂻/ಫ/㺴/䂻;

    move-result-object v3

    invoke-virtual {v0, v3}, L㺴/㚬/䂻/ಫ/㺴/䂻;->உ(L㺴/㚬/䂻/ಫ/㺴/䂻;)L㺴/㚬/䂻/ಫ/㺴/䂻;

    move-result-object v0

    invoke-virtual {v2, v5}, L㺴/㚬/䂻/ಫ/㺴/䂻;->உ(L㺴/㚬/䂻/ಫ/㺴/䂻;)L㺴/㚬/䂻/ಫ/㺴/䂻;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    new-array p1, p1, [L㺴/㚬/䂻/ಫ/㺴/䂻;

    const/4 v1, 0x0

    aput-object v0, p1, v1

    const/4 v0, 0x1

    aput-object v2, p1, v0

    return-object p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Divide by 0"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "GenericGFPolys do not have same GenericGF field"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public 䆀()Z
    .locals 2

    iget-object v0, p0, L㺴/㚬/䂻/ಫ/㺴/䂻;->䂻:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    return v1
.end method
