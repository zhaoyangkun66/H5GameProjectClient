.class public L㺴/㚬/䂻/㧦/䂻/ḓ;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final உ:Ljava/lang/CharSequence;

.field public final 㚬:I

.field public final 㺴:[B

.field public final 䂻:I


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, L㺴/㚬/䂻/㧦/䂻/ḓ;->உ:Ljava/lang/CharSequence;

    iput p2, p0, L㺴/㚬/䂻/㧦/䂻/ḓ;->㚬:I

    iput p3, p0, L㺴/㚬/䂻/㧦/䂻/ḓ;->䂻:I

    mul-int p2, p2, p3

    new-array p1, p2, [B

    iput-object p1, p0, L㺴/㚬/䂻/㧦/䂻/ḓ;->㺴:[B

    const/4 p2, -0x1

    invoke-static {p1, p2}, Ljava/util/Arrays;->fill([BB)V

    return-void
.end method


# virtual methods
.method public final உ(I)V
    .locals 6

    iget v0, p0, L㺴/㚬/䂻/㧦/䂻/ḓ;->䂻:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2, p1, v1}, L㺴/㚬/䂻/㧦/䂻/ḓ;->ᆻ(IIII)V

    iget v0, p0, L㺴/㚬/䂻/㧦/䂻/ḓ;->䂻:I

    sub-int/2addr v0, v1

    const/4 v3, 0x2

    invoke-virtual {p0, v0, v1, p1, v3}, L㺴/㚬/䂻/㧦/䂻/ḓ;->ᆻ(IIII)V

    iget v0, p0, L㺴/㚬/䂻/㧦/䂻/ḓ;->䂻:I

    sub-int/2addr v0, v1

    const/4 v4, 0x3

    invoke-virtual {p0, v0, v3, p1, v4}, L㺴/㚬/䂻/㧦/䂻/ḓ;->ᆻ(IIII)V

    iget v0, p0, L㺴/㚬/䂻/㧦/䂻/ḓ;->㚬:I

    sub-int/2addr v0, v3

    const/4 v5, 0x4

    invoke-virtual {p0, v2, v0, p1, v5}, L㺴/㚬/䂻/㧦/䂻/ḓ;->ᆻ(IIII)V

    iget v0, p0, L㺴/㚬/䂻/㧦/䂻/ḓ;->㚬:I

    sub-int/2addr v0, v1

    const/4 v5, 0x5

    invoke-virtual {p0, v2, v0, p1, v5}, L㺴/㚬/䂻/㧦/䂻/ḓ;->ᆻ(IIII)V

    iget v0, p0, L㺴/㚬/䂻/㧦/䂻/ḓ;->㚬:I

    sub-int/2addr v0, v1

    const/4 v2, 0x6

    invoke-virtual {p0, v1, v0, p1, v2}, L㺴/㚬/䂻/㧦/䂻/ḓ;->ᆻ(IIII)V

    iget v0, p0, L㺴/㚬/䂻/㧦/䂻/ḓ;->㚬:I

    sub-int/2addr v0, v1

    const/4 v2, 0x7

    invoke-virtual {p0, v3, v0, p1, v2}, L㺴/㚬/䂻/㧦/䂻/ḓ;->ᆻ(IIII)V

    iget v0, p0, L㺴/㚬/䂻/㧦/䂻/ḓ;->㚬:I

    sub-int/2addr v0, v1

    const/16 v1, 0x8

    invoke-virtual {p0, v4, v0, p1, v1}, L㺴/㚬/䂻/㧦/䂻/ḓ;->ᆻ(IIII)V

    return-void
.end method

.method public final ಫ(III)V
    .locals 4

    add-int/lit8 v0, p1, -0x2

    add-int/lit8 v1, p2, -0x2

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, p3, v2}, L㺴/㚬/䂻/㧦/䂻/ḓ;->ᆻ(IIII)V

    add-int/lit8 v2, p2, -0x1

    const/4 v3, 0x2

    invoke-virtual {p0, v0, v2, p3, v3}, L㺴/㚬/䂻/㧦/䂻/ḓ;->ᆻ(IIII)V

    add-int/lit8 v0, p1, -0x1

    const/4 v3, 0x3

    invoke-virtual {p0, v0, v1, p3, v3}, L㺴/㚬/䂻/㧦/䂻/ḓ;->ᆻ(IIII)V

    const/4 v3, 0x4

    invoke-virtual {p0, v0, v2, p3, v3}, L㺴/㚬/䂻/㧦/䂻/ḓ;->ᆻ(IIII)V

    const/4 v3, 0x5

    invoke-virtual {p0, v0, p2, p3, v3}, L㺴/㚬/䂻/㧦/䂻/ḓ;->ᆻ(IIII)V

    const/4 v0, 0x6

    invoke-virtual {p0, p1, v1, p3, v0}, L㺴/㚬/䂻/㧦/䂻/ḓ;->ᆻ(IIII)V

    const/4 v0, 0x7

    invoke-virtual {p0, p1, v2, p3, v0}, L㺴/㚬/䂻/㧦/䂻/ḓ;->ᆻ(IIII)V

    const/16 v0, 0x8

    invoke-virtual {p0, p1, p2, p3, v0}, L㺴/㚬/䂻/㧦/䂻/ḓ;->ᆻ(IIII)V

    return-void
.end method

.method public final ᆻ(IIII)V
    .locals 1

    if-gez p1, :cond_0

    iget v0, p0, L㺴/㚬/䂻/㧦/䂻/ḓ;->䂻:I

    add-int/2addr p1, v0

    add-int/lit8 v0, v0, 0x4

    rem-int/lit8 v0, v0, 0x8

    rsub-int/lit8 v0, v0, 0x4

    add-int/2addr p2, v0

    :cond_0
    if-gez p2, :cond_1

    iget v0, p0, L㺴/㚬/䂻/㧦/䂻/ḓ;->㚬:I

    add-int/2addr p2, v0

    add-int/lit8 v0, v0, 0x4

    rem-int/lit8 v0, v0, 0x8

    rsub-int/lit8 v0, v0, 0x4

    add-int/2addr p1, v0

    :cond_1
    iget-object v0, p0, L㺴/㚬/䂻/㧦/䂻/ḓ;->உ:Ljava/lang/CharSequence;

    invoke-interface {v0, p3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p3

    rsub-int/lit8 p4, p4, 0x8

    const/4 v0, 0x1

    shl-int p4, v0, p4

    and-int/2addr p3, p4

    if-eqz p3, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, p2, p1, v0}, L㺴/㚬/䂻/㧦/䂻/ḓ;->ㄏ(IIZ)V

    return-void
.end method

.method public final ḓ(II)Z
    .locals 2

    iget-object v0, p0, L㺴/㚬/䂻/㧦/䂻/ḓ;->㺴:[B

    iget v1, p0, L㺴/㚬/䂻/㧦/䂻/ḓ;->㚬:I

    mul-int p2, p2, v1

    add-int/2addr p2, p1

    aget-byte p1, v0, p2

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    return p2

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final ℓ()V
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x4

    const/4 v2, 0x0

    const/4 v3, 0x4

    :cond_0
    iget v4, p0, L㺴/㚬/䂻/㧦/䂻/ḓ;->䂻:I

    if-ne v3, v4, :cond_1

    if-nez v0, :cond_1

    add-int/lit8 v4, v2, 0x1

    invoke-virtual {p0, v2}, L㺴/㚬/䂻/㧦/䂻/ḓ;->உ(I)V

    move v2, v4

    :cond_1
    iget v4, p0, L㺴/㚬/䂻/㧦/䂻/ḓ;->䂻:I

    const/4 v5, 0x2

    sub-int/2addr v4, v5

    if-ne v3, v4, :cond_2

    if-nez v0, :cond_2

    iget v4, p0, L㺴/㚬/䂻/㧦/䂻/ḓ;->㚬:I

    rem-int/2addr v4, v1

    if-eqz v4, :cond_2

    add-int/lit8 v4, v2, 0x1

    invoke-virtual {p0, v2}, L㺴/㚬/䂻/㧦/䂻/ḓ;->䂻(I)V

    move v2, v4

    :cond_2
    iget v4, p0, L㺴/㚬/䂻/㧦/䂻/ḓ;->䂻:I

    sub-int/2addr v4, v5

    if-ne v3, v4, :cond_3

    if-nez v0, :cond_3

    iget v4, p0, L㺴/㚬/䂻/㧦/䂻/ḓ;->㚬:I

    rem-int/lit8 v4, v4, 0x8

    if-ne v4, v1, :cond_3

    add-int/lit8 v4, v2, 0x1

    invoke-virtual {p0, v2}, L㺴/㚬/䂻/㧦/䂻/ḓ;->㚬(I)V

    move v2, v4

    :cond_3
    iget v4, p0, L㺴/㚬/䂻/㧦/䂻/ḓ;->䂻:I

    add-int/2addr v4, v1

    if-ne v3, v4, :cond_4

    if-ne v0, v5, :cond_4

    iget v4, p0, L㺴/㚬/䂻/㧦/䂻/ḓ;->㚬:I

    rem-int/lit8 v4, v4, 0x8

    if-nez v4, :cond_4

    add-int/lit8 v4, v2, 0x1

    invoke-virtual {p0, v2}, L㺴/㚬/䂻/㧦/䂻/ḓ;->㺴(I)V

    move v2, v4

    :cond_4
    iget v4, p0, L㺴/㚬/䂻/㧦/䂻/ḓ;->䂻:I

    if-ge v3, v4, :cond_5

    if-ltz v0, :cond_5

    invoke-virtual {p0, v0, v3}, L㺴/㚬/䂻/㧦/䂻/ḓ;->䆀(II)Z

    move-result v4

    if-nez v4, :cond_5

    add-int/lit8 v4, v2, 0x1

    invoke-virtual {p0, v3, v0, v2}, L㺴/㚬/䂻/㧦/䂻/ḓ;->ಫ(III)V

    move v2, v4

    :cond_5
    add-int/lit8 v3, v3, -0x2

    add-int/lit8 v0, v0, 0x2

    if-ltz v3, :cond_6

    iget v4, p0, L㺴/㚬/䂻/㧦/䂻/ḓ;->㚬:I

    if-lt v0, v4, :cond_4

    :cond_6
    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v0, v0, 0x3

    :cond_7
    if-ltz v3, :cond_8

    iget v4, p0, L㺴/㚬/䂻/㧦/䂻/ḓ;->㚬:I

    if-ge v0, v4, :cond_8

    invoke-virtual {p0, v0, v3}, L㺴/㚬/䂻/㧦/䂻/ḓ;->䆀(II)Z

    move-result v4

    if-nez v4, :cond_8

    add-int/lit8 v4, v2, 0x1

    invoke-virtual {p0, v3, v0, v2}, L㺴/㚬/䂻/㧦/䂻/ḓ;->ಫ(III)V

    move v2, v4

    :cond_8
    add-int/lit8 v3, v3, 0x2

    add-int/lit8 v0, v0, -0x2

    iget v4, p0, L㺴/㚬/䂻/㧦/䂻/ḓ;->䂻:I

    if-ge v3, v4, :cond_9

    if-gez v0, :cond_7

    :cond_9
    add-int/lit8 v3, v3, 0x3

    add-int/lit8 v0, v0, 0x1

    if-lt v3, v4, :cond_0

    iget v6, p0, L㺴/㚬/䂻/㧦/䂻/ḓ;->㚬:I

    if-lt v0, v6, :cond_0

    const/4 v0, 0x1

    sub-int/2addr v6, v0

    sub-int/2addr v4, v0

    invoke-virtual {p0, v6, v4}, L㺴/㚬/䂻/㧦/䂻/ḓ;->䆀(II)Z

    move-result v1

    if-nez v1, :cond_a

    iget v1, p0, L㺴/㚬/䂻/㧦/䂻/ḓ;->㚬:I

    sub-int/2addr v1, v0

    iget v2, p0, L㺴/㚬/䂻/㧦/䂻/ḓ;->䂻:I

    sub-int/2addr v2, v0

    invoke-virtual {p0, v1, v2, v0}, L㺴/㚬/䂻/㧦/䂻/ḓ;->ㄏ(IIZ)V

    iget v1, p0, L㺴/㚬/䂻/㧦/䂻/ḓ;->㚬:I

    sub-int/2addr v1, v5

    iget v2, p0, L㺴/㚬/䂻/㧦/䂻/ḓ;->䂻:I

    sub-int/2addr v2, v5

    invoke-virtual {p0, v1, v2, v0}, L㺴/㚬/䂻/㧦/䂻/ḓ;->ㄏ(IIZ)V

    :cond_a
    return-void
.end method

.method public final ㄏ(IIZ)V
    .locals 2

    iget-object v0, p0, L㺴/㚬/䂻/㧦/䂻/ḓ;->㺴:[B

    iget v1, p0, L㺴/㚬/䂻/㧦/䂻/ḓ;->㚬:I

    mul-int p2, p2, v1

    add-int/2addr p2, p1

    int-to-byte p1, p3

    aput-byte p1, v0, p2

    return-void
.end method

.method public final 㚬(I)V
    .locals 6

    iget v0, p0, L㺴/㚬/䂻/㧦/䂻/ḓ;->䂻:I

    const/4 v1, 0x3

    sub-int/2addr v0, v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {p0, v0, v2, p1, v3}, L㺴/㚬/䂻/㧦/䂻/ḓ;->ᆻ(IIII)V

    iget v0, p0, L㺴/㚬/䂻/㧦/䂻/ḓ;->䂻:I

    const/4 v4, 0x2

    sub-int/2addr v0, v4

    invoke-virtual {p0, v0, v2, p1, v4}, L㺴/㚬/䂻/㧦/䂻/ḓ;->ᆻ(IIII)V

    iget v0, p0, L㺴/㚬/䂻/㧦/䂻/ḓ;->䂻:I

    sub-int/2addr v0, v3

    invoke-virtual {p0, v0, v2, p1, v1}, L㺴/㚬/䂻/㧦/䂻/ḓ;->ᆻ(IIII)V

    iget v0, p0, L㺴/㚬/䂻/㧦/䂻/ḓ;->㚬:I

    sub-int/2addr v0, v4

    const/4 v5, 0x4

    invoke-virtual {p0, v2, v0, p1, v5}, L㺴/㚬/䂻/㧦/䂻/ḓ;->ᆻ(IIII)V

    iget v0, p0, L㺴/㚬/䂻/㧦/䂻/ḓ;->㚬:I

    sub-int/2addr v0, v3

    const/4 v5, 0x5

    invoke-virtual {p0, v2, v0, p1, v5}, L㺴/㚬/䂻/㧦/䂻/ḓ;->ᆻ(IIII)V

    iget v0, p0, L㺴/㚬/䂻/㧦/䂻/ḓ;->㚬:I

    sub-int/2addr v0, v3

    const/4 v2, 0x6

    invoke-virtual {p0, v3, v0, p1, v2}, L㺴/㚬/䂻/㧦/䂻/ḓ;->ᆻ(IIII)V

    iget v0, p0, L㺴/㚬/䂻/㧦/䂻/ḓ;->㚬:I

    sub-int/2addr v0, v3

    const/4 v2, 0x7

    invoke-virtual {p0, v4, v0, p1, v2}, L㺴/㚬/䂻/㧦/䂻/ḓ;->ᆻ(IIII)V

    iget v0, p0, L㺴/㚬/䂻/㧦/䂻/ḓ;->㚬:I

    sub-int/2addr v0, v3

    const/16 v2, 0x8

    invoke-virtual {p0, v1, v0, p1, v2}, L㺴/㚬/䂻/㧦/䂻/ḓ;->ᆻ(IIII)V

    return-void
.end method

.method public final 㺴(I)V
    .locals 6

    iget v0, p0, L㺴/㚬/䂻/㧦/䂻/ḓ;->䂻:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2, p1, v1}, L㺴/㚬/䂻/㧦/䂻/ḓ;->ᆻ(IIII)V

    iget v0, p0, L㺴/㚬/䂻/㧦/䂻/ḓ;->䂻:I

    sub-int/2addr v0, v1

    iget v3, p0, L㺴/㚬/䂻/㧦/䂻/ḓ;->㚬:I

    sub-int/2addr v3, v1

    const/4 v4, 0x2

    invoke-virtual {p0, v0, v3, p1, v4}, L㺴/㚬/䂻/㧦/䂻/ḓ;->ᆻ(IIII)V

    iget v0, p0, L㺴/㚬/䂻/㧦/䂻/ḓ;->㚬:I

    const/4 v3, 0x3

    sub-int/2addr v0, v3

    invoke-virtual {p0, v2, v0, p1, v3}, L㺴/㚬/䂻/㧦/䂻/ḓ;->ᆻ(IIII)V

    iget v0, p0, L㺴/㚬/䂻/㧦/䂻/ḓ;->㚬:I

    sub-int/2addr v0, v4

    const/4 v5, 0x4

    invoke-virtual {p0, v2, v0, p1, v5}, L㺴/㚬/䂻/㧦/䂻/ḓ;->ᆻ(IIII)V

    iget v0, p0, L㺴/㚬/䂻/㧦/䂻/ḓ;->㚬:I

    sub-int/2addr v0, v1

    const/4 v5, 0x5

    invoke-virtual {p0, v2, v0, p1, v5}, L㺴/㚬/䂻/㧦/䂻/ḓ;->ᆻ(IIII)V

    iget v0, p0, L㺴/㚬/䂻/㧦/䂻/ḓ;->㚬:I

    sub-int/2addr v0, v3

    const/4 v2, 0x6

    invoke-virtual {p0, v1, v0, p1, v2}, L㺴/㚬/䂻/㧦/䂻/ḓ;->ᆻ(IIII)V

    iget v0, p0, L㺴/㚬/䂻/㧦/䂻/ḓ;->㚬:I

    sub-int/2addr v0, v4

    const/4 v2, 0x7

    invoke-virtual {p0, v1, v0, p1, v2}, L㺴/㚬/䂻/㧦/䂻/ḓ;->ᆻ(IIII)V

    iget v0, p0, L㺴/㚬/䂻/㧦/䂻/ḓ;->㚬:I

    sub-int/2addr v0, v1

    const/16 v2, 0x8

    invoke-virtual {p0, v1, v0, p1, v2}, L㺴/㚬/䂻/㧦/䂻/ḓ;->ᆻ(IIII)V

    return-void
.end method

.method public final 䂻(I)V
    .locals 6

    iget v0, p0, L㺴/㚬/䂻/㧦/䂻/ḓ;->䂻:I

    const/4 v1, 0x3

    sub-int/2addr v0, v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {p0, v0, v2, p1, v3}, L㺴/㚬/䂻/㧦/䂻/ḓ;->ᆻ(IIII)V

    iget v0, p0, L㺴/㚬/䂻/㧦/䂻/ḓ;->䂻:I

    const/4 v4, 0x2

    sub-int/2addr v0, v4

    invoke-virtual {p0, v0, v2, p1, v4}, L㺴/㚬/䂻/㧦/䂻/ḓ;->ᆻ(IIII)V

    iget v0, p0, L㺴/㚬/䂻/㧦/䂻/ḓ;->䂻:I

    sub-int/2addr v0, v3

    invoke-virtual {p0, v0, v2, p1, v1}, L㺴/㚬/䂻/㧦/䂻/ḓ;->ᆻ(IIII)V

    iget v0, p0, L㺴/㚬/䂻/㧦/䂻/ḓ;->㚬:I

    const/4 v5, 0x4

    sub-int/2addr v0, v5

    invoke-virtual {p0, v2, v0, p1, v5}, L㺴/㚬/䂻/㧦/䂻/ḓ;->ᆻ(IIII)V

    iget v0, p0, L㺴/㚬/䂻/㧦/䂻/ḓ;->㚬:I

    sub-int/2addr v0, v1

    const/4 v1, 0x5

    invoke-virtual {p0, v2, v0, p1, v1}, L㺴/㚬/䂻/㧦/䂻/ḓ;->ᆻ(IIII)V

    iget v0, p0, L㺴/㚬/䂻/㧦/䂻/ḓ;->㚬:I

    sub-int/2addr v0, v4

    const/4 v1, 0x6

    invoke-virtual {p0, v2, v0, p1, v1}, L㺴/㚬/䂻/㧦/䂻/ḓ;->ᆻ(IIII)V

    iget v0, p0, L㺴/㚬/䂻/㧦/䂻/ḓ;->㚬:I

    sub-int/2addr v0, v3

    const/4 v1, 0x7

    invoke-virtual {p0, v2, v0, p1, v1}, L㺴/㚬/䂻/㧦/䂻/ḓ;->ᆻ(IIII)V

    iget v0, p0, L㺴/㚬/䂻/㧦/䂻/ḓ;->㚬:I

    sub-int/2addr v0, v3

    const/16 v1, 0x8

    invoke-virtual {p0, v3, v0, p1, v1}, L㺴/㚬/䂻/㧦/䂻/ḓ;->ᆻ(IIII)V

    return-void
.end method

.method public final 䆀(II)Z
    .locals 2

    iget-object v0, p0, L㺴/㚬/䂻/㧦/䂻/ḓ;->㺴:[B

    iget v1, p0, L㺴/㚬/䂻/㧦/䂻/ḓ;->㚬:I

    mul-int p2, p2, v1

    add-int/2addr p2, p1

    aget-byte p1, v0, p2

    if-ltz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
