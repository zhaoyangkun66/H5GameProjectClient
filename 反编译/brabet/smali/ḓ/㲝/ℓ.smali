.class public Lḓ/㲝/ℓ;
.super Lḓ/㲝/ᆻ;
.source ""


# direct methods
.method public static final உ(II)I
    .locals 0

    if-ge p0, p1, :cond_0

    move p0, p1

    :cond_0
    return p0
.end method

.method public static final ḓ(Lḓ/㲝/䆀;Lḓ/ბ/㚬;)I
    .locals 1

    const-string v0, "$this$random"

    invoke-static {p0, v0}, Lḓ/ᓭ/㺴/ಫ;->㺴(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "random"

    invoke-static {p1, v0}, Lḓ/ᓭ/㺴/ಫ;->㺴(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    invoke-static {p1, p0}, Lḓ/ბ/㺴;->㺴(Lḓ/ბ/㚬;Lḓ/㲝/䆀;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/util/NoSuchElementException;

    invoke-virtual {p0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static final 㚬(III)I
    .locals 2

    if-gt p1, p2, :cond_2

    if-ge p0, p1, :cond_0

    return p1

    :cond_0
    if-le p0, p2, :cond_1

    return p2

    :cond_1
    return p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot coerce value to an empty range: maximum "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " is less than minimum "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p1, 0x2e

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final 㺴(II)Lḓ/㲝/㺴;
    .locals 2

    sget-object v0, Lḓ/㲝/㺴;->ḓ:Lḓ/㲝/㺴$உ;

    const/4 v1, -0x1

    invoke-virtual {v0, p0, p1, v1}, Lḓ/㲝/㺴$உ;->உ(III)Lḓ/㲝/㺴;

    move-result-object p0

    return-object p0
.end method

.method public static final 䂻(II)I
    .locals 0

    if-le p0, p1, :cond_0

    move p0, p1

    :cond_0
    return p0
.end method

.method public static final 䆀(II)Lḓ/㲝/䆀;
    .locals 1

    const/high16 v0, -0x80000000

    if-gt p1, v0, :cond_0

    sget-object p0, Lḓ/㲝/䆀;->ᆻ:Lḓ/㲝/䆀$உ;

    invoke-virtual {p0}, Lḓ/㲝/䆀$உ;->உ()Lḓ/㲝/䆀;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v0, Lḓ/㲝/䆀;

    add-int/lit8 p1, p1, -0x1

    invoke-direct {v0, p0, p1}, Lḓ/㲝/䆀;-><init>(II)V

    return-object v0
.end method
