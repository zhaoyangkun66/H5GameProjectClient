.class public L㚬/䂻/ბ/Ԁ;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public உ:I

.field public ᆻ:Z

.field public ḓ:I

.field public ℓ:Z

.field public 㚬:I

.field public 㺴:I

.field public 䂻:I

.field public 䆀:I


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, L㚬/䂻/ბ/Ԁ;->உ:I

    iput v0, p0, L㚬/䂻/ბ/Ԁ;->䂻:I

    const/high16 v1, -0x80000000

    iput v1, p0, L㚬/䂻/ბ/Ԁ;->㚬:I

    iput v1, p0, L㚬/䂻/ბ/Ԁ;->㺴:I

    iput v0, p0, L㚬/䂻/ბ/Ԁ;->ḓ:I

    iput v0, p0, L㚬/䂻/ბ/Ԁ;->䆀:I

    iput-boolean v0, p0, L㚬/䂻/ბ/Ԁ;->ᆻ:Z

    iput-boolean v0, p0, L㚬/䂻/ბ/Ԁ;->ℓ:Z

    return-void
.end method


# virtual methods
.method public உ()I
    .locals 1

    iget-boolean v0, p0, L㚬/䂻/ბ/Ԁ;->ᆻ:Z

    if-eqz v0, :cond_0

    iget v0, p0, L㚬/䂻/ბ/Ԁ;->உ:I

    goto :goto_0

    :cond_0
    iget v0, p0, L㚬/䂻/ბ/Ԁ;->䂻:I

    :goto_0
    return v0
.end method

.method public ᆻ(II)V
    .locals 2

    iput p1, p0, L㚬/䂻/ბ/Ԁ;->㚬:I

    iput p2, p0, L㚬/䂻/ბ/Ԁ;->㺴:I

    const/4 v0, 0x1

    iput-boolean v0, p0, L㚬/䂻/ბ/Ԁ;->ℓ:Z

    iget-boolean v0, p0, L㚬/䂻/ბ/Ԁ;->ᆻ:Z

    const/high16 v1, -0x80000000

    if-eqz v0, :cond_1

    if-eq p2, v1, :cond_0

    iput p2, p0, L㚬/䂻/ბ/Ԁ;->உ:I

    :cond_0
    if-eq p1, v1, :cond_3

    iput p1, p0, L㚬/䂻/ბ/Ԁ;->䂻:I

    goto :goto_0

    :cond_1
    if-eq p1, v1, :cond_2

    iput p1, p0, L㚬/䂻/ბ/Ԁ;->உ:I

    :cond_2
    if-eq p2, v1, :cond_3

    iput p2, p0, L㚬/䂻/ბ/Ԁ;->䂻:I

    :cond_3
    :goto_0
    return-void
.end method

.method public ḓ(II)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, L㚬/䂻/ბ/Ԁ;->ℓ:Z

    const/high16 v0, -0x80000000

    if-eq p1, v0, :cond_0

    iput p1, p0, L㚬/䂻/ბ/Ԁ;->ḓ:I

    iput p1, p0, L㚬/䂻/ბ/Ԁ;->உ:I

    :cond_0
    if-eq p2, v0, :cond_1

    iput p2, p0, L㚬/䂻/ბ/Ԁ;->䆀:I

    iput p2, p0, L㚬/䂻/ბ/Ԁ;->䂻:I

    :cond_1
    return-void
.end method

.method public 㚬()I
    .locals 1

    iget v0, p0, L㚬/䂻/ბ/Ԁ;->䂻:I

    return v0
.end method

.method public 㺴()I
    .locals 1

    iget-boolean v0, p0, L㚬/䂻/ბ/Ԁ;->ᆻ:Z

    if-eqz v0, :cond_0

    iget v0, p0, L㚬/䂻/ბ/Ԁ;->䂻:I

    goto :goto_0

    :cond_0
    iget v0, p0, L㚬/䂻/ბ/Ԁ;->உ:I

    :goto_0
    return v0
.end method

.method public 䂻()I
    .locals 1

    iget v0, p0, L㚬/䂻/ბ/Ԁ;->உ:I

    return v0
.end method

.method public 䆀(Z)V
    .locals 1

    iget-boolean v0, p0, L㚬/䂻/ბ/Ԁ;->ᆻ:Z

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, L㚬/䂻/ბ/Ԁ;->ᆻ:Z

    iget-boolean v0, p0, L㚬/䂻/ბ/Ԁ;->ℓ:Z

    if-eqz v0, :cond_4

    const/high16 v0, -0x80000000

    if-eqz p1, :cond_2

    iget p1, p0, L㚬/䂻/ბ/Ԁ;->㺴:I

    if-eq p1, v0, :cond_1

    goto :goto_0

    :cond_1
    iget p1, p0, L㚬/䂻/ბ/Ԁ;->ḓ:I

    :goto_0
    iput p1, p0, L㚬/䂻/ბ/Ԁ;->உ:I

    iget p1, p0, L㚬/䂻/ბ/Ԁ;->㚬:I

    if-eq p1, v0, :cond_5

    goto :goto_2

    :cond_2
    iget p1, p0, L㚬/䂻/ბ/Ԁ;->㚬:I

    if-eq p1, v0, :cond_3

    goto :goto_1

    :cond_3
    iget p1, p0, L㚬/䂻/ბ/Ԁ;->ḓ:I

    :goto_1
    iput p1, p0, L㚬/䂻/ბ/Ԁ;->உ:I

    iget p1, p0, L㚬/䂻/ბ/Ԁ;->㺴:I

    if-eq p1, v0, :cond_5

    goto :goto_2

    :cond_4
    iget p1, p0, L㚬/䂻/ბ/Ԁ;->ḓ:I

    iput p1, p0, L㚬/䂻/ბ/Ԁ;->உ:I

    :cond_5
    iget p1, p0, L㚬/䂻/ბ/Ԁ;->䆀:I

    :goto_2
    iput p1, p0, L㚬/䂻/ბ/Ԁ;->䂻:I

    return-void
.end method
