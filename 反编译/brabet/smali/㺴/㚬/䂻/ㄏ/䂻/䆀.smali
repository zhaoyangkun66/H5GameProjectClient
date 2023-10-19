.class public final L㺴/㚬/䂻/ㄏ/䂻/䆀;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final ḓ:L㺴/㚬/䂻/ㄏ/䂻/䆀;


# instance fields
.field public final உ:I

.field public final 㚬:I

.field public final 㺴:I

.field public final 䂻:L㺴/㚬/䂻/ㄏ/䂻/ᆻ;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, L㺴/㚬/䂻/ㄏ/䂻/䆀;

    sget-object v1, L㺴/㚬/䂻/ㄏ/䂻/ᆻ;->䂻:L㺴/㚬/䂻/ㄏ/䂻/ᆻ;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2, v2}, L㺴/㚬/䂻/ㄏ/䂻/䆀;-><init>(L㺴/㚬/䂻/ㄏ/䂻/ᆻ;III)V

    sput-object v0, L㺴/㚬/䂻/ㄏ/䂻/䆀;->ḓ:L㺴/㚬/䂻/ㄏ/䂻/䆀;

    return-void
.end method

.method public constructor <init>(L㺴/㚬/䂻/ㄏ/䂻/ᆻ;III)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, L㺴/㚬/䂻/ㄏ/䂻/䆀;->䂻:L㺴/㚬/䂻/ㄏ/䂻/ᆻ;

    iput p2, p0, L㺴/㚬/䂻/ㄏ/䂻/䆀;->உ:I

    iput p3, p0, L㺴/㚬/䂻/ㄏ/䂻/䆀;->㚬:I

    iput p4, p0, L㺴/㚬/䂻/ㄏ/䂻/䆀;->㺴:I

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    sget-object v1, L㺴/㚬/䂻/ㄏ/䂻/㺴;->䂻:[Ljava/lang/String;

    iget v2, p0, L㺴/㚬/䂻/ㄏ/䂻/䆀;->உ:I

    aget-object v1, v1, v2

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, L㺴/㚬/䂻/ㄏ/䂻/䆀;->㺴:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, L㺴/㚬/䂻/ㄏ/䂻/䆀;->㚬:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string v1, "%s bits=%d bytes=%d"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public உ(I)L㺴/㚬/䂻/ㄏ/䂻/䆀;
    .locals 6

    iget-object v0, p0, L㺴/㚬/䂻/ㄏ/䂻/䆀;->䂻:L㺴/㚬/䂻/ㄏ/䂻/ᆻ;

    iget v1, p0, L㺴/㚬/䂻/ㄏ/䂻/䆀;->உ:I

    iget v2, p0, L㺴/㚬/䂻/ㄏ/䂻/䆀;->㺴:I

    const/4 v3, 0x0

    const/4 v4, 0x4

    if-eq v1, v4, :cond_0

    const/4 v4, 0x2

    if-ne v1, v4, :cond_1

    :cond_0
    sget-object v4, L㺴/㚬/䂻/ㄏ/䂻/㺴;->㚬:[[I

    aget-object v1, v4, v1

    aget v1, v1, v3

    const v4, 0xffff

    and-int/2addr v4, v1

    shr-int/lit8 v1, v1, 0x10

    invoke-virtual {v0, v4, v1}, L㺴/㚬/䂻/ㄏ/䂻/ᆻ;->உ(II)L㺴/㚬/䂻/ㄏ/䂻/ᆻ;

    move-result-object v0

    add-int/2addr v2, v1

    const/4 v1, 0x0

    :cond_1
    iget v3, p0, L㺴/㚬/䂻/ㄏ/䂻/䆀;->㚬:I

    if-eqz v3, :cond_4

    const/16 v4, 0x1f

    if-ne v3, v4, :cond_2

    goto :goto_0

    :cond_2
    const/16 v4, 0x3e

    if-ne v3, v4, :cond_3

    const/16 v4, 0x9

    goto :goto_1

    :cond_3
    const/16 v4, 0x8

    goto :goto_1

    :cond_4
    :goto_0
    const/16 v4, 0x12

    :goto_1
    new-instance v5, L㺴/㚬/䂻/ㄏ/䂻/䆀;

    add-int/lit8 v3, v3, 0x1

    add-int/2addr v2, v4

    invoke-direct {v5, v0, v1, v3, v2}, L㺴/㚬/䂻/ㄏ/䂻/䆀;-><init>(L㺴/㚬/䂻/ㄏ/䂻/ᆻ;III)V

    iget v0, v5, L㺴/㚬/䂻/ㄏ/䂻/䆀;->㚬:I

    const/16 v1, 0x81e

    if-ne v0, v1, :cond_5

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {v5, p1}, L㺴/㚬/䂻/ㄏ/䂻/䆀;->䂻(I)L㺴/㚬/䂻/ㄏ/䂻/䆀;

    move-result-object v5

    :cond_5
    return-object v5
.end method

.method public ᆻ(II)L㺴/㚬/䂻/ㄏ/䂻/䆀;
    .locals 4

    iget v0, p0, L㺴/㚬/䂻/ㄏ/䂻/䆀;->㺴:I

    iget-object v1, p0, L㺴/㚬/䂻/ㄏ/䂻/䆀;->䂻:L㺴/㚬/䂻/ㄏ/䂻/ᆻ;

    iget v2, p0, L㺴/㚬/䂻/ㄏ/䂻/䆀;->உ:I

    if-eq p1, v2, :cond_0

    sget-object v3, L㺴/㚬/䂻/ㄏ/䂻/㺴;->㚬:[[I

    aget-object v2, v3, v2

    aget v2, v2, p1

    const v3, 0xffff

    and-int/2addr v3, v2

    shr-int/lit8 v2, v2, 0x10

    invoke-virtual {v1, v3, v2}, L㺴/㚬/䂻/ㄏ/䂻/ᆻ;->உ(II)L㺴/㚬/䂻/ㄏ/䂻/ᆻ;

    move-result-object v1

    add-int/2addr v0, v2

    :cond_0
    const/4 v2, 0x2

    if-ne p1, v2, :cond_1

    const/4 v2, 0x4

    goto :goto_0

    :cond_1
    const/4 v2, 0x5

    :goto_0
    invoke-virtual {v1, p2, v2}, L㺴/㚬/䂻/ㄏ/䂻/ᆻ;->உ(II)L㺴/㚬/䂻/ㄏ/䂻/ᆻ;

    move-result-object p2

    new-instance v1, L㺴/㚬/䂻/ㄏ/䂻/䆀;

    const/4 v3, 0x0

    add-int/2addr v0, v2

    invoke-direct {v1, p2, p1, v3, v0}, L㺴/㚬/䂻/ㄏ/䂻/䆀;-><init>(L㺴/㚬/䂻/ㄏ/䂻/ᆻ;III)V

    return-object v1
.end method

.method public ḓ()I
    .locals 1

    iget v0, p0, L㺴/㚬/䂻/ㄏ/䂻/䆀;->உ:I

    return v0
.end method

.method public ℓ(II)L㺴/㚬/䂻/ㄏ/䂻/䆀;
    .locals 5

    iget-object v0, p0, L㺴/㚬/䂻/ㄏ/䂻/䆀;->䂻:L㺴/㚬/䂻/ㄏ/䂻/ᆻ;

    iget v1, p0, L㺴/㚬/䂻/ㄏ/䂻/䆀;->உ:I

    const/4 v2, 0x5

    const/4 v3, 0x2

    if-ne v1, v3, :cond_0

    const/4 v3, 0x4

    goto :goto_0

    :cond_0
    const/4 v3, 0x5

    :goto_0
    sget-object v4, L㺴/㚬/䂻/ㄏ/䂻/㺴;->ḓ:[[I

    aget-object v1, v4, v1

    aget p1, v1, p1

    invoke-virtual {v0, p1, v3}, L㺴/㚬/䂻/ㄏ/䂻/ᆻ;->உ(II)L㺴/㚬/䂻/ㄏ/䂻/ᆻ;

    move-result-object p1

    invoke-virtual {p1, p2, v2}, L㺴/㚬/䂻/ㄏ/䂻/ᆻ;->உ(II)L㺴/㚬/䂻/ㄏ/䂻/ᆻ;

    move-result-object p1

    new-instance p2, L㺴/㚬/䂻/ㄏ/䂻/䆀;

    iget v0, p0, L㺴/㚬/䂻/ㄏ/䂻/䆀;->உ:I

    const/4 v1, 0x0

    iget v4, p0, L㺴/㚬/䂻/ㄏ/䂻/䆀;->㺴:I

    add-int/2addr v4, v3

    add-int/2addr v4, v2

    invoke-direct {p2, p1, v0, v1, v4}, L㺴/㚬/䂻/ㄏ/䂻/䆀;-><init>(L㺴/㚬/䂻/ㄏ/䂻/ᆻ;III)V

    return-object p2
.end method

.method public ㄏ([B)L㺴/㚬/䂻/ಫ/உ;
    .locals 3

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    array-length v1, p1

    invoke-virtual {p0, v1}, L㺴/㚬/䂻/ㄏ/䂻/䆀;->䂻(I)L㺴/㚬/䂻/ㄏ/䂻/䆀;

    move-result-object v1

    iget-object v1, v1, L㺴/㚬/䂻/ㄏ/䂻/䆀;->䂻:L㺴/㚬/䂻/ㄏ/䂻/ᆻ;

    :goto_0
    if-eqz v1, :cond_0

    invoke-interface {v0, v1}, Ljava/util/Deque;->addFirst(Ljava/lang/Object;)V

    invoke-virtual {v1}, L㺴/㚬/䂻/ㄏ/䂻/ᆻ;->㺴()L㺴/㚬/䂻/ㄏ/䂻/ᆻ;

    move-result-object v1

    goto :goto_0

    :cond_0
    new-instance v1, L㺴/㚬/䂻/ಫ/உ;

    invoke-direct {v1}, L㺴/㚬/䂻/ಫ/உ;-><init>()V

    invoke-interface {v0}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, L㺴/㚬/䂻/ㄏ/䂻/ᆻ;

    invoke-virtual {v2, v1, p1}, L㺴/㚬/䂻/ㄏ/䂻/ᆻ;->㚬(L㺴/㚬/䂻/ಫ/உ;[B)V

    goto :goto_1

    :cond_1
    return-object v1
.end method

.method public 㚬()I
    .locals 1

    iget v0, p0, L㺴/㚬/䂻/ㄏ/䂻/䆀;->㚬:I

    return v0
.end method

.method public 㺴()I
    .locals 1

    iget v0, p0, L㺴/㚬/䂻/ㄏ/䂻/䆀;->㺴:I

    return v0
.end method

.method public 䂻(I)L㺴/㚬/䂻/ㄏ/䂻/䆀;
    .locals 4

    iget v0, p0, L㺴/㚬/䂻/ㄏ/䂻/䆀;->㚬:I

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    iget-object v1, p0, L㺴/㚬/䂻/ㄏ/䂻/䆀;->䂻:L㺴/㚬/䂻/ㄏ/䂻/ᆻ;

    sub-int/2addr p1, v0

    invoke-virtual {v1, p1, v0}, L㺴/㚬/䂻/ㄏ/䂻/ᆻ;->䂻(II)L㺴/㚬/䂻/ㄏ/䂻/ᆻ;

    move-result-object p1

    new-instance v0, L㺴/㚬/䂻/ㄏ/䂻/䆀;

    iget v1, p0, L㺴/㚬/䂻/ㄏ/䂻/䆀;->உ:I

    const/4 v2, 0x0

    iget v3, p0, L㺴/㚬/䂻/ㄏ/䂻/䆀;->㺴:I

    invoke-direct {v0, p1, v1, v2, v3}, L㺴/㚬/䂻/ㄏ/䂻/䆀;-><init>(L㺴/㚬/䂻/ㄏ/䂻/ᆻ;III)V

    return-object v0
.end method

.method public 䆀(L㺴/㚬/䂻/ㄏ/䂻/䆀;)Z
    .locals 3

    iget v0, p0, L㺴/㚬/䂻/ㄏ/䂻/䆀;->㺴:I

    sget-object v1, L㺴/㚬/䂻/ㄏ/䂻/㺴;->㚬:[[I

    iget v2, p0, L㺴/㚬/䂻/ㄏ/䂻/䆀;->உ:I

    aget-object v1, v1, v2

    iget v2, p1, L㺴/㚬/䂻/ㄏ/䂻/䆀;->உ:I

    aget v1, v1, v2

    shr-int/lit8 v1, v1, 0x10

    add-int/2addr v0, v1

    iget v1, p1, L㺴/㚬/䂻/ㄏ/䂻/䆀;->㚬:I

    if-lez v1, :cond_1

    iget v2, p0, L㺴/㚬/䂻/ㄏ/䂻/䆀;->㚬:I

    if-eqz v2, :cond_0

    if-le v2, v1, :cond_1

    :cond_0
    add-int/lit8 v0, v0, 0xa

    :cond_1
    iget p1, p1, L㺴/㚬/䂻/ㄏ/䂻/䆀;->㺴:I

    if-gt v0, p1, :cond_2

    const/4 p1, 0x1

    return p1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method
