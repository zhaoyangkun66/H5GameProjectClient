.class public L㚬/䆀/㚬;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final உ:[I

.field public static final 㚬:[Ljava/lang/Object;

.field public static final 䂻:[J


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    new-array v1, v0, [I

    sput-object v1, L㚬/䆀/㚬;->உ:[I

    new-array v1, v0, [J

    sput-object v1, L㚬/䆀/㚬;->䂻:[J

    new-array v0, v0, [Ljava/lang/Object;

    sput-object v0, L㚬/䆀/㚬;->㚬:[Ljava/lang/Object;

    return-void
.end method

.method public static உ([III)I
    .locals 3

    add-int/lit8 p1, p1, -0x1

    const/4 v0, 0x0

    :goto_0
    if-gt v0, p1, :cond_2

    add-int v1, v0, p1

    ushr-int/lit8 v1, v1, 0x1

    aget v2, p0, v1

    if-ge v2, p2, :cond_0

    add-int/lit8 v1, v1, 0x1

    move v0, v1

    goto :goto_0

    :cond_0
    if-le v2, p2, :cond_1

    add-int/lit8 v1, v1, -0x1

    move p1, v1

    goto :goto_0

    :cond_1
    return v1

    :cond_2
    not-int p0, v0

    return p0
.end method

.method public static ḓ(I)I
    .locals 0

    mul-int/lit8 p0, p0, 0x4

    invoke-static {p0}, L㚬/䆀/㚬;->㺴(I)I

    move-result p0

    div-int/lit8 p0, p0, 0x4

    return p0
.end method

.method public static 㚬(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    if-eq p0, p1, :cond_1

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static 㺴(I)I
    .locals 2

    const/4 v0, 0x4

    :goto_0
    const/16 v1, 0x20

    if-ge v0, v1, :cond_1

    const/4 v1, 0x1

    shl-int/2addr v1, v0

    add-int/lit8 v1, v1, -0xc

    if-gt p0, v1, :cond_0

    return v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return p0
.end method

.method public static 䂻([JIJ)I
    .locals 5

    add-int/lit8 p1, p1, -0x1

    const/4 v0, 0x0

    :goto_0
    if-gt v0, p1, :cond_2

    add-int v1, v0, p1

    ushr-int/lit8 v1, v1, 0x1

    aget-wide v2, p0, v1

    cmp-long v4, v2, p2

    if-gez v4, :cond_0

    add-int/lit8 v1, v1, 0x1

    move v0, v1

    goto :goto_0

    :cond_0
    if-lez v4, :cond_1

    add-int/lit8 v1, v1, -0x1

    move p1, v1

    goto :goto_0

    :cond_1
    return v1

    :cond_2
    not-int p0, v0

    return p0
.end method

.method public static 䆀(I)I
    .locals 0

    mul-int/lit8 p0, p0, 0x8

    invoke-static {p0}, L㚬/䆀/㚬;->㺴(I)I

    move-result p0

    div-int/lit8 p0, p0, 0x8

    return p0
.end method
