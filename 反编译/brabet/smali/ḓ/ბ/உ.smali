.class public abstract Lḓ/ბ/உ;
.super Lḓ/ბ/㚬;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lḓ/ბ/㚬;-><init>()V

    return-void
.end method


# virtual methods
.method public 㚬()I
    .locals 1

    invoke-virtual {p0}, Lḓ/ბ/உ;->䆀()Ljava/util/Random;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Random;->nextInt()I

    move-result v0

    return v0
.end method

.method public 㺴(I)I
    .locals 1

    invoke-virtual {p0}, Lḓ/ბ/உ;->䆀()Ljava/util/Random;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/Random;->nextInt(I)I

    move-result p1

    return p1
.end method

.method public 䂻(I)I
    .locals 1

    invoke-virtual {p0}, Lḓ/ბ/உ;->䆀()Ljava/util/Random;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Random;->nextInt()I

    move-result v0

    invoke-static {v0, p1}, Lḓ/ბ/㺴;->ḓ(II)I

    move-result p1

    return p1
.end method

.method public abstract 䆀()Ljava/util/Random;
.end method
