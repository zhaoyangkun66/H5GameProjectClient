.class public final L㺴/㚬/䂻/ἥ/உ;
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

.method public static 㚬(L㺴/㚬/䂻/ἥ/䂻/ḓ;Ljava/lang/String;IIII)L㺴/㚬/䂻/ಫ/䂻;
    .locals 4

    invoke-virtual {p0, p1, p2}, L㺴/㚬/䂻/ἥ/䂻/ḓ;->ḓ(Ljava/lang/String;I)V

    invoke-virtual {p0}, L㺴/㚬/䂻/ἥ/䂻/ḓ;->䆀()L㺴/㚬/䂻/ἥ/䂻/உ;

    move-result-object p1

    const/4 p2, 0x1

    const/4 v0, 0x4

    invoke-virtual {p1, p2, v0}, L㺴/㚬/䂻/ἥ/䂻/உ;->䂻(II)[[B

    move-result-object p1

    const/4 v0, 0x0

    if-le p4, p3, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    aget-object v2, p1, v0

    array-length v2, v2

    array-length v3, p1

    if-ge v2, v3, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    if-eq v1, v2, :cond_2

    invoke-static {p1}, L㺴/㚬/䂻/ἥ/உ;->㺴([[B)[[B

    move-result-object p1

    const/4 v1, 0x1

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    aget-object v0, p1, v0

    array-length v0, v0

    div-int/2addr p3, v0

    array-length v0, p1

    div-int/2addr p4, v0

    if-ge p3, p4, :cond_3

    goto :goto_3

    :cond_3
    move p3, p4

    :goto_3
    if-le p3, p2, :cond_5

    invoke-virtual {p0}, L㺴/㚬/䂻/ἥ/䂻/ḓ;->䆀()L㺴/㚬/䂻/ἥ/䂻/உ;

    move-result-object p0

    shl-int/lit8 p1, p3, 0x2

    invoke-virtual {p0, p3, p1}, L㺴/㚬/䂻/ἥ/䂻/உ;->䂻(II)[[B

    move-result-object p0

    if-eqz v1, :cond_4

    invoke-static {p0}, L㺴/㚬/䂻/ἥ/உ;->㺴([[B)[[B

    move-result-object p0

    :cond_4
    invoke-static {p0, p5}, L㺴/㚬/䂻/ἥ/உ;->䂻([[BI)L㺴/㚬/䂻/ಫ/䂻;

    move-result-object p0

    return-object p0

    :cond_5
    invoke-static {p1, p5}, L㺴/㚬/䂻/ἥ/உ;->䂻([[BI)L㺴/㚬/䂻/ಫ/䂻;

    move-result-object p0

    return-object p0
.end method

.method public static 㺴([[B)[[B
    .locals 8

    const/4 v0, 0x0

    aget-object v1, p0, v0

    array-length v1, v1

    array-length v2, p0

    const/4 v3, 0x2

    new-array v3, v3, [I

    const/4 v4, 0x1

    aput v2, v3, v4

    aput v1, v3, v0

    const-class v1, B

    invoke-static {v1, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[B

    const/4 v2, 0x0

    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_1

    array-length v3, p0

    sub-int/2addr v3, v2

    sub-int/2addr v3, v4

    const/4 v5, 0x0

    :goto_1
    aget-object v6, p0, v0

    array-length v6, v6

    if-ge v5, v6, :cond_0

    aget-object v6, v1, v5

    aget-object v7, p0, v2

    aget-byte v7, v7, v5

    aput-byte v7, v6, v3

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public static 䂻([[BI)L㺴/㚬/䂻/ಫ/䂻;
    .locals 8

    new-instance v0, L㺴/㚬/䂻/ಫ/䂻;

    const/4 v1, 0x0

    aget-object v2, p0, v1

    array-length v2, v2

    mul-int/lit8 v3, p1, 0x2

    add-int/2addr v2, v3

    array-length v4, p0

    add-int/2addr v4, v3

    invoke-direct {v0, v2, v4}, L㺴/㚬/䂻/ಫ/䂻;-><init>(II)V

    invoke-virtual {v0}, L㺴/㚬/䂻/ಫ/䂻;->䂻()V

    invoke-virtual {v0}, L㺴/㚬/䂻/ಫ/䂻;->ḓ()I

    move-result v2

    sub-int/2addr v2, p1

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    const/4 v4, 0x0

    :goto_0
    array-length v5, p0

    if-ge v4, v5, :cond_2

    aget-object v5, p0, v4

    const/4 v6, 0x0

    :goto_1
    aget-object v7, p0, v1

    array-length v7, v7

    if-ge v6, v7, :cond_1

    aget-byte v7, v5, v6

    if-ne v7, v3, :cond_0

    add-int v7, v6, p1

    invoke-virtual {v0, v7, v2}, L㺴/㚬/䂻/ಫ/䂻;->ᆻ(II)V

    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method


# virtual methods
.method public உ(Ljava/lang/String;L㺴/㚬/䂻/உ;IILjava/util/Map;)L㺴/㚬/䂻/ಫ/䂻;
    .locals 7
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

    sget-object v0, L㺴/㚬/䂻/உ;->㹖:L㺴/㚬/䂻/உ;

    if-ne p2, v0, :cond_7

    new-instance v1, L㺴/㚬/䂻/ἥ/䂻/ḓ;

    invoke-direct {v1}, L㺴/㚬/䂻/ἥ/䂻/ḓ;-><init>()V

    const/16 p2, 0x1e

    const/4 v0, 0x2

    if-eqz p5, :cond_6

    sget-object v2, L㺴/㚬/䂻/㚬;->ℓ:L㺴/㚬/䂻/㚬;

    invoke-interface {p5, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {p5, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v1, v2}, L㺴/㚬/䂻/ἥ/䂻/ḓ;->ℓ(Z)V

    :cond_0
    sget-object v2, L㺴/㚬/䂻/㚬;->ㄏ:L㺴/㚬/䂻/㚬;

    invoke-interface {p5, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {p5, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, L㺴/㚬/䂻/ἥ/䂻/㚬;->valueOf(Ljava/lang/String;)L㺴/㚬/䂻/ἥ/䂻/㚬;

    move-result-object v2

    invoke-virtual {v1, v2}, L㺴/㚬/䂻/ἥ/䂻/ḓ;->ㄏ(L㺴/㚬/䂻/ἥ/䂻/㚬;)V

    :cond_1
    sget-object v2, L㺴/㚬/䂻/㚬;->ಫ:L㺴/㚬/䂻/㚬;

    invoke-interface {p5, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {p5, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, L㺴/㚬/䂻/ἥ/䂻/㺴;

    invoke-virtual {v2}, L㺴/㚬/䂻/ἥ/䂻/㺴;->உ()I

    move-result v3

    invoke-virtual {v2}, L㺴/㚬/䂻/ἥ/䂻/㺴;->㚬()I

    move-result v4

    invoke-virtual {v2}, L㺴/㚬/䂻/ἥ/䂻/㺴;->䂻()I

    move-result v5

    invoke-virtual {v2}, L㺴/㚬/䂻/ἥ/䂻/㺴;->㺴()I

    move-result v2

    invoke-virtual {v1, v3, v4, v5, v2}, L㺴/㚬/䂻/ἥ/䂻/ḓ;->ಫ(IIII)V

    :cond_2
    sget-object v2, L㺴/㚬/䂻/㚬;->ᆻ:L㺴/㚬/䂻/㚬;

    invoke-interface {p5, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {p5, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    :cond_3
    sget-object v2, L㺴/㚬/䂻/㚬;->䂻:L㺴/㚬/䂻/㚬;

    invoke-interface {p5, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {p5, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    :cond_4
    sget-object v2, L㺴/㚬/䂻/㚬;->㚬:L㺴/㚬/䂻/㚬;

    invoke-interface {p5, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {p5, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p5

    invoke-virtual {p5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p5

    invoke-static {p5}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object p5

    invoke-virtual {v1, p5}, L㺴/㚬/䂻/ἥ/䂻/ḓ;->㧦(Ljava/nio/charset/Charset;)V

    :cond_5
    move v6, p2

    move v3, v0

    goto :goto_0

    :cond_6
    const/4 v3, 0x2

    const/16 v6, 0x1e

    :goto_0
    move-object v2, p1

    move v4, p3

    move v5, p4

    invoke-static/range {v1 .. v6}, L㺴/㚬/䂻/ἥ/உ;->㚬(L㺴/㚬/䂻/ἥ/䂻/ḓ;Ljava/lang/String;IIII)L㺴/㚬/䂻/ಫ/䂻;

    move-result-object p1

    return-object p1

    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string p3, "Can only encode PDF_417, but got "

    invoke-virtual {p3, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
