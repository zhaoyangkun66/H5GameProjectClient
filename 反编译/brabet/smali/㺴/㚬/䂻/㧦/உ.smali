.class public final L㺴/㚬/䂻/㧦/உ;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements L㺴/㚬/䂻/ᆻ;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static 㚬(L㺴/㚬/䂻/㧦/䂻/ḓ;L㺴/㚬/䂻/㧦/䂻/㧦;II)L㺴/㚬/䂻/ಫ/䂻;
    .locals 11

    invoke-virtual {p1}, L㺴/㚬/䂻/㧦/䂻/㧦;->ℓ()I

    move-result v0

    invoke-virtual {p1}, L㺴/㚬/䂻/㧦/䂻/㧦;->ᆻ()I

    move-result v1

    new-instance v2, L㺴/㚬/䂻/ཇ/㚬/䂻;

    invoke-virtual {p1}, L㺴/㚬/䂻/㧦/䂻/㧦;->ಫ()I

    move-result v3

    invoke-virtual {p1}, L㺴/㚬/䂻/㧦/䂻/㧦;->ㄏ()I

    move-result v4

    invoke-direct {v2, v3, v4}, L㺴/㚬/䂻/ཇ/㚬/䂻;-><init>(II)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v4, v1, :cond_9

    iget v6, p1, L㺴/㚬/䂻/㧦/䂻/㧦;->ḓ:I

    rem-int v6, v4, v6

    const/4 v7, 0x1

    if-nez v6, :cond_2

    const/4 v6, 0x0

    const/4 v8, 0x0

    :goto_1
    invoke-virtual {p1}, L㺴/㚬/䂻/㧦/䂻/㧦;->ಫ()I

    move-result v9

    if-ge v6, v9, :cond_1

    rem-int/lit8 v9, v6, 0x2

    if-nez v9, :cond_0

    const/4 v9, 0x1

    goto :goto_2

    :cond_0
    const/4 v9, 0x0

    :goto_2
    invoke-virtual {v2, v8, v5, v9}, L㺴/㚬/䂻/ཇ/㚬/䂻;->ᆻ(IIZ)V

    add-int/2addr v8, v7

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v5, v5, 0x1

    :cond_2
    const/4 v6, 0x0

    const/4 v8, 0x0

    :goto_3
    if-ge v6, v0, :cond_6

    iget v9, p1, L㺴/㚬/䂻/㧦/䂻/㧦;->㺴:I

    rem-int v9, v6, v9

    if-nez v9, :cond_3

    invoke-virtual {v2, v8, v5, v7}, L㺴/㚬/䂻/ཇ/㚬/䂻;->ᆻ(IIZ)V

    add-int/lit8 v8, v8, 0x1

    :cond_3
    invoke-virtual {p0, v6, v4}, L㺴/㚬/䂻/㧦/䂻/ḓ;->ḓ(II)Z

    move-result v9

    invoke-virtual {v2, v8, v5, v9}, L㺴/㚬/䂻/ཇ/㚬/䂻;->ᆻ(IIZ)V

    add-int/2addr v8, v7

    iget v9, p1, L㺴/㚬/䂻/㧦/䂻/㧦;->㺴:I

    rem-int v10, v6, v9

    sub-int/2addr v9, v7

    if-ne v10, v9, :cond_5

    rem-int/lit8 v9, v4, 0x2

    if-nez v9, :cond_4

    const/4 v9, 0x1

    goto :goto_4

    :cond_4
    const/4 v9, 0x0

    :goto_4
    invoke-virtual {v2, v8, v5, v9}, L㺴/㚬/䂻/ཇ/㚬/䂻;->ᆻ(IIZ)V

    add-int/lit8 v8, v8, 0x1

    :cond_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_6
    add-int/lit8 v5, v5, 0x1

    iget v6, p1, L㺴/㚬/䂻/㧦/䂻/㧦;->ḓ:I

    rem-int v8, v4, v6

    sub-int/2addr v6, v7

    if-ne v8, v6, :cond_8

    const/4 v6, 0x0

    const/4 v8, 0x0

    :goto_5
    invoke-virtual {p1}, L㺴/㚬/䂻/㧦/䂻/㧦;->ಫ()I

    move-result v9

    if-ge v6, v9, :cond_7

    invoke-virtual {v2, v8, v5, v7}, L㺴/㚬/䂻/ཇ/㚬/䂻;->ᆻ(IIZ)V

    add-int/2addr v8, v7

    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    :cond_7
    add-int/lit8 v5, v5, 0x1

    :cond_8
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_9
    invoke-static {v2, p2, p3}, L㺴/㚬/䂻/㧦/உ;->䂻(L㺴/㚬/䂻/ཇ/㚬/䂻;II)L㺴/㚬/䂻/ಫ/䂻;

    move-result-object p0

    return-object p0
.end method

.method public static 䂻(L㺴/㚬/䂻/ཇ/㚬/䂻;II)L㺴/㚬/䂻/ಫ/䂻;
    .locals 10

    invoke-virtual {p0}, L㺴/㚬/䂻/ཇ/㚬/䂻;->ḓ()I

    move-result v0

    invoke-virtual {p0}, L㺴/㚬/䂻/ཇ/㚬/䂻;->㺴()I

    move-result v1

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {p2, v1}, Ljava/lang/Math;->max(II)I

    move-result v3

    div-int v4, v2, v0

    div-int v5, v3, v1

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    mul-int v5, v0, v4

    sub-int/2addr v2, v5

    div-int/lit8 v2, v2, 0x2

    mul-int v5, v1, v4

    sub-int/2addr v3, v5

    div-int/lit8 v3, v3, 0x2

    const/4 v5, 0x0

    if-lt p2, v1, :cond_1

    if-ge p1, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v6, L㺴/㚬/䂻/ಫ/䂻;

    invoke-direct {v6, p1, p2}, L㺴/㚬/䂻/ಫ/䂻;-><init>(II)V

    goto :goto_1

    :cond_1
    :goto_0
    new-instance v6, L㺴/㚬/䂻/ಫ/䂻;

    invoke-direct {v6, v0, v1}, L㺴/㚬/䂻/ಫ/䂻;-><init>(II)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_1
    invoke-virtual {v6}, L㺴/㚬/䂻/ಫ/䂻;->䂻()V

    const/4 p1, 0x0

    :goto_2
    if-ge p1, v1, :cond_4

    move v7, v2

    const/4 p2, 0x0

    :goto_3
    if-ge p2, v0, :cond_3

    invoke-virtual {p0, p2, p1}, L㺴/㚬/䂻/ཇ/㚬/䂻;->䂻(II)B

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_2

    invoke-virtual {v6, v7, v3, v4, v4}, L㺴/㚬/䂻/ಫ/䂻;->ℓ(IIII)V

    :cond_2
    add-int/lit8 p2, p2, 0x1

    add-int/2addr v7, v4

    goto :goto_3

    :cond_3
    add-int/lit8 p1, p1, 0x1

    add-int/2addr v3, v4

    goto :goto_2

    :cond_4
    return-object v6
.end method


# virtual methods
.method public உ(Ljava/lang/String;L㺴/㚬/䂻/உ;IILjava/util/Map;)L㺴/㚬/䂻/ಫ/䂻;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "L\u3eb4/\u36ac/\u40bb/\u0b89;",
            "II",
            "Ljava/util/Map<",
            "L\u3eb4/\u36ac/\u40bb/\u36ac;",
            "*>;)",
            "L\u3eb4/\u36ac/\u40bb/\u0cab/\u40bb;"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    sget-object v0, L㺴/㚬/䂻/உ;->ᆻ:L㺴/㚬/䂻/உ;

    if-ne p2, v0, :cond_5

    if-ltz p3, :cond_4

    if-ltz p4, :cond_4

    sget-object p2, L㺴/㚬/䂻/㧦/䂻/㹖;->䂻:L㺴/㚬/䂻/㧦/䂻/㹖;

    const/4 v0, 0x0

    if-eqz p5, :cond_3

    sget-object v1, L㺴/㚬/䂻/㚬;->㺴:L㺴/㚬/䂻/㚬;

    invoke-interface {p5, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, L㺴/㚬/䂻/㧦/䂻/㹖;

    if-eqz v1, :cond_0

    move-object p2, v1

    :cond_0
    sget-object v1, L㺴/㚬/䂻/㚬;->ḓ:L㺴/㚬/䂻/㚬;

    invoke-interface {p5, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, L㺴/㚬/䂻/䂻;

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    move-object v1, v0

    :goto_0
    sget-object v2, L㺴/㚬/䂻/㚬;->䆀:L㺴/㚬/䂻/㚬;

    invoke-interface {p5, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, L㺴/㚬/䂻/䂻;

    if-eqz p5, :cond_2

    goto :goto_1

    :cond_2
    move-object p5, v0

    :goto_1
    move-object v0, v1

    goto :goto_2

    :cond_3
    move-object p5, v0

    :goto_2
    invoke-static {p1, p2, v0, p5}, L㺴/㚬/䂻/㧦/䂻/ಫ;->䂻(Ljava/lang/String;L㺴/㚬/䂻/㧦/䂻/㹖;L㺴/㚬/䂻/䂻;L㺴/㚬/䂻/䂻;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    invoke-static {v1, p2, v0, p5, v2}, L㺴/㚬/䂻/㧦/䂻/㧦;->㹖(IL㺴/㚬/䂻/㧦/䂻/㹖;L㺴/㚬/䂻/䂻;L㺴/㚬/䂻/䂻;Z)L㺴/㚬/䂻/㧦/䂻/㧦;

    move-result-object p2

    invoke-static {p1, p2}, L㺴/㚬/䂻/㧦/䂻/ㄏ;->㚬(Ljava/lang/String;L㺴/㚬/䂻/㧦/䂻/㧦;)Ljava/lang/String;

    move-result-object p1

    new-instance p5, L㺴/㚬/䂻/㧦/䂻/ḓ;

    invoke-virtual {p2}, L㺴/㚬/䂻/㧦/䂻/㧦;->ℓ()I

    move-result v0

    invoke-virtual {p2}, L㺴/㚬/䂻/㧦/䂻/㧦;->ᆻ()I

    move-result v1

    invoke-direct {p5, p1, v0, v1}, L㺴/㚬/䂻/㧦/䂻/ḓ;-><init>(Ljava/lang/CharSequence;II)V

    invoke-virtual {p5}, L㺴/㚬/䂻/㧦/䂻/ḓ;->ℓ()V

    invoke-static {p5, p2, p3, p4}, L㺴/㚬/䂻/㧦/உ;->㚬(L㺴/㚬/䂻/㧦/䂻/ḓ;L㺴/㚬/䂻/㧦/䂻/㧦;II)L㺴/㚬/䂻/ಫ/䂻;

    move-result-object p1

    return-object p1

    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p5, "Requested dimensions can\'t be negative: "

    invoke-direct {p2, p5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p3, 0x78

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string p3, "Can only encode DATA_MATRIX, but got "

    invoke-virtual {p3, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Found empty contents"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
