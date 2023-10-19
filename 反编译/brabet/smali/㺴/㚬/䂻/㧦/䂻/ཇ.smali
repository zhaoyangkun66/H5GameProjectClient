.class public final L㺴/㚬/䂻/㧦/䂻/ཇ;
.super L㺴/㚬/䂻/㧦/䂻/㚬;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, L㺴/㚬/䂻/㧦/䂻/㚬;-><init>()V

    return-void
.end method


# virtual methods
.method public உ(L㺴/㚬/䂻/㧦/䂻/ℓ;)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    :cond_0
    invoke-virtual {p1}, L㺴/㚬/䂻/㧦/䂻/ℓ;->ㄏ()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, L㺴/㚬/䂻/㧦/䂻/ℓ;->㚬()C

    move-result v1

    iget v2, p1, L㺴/㚬/䂻/㧦/䂻/ℓ;->䆀:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p1, L㺴/㚬/䂻/㧦/䂻/ℓ;->䆀:I

    invoke-virtual {p0, v1, v0}, L㺴/㚬/䂻/㧦/䂻/ཇ;->㚬(CLjava/lang/StringBuilder;)I

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    rem-int/lit8 v1, v1, 0x3

    if-nez v1, :cond_0

    invoke-static {p1, v0}, L㺴/㚬/䂻/㧦/䂻/㚬;->ᆻ(L㺴/㚬/䂻/㧦/䂻/ℓ;Ljava/lang/StringBuilder;)V

    invoke-virtual {p1}, L㺴/㚬/䂻/㧦/䂻/ℓ;->㺴()Ljava/lang/String;

    move-result-object v1

    iget v2, p1, L㺴/㚬/䂻/㧦/䂻/ℓ;->䆀:I

    invoke-virtual {p0}, L㺴/㚬/䂻/㧦/䂻/ཇ;->ḓ()I

    move-result v3

    invoke-static {v1, v2, v3}, L㺴/㚬/䂻/㧦/䂻/ಫ;->ཇ(Ljava/lang/CharSequence;II)I

    move-result v1

    invoke-virtual {p0}, L㺴/㚬/䂻/㧦/䂻/ཇ;->ḓ()I

    move-result v2

    if-eq v1, v2, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, L㺴/㚬/䂻/㧦/䂻/ℓ;->ᓭ(I)V

    :cond_1
    invoke-virtual {p0, p1, v0}, L㺴/㚬/䂻/㧦/䂻/ཇ;->䆀(L㺴/㚬/䂻/㧦/䂻/ℓ;Ljava/lang/StringBuilder;)V

    return-void
.end method

.method public ḓ()I
    .locals 1

    const/4 v0, 0x3

    return v0
.end method

.method public 㚬(CLjava/lang/StringBuilder;)I
    .locals 3

    const/16 v0, 0xd

    const/4 v1, 0x1

    if-eq p1, v0, :cond_5

    const/16 v0, 0x20

    if-eq p1, v0, :cond_4

    const/16 v0, 0x2a

    if-eq p1, v0, :cond_3

    const/16 v0, 0x3e

    if-eq p1, v0, :cond_2

    const/16 v0, 0x30

    if-lt p1, v0, :cond_0

    const/16 v2, 0x39

    if-gt p1, v2, :cond_0

    sub-int/2addr p1, v0

    add-int/lit8 p1, p1, 0x4

    :goto_0
    int-to-char p1, p1

    goto :goto_1

    :cond_0
    const/16 v0, 0x41

    if-lt p1, v0, :cond_1

    const/16 v2, 0x5a

    if-gt p1, v2, :cond_1

    sub-int/2addr p1, v0

    add-int/lit8 p1, p1, 0xe

    goto :goto_0

    :cond_1
    invoke-static {p1}, L㺴/㚬/䂻/㧦/䂻/ಫ;->ḓ(C)V

    const/4 p1, 0x0

    throw p1

    :cond_2
    const/4 p1, 0x2

    goto :goto_1

    :cond_3
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_4
    const/4 p1, 0x3

    goto :goto_1

    :cond_5
    const/4 p1, 0x0

    :goto_1
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_2
    return v1
.end method

.method public 䆀(L㺴/㚬/䂻/㧦/䂻/ℓ;Ljava/lang/StringBuilder;)V
    .locals 2

    invoke-virtual {p1}, L㺴/㚬/䂻/㧦/䂻/ℓ;->ბ()V

    invoke-virtual {p1}, L㺴/㚬/䂻/㧦/䂻/ℓ;->ᆻ()L㺴/㚬/䂻/㧦/䂻/㧦;

    move-result-object v0

    invoke-virtual {v0}, L㺴/㚬/䂻/㧦/䂻/㧦;->உ()I

    move-result v0

    invoke-virtual {p1}, L㺴/㚬/䂻/㧦/䂻/ℓ;->உ()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    move-result p2

    iget v1, p1, L㺴/㚬/䂻/㧦/䂻/ℓ;->䆀:I

    sub-int/2addr v1, p2

    iput v1, p1, L㺴/㚬/䂻/㧦/䂻/ℓ;->䆀:I

    invoke-virtual {p1}, L㺴/㚬/䂻/㧦/䂻/ℓ;->䆀()I

    move-result p2

    const/4 v1, 0x1

    if-gt p2, v1, :cond_0

    if-gt v0, v1, :cond_0

    invoke-virtual {p1}, L㺴/㚬/䂻/㧦/䂻/ℓ;->䆀()I

    move-result p2

    if-eq p2, v0, :cond_1

    :cond_0
    const/16 p2, 0xfe

    invoke-virtual {p1, p2}, L㺴/㚬/䂻/㧦/䂻/ℓ;->㞘(C)V

    :cond_1
    invoke-virtual {p1}, L㺴/㚬/䂻/㧦/䂻/ℓ;->ḓ()I

    move-result p2

    if-gez p2, :cond_2

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, L㺴/㚬/䂻/㧦/䂻/ℓ;->ᓭ(I)V

    :cond_2
    return-void
.end method
