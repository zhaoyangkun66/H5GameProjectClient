.class public L㚬/ℓ/ἥ/ಋ$㚬;
.super L㚬/ℓ/ἥ/ಋ$㺴;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = L㚬/ℓ/ἥ/ಋ;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "\u36ac"
.end annotation


# instance fields
.field public final 䂻:Landroid/view/WindowInsets$Builder;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, L㚬/ℓ/ἥ/ಋ$㺴;-><init>()V

    new-instance v0, Landroid/view/WindowInsets$Builder;

    invoke-direct {v0}, Landroid/view/WindowInsets$Builder;-><init>()V

    iput-object v0, p0, L㚬/ℓ/ἥ/ಋ$㚬;->䂻:Landroid/view/WindowInsets$Builder;

    return-void
.end method

.method public constructor <init>(L㚬/ℓ/ἥ/ಋ;)V
    .locals 1

    invoke-direct {p0}, L㚬/ℓ/ἥ/ಋ$㺴;-><init>()V

    invoke-virtual {p1}, L㚬/ℓ/ἥ/ಋ;->㧦()Landroid/view/WindowInsets;

    move-result-object p1

    new-instance v0, Landroid/view/WindowInsets$Builder;

    if-eqz p1, :cond_0

    invoke-direct {v0, p1}, Landroid/view/WindowInsets$Builder;-><init>(Landroid/view/WindowInsets;)V

    goto :goto_0

    :cond_0
    invoke-direct {v0}, Landroid/view/WindowInsets$Builder;-><init>()V

    :goto_0
    iput-object v0, p0, L㚬/ℓ/ἥ/ಋ$㚬;->䂻:Landroid/view/WindowInsets$Builder;

    return-void
.end method


# virtual methods
.method public உ()L㚬/ℓ/ἥ/ಋ;
    .locals 1

    iget-object v0, p0, L㚬/ℓ/ἥ/ಋ$㚬;->䂻:Landroid/view/WindowInsets$Builder;

    invoke-virtual {v0}, Landroid/view/WindowInsets$Builder;->build()Landroid/view/WindowInsets;

    move-result-object v0

    invoke-static {v0}, L㚬/ℓ/ἥ/ಋ;->㹖(Landroid/view/WindowInsets;)L㚬/ℓ/ἥ/ಋ;

    move-result-object v0

    return-object v0
.end method

.method public 䂻(L㚬/ℓ/䆀/䂻;)V
    .locals 1

    iget-object v0, p0, L㚬/ℓ/ἥ/ಋ$㚬;->䂻:Landroid/view/WindowInsets$Builder;

    invoke-virtual {p1}, L㚬/ℓ/䆀/䂻;->䂻()Landroid/graphics/Insets;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/view/WindowInsets$Builder;->setSystemWindowInsets(Landroid/graphics/Insets;)Landroid/view/WindowInsets$Builder;

    return-void
.end method
