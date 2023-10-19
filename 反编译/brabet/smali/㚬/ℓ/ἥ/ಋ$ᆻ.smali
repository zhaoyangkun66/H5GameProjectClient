.class public L㚬/ℓ/ἥ/ಋ$ᆻ;
.super L㚬/ℓ/ἥ/ಋ$䆀;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = L㚬/ℓ/ἥ/ಋ;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "\u11bb"
.end annotation


# direct methods
.method public constructor <init>(L㚬/ℓ/ἥ/ಋ;Landroid/view/WindowInsets;)V
    .locals 0

    invoke-direct {p0, p1, p2}, L㚬/ℓ/ἥ/ಋ$䆀;-><init>(L㚬/ℓ/ἥ/ಋ;Landroid/view/WindowInsets;)V

    return-void
.end method

.method public constructor <init>(L㚬/ℓ/ἥ/ಋ;L㚬/ℓ/ἥ/ಋ$ᆻ;)V
    .locals 0

    invoke-direct {p0, p1, p2}, L㚬/ℓ/ἥ/ಋ$䆀;-><init>(L㚬/ℓ/ἥ/ಋ;L㚬/ℓ/ἥ/ಋ$䆀;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    instance-of v0, p1, L㚬/ℓ/ἥ/ಋ$ᆻ;

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    check-cast p1, L㚬/ℓ/ἥ/ಋ$ᆻ;

    iget-object v0, p0, L㚬/ℓ/ἥ/ಋ$ḓ;->䂻:Landroid/view/WindowInsets;

    iget-object p1, p1, L㚬/ℓ/ἥ/ಋ$ḓ;->䂻:Landroid/view/WindowInsets;

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, L㚬/ℓ/ἥ/ಋ$ḓ;->䂻:Landroid/view/WindowInsets;

    invoke-virtual {v0}, Landroid/view/WindowInsets;->hashCode()I

    move-result v0

    return v0
.end method

.method public உ()L㚬/ℓ/ἥ/ಋ;
    .locals 1

    iget-object v0, p0, L㚬/ℓ/ἥ/ಋ$ḓ;->䂻:Landroid/view/WindowInsets;

    invoke-virtual {v0}, Landroid/view/WindowInsets;->consumeDisplayCutout()Landroid/view/WindowInsets;

    move-result-object v0

    invoke-static {v0}, L㚬/ℓ/ἥ/ಋ;->㹖(Landroid/view/WindowInsets;)L㚬/ℓ/ἥ/ಋ;

    move-result-object v0

    return-object v0
.end method

.method public 㺴()L㚬/ℓ/ἥ/㚬;
    .locals 1

    iget-object v0, p0, L㚬/ℓ/ἥ/ಋ$ḓ;->䂻:Landroid/view/WindowInsets;

    invoke-virtual {v0}, Landroid/view/WindowInsets;->getDisplayCutout()Landroid/view/DisplayCutout;

    move-result-object v0

    invoke-static {v0}, L㚬/ℓ/ἥ/㚬;->உ(Ljava/lang/Object;)L㚬/ℓ/ἥ/㚬;

    move-result-object v0

    return-object v0
.end method
