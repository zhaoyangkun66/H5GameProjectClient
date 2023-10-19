.class public L㚬/㲝/㺴/䂻$உ;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = L㚬/㲝/㺴/䂻;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "\u0b89"
.end annotation


# instance fields
.field public உ:J

.field public 䂻:L㚬/㲝/㺴/䂻$உ;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, L㚬/㲝/㺴/䂻$உ;->உ:J

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, L㚬/㲝/㺴/䂻$உ;->䂻:L㚬/㲝/㺴/䂻$உ;

    if-nez v0, :cond_0

    iget-wide v0, p0, L㚬/㲝/㺴/䂻$உ;->உ:J

    invoke-static {v0, v1}, Ljava/lang/Long;->toBinaryString(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, L㚬/㲝/㺴/䂻$உ;->䂻:L㚬/㲝/㺴/䂻$உ;

    invoke-virtual {v1}, L㚬/㲝/㺴/䂻$உ;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "xx"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, L㚬/㲝/㺴/䂻$உ;->உ:J

    invoke-static {v1, v2}, Ljava/lang/Long;->toBinaryString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public உ(I)V
    .locals 4

    const/16 v0, 0x40

    if-lt p1, v0, :cond_0

    iget-object v1, p0, L㚬/㲝/㺴/䂻$உ;->䂻:L㚬/㲝/㺴/䂻$உ;

    if-eqz v1, :cond_1

    sub-int/2addr p1, v0

    invoke-virtual {v1, p1}, L㚬/㲝/㺴/䂻$உ;->உ(I)V

    goto :goto_0

    :cond_0
    iget-wide v0, p0, L㚬/㲝/㺴/䂻$உ;->உ:J

    const-wide/16 v2, 0x1

    shl-long/2addr v2, p1

    not-long v2, v2

    and-long/2addr v0, v2

    iput-wide v0, p0, L㚬/㲝/㺴/䂻$உ;->உ:J

    :cond_1
    :goto_0
    return-void
.end method

.method public ᆻ()V
    .locals 2

    const-wide/16 v0, 0x0

    iput-wide v0, p0, L㚬/㲝/㺴/䂻$உ;->உ:J

    iget-object v0, p0, L㚬/㲝/㺴/䂻$உ;->䂻:L㚬/㲝/㺴/䂻$உ;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, L㚬/㲝/㺴/䂻$உ;->ᆻ()V

    :cond_0
    return-void
.end method

.method public ḓ(IZ)V
    .locals 10

    const/16 v0, 0x40

    if-lt p1, v0, :cond_0

    invoke-virtual {p0}, L㚬/㲝/㺴/䂻$உ;->㚬()V

    iget-object v1, p0, L㚬/㲝/㺴/䂻$உ;->䂻:L㚬/㲝/㺴/䂻$உ;

    sub-int/2addr p1, v0

    invoke-virtual {v1, p1, p2}, L㚬/㲝/㺴/䂻$உ;->ḓ(IZ)V

    goto :goto_2

    :cond_0
    iget-wide v0, p0, L㚬/㲝/㺴/䂻$உ;->உ:J

    const-wide/high16 v2, -0x8000000000000000L

    and-long/2addr v2, v0

    const-wide/16 v4, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    cmp-long v8, v2, v4

    if-eqz v8, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    const-wide/16 v3, 0x1

    shl-long v8, v3, p1

    sub-long/2addr v8, v3

    and-long v3, v0, v8

    not-long v8, v8

    and-long/2addr v0, v8

    shl-long/2addr v0, v6

    or-long/2addr v0, v3

    iput-wide v0, p0, L㚬/㲝/㺴/䂻$உ;->உ:J

    if-eqz p2, :cond_2

    invoke-virtual {p0, p1}, L㚬/㲝/㺴/䂻$உ;->ℓ(I)V

    goto :goto_1

    :cond_2
    invoke-virtual {p0, p1}, L㚬/㲝/㺴/䂻$உ;->உ(I)V

    :goto_1
    if-nez v2, :cond_3

    iget-object p1, p0, L㚬/㲝/㺴/䂻$உ;->䂻:L㚬/㲝/㺴/䂻$உ;

    if-eqz p1, :cond_4

    :cond_3
    invoke-virtual {p0}, L㚬/㲝/㺴/䂻$உ;->㚬()V

    iget-object p1, p0, L㚬/㲝/㺴/䂻$உ;->䂻:L㚬/㲝/㺴/䂻$உ;

    invoke-virtual {p1, v7, v2}, L㚬/㲝/㺴/䂻$உ;->ḓ(IZ)V

    :cond_4
    :goto_2
    return-void
.end method

.method public ℓ(I)V
    .locals 4

    const/16 v0, 0x40

    if-lt p1, v0, :cond_0

    invoke-virtual {p0}, L㚬/㲝/㺴/䂻$உ;->㚬()V

    iget-object v1, p0, L㚬/㲝/㺴/䂻$உ;->䂻:L㚬/㲝/㺴/䂻$உ;

    sub-int/2addr p1, v0

    invoke-virtual {v1, p1}, L㚬/㲝/㺴/䂻$உ;->ℓ(I)V

    goto :goto_0

    :cond_0
    iget-wide v0, p0, L㚬/㲝/㺴/䂻$உ;->உ:J

    const-wide/16 v2, 0x1

    shl-long/2addr v2, p1

    or-long/2addr v0, v2

    iput-wide v0, p0, L㚬/㲝/㺴/䂻$உ;->உ:J

    :goto_0
    return-void
.end method

.method public final 㚬()V
    .locals 1

    iget-object v0, p0, L㚬/㲝/㺴/䂻$உ;->䂻:L㚬/㲝/㺴/䂻$உ;

    if-nez v0, :cond_0

    new-instance v0, L㚬/㲝/㺴/䂻$உ;

    invoke-direct {v0}, L㚬/㲝/㺴/䂻$உ;-><init>()V

    iput-object v0, p0, L㚬/㲝/㺴/䂻$உ;->䂻:L㚬/㲝/㺴/䂻$உ;

    :cond_0
    return-void
.end method

.method public 㺴(I)Z
    .locals 4

    const/16 v0, 0x40

    if-lt p1, v0, :cond_0

    invoke-virtual {p0}, L㚬/㲝/㺴/䂻$உ;->㚬()V

    iget-object v1, p0, L㚬/㲝/㺴/䂻$உ;->䂻:L㚬/㲝/㺴/䂻$உ;

    sub-int/2addr p1, v0

    invoke-virtual {v1, p1}, L㚬/㲝/㺴/䂻$உ;->㺴(I)Z

    move-result p1

    return p1

    :cond_0
    iget-wide v0, p0, L㚬/㲝/㺴/䂻$உ;->உ:J

    const-wide/16 v2, 0x1

    shl-long/2addr v2, p1

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public 䂻(I)I
    .locals 6

    iget-object v0, p0, L㚬/㲝/㺴/䂻$உ;->䂻:L㚬/㲝/㺴/䂻$உ;

    const/16 v1, 0x40

    const-wide/16 v2, 0x1

    if-nez v0, :cond_1

    if-lt p1, v1, :cond_0

    iget-wide v0, p0, L㚬/㲝/㺴/䂻$உ;->உ:J

    invoke-static {v0, v1}, Ljava/lang/Long;->bitCount(J)I

    move-result p1

    return p1

    :cond_0
    iget-wide v0, p0, L㚬/㲝/㺴/䂻$உ;->உ:J

    shl-long v4, v2, p1

    sub-long/2addr v4, v2

    and-long/2addr v0, v4

    invoke-static {v0, v1}, Ljava/lang/Long;->bitCount(J)I

    move-result p1

    return p1

    :cond_1
    if-ge p1, v1, :cond_2

    iget-wide v0, p0, L㚬/㲝/㺴/䂻$உ;->உ:J

    shl-long v4, v2, p1

    sub-long/2addr v4, v2

    and-long/2addr v0, v4

    invoke-static {v0, v1}, Ljava/lang/Long;->bitCount(J)I

    move-result p1

    return p1

    :cond_2
    sub-int/2addr p1, v1

    invoke-virtual {v0, p1}, L㚬/㲝/㺴/䂻$உ;->䂻(I)I

    move-result p1

    iget-wide v0, p0, L㚬/㲝/㺴/䂻$உ;->உ:J

    invoke-static {v0, v1}, Ljava/lang/Long;->bitCount(J)I

    move-result v0

    add-int/2addr p1, v0

    return p1
.end method

.method public 䆀(I)Z
    .locals 12

    const/16 v0, 0x40

    if-lt p1, v0, :cond_0

    invoke-virtual {p0}, L㚬/㲝/㺴/䂻$உ;->㚬()V

    iget-object v1, p0, L㚬/㲝/㺴/䂻$உ;->䂻:L㚬/㲝/㺴/䂻$உ;

    sub-int/2addr p1, v0

    invoke-virtual {v1, p1}, L㚬/㲝/㺴/䂻$உ;->䆀(I)Z

    move-result p1

    return p1

    :cond_0
    const-wide/16 v0, 0x1

    shl-long v2, v0, p1

    iget-wide v4, p0, L㚬/㲝/㺴/䂻$உ;->உ:J

    and-long v6, v4, v2

    const-wide/16 v8, 0x0

    const/4 p1, 0x1

    const/4 v10, 0x0

    cmp-long v11, v6, v8

    if-eqz v11, :cond_1

    const/4 v6, 0x1

    goto :goto_0

    :cond_1
    const/4 v6, 0x0

    :goto_0
    not-long v7, v2

    and-long/2addr v4, v7

    iput-wide v4, p0, L㚬/㲝/㺴/䂻$உ;->உ:J

    sub-long/2addr v2, v0

    and-long v0, v4, v2

    not-long v2, v2

    and-long/2addr v2, v4

    invoke-static {v2, v3, p1}, Ljava/lang/Long;->rotateRight(JI)J

    move-result-wide v2

    or-long/2addr v0, v2

    iput-wide v0, p0, L㚬/㲝/㺴/䂻$உ;->உ:J

    iget-object p1, p0, L㚬/㲝/㺴/䂻$உ;->䂻:L㚬/㲝/㺴/䂻$உ;

    if-eqz p1, :cond_3

    invoke-virtual {p1, v10}, L㚬/㲝/㺴/䂻$உ;->㺴(I)Z

    move-result p1

    if-eqz p1, :cond_2

    const/16 p1, 0x3f

    invoke-virtual {p0, p1}, L㚬/㲝/㺴/䂻$உ;->ℓ(I)V

    :cond_2
    iget-object p1, p0, L㚬/㲝/㺴/䂻$உ;->䂻:L㚬/㲝/㺴/䂻$உ;

    invoke-virtual {p1, v10}, L㚬/㲝/㺴/䂻$உ;->䆀(I)Z

    :cond_3
    return v6
.end method
