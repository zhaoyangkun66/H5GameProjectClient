.class public L㚬/ℓ/ἥ/ಋ;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        L㚬/ℓ/ἥ/ಋ$㚬;,
        L㚬/ℓ/ἥ/ಋ$䂻;,
        L㚬/ℓ/ἥ/ಋ$㺴;,
        L㚬/ℓ/ἥ/ಋ$உ;,
        L㚬/ℓ/ἥ/ಋ$ℓ;,
        L㚬/ℓ/ἥ/ಋ$ᆻ;,
        L㚬/ℓ/ἥ/ಋ$䆀;,
        L㚬/ℓ/ἥ/ಋ$ḓ;,
        L㚬/ℓ/ἥ/ಋ$ㄏ;
    }
.end annotation


# instance fields
.field public final உ:L㚬/ℓ/ἥ/ಋ$ㄏ;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, L㚬/ℓ/ἥ/ಋ$உ;

    invoke-direct {v0}, L㚬/ℓ/ἥ/ಋ$உ;-><init>()V

    invoke-virtual {v0}, L㚬/ℓ/ἥ/ಋ$உ;->உ()L㚬/ℓ/ἥ/ಋ;

    move-result-object v0

    invoke-virtual {v0}, L㚬/ℓ/ἥ/ಋ;->உ()L㚬/ℓ/ἥ/ಋ;

    move-result-object v0

    invoke-virtual {v0}, L㚬/ℓ/ἥ/ಋ;->䂻()L㚬/ℓ/ἥ/ಋ;

    move-result-object v0

    invoke-virtual {v0}, L㚬/ℓ/ἥ/ಋ;->㚬()L㚬/ℓ/ἥ/ಋ;

    return-void
.end method

.method public constructor <init>(Landroid/view/WindowInsets;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    new-instance v0, L㚬/ℓ/ἥ/ಋ$ℓ;

    invoke-direct {v0, p0, p1}, L㚬/ℓ/ἥ/ಋ$ℓ;-><init>(L㚬/ℓ/ἥ/ಋ;Landroid/view/WindowInsets;)V

    :goto_0
    iput-object v0, p0, L㚬/ℓ/ἥ/ಋ;->உ:L㚬/ℓ/ἥ/ಋ$ㄏ;

    goto :goto_1

    :cond_0
    const/16 v1, 0x1c

    if-lt v0, v1, :cond_1

    new-instance v0, L㚬/ℓ/ἥ/ಋ$ᆻ;

    invoke-direct {v0, p0, p1}, L㚬/ℓ/ἥ/ಋ$ᆻ;-><init>(L㚬/ℓ/ἥ/ಋ;Landroid/view/WindowInsets;)V

    goto :goto_0

    :cond_1
    const/16 v1, 0x15

    if-lt v0, v1, :cond_2

    new-instance v0, L㚬/ℓ/ἥ/ಋ$䆀;

    invoke-direct {v0, p0, p1}, L㚬/ℓ/ἥ/ಋ$䆀;-><init>(L㚬/ℓ/ἥ/ಋ;Landroid/view/WindowInsets;)V

    goto :goto_0

    :cond_2
    const/16 v1, 0x14

    if-lt v0, v1, :cond_3

    new-instance v0, L㚬/ℓ/ἥ/ಋ$ḓ;

    invoke-direct {v0, p0, p1}, L㚬/ℓ/ἥ/ಋ$ḓ;-><init>(L㚬/ℓ/ἥ/ಋ;Landroid/view/WindowInsets;)V

    goto :goto_0

    :cond_3
    new-instance p1, L㚬/ℓ/ἥ/ಋ$ㄏ;

    invoke-direct {p1, p0}, L㚬/ℓ/ἥ/ಋ$ㄏ;-><init>(L㚬/ℓ/ἥ/ಋ;)V

    iput-object p1, p0, L㚬/ℓ/ἥ/ಋ;->உ:L㚬/ℓ/ἥ/ಋ$ㄏ;

    :goto_1
    return-void
.end method

.method public constructor <init>(L㚬/ℓ/ἥ/ಋ;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_4

    iget-object p1, p1, L㚬/ℓ/ἥ/ಋ;->உ:L㚬/ℓ/ἥ/ಋ$ㄏ;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    instance-of v1, p1, L㚬/ℓ/ἥ/ಋ$ℓ;

    if-eqz v1, :cond_0

    new-instance v0, L㚬/ℓ/ἥ/ಋ$ℓ;

    check-cast p1, L㚬/ℓ/ἥ/ಋ$ℓ;

    invoke-direct {v0, p0, p1}, L㚬/ℓ/ἥ/ಋ$ℓ;-><init>(L㚬/ℓ/ἥ/ಋ;L㚬/ℓ/ἥ/ಋ$ℓ;)V

    :goto_0
    iput-object v0, p0, L㚬/ℓ/ἥ/ಋ;->உ:L㚬/ℓ/ἥ/ಋ$ㄏ;

    goto :goto_2

    :cond_0
    const/16 v1, 0x1c

    if-lt v0, v1, :cond_1

    instance-of v1, p1, L㚬/ℓ/ἥ/ಋ$ᆻ;

    if-eqz v1, :cond_1

    new-instance v0, L㚬/ℓ/ἥ/ಋ$ᆻ;

    check-cast p1, L㚬/ℓ/ἥ/ಋ$ᆻ;

    invoke-direct {v0, p0, p1}, L㚬/ℓ/ἥ/ಋ$ᆻ;-><init>(L㚬/ℓ/ἥ/ಋ;L㚬/ℓ/ἥ/ಋ$ᆻ;)V

    goto :goto_0

    :cond_1
    const/16 v1, 0x15

    if-lt v0, v1, :cond_2

    instance-of v1, p1, L㚬/ℓ/ἥ/ಋ$䆀;

    if-eqz v1, :cond_2

    new-instance v0, L㚬/ℓ/ἥ/ಋ$䆀;

    check-cast p1, L㚬/ℓ/ἥ/ಋ$䆀;

    invoke-direct {v0, p0, p1}, L㚬/ℓ/ἥ/ಋ$䆀;-><init>(L㚬/ℓ/ἥ/ಋ;L㚬/ℓ/ἥ/ಋ$䆀;)V

    goto :goto_0

    :cond_2
    const/16 v1, 0x14

    if-lt v0, v1, :cond_3

    instance-of v0, p1, L㚬/ℓ/ἥ/ಋ$ḓ;

    if-eqz v0, :cond_3

    new-instance v0, L㚬/ℓ/ἥ/ಋ$ḓ;

    check-cast p1, L㚬/ℓ/ἥ/ಋ$ḓ;

    invoke-direct {v0, p0, p1}, L㚬/ℓ/ἥ/ಋ$ḓ;-><init>(L㚬/ℓ/ἥ/ಋ;L㚬/ℓ/ἥ/ಋ$ḓ;)V

    goto :goto_0

    :cond_3
    new-instance p1, L㚬/ℓ/ἥ/ಋ$ㄏ;

    invoke-direct {p1, p0}, L㚬/ℓ/ἥ/ಋ$ㄏ;-><init>(L㚬/ℓ/ἥ/ಋ;)V

    goto :goto_1

    :cond_4
    new-instance p1, L㚬/ℓ/ἥ/ಋ$ㄏ;

    invoke-direct {p1, p0}, L㚬/ℓ/ἥ/ಋ$ㄏ;-><init>(L㚬/ℓ/ἥ/ಋ;)V

    :goto_1
    iput-object p1, p0, L㚬/ℓ/ἥ/ಋ;->உ:L㚬/ℓ/ἥ/ಋ$ㄏ;

    :goto_2
    return-void
.end method

.method public static 㹖(Landroid/view/WindowInsets;)L㚬/ℓ/ἥ/ಋ;
    .locals 1

    new-instance v0, L㚬/ℓ/ἥ/ಋ;

    invoke-static {p0}, L㚬/ℓ/㹖/ᆻ;->㚬(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p0, Landroid/view/WindowInsets;

    invoke-direct {v0, p0}, L㚬/ℓ/ἥ/ಋ;-><init>(Landroid/view/WindowInsets;)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    instance-of v0, p1, L㚬/ℓ/ἥ/ಋ;

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    check-cast p1, L㚬/ℓ/ἥ/ಋ;

    iget-object v0, p0, L㚬/ℓ/ἥ/ಋ;->உ:L㚬/ℓ/ἥ/ಋ$ㄏ;

    iget-object p1, p1, L㚬/ℓ/ἥ/ಋ;->உ:L㚬/ℓ/ἥ/ಋ$ㄏ;

    invoke-static {v0, p1}, L㚬/ℓ/㹖/䂻;->உ(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, L㚬/ℓ/ἥ/ಋ;->உ:L㚬/ℓ/ἥ/ಋ$ㄏ;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, L㚬/ℓ/ἥ/ಋ$ㄏ;->hashCode()I

    move-result v0

    :goto_0
    return v0
.end method

.method public உ()L㚬/ℓ/ἥ/ಋ;
    .locals 1

    iget-object v0, p0, L㚬/ℓ/ἥ/ಋ;->உ:L㚬/ℓ/ἥ/ಋ$ㄏ;

    invoke-virtual {v0}, L㚬/ℓ/ἥ/ಋ$ㄏ;->உ()L㚬/ℓ/ἥ/ಋ;

    move-result-object v0

    return-object v0
.end method

.method public ಫ(IIII)L㚬/ℓ/ἥ/ಋ;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, L㚬/ℓ/ἥ/ಋ$உ;

    invoke-direct {v0, p0}, L㚬/ℓ/ἥ/ಋ$உ;-><init>(L㚬/ℓ/ἥ/ಋ;)V

    invoke-static {p1, p2, p3, p4}, L㚬/ℓ/䆀/䂻;->உ(IIII)L㚬/ℓ/䆀/䂻;

    move-result-object p1

    invoke-virtual {v0, p1}, L㚬/ℓ/ἥ/ಋ$உ;->䂻(L㚬/ℓ/䆀/䂻;)L㚬/ℓ/ἥ/ಋ$உ;

    invoke-virtual {v0}, L㚬/ℓ/ἥ/ಋ$உ;->உ()L㚬/ℓ/ἥ/ಋ;

    move-result-object p1

    return-object p1
.end method

.method public ᆻ()I
    .locals 1

    invoke-virtual {p0}, L㚬/ℓ/ἥ/ಋ;->ℓ()L㚬/ℓ/䆀/䂻;

    move-result-object v0

    iget v0, v0, L㚬/ℓ/䆀/䂻;->䂻:I

    return v0
.end method

.method public ḓ()I
    .locals 1

    invoke-virtual {p0}, L㚬/ℓ/ἥ/ಋ;->ℓ()L㚬/ℓ/䆀/䂻;

    move-result-object v0

    iget v0, v0, L㚬/ℓ/䆀/䂻;->உ:I

    return v0
.end method

.method public ℓ()L㚬/ℓ/䆀/䂻;
    .locals 1

    iget-object v0, p0, L㚬/ℓ/ἥ/ಋ;->உ:L㚬/ℓ/ἥ/ಋ$ㄏ;

    invoke-virtual {v0}, L㚬/ℓ/ἥ/ಋ$ㄏ;->䆀()L㚬/ℓ/䆀/䂻;

    move-result-object v0

    return-object v0
.end method

.method public ㄏ()Z
    .locals 1

    iget-object v0, p0, L㚬/ℓ/ἥ/ಋ;->உ:L㚬/ℓ/ἥ/ಋ$ㄏ;

    invoke-virtual {v0}, L㚬/ℓ/ἥ/ಋ$ㄏ;->ᆻ()Z

    move-result v0

    return v0
.end method

.method public 㚬()L㚬/ℓ/ἥ/ಋ;
    .locals 1

    iget-object v0, p0, L㚬/ℓ/ἥ/ಋ;->உ:L㚬/ℓ/ἥ/ಋ$ㄏ;

    invoke-virtual {v0}, L㚬/ℓ/ἥ/ಋ$ㄏ;->㚬()L㚬/ℓ/ἥ/ಋ;

    move-result-object v0

    return-object v0
.end method

.method public 㧦()Landroid/view/WindowInsets;
    .locals 2

    iget-object v0, p0, L㚬/ℓ/ἥ/ಋ;->உ:L㚬/ℓ/ἥ/ಋ$ㄏ;

    instance-of v1, v0, L㚬/ℓ/ἥ/ಋ$ḓ;

    if-eqz v1, :cond_0

    check-cast v0, L㚬/ℓ/ἥ/ಋ$ḓ;

    iget-object v0, v0, L㚬/ℓ/ἥ/ಋ$ḓ;->䂻:Landroid/view/WindowInsets;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public 㺴()I
    .locals 1

    invoke-virtual {p0}, L㚬/ℓ/ἥ/ಋ;->ℓ()L㚬/ℓ/䆀/䂻;

    move-result-object v0

    iget v0, v0, L㚬/ℓ/䆀/䂻;->㺴:I

    return v0
.end method

.method public 䂻()L㚬/ℓ/ἥ/ಋ;
    .locals 1

    iget-object v0, p0, L㚬/ℓ/ἥ/ಋ;->உ:L㚬/ℓ/ἥ/ಋ$ㄏ;

    invoke-virtual {v0}, L㚬/ℓ/ἥ/ಋ$ㄏ;->䂻()L㚬/ℓ/ἥ/ಋ;

    move-result-object v0

    return-object v0
.end method

.method public 䆀()I
    .locals 1

    invoke-virtual {p0}, L㚬/ℓ/ἥ/ಋ;->ℓ()L㚬/ℓ/䆀/䂻;

    move-result-object v0

    iget v0, v0, L㚬/ℓ/䆀/䂻;->㚬:I

    return v0
.end method
