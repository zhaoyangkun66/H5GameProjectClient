.class public L㺴/㚬/உ/䂻/ἥ/㺴;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final உ:Landroid/view/View;

.field public ᆻ:Z

.field public ḓ:I

.field public 㚬:I

.field public 㺴:I

.field public 䂻:I

.field public 䆀:Z


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, L㺴/㚬/உ/䂻/ἥ/㺴;->䆀:Z

    iput-boolean v0, p0, L㺴/㚬/உ/䂻/ἥ/㺴;->ᆻ:Z

    iput-object p1, p0, L㺴/㚬/உ/䂻/ἥ/㺴;->உ:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public உ()V
    .locals 4

    iget-object v0, p0, L㺴/㚬/உ/䂻/ἥ/㺴;->உ:Landroid/view/View;

    iget v1, p0, L㺴/㚬/உ/䂻/ἥ/㺴;->㺴:I

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v2

    iget v3, p0, L㺴/㚬/உ/䂻/ἥ/㺴;->䂻:I

    sub-int/2addr v2, v3

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, L㚬/ℓ/ἥ/㭲;->㮕(Landroid/view/View;I)V

    iget-object v0, p0, L㺴/㚬/உ/䂻/ἥ/㺴;->உ:Landroid/view/View;

    iget v1, p0, L㺴/㚬/உ/䂻/ἥ/㺴;->ḓ:I

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v2

    iget v3, p0, L㺴/㚬/உ/䂻/ἥ/㺴;->㚬:I

    sub-int/2addr v2, v3

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, L㚬/ℓ/ἥ/㭲;->䅚(Landroid/view/View;I)V

    return-void
.end method

.method public ḓ(I)Z
    .locals 1

    iget-boolean v0, p0, L㺴/㚬/உ/䂻/ἥ/㺴;->䆀:Z

    if-eqz v0, :cond_0

    iget v0, p0, L㺴/㚬/உ/䂻/ἥ/㺴;->㺴:I

    if-eq v0, p1, :cond_0

    iput p1, p0, L㺴/㚬/உ/䂻/ἥ/㺴;->㺴:I

    invoke-virtual {p0}, L㺴/㚬/உ/䂻/ἥ/㺴;->உ()V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public 㚬()V
    .locals 1

    iget-object v0, p0, L㺴/㚬/உ/䂻/ἥ/㺴;->உ:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    iput v0, p0, L㺴/㚬/உ/䂻/ἥ/㺴;->䂻:I

    iget-object v0, p0, L㺴/㚬/உ/䂻/ἥ/㺴;->உ:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    iput v0, p0, L㺴/㚬/உ/䂻/ἥ/㺴;->㚬:I

    return-void
.end method

.method public 㺴(I)Z
    .locals 1

    iget-boolean v0, p0, L㺴/㚬/உ/䂻/ἥ/㺴;->ᆻ:Z

    if-eqz v0, :cond_0

    iget v0, p0, L㺴/㚬/உ/䂻/ἥ/㺴;->ḓ:I

    if-eq v0, p1, :cond_0

    iput p1, p0, L㺴/㚬/உ/䂻/ἥ/㺴;->ḓ:I

    invoke-virtual {p0}, L㺴/㚬/உ/䂻/ἥ/㺴;->உ()V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public 䂻()I
    .locals 1

    iget v0, p0, L㺴/㚬/உ/䂻/ἥ/㺴;->㺴:I

    return v0
.end method
