.class public L㺴/㚬/䂻/㹖/ℓ;
.super L㺴/㚬/䂻/㹖/ཇ;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, L㺴/㚬/䂻/㹖/ཇ;-><init>()V

    return-void
.end method

.method public static ᆻ(Ljava/lang/String;I)I
    .locals 6

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    :goto_0
    if-ltz v0, :cond_1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const-string v5, "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ-. $/+%abcd*"

    invoke-virtual {v5, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    mul-int v4, v4, v3

    add-int/2addr v2, v4

    add-int/2addr v3, v1

    if-le v3, p1, :cond_0

    const/4 v3, 0x1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    rem-int/lit8 v2, v2, 0x2f

    return v2
.end method

.method public static ℓ(I[I)V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    const/16 v2, 0x9

    if-ge v1, v2, :cond_1

    rsub-int/lit8 v2, v1, 0x8

    const/4 v3, 0x1

    shl-int v2, v3, v2

    and-int/2addr v2, p0

    if-nez v2, :cond_0

    const/4 v3, 0x0

    :cond_0
    aput v3, p1, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static 䆀([ZI[I)I
    .locals 5

    array-length v0, p2

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    aget v3, p2, v2

    add-int/lit8 v4, p1, 0x1

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    :goto_1
    aput-boolean v3, p0, p1

    add-int/lit8 v2, v2, 0x1

    move p1, v4

    goto :goto_0

    :cond_1
    const/16 p0, 0x9

    return p0
.end method


# virtual methods
.method public உ(Ljava/lang/String;L㺴/㚬/䂻/உ;IILjava/util/Map;)L㺴/㚬/䂻/ಫ/䂻;
    .locals 1
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

    sget-object v0, L㺴/㚬/䂻/உ;->ḓ:L㺴/㚬/䂻/உ;

    if-ne p2, v0, :cond_0

    invoke-super/range {p0 .. p5}, L㺴/㚬/䂻/㹖/ཇ;->உ(Ljava/lang/String;L㺴/㚬/䂻/உ;IILjava/util/Map;)L㺴/㚬/䂻/ಫ/䂻;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string p3, "Can only encode CODE_93, but got "

    invoke-virtual {p3, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public 㚬(Ljava/lang/String;)[Z
    .locals 9

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x50

    if-gt v0, v1, :cond_1

    const/16 v1, 0x9

    new-array v2, v1, [I

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x2

    add-int/lit8 v3, v3, 0x2

    mul-int/lit8 v3, v3, 0x9

    const/4 v1, 0x1

    add-int/2addr v3, v1

    sget-object v4, L㺴/㚬/䂻/㹖/ᆻ;->உ:[I

    const/16 v5, 0x2f

    aget v4, v4, v5

    invoke-static {v4, v2}, L㺴/㚬/䂻/㹖/ℓ;->ℓ(I[I)V

    new-array v3, v3, [Z

    const/4 v4, 0x0

    invoke-static {v3, v4, v2}, L㺴/㚬/䂻/㹖/ℓ;->䆀([ZI[I)I

    move-result v6

    :goto_0
    const-string v7, "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ-. $/+%abcd*"

    if-ge v4, v0, :cond_0

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    sget-object v8, L㺴/㚬/䂻/㹖/ᆻ;->உ:[I

    aget v7, v8, v7

    invoke-static {v7, v2}, L㺴/㚬/䂻/㹖/ℓ;->ℓ(I[I)V

    invoke-static {v3, v6, v2}, L㺴/㚬/䂻/㹖/ℓ;->䆀([ZI[I)I

    move-result v7

    add-int/2addr v6, v7

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    const/16 v0, 0x14

    invoke-static {p1, v0}, L㺴/㚬/䂻/㹖/ℓ;->ᆻ(Ljava/lang/String;I)I

    move-result v0

    sget-object v4, L㺴/㚬/䂻/㹖/ᆻ;->உ:[I

    aget v8, v4, v0

    invoke-static {v8, v2}, L㺴/㚬/䂻/㹖/ℓ;->ℓ(I[I)V

    invoke-static {v3, v6, v2}, L㺴/㚬/䂻/㹖/ℓ;->䆀([ZI[I)I

    move-result v8

    add-int/2addr v6, v8

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/String;->charAt(I)C

    move-result p1

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0xf

    invoke-static {p1, v0}, L㺴/㚬/䂻/㹖/ℓ;->ᆻ(Ljava/lang/String;I)I

    move-result p1

    aget p1, v4, p1

    invoke-static {p1, v2}, L㺴/㚬/䂻/㹖/ℓ;->ℓ(I[I)V

    invoke-static {v3, v6, v2}, L㺴/㚬/䂻/㹖/ℓ;->䆀([ZI[I)I

    move-result p1

    add-int/2addr v6, p1

    aget p1, v4, v5

    invoke-static {p1, v2}, L㺴/㚬/䂻/㹖/ℓ;->ℓ(I[I)V

    invoke-static {v3, v6, v2}, L㺴/㚬/䂻/㹖/ℓ;->䆀([ZI[I)I

    move-result p1

    add-int/2addr v6, p1

    aput-boolean v1, v3, v6

    return-object v3

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Requested contents should be less than 80 digits long, but got "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
