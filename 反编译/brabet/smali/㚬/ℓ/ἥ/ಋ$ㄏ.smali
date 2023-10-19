.class public L㚬/ℓ/ἥ/ಋ$ㄏ;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = L㚬/ℓ/ἥ/ಋ;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "\u310f"
.end annotation


# instance fields
.field public final உ:L㚬/ℓ/ἥ/ಋ;


# direct methods
.method public constructor <init>(L㚬/ℓ/ἥ/ಋ;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, L㚬/ℓ/ἥ/ಋ$ㄏ;->உ:L㚬/ℓ/ἥ/ಋ;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, L㚬/ℓ/ἥ/ಋ$ㄏ;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, L㚬/ℓ/ἥ/ಋ$ㄏ;

    invoke-virtual {p0}, L㚬/ℓ/ἥ/ಋ$ㄏ;->ℓ()Z

    move-result v1

    invoke-virtual {p1}, L㚬/ℓ/ἥ/ಋ$ㄏ;->ℓ()Z

    move-result v3

    if-ne v1, v3, :cond_2

    invoke-virtual {p0}, L㚬/ℓ/ἥ/ಋ$ㄏ;->ᆻ()Z

    move-result v1

    invoke-virtual {p1}, L㚬/ℓ/ἥ/ಋ$ㄏ;->ᆻ()Z

    move-result v3

    if-ne v1, v3, :cond_2

    invoke-virtual {p0}, L㚬/ℓ/ἥ/ಋ$ㄏ;->䆀()L㚬/ℓ/䆀/䂻;

    move-result-object v1

    invoke-virtual {p1}, L㚬/ℓ/ἥ/ಋ$ㄏ;->䆀()L㚬/ℓ/䆀/䂻;

    move-result-object v3

    invoke-static {v1, v3}, L㚬/ℓ/㹖/䂻;->உ(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, L㚬/ℓ/ἥ/ಋ$ㄏ;->ḓ()L㚬/ℓ/䆀/䂻;

    move-result-object v1

    invoke-virtual {p1}, L㚬/ℓ/ἥ/ಋ$ㄏ;->ḓ()L㚬/ℓ/䆀/䂻;

    move-result-object v3

    invoke-static {v1, v3}, L㚬/ℓ/㹖/䂻;->உ(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, L㚬/ℓ/ἥ/ಋ$ㄏ;->㺴()L㚬/ℓ/ἥ/㚬;

    move-result-object v1

    invoke-virtual {p1}, L㚬/ℓ/ἥ/ಋ$ㄏ;->㺴()L㚬/ℓ/ἥ/㚬;

    move-result-object p1

    invoke-static {v1, p1}, L㚬/ℓ/㹖/䂻;->உ(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0}, L㚬/ℓ/ἥ/ಋ$ㄏ;->ℓ()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p0}, L㚬/ℓ/ἥ/ಋ$ㄏ;->ᆻ()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-virtual {p0}, L㚬/ℓ/ἥ/ಋ$ㄏ;->䆀()L㚬/ℓ/䆀/䂻;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-virtual {p0}, L㚬/ℓ/ἥ/ಋ$ㄏ;->ḓ()L㚬/ℓ/䆀/䂻;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    invoke-virtual {p0}, L㚬/ℓ/ἥ/ಋ$ㄏ;->㺴()L㚬/ℓ/ἥ/㚬;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    invoke-static {v0}, L㚬/ℓ/㹖/䂻;->䂻([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public உ()L㚬/ℓ/ἥ/ಋ;
    .locals 1

    iget-object v0, p0, L㚬/ℓ/ἥ/ಋ$ㄏ;->உ:L㚬/ℓ/ἥ/ಋ;

    return-object v0
.end method

.method public ᆻ()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public ḓ()L㚬/ℓ/䆀/䂻;
    .locals 1

    sget-object v0, L㚬/ℓ/䆀/䂻;->ḓ:L㚬/ℓ/䆀/䂻;

    return-object v0
.end method

.method public ℓ()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public 㚬()L㚬/ℓ/ἥ/ಋ;
    .locals 1

    iget-object v0, p0, L㚬/ℓ/ἥ/ಋ$ㄏ;->உ:L㚬/ℓ/ἥ/ಋ;

    return-object v0
.end method

.method public 㺴()L㚬/ℓ/ἥ/㚬;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public 䂻()L㚬/ℓ/ἥ/ಋ;
    .locals 1

    iget-object v0, p0, L㚬/ℓ/ἥ/ಋ$ㄏ;->உ:L㚬/ℓ/ἥ/ಋ;

    return-object v0
.end method

.method public 䆀()L㚬/ℓ/䆀/䂻;
    .locals 1

    sget-object v0, L㚬/ℓ/䆀/䂻;->ḓ:L㚬/ℓ/䆀/䂻;

    return-object v0
.end method
