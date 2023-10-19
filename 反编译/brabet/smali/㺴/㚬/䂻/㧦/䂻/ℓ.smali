.class public final L㺴/㚬/䂻/㧦/䂻/ℓ;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final உ:Ljava/lang/String;

.field public ᆻ:I

.field public final ḓ:Ljava/lang/StringBuilder;

.field public ℓ:L㺴/㚬/䂻/㧦/䂻/㧦;

.field public ㄏ:I

.field public 㚬:L㺴/㚬/䂻/䂻;

.field public 㺴:L㺴/㚬/䂻/䂻;

.field public 䂻:L㺴/㚬/䂻/㧦/䂻/㹖;

.field public 䆀:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    array-length v2, v0

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-byte v4, v0, v3

    and-int/lit16 v4, v4, 0xff

    int-to-char v4, v4

    const/16 v5, 0x3f

    if-ne v4, v5, :cond_1

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-ne v6, v5, :cond_0

    goto :goto_1

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Message contains characters outside ISO-8859-1 encoding."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_1
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, L㺴/㚬/䂻/㧦/䂻/ℓ;->உ:Ljava/lang/String;

    sget-object v0, L㺴/㚬/䂻/㧦/䂻/㹖;->䂻:L㺴/㚬/䂻/㧦/䂻/㹖;

    iput-object v0, p0, L㺴/㚬/䂻/㧦/䂻/ℓ;->䂻:L㺴/㚬/䂻/㧦/䂻/㹖;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, L㺴/㚬/䂻/㧦/䂻/ℓ;->ḓ:Ljava/lang/StringBuilder;

    const/4 p1, -0x1

    iput p1, p0, L㺴/㚬/䂻/㧦/䂻/ℓ;->ᆻ:I

    return-void
.end method


# virtual methods
.method public உ()I
    .locals 1

    iget-object v0, p0, L㺴/㚬/䂻/㧦/䂻/ℓ;->ḓ:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    return v0
.end method

.method public ಫ()V
    .locals 1

    const/4 v0, -0x1

    iput v0, p0, L㺴/㚬/䂻/㧦/䂻/ℓ;->ᆻ:I

    return-void
.end method

.method public ཇ(L㺴/㚬/䂻/㧦/䂻/㹖;)V
    .locals 0

    iput-object p1, p0, L㺴/㚬/䂻/㧦/䂻/ℓ;->䂻:L㺴/㚬/䂻/㧦/䂻/㹖;

    return-void
.end method

.method public ბ()V
    .locals 1

    invoke-virtual {p0}, L㺴/㚬/䂻/㧦/䂻/ℓ;->உ()I

    move-result v0

    invoke-virtual {p0, v0}, L㺴/㚬/䂻/㧦/䂻/ℓ;->㲝(I)V

    return-void
.end method

.method public ᆻ()L㺴/㚬/䂻/㧦/䂻/㧦;
    .locals 1

    iget-object v0, p0, L㺴/㚬/䂻/㧦/䂻/ℓ;->ℓ:L㺴/㚬/䂻/㧦/䂻/㧦;

    return-object v0
.end method

.method public ᓭ(I)V
    .locals 0

    iput p1, p0, L㺴/㚬/䂻/㧦/䂻/ℓ;->ᆻ:I

    return-void
.end method

.method public ḓ()I
    .locals 1

    iget v0, p0, L㺴/㚬/䂻/㧦/䂻/ℓ;->ᆻ:I

    return v0
.end method

.method public ἥ(I)V
    .locals 0

    iput p1, p0, L㺴/㚬/䂻/㧦/䂻/ℓ;->ㄏ:I

    return-void
.end method

.method public final ℓ()I
    .locals 2

    iget-object v0, p0, L㺴/㚬/䂻/㧦/䂻/ℓ;->உ:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iget v1, p0, L㺴/㚬/䂻/㧦/䂻/ℓ;->ㄏ:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public ㄏ()Z
    .locals 2

    iget v0, p0, L㺴/㚬/䂻/㧦/䂻/ℓ;->䆀:I

    invoke-virtual {p0}, L㺴/㚬/䂻/㧦/䂻/ℓ;->ℓ()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public 㚬()C
    .locals 2

    iget-object v0, p0, L㺴/㚬/䂻/㧦/䂻/ℓ;->உ:Ljava/lang/String;

    iget v1, p0, L㺴/㚬/䂻/㧦/䂻/ℓ;->䆀:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    return v0
.end method

.method public 㞘(C)V
    .locals 1

    iget-object v0, p0, L㺴/㚬/䂻/㧦/䂻/ℓ;->ḓ:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-void
.end method

.method public 㧦()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, L㺴/㚬/䂻/㧦/䂻/ℓ;->ℓ:L㺴/㚬/䂻/㧦/䂻/㧦;

    return-void
.end method

.method public 㭲(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, L㺴/㚬/䂻/㧦/䂻/ℓ;->ḓ:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public 㲝(I)V
    .locals 4

    iget-object v0, p0, L㺴/㚬/䂻/㧦/䂻/ℓ;->ℓ:L㺴/㚬/䂻/㧦/䂻/㧦;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, L㺴/㚬/䂻/㧦/䂻/㧦;->உ()I

    move-result v0

    if-le p1, v0, :cond_1

    :cond_0
    iget-object v0, p0, L㺴/㚬/䂻/㧦/䂻/ℓ;->䂻:L㺴/㚬/䂻/㧦/䂻/㹖;

    iget-object v1, p0, L㺴/㚬/䂻/㧦/䂻/ℓ;->㚬:L㺴/㚬/䂻/䂻;

    iget-object v2, p0, L㺴/㚬/䂻/㧦/䂻/ℓ;->㺴:L㺴/㚬/䂻/䂻;

    const/4 v3, 0x1

    invoke-static {p1, v0, v1, v2, v3}, L㺴/㚬/䂻/㧦/䂻/㧦;->㹖(IL㺴/㚬/䂻/㧦/䂻/㹖;L㺴/㚬/䂻/䂻;L㺴/㚬/䂻/䂻;Z)L㺴/㚬/䂻/㧦/䂻/㧦;

    move-result-object p1

    iput-object p1, p0, L㺴/㚬/䂻/㧦/䂻/ℓ;->ℓ:L㺴/㚬/䂻/㧦/䂻/㧦;

    :cond_1
    return-void
.end method

.method public 㹖(L㺴/㚬/䂻/䂻;L㺴/㚬/䂻/䂻;)V
    .locals 0

    iput-object p1, p0, L㺴/㚬/䂻/㧦/䂻/ℓ;->㚬:L㺴/㚬/䂻/䂻;

    iput-object p2, p0, L㺴/㚬/䂻/㧦/䂻/ℓ;->㺴:L㺴/㚬/䂻/䂻;

    return-void
.end method

.method public 㺴()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, L㺴/㚬/䂻/㧦/䂻/ℓ;->உ:Ljava/lang/String;

    return-object v0
.end method

.method public 䂻()Ljava/lang/StringBuilder;
    .locals 1

    iget-object v0, p0, L㺴/㚬/䂻/㧦/䂻/ℓ;->ḓ:Ljava/lang/StringBuilder;

    return-object v0
.end method

.method public 䆀()I
    .locals 2

    invoke-virtual {p0}, L㺴/㚬/䂻/㧦/䂻/ℓ;->ℓ()I

    move-result v0

    iget v1, p0, L㺴/㚬/䂻/㧦/䂻/ℓ;->䆀:I

    sub-int/2addr v0, v1

    return v0
.end method
