.class public final L㺴/䂻/உ/உ/உ;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        L㺴/䂻/உ/உ/உ$㚬;,
        L㺴/䂻/உ/உ/உ$䂻;
    }
.end annotation


# direct methods
.method public static உ(Ljava/lang/String;I)[B
    .locals 0

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-static {p0, p1}, L㺴/䂻/உ/உ/உ;->䂻([BI)[B

    move-result-object p0

    return-object p0
.end method

.method public static 㚬([BIII)[B
    .locals 3

    new-instance v0, L㺴/䂻/உ/உ/உ$㚬;

    mul-int/lit8 v1, p2, 0x3

    div-int/lit8 v1, v1, 0x4

    new-array v1, v1, [B

    const/4 v2, 0x0

    invoke-direct {v0, p3, v1, v2}, L㺴/䂻/உ/உ/உ$㚬;-><init>(I[BL㺴/䂻/உ/உ/உ$உ;)V

    const/4 p3, 0x1

    invoke-virtual {v0, p0, p1, p2, p3}, L㺴/䂻/உ/உ/உ$㚬;->உ([BIIZ)Z

    move-result p0

    if-eqz p0, :cond_1

    iget p0, v0, L㺴/䂻/உ/உ/உ$䂻;->䂻:I

    iget-object p1, v0, L㺴/䂻/உ/உ/உ$䂻;->உ:[B

    array-length p2, p1

    if-ne p0, p2, :cond_0

    return-object p1

    :cond_0
    new-array p2, p0, [B

    const/4 p3, 0x0

    invoke-static {p1, p3, p2, p3, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p2

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "bad base-64"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static 䂻([BI)[B
    .locals 2

    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0, p1}, L㺴/䂻/உ/உ/உ;->㚬([BIII)[B

    move-result-object p0

    return-object p0
.end method
