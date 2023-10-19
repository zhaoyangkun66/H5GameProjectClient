.class public final L㺴/㚬/䂻/ㄏ/உ;
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

.method public static 㚬(L㺴/㚬/䂻/ㄏ/䂻/உ;II)L㺴/㚬/䂻/ಫ/䂻;
    .locals 9

    invoke-virtual {p0}, L㺴/㚬/䂻/ㄏ/䂻/உ;->உ()L㺴/㚬/䂻/ಫ/䂻;

    move-result-object p0

    if-eqz p0, :cond_3

    invoke-virtual {p0}, L㺴/㚬/䂻/ಫ/䂻;->䆀()I

    move-result v0

    invoke-virtual {p0}, L㺴/㚬/䂻/ಫ/䂻;->ḓ()I

    move-result v1

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-static {p2, v1}, Ljava/lang/Math;->max(II)I

    move-result p2

    div-int v2, p1, v0

    div-int v3, p2, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    mul-int v3, v0, v2

    sub-int v3, p1, v3

    div-int/lit8 v3, v3, 0x2

    mul-int v4, v1, v2

    sub-int v4, p2, v4

    div-int/lit8 v4, v4, 0x2

    new-instance v5, L㺴/㚬/䂻/ಫ/䂻;

    invoke-direct {v5, p1, p2}, L㺴/㚬/䂻/ಫ/䂻;-><init>(II)V

    const/4 p1, 0x0

    const/4 p2, 0x0

    :goto_0
    if-ge p2, v1, :cond_2

    move v7, v3

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v0, :cond_1

    invoke-virtual {p0, v6, p2}, L㺴/㚬/䂻/ಫ/䂻;->㺴(II)Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-virtual {v5, v7, v4, v2, v2}, L㺴/㚬/䂻/ಫ/䂻;->ℓ(IIII)V

    :cond_0
    add-int/lit8 v6, v6, 0x1

    add-int/2addr v7, v2

    goto :goto_1

    :cond_1
    add-int/lit8 p2, p2, 0x1

    add-int/2addr v4, v2

    goto :goto_0

    :cond_2
    return-object v5

    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0
.end method

.method public static 䂻(Ljava/lang/String;L㺴/㚬/䂻/உ;IILjava/nio/charset/Charset;II)L㺴/㚬/䂻/ಫ/䂻;
    .locals 1

    sget-object v0, L㺴/㚬/䂻/உ;->䂻:L㺴/㚬/䂻/உ;

    if-ne p1, v0, :cond_0

    invoke-virtual {p0, p4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    invoke-static {p0, p5, p6}, L㺴/㚬/䂻/ㄏ/䂻/㚬;->㺴([BII)L㺴/㚬/䂻/ㄏ/䂻/உ;

    move-result-object p0

    invoke-static {p0, p2, p3}, L㺴/㚬/䂻/ㄏ/உ;->㚬(L㺴/㚬/䂻/ㄏ/䂻/உ;II)L㺴/㚬/䂻/ಫ/䂻;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "Can only encode AZTEC, but got "

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public உ(Ljava/lang/String;L㺴/㚬/䂻/உ;IILjava/util/Map;)L㺴/㚬/䂻/ಫ/䂻;
    .locals 10
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

    sget-object v0, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    const/16 v1, 0x21

    const/4 v2, 0x0

    if-eqz p5, :cond_3

    sget-object v3, L㺴/㚬/䂻/㚬;->㚬:L㺴/㚬/䂻/㚬;

    invoke-interface {p5, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {p5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    :cond_0
    sget-object v3, L㺴/㚬/䂻/㚬;->䂻:L㺴/㚬/䂻/㚬;

    invoke-interface {p5, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {p5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    :cond_1
    sget-object v3, L㺴/㚬/䂻/㚬;->㧦:L㺴/㚬/䂻/㚬;

    invoke-interface {p5, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {p5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p5

    invoke-virtual {p5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p5

    invoke-static {p5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    move-object v7, v0

    move v8, v1

    move v9, v2

    goto :goto_1

    :cond_2
    move-object v7, v0

    move v8, v1

    goto :goto_0

    :cond_3
    move-object v7, v0

    const/16 v8, 0x21

    :goto_0
    const/4 v9, 0x0

    :goto_1
    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move v6, p4

    invoke-static/range {v3 .. v9}, L㺴/㚬/䂻/ㄏ/உ;->䂻(Ljava/lang/String;L㺴/㚬/䂻/உ;IILjava/nio/charset/Charset;II)L㺴/㚬/䂻/ಫ/䂻;

    move-result-object p1

    return-object p1
.end method
