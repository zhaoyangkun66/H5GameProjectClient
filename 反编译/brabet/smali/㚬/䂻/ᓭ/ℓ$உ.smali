.class public L㚬/䂻/ᓭ/ℓ$உ;
.super L㚬/ℓ/ἥ/ㄬ;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = L㚬/䂻/ᓭ/ℓ;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public உ:Z

.field public final synthetic 㚬:L㚬/䂻/ᓭ/ℓ;

.field public 䂻:I


# direct methods
.method public constructor <init>(L㚬/䂻/ᓭ/ℓ;)V
    .locals 0

    iput-object p1, p0, L㚬/䂻/ᓭ/ℓ$உ;->㚬:L㚬/䂻/ᓭ/ℓ;

    invoke-direct {p0}, L㚬/ℓ/ἥ/ㄬ;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, L㚬/䂻/ᓭ/ℓ$உ;->உ:Z

    iput p1, p0, L㚬/䂻/ᓭ/ℓ$உ;->䂻:I

    return-void
.end method


# virtual methods
.method public உ(Landroid/view/View;)V
    .locals 1

    iget p1, p0, L㚬/䂻/ᓭ/ℓ$உ;->䂻:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, L㚬/䂻/ᓭ/ℓ$உ;->䂻:I

    iget-object v0, p0, L㚬/䂻/ᓭ/ℓ$உ;->㚬:L㚬/䂻/ᓭ/ℓ;

    iget-object v0, v0, L㚬/䂻/ᓭ/ℓ;->உ:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne p1, v0, :cond_1

    iget-object p1, p0, L㚬/䂻/ᓭ/ℓ$உ;->㚬:L㚬/䂻/ᓭ/ℓ;

    iget-object p1, p1, L㚬/䂻/ᓭ/ℓ;->㺴:L㚬/ℓ/ἥ/㲧;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    invoke-interface {p1, v0}, L㚬/ℓ/ἥ/㲧;->உ(Landroid/view/View;)V

    :cond_0
    invoke-virtual {p0}, L㚬/䂻/ᓭ/ℓ$உ;->㺴()V

    :cond_1
    return-void
.end method

.method public 㺴()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, L㚬/䂻/ᓭ/ℓ$உ;->䂻:I

    iput-boolean v0, p0, L㚬/䂻/ᓭ/ℓ$உ;->உ:Z

    iget-object v0, p0, L㚬/䂻/ᓭ/ℓ$உ;->㚬:L㚬/䂻/ᓭ/ℓ;

    invoke-virtual {v0}, L㚬/䂻/ᓭ/ℓ;->䂻()V

    return-void
.end method

.method public 䂻(Landroid/view/View;)V
    .locals 1

    iget-boolean p1, p0, L㚬/䂻/ᓭ/ℓ$உ;->உ:Z

    if-eqz p1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x1

    iput-boolean p1, p0, L㚬/䂻/ᓭ/ℓ$உ;->உ:Z

    iget-object p1, p0, L㚬/䂻/ᓭ/ℓ$உ;->㚬:L㚬/䂻/ᓭ/ℓ;

    iget-object p1, p1, L㚬/䂻/ᓭ/ℓ;->㺴:L㚬/ℓ/ἥ/㲧;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    invoke-interface {p1, v0}, L㚬/ℓ/ἥ/㲧;->䂻(Landroid/view/View;)V

    :cond_1
    return-void
.end method
