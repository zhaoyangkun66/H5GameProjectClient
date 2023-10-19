.class public L㚬/ℓ/ἥ/ಋ$ḓ;
.super L㚬/ℓ/ἥ/ಋ$ㄏ;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = L㚬/ℓ/ἥ/ಋ;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "\u1e13"
.end annotation


# instance fields
.field public 㚬:L㚬/ℓ/䆀/䂻;

.field public final 䂻:Landroid/view/WindowInsets;


# direct methods
.method public constructor <init>(L㚬/ℓ/ἥ/ಋ;Landroid/view/WindowInsets;)V
    .locals 0

    invoke-direct {p0, p1}, L㚬/ℓ/ἥ/ಋ$ㄏ;-><init>(L㚬/ℓ/ἥ/ಋ;)V

    const/4 p1, 0x0

    iput-object p1, p0, L㚬/ℓ/ἥ/ಋ$ḓ;->㚬:L㚬/ℓ/䆀/䂻;

    iput-object p2, p0, L㚬/ℓ/ἥ/ಋ$ḓ;->䂻:Landroid/view/WindowInsets;

    return-void
.end method

.method public constructor <init>(L㚬/ℓ/ἥ/ಋ;L㚬/ℓ/ἥ/ಋ$ḓ;)V
    .locals 1

    new-instance v0, Landroid/view/WindowInsets;

    iget-object p2, p2, L㚬/ℓ/ἥ/ಋ$ḓ;->䂻:Landroid/view/WindowInsets;

    invoke-direct {v0, p2}, Landroid/view/WindowInsets;-><init>(Landroid/view/WindowInsets;)V

    invoke-direct {p0, p1, v0}, L㚬/ℓ/ἥ/ಋ$ḓ;-><init>(L㚬/ℓ/ἥ/ಋ;Landroid/view/WindowInsets;)V

    return-void
.end method


# virtual methods
.method public ℓ()Z
    .locals 1

    iget-object v0, p0, L㚬/ℓ/ἥ/ಋ$ḓ;->䂻:Landroid/view/WindowInsets;

    invoke-virtual {v0}, Landroid/view/WindowInsets;->isRound()Z

    move-result v0

    return v0
.end method

.method public final 䆀()L㚬/ℓ/䆀/䂻;
    .locals 4

    iget-object v0, p0, L㚬/ℓ/ἥ/ಋ$ḓ;->㚬:L㚬/ℓ/䆀/䂻;

    if-nez v0, :cond_0

    iget-object v0, p0, L㚬/ℓ/ἥ/ಋ$ḓ;->䂻:Landroid/view/WindowInsets;

    invoke-virtual {v0}, Landroid/view/WindowInsets;->getSystemWindowInsetLeft()I

    move-result v0

    iget-object v1, p0, L㚬/ℓ/ἥ/ಋ$ḓ;->䂻:Landroid/view/WindowInsets;

    invoke-virtual {v1}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v1

    iget-object v2, p0, L㚬/ℓ/ἥ/ಋ$ḓ;->䂻:Landroid/view/WindowInsets;

    invoke-virtual {v2}, Landroid/view/WindowInsets;->getSystemWindowInsetRight()I

    move-result v2

    iget-object v3, p0, L㚬/ℓ/ἥ/ಋ$ḓ;->䂻:Landroid/view/WindowInsets;

    invoke-virtual {v3}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v3

    invoke-static {v0, v1, v2, v3}, L㚬/ℓ/䆀/䂻;->உ(IIII)L㚬/ℓ/䆀/䂻;

    move-result-object v0

    iput-object v0, p0, L㚬/ℓ/ἥ/ಋ$ḓ;->㚬:L㚬/ℓ/䆀/䂻;

    :cond_0
    iget-object v0, p0, L㚬/ℓ/ἥ/ಋ$ḓ;->㚬:L㚬/ℓ/䆀/䂻;

    return-object v0
.end method
