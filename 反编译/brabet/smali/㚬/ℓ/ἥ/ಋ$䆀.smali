.class public L㚬/ℓ/ἥ/ಋ$䆀;
.super L㚬/ℓ/ἥ/ಋ$ḓ;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = L㚬/ℓ/ἥ/ಋ;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "\u4180"
.end annotation


# instance fields
.field public 㺴:L㚬/ℓ/䆀/䂻;


# direct methods
.method public constructor <init>(L㚬/ℓ/ἥ/ಋ;Landroid/view/WindowInsets;)V
    .locals 0

    invoke-direct {p0, p1, p2}, L㚬/ℓ/ἥ/ಋ$ḓ;-><init>(L㚬/ℓ/ἥ/ಋ;Landroid/view/WindowInsets;)V

    const/4 p1, 0x0

    iput-object p1, p0, L㚬/ℓ/ἥ/ಋ$䆀;->㺴:L㚬/ℓ/䆀/䂻;

    return-void
.end method

.method public constructor <init>(L㚬/ℓ/ἥ/ಋ;L㚬/ℓ/ἥ/ಋ$䆀;)V
    .locals 0

    invoke-direct {p0, p1, p2}, L㚬/ℓ/ἥ/ಋ$ḓ;-><init>(L㚬/ℓ/ἥ/ಋ;L㚬/ℓ/ἥ/ಋ$ḓ;)V

    const/4 p1, 0x0

    iput-object p1, p0, L㚬/ℓ/ἥ/ಋ$䆀;->㺴:L㚬/ℓ/䆀/䂻;

    return-void
.end method


# virtual methods
.method public ᆻ()Z
    .locals 1

    iget-object v0, p0, L㚬/ℓ/ἥ/ಋ$ḓ;->䂻:Landroid/view/WindowInsets;

    invoke-virtual {v0}, Landroid/view/WindowInsets;->isConsumed()Z

    move-result v0

    return v0
.end method

.method public final ḓ()L㚬/ℓ/䆀/䂻;
    .locals 4

    iget-object v0, p0, L㚬/ℓ/ἥ/ಋ$䆀;->㺴:L㚬/ℓ/䆀/䂻;

    if-nez v0, :cond_0

    iget-object v0, p0, L㚬/ℓ/ἥ/ಋ$ḓ;->䂻:Landroid/view/WindowInsets;

    invoke-virtual {v0}, Landroid/view/WindowInsets;->getStableInsetLeft()I

    move-result v0

    iget-object v1, p0, L㚬/ℓ/ἥ/ಋ$ḓ;->䂻:Landroid/view/WindowInsets;

    invoke-virtual {v1}, Landroid/view/WindowInsets;->getStableInsetTop()I

    move-result v1

    iget-object v2, p0, L㚬/ℓ/ἥ/ಋ$ḓ;->䂻:Landroid/view/WindowInsets;

    invoke-virtual {v2}, Landroid/view/WindowInsets;->getStableInsetRight()I

    move-result v2

    iget-object v3, p0, L㚬/ℓ/ἥ/ಋ$ḓ;->䂻:Landroid/view/WindowInsets;

    invoke-virtual {v3}, Landroid/view/WindowInsets;->getStableInsetBottom()I

    move-result v3

    invoke-static {v0, v1, v2, v3}, L㚬/ℓ/䆀/䂻;->உ(IIII)L㚬/ℓ/䆀/䂻;

    move-result-object v0

    iput-object v0, p0, L㚬/ℓ/ἥ/ಋ$䆀;->㺴:L㚬/ℓ/䆀/䂻;

    :cond_0
    iget-object v0, p0, L㚬/ℓ/ἥ/ಋ$䆀;->㺴:L㚬/ℓ/䆀/䂻;

    return-object v0
.end method

.method public 㚬()L㚬/ℓ/ἥ/ಋ;
    .locals 1

    iget-object v0, p0, L㚬/ℓ/ἥ/ಋ$ḓ;->䂻:Landroid/view/WindowInsets;

    invoke-virtual {v0}, Landroid/view/WindowInsets;->consumeSystemWindowInsets()Landroid/view/WindowInsets;

    move-result-object v0

    invoke-static {v0}, L㚬/ℓ/ἥ/ಋ;->㹖(Landroid/view/WindowInsets;)L㚬/ℓ/ἥ/ಋ;

    move-result-object v0

    return-object v0
.end method

.method public 䂻()L㚬/ℓ/ἥ/ಋ;
    .locals 1

    iget-object v0, p0, L㚬/ℓ/ἥ/ಋ$ḓ;->䂻:Landroid/view/WindowInsets;

    invoke-virtual {v0}, Landroid/view/WindowInsets;->consumeStableInsets()Landroid/view/WindowInsets;

    move-result-object v0

    invoke-static {v0}, L㚬/ℓ/ἥ/ಋ;->㹖(Landroid/view/WindowInsets;)L㚬/ℓ/ἥ/ಋ;

    move-result-object v0

    return-object v0
.end method
