.class public L㚬/ბ/㚬;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements L㚬/ბ/உ;


# instance fields
.field public உ:I

.field public 㚬:I

.field public 㺴:I

.field public 䂻:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, L㚬/ბ/㚬;->உ:I

    iput v0, p0, L㚬/ბ/㚬;->䂻:I

    iput v0, p0, L㚬/ბ/㚬;->㚬:I

    const/4 v0, -0x1

    iput v0, p0, L㚬/ბ/㚬;->㺴:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, L㚬/ბ/㚬;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, L㚬/ბ/㚬;

    iget v0, p0, L㚬/ბ/㚬;->䂻:I

    invoke-virtual {p1}, L㚬/ბ/㚬;->உ()I

    move-result v2

    if-ne v0, v2, :cond_1

    iget v0, p0, L㚬/ბ/㚬;->㚬:I

    invoke-virtual {p1}, L㚬/ბ/㚬;->䂻()I

    move-result v2

    if-ne v0, v2, :cond_1

    iget v0, p0, L㚬/ბ/㚬;->உ:I

    invoke-virtual {p1}, L㚬/ბ/㚬;->㺴()I

    move-result v2

    if-ne v0, v2, :cond_1

    iget v0, p0, L㚬/ბ/㚬;->㺴:I

    iget p1, p1, L㚬/ბ/㚬;->㺴:I

    if-ne v0, p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, L㚬/ბ/㚬;->䂻:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, L㚬/ბ/㚬;->㚬:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, L㚬/ბ/㚬;->உ:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget v1, p0, L㚬/ბ/㚬;->㺴:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AudioAttributesCompat:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, L㚬/ბ/㚬;->㺴:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    const-string v1, " stream="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, L㚬/ბ/㚬;->㺴:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " derived"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    const-string v1, " usage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, L㚬/ბ/㚬;->உ:I

    invoke-static {v1}, Landroidx/media/AudioAttributesCompat;->䂻(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " content="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, L㚬/ბ/㚬;->䂻:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " flags=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, L㚬/ბ/㚬;->㚬:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public உ()I
    .locals 1

    iget v0, p0, L㚬/ბ/㚬;->䂻:I

    return v0
.end method

.method public 㚬()I
    .locals 3

    iget v0, p0, L㚬/ბ/㚬;->㺴:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x0

    iget v1, p0, L㚬/ბ/㚬;->㚬:I

    iget v2, p0, L㚬/ბ/㚬;->உ:I

    invoke-static {v0, v1, v2}, Landroidx/media/AudioAttributesCompat;->உ(ZII)I

    move-result v0

    return v0
.end method

.method public 㺴()I
    .locals 1

    iget v0, p0, L㚬/ბ/㚬;->உ:I

    return v0
.end method

.method public 䂻()I
    .locals 3

    iget v0, p0, L㚬/ბ/㚬;->㚬:I

    invoke-virtual {p0}, L㚬/ბ/㚬;->㚬()I

    move-result v1

    const/4 v2, 0x6

    if-ne v1, v2, :cond_0

    or-int/lit8 v0, v0, 0x4

    goto :goto_0

    :cond_0
    const/4 v2, 0x7

    if-ne v1, v2, :cond_1

    or-int/lit8 v0, v0, 0x1

    :cond_1
    :goto_0
    and-int/lit16 v0, v0, 0x111

    return v0
.end method
