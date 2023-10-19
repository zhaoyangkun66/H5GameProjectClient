.class public L㚬/ℓ/ἥ/ม$㚬;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements L㚬/ℓ/ἥ/㲧;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = L㚬/ℓ/ἥ/ม;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "\u36ac"
.end annotation


# instance fields
.field public உ:L㚬/ℓ/ἥ/ม;

.field public 䂻:Z


# direct methods
.method public constructor <init>(L㚬/ℓ/ἥ/ม;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, L㚬/ℓ/ἥ/ม$㚬;->உ:L㚬/ℓ/ἥ/ม;

    return-void
.end method


# virtual methods
.method public உ(Landroid/view/View;)V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WrongConstant"
        }
    .end annotation

    iget-object v0, p0, L㚬/ℓ/ἥ/ม$㚬;->உ:L㚬/ℓ/ἥ/ม;

    iget v0, v0, L㚬/ℓ/ἥ/ม;->㺴:I

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-le v0, v1, :cond_0

    invoke-virtual {p1, v0, v2}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    iget-object v0, p0, L㚬/ℓ/ἥ/ม$㚬;->உ:L㚬/ℓ/ἥ/ม;

    iput v1, v0, L㚬/ℓ/ἥ/ม;->㺴:I

    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-ge v0, v1, :cond_1

    iget-boolean v0, p0, L㚬/ℓ/ἥ/ม$㚬;->䂻:Z

    if-nez v0, :cond_5

    :cond_1
    iget-object v0, p0, L㚬/ℓ/ἥ/ม$㚬;->உ:L㚬/ℓ/ἥ/ม;

    iget-object v1, v0, L㚬/ℓ/ἥ/ม;->㚬:Ljava/lang/Runnable;

    if-eqz v1, :cond_2

    iput-object v2, v0, L㚬/ℓ/ἥ/ม;->㚬:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    :cond_2
    const/high16 v0, 0x7e000000

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, L㚬/ℓ/ἥ/㲧;

    if-eqz v1, :cond_3

    move-object v2, v0

    check-cast v2, L㚬/ℓ/ἥ/㲧;

    :cond_3
    if-eqz v2, :cond_4

    invoke-interface {v2, p1}, L㚬/ℓ/ἥ/㲧;->உ(Landroid/view/View;)V

    :cond_4
    const/4 p1, 0x1

    iput-boolean p1, p0, L㚬/ℓ/ἥ/ม$㚬;->䂻:Z

    :cond_5
    return-void
.end method

.method public 㚬(Landroid/view/View;)V
    .locals 2

    const/high16 v0, 0x7e000000

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, L㚬/ℓ/ἥ/㲧;

    if-eqz v1, :cond_0

    check-cast v0, L㚬/ℓ/ἥ/㲧;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, L㚬/ℓ/ἥ/㲧;->㚬(Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method public 䂻(Landroid/view/View;)V
    .locals 3

    const/4 v0, 0x0

    iput-boolean v0, p0, L㚬/ℓ/ἥ/ม$㚬;->䂻:Z

    iget-object v0, p0, L㚬/ℓ/ἥ/ม$㚬;->உ:L㚬/ℓ/ἥ/ม;

    iget v0, v0, L㚬/ℓ/ἥ/ม;->㺴:I

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-le v0, v2, :cond_0

    const/4 v0, 0x2

    invoke-virtual {p1, v0, v1}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    :cond_0
    iget-object v0, p0, L㚬/ℓ/ἥ/ม$㚬;->உ:L㚬/ℓ/ἥ/ม;

    iget-object v2, v0, L㚬/ℓ/ἥ/ม;->䂻:Ljava/lang/Runnable;

    if-eqz v2, :cond_1

    iput-object v1, v0, L㚬/ℓ/ἥ/ม;->䂻:Ljava/lang/Runnable;

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    :cond_1
    const/high16 v0, 0x7e000000

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v2, v0, L㚬/ℓ/ἥ/㲧;

    if-eqz v2, :cond_2

    move-object v1, v0

    check-cast v1, L㚬/ℓ/ἥ/㲧;

    :cond_2
    if-eqz v1, :cond_3

    invoke-interface {v1, p1}, L㚬/ℓ/ἥ/㲧;->䂻(Landroid/view/View;)V

    :cond_3
    return-void
.end method
