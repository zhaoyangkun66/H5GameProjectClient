.class public L㺴/㚬/䂻/㧦/䂻/㚬;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements L㺴/㚬/䂻/㧦/䂻/ᆻ;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ᆻ(L㺴/㚬/䂻/㧦/䂻/ℓ;Ljava/lang/StringBuilder;)V
    .locals 2

    const/4 v0, 0x0

    invoke-static {p1, v0}, L㺴/㚬/䂻/㧦/䂻/㚬;->㺴(Ljava/lang/CharSequence;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, L㺴/㚬/䂻/㧦/䂻/ℓ;->㭲(Ljava/lang/String;)V

    const/4 p0, 0x3

    invoke-virtual {p1, v0, p0}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    return-void
.end method

.method public static 㺴(Ljava/lang/CharSequence;I)Ljava/lang/String;
    .locals 4

    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    add-int/lit8 v1, p1, 0x1

    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    const/4 v2, 0x2

    add-int/2addr p1, v2

    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p0

    mul-int/lit16 v0, v0, 0x640

    mul-int/lit8 v1, v1, 0x28

    add-int/2addr v0, v1

    add-int/2addr v0, p0

    const/4 p0, 0x1

    add-int/2addr v0, p0

    div-int/lit16 p1, v0, 0x100

    int-to-char p1, p1

    rem-int/lit16 v0, v0, 0x100

    int-to-char v0, v0

    new-instance v1, Ljava/lang/String;

    new-array v2, v2, [C

    const/4 v3, 0x0

    aput-char p1, v2, v3

    aput-char v0, v2, p0

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([C)V

    return-object v1
.end method


# virtual methods
.method public உ(L㺴/㚬/䂻/㧦/䂻/ℓ;)V
    .locals 8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    :cond_0
    invoke-virtual {p1}, L㺴/㚬/䂻/㧦/䂻/ℓ;->ㄏ()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p1}, L㺴/㚬/䂻/㧦/䂻/ℓ;->㚬()C

    move-result v1

    iget v2, p1, L㺴/㚬/䂻/㧦/䂻/ℓ;->䆀:I

    const/4 v3, 0x1

    add-int/2addr v2, v3

    iput v2, p1, L㺴/㚬/䂻/㧦/䂻/ℓ;->䆀:I

    invoke-virtual {p0, v1, v0}, L㺴/㚬/䂻/㧦/䂻/㚬;->㚬(CLjava/lang/StringBuilder;)I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    const/4 v4, 0x3

    div-int/2addr v2, v4

    shl-int/2addr v2, v3

    invoke-virtual {p1}, L㺴/㚬/䂻/㧦/䂻/ℓ;->உ()I

    move-result v5

    add-int/2addr v5, v2

    invoke-virtual {p1, v5}, L㺴/㚬/䂻/㧦/䂻/ℓ;->㲝(I)V

    invoke-virtual {p1}, L㺴/㚬/䂻/㧦/䂻/ℓ;->ᆻ()L㺴/㚬/䂻/㧦/䂻/㧦;

    move-result-object v2

    invoke-virtual {v2}, L㺴/㚬/䂻/㧦/䂻/㧦;->உ()I

    move-result v2

    sub-int/2addr v2, v5

    invoke-virtual {p1}, L㺴/㚬/䂻/㧦/䂻/ℓ;->ㄏ()Z

    move-result v5

    if-nez v5, :cond_4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    rem-int/2addr v6, v4

    const/4 v7, 0x2

    if-ne v6, v7, :cond_2

    if-lt v2, v7, :cond_1

    if-le v2, v7, :cond_2

    :cond_1
    :goto_0
    invoke-virtual {p0, p1, v0, v5, v1}, L㺴/㚬/䂻/㧦/䂻/㚬;->䂻(L㺴/㚬/䂻/㧦/䂻/ℓ;Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;I)I

    move-result v1

    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    rem-int/2addr v6, v4

    if-ne v6, v3, :cond_5

    if-gt v1, v4, :cond_3

    if-ne v2, v3, :cond_1

    :cond_3
    if-le v1, v4, :cond_5

    goto :goto_0

    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    rem-int/2addr v1, v4

    if-nez v1, :cond_0

    invoke-virtual {p1}, L㺴/㚬/䂻/㧦/䂻/ℓ;->㺴()Ljava/lang/String;

    move-result-object v1

    iget v2, p1, L㺴/㚬/䂻/㧦/䂻/ℓ;->䆀:I

    invoke-virtual {p0}, L㺴/㚬/䂻/㧦/䂻/㚬;->ḓ()I

    move-result v3

    invoke-static {v1, v2, v3}, L㺴/㚬/䂻/㧦/䂻/ಫ;->ཇ(Ljava/lang/CharSequence;II)I

    move-result v1

    invoke-virtual {p0}, L㺴/㚬/䂻/㧦/䂻/㚬;->ḓ()I

    move-result v2

    if-eq v1, v2, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, L㺴/㚬/䂻/㧦/䂻/ℓ;->ᓭ(I)V

    :cond_5
    invoke-virtual {p0, p1, v0}, L㺴/㚬/䂻/㧦/䂻/㚬;->䆀(L㺴/㚬/䂻/㧦/䂻/ℓ;Ljava/lang/StringBuilder;)V

    return-void
.end method

.method public ḓ()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public 㚬(CLjava/lang/StringBuilder;)I
    .locals 4

    const/16 v0, 0x20

    const/4 v1, 0x1

    if-ne p1, v0, :cond_0

    const/4 p1, 0x3

    :goto_0
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return v1

    :cond_0
    const/16 v2, 0x30

    if-lt p1, v2, :cond_1

    const/16 v3, 0x39

    if-gt p1, v3, :cond_1

    sub-int/2addr p1, v2

    add-int/lit8 p1, p1, 0x4

    :goto_1
    int-to-char p1, p1

    goto :goto_0

    :cond_1
    const/16 v2, 0x41

    if-lt p1, v2, :cond_2

    const/16 v3, 0x5a

    if-gt p1, v3, :cond_2

    sub-int/2addr p1, v2

    add-int/lit8 p1, p1, 0xe

    goto :goto_1

    :cond_2
    const/4 v2, 0x2

    if-ge p1, v0, :cond_3

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_2
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return v2

    :cond_3
    const/16 v0, 0x21

    if-lt p1, v0, :cond_4

    const/16 v3, 0x2f

    if-gt p1, v3, :cond_4

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_3
    sub-int/2addr p1, v0

    :goto_4
    int-to-char p1, p1

    goto :goto_2

    :cond_4
    const/16 v0, 0x3a

    if-lt p1, v0, :cond_5

    const/16 v3, 0x40

    if-gt p1, v3, :cond_5

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sub-int/2addr p1, v0

    add-int/lit8 p1, p1, 0xf

    goto :goto_4

    :cond_5
    const/16 v0, 0x5b

    if-lt p1, v0, :cond_6

    const/16 v3, 0x5f

    if-gt p1, v3, :cond_6

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sub-int/2addr p1, v0

    add-int/lit8 p1, p1, 0x16

    goto :goto_4

    :cond_6
    const/16 v0, 0x60

    if-lt p1, v0, :cond_7

    const/16 v1, 0x7f

    if-gt p1, v1, :cond_7

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_7
    const-string v0, "\u0001\u001e"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 p1, p1, -0x80

    int-to-char p1, p1

    invoke-virtual {p0, p1, p2}, L㺴/㚬/䂻/㧦/䂻/㚬;->㚬(CLjava/lang/StringBuilder;)I

    move-result p1

    add-int/2addr p1, v2

    return p1
.end method

.method public final 䂻(L㺴/㚬/䂻/㧦/䂻/ℓ;Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;I)I
    .locals 1

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    sub-int p4, v0, p4

    invoke-virtual {p2, p4, v0}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    iget p2, p1, L㺴/㚬/䂻/㧦/䂻/ℓ;->䆀:I

    add-int/lit8 p2, p2, -0x1

    iput p2, p1, L㺴/㚬/䂻/㧦/䂻/ℓ;->䆀:I

    invoke-virtual {p1}, L㺴/㚬/䂻/㧦/䂻/ℓ;->㚬()C

    move-result p2

    invoke-virtual {p0, p2, p3}, L㺴/㚬/䂻/㧦/䂻/㚬;->㚬(CLjava/lang/StringBuilder;)I

    move-result p2

    invoke-virtual {p1}, L㺴/㚬/䂻/㧦/䂻/ℓ;->㧦()V

    return p2
.end method

.method public 䆀(L㺴/㚬/䂻/㧦/䂻/ℓ;Ljava/lang/StringBuilder;)V
    .locals 7

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    const/4 v1, 0x3

    div-int/2addr v0, v1

    const/4 v2, 0x1

    shl-int/2addr v0, v2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    rem-int/2addr v3, v1

    invoke-virtual {p1}, L㺴/㚬/䂻/㧦/䂻/ℓ;->உ()I

    move-result v4

    add-int/2addr v4, v0

    invoke-virtual {p1, v4}, L㺴/㚬/䂻/㧦/䂻/ℓ;->㲝(I)V

    invoke-virtual {p1}, L㺴/㚬/䂻/㧦/䂻/ℓ;->ᆻ()L㺴/㚬/䂻/㧦/䂻/㧦;

    move-result-object v0

    invoke-virtual {v0}, L㺴/㚬/䂻/㧦/䂻/㧦;->உ()I

    move-result v0

    sub-int/2addr v0, v4

    const/4 v4, 0x0

    const/16 v5, 0xfe

    const/4 v6, 0x2

    if-ne v3, v6, :cond_2

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_0
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lt v0, v1, :cond_0

    invoke-static {p1, p2}, L㺴/㚬/䂻/㧦/䂻/㚬;->ᆻ(L㺴/㚬/䂻/㧦/䂻/ℓ;Ljava/lang/StringBuilder;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, L㺴/㚬/䂻/㧦/䂻/ℓ;->ㄏ()Z

    move-result p2

    if-eqz p2, :cond_7

    :cond_1
    :goto_1
    invoke-virtual {p1, v5}, L㺴/㚬/䂻/㧦/䂻/ℓ;->㞘(C)V

    goto :goto_4

    :cond_2
    if-ne v0, v2, :cond_5

    if-ne v3, v2, :cond_5

    :goto_2
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lt v0, v1, :cond_3

    invoke-static {p1, p2}, L㺴/㚬/䂻/㧦/䂻/㚬;->ᆻ(L㺴/㚬/䂻/㧦/䂻/ℓ;Ljava/lang/StringBuilder;)V

    goto :goto_2

    :cond_3
    invoke-virtual {p1}, L㺴/㚬/䂻/㧦/䂻/ℓ;->ㄏ()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-virtual {p1, v5}, L㺴/㚬/䂻/㧦/䂻/ℓ;->㞘(C)V

    :cond_4
    iget p2, p1, L㺴/㚬/䂻/㧦/䂻/ℓ;->䆀:I

    sub-int/2addr p2, v2

    iput p2, p1, L㺴/㚬/䂻/㧦/䂻/ℓ;->䆀:I

    goto :goto_4

    :cond_5
    if-nez v3, :cond_8

    :goto_3
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lt v2, v1, :cond_6

    invoke-static {p1, p2}, L㺴/㚬/䂻/㧦/䂻/㚬;->ᆻ(L㺴/㚬/䂻/㧦/䂻/ℓ;Ljava/lang/StringBuilder;)V

    goto :goto_3

    :cond_6
    if-gtz v0, :cond_1

    invoke-virtual {p1}, L㺴/㚬/䂻/㧦/䂻/ℓ;->ㄏ()Z

    move-result p2

    if-eqz p2, :cond_7

    goto :goto_1

    :cond_7
    :goto_4
    invoke-virtual {p1, v4}, L㺴/㚬/䂻/㧦/䂻/ℓ;->ᓭ(I)V

    return-void

    :cond_8
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Unexpected case. Please report!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
