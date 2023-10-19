.class public L㺴/㚬/உ/䂻/ἥ/㚬;
.super Landroidx/coordinatorlayout/widget/CoordinatorLayout$㚬;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Landroid/view/View;",
        ">",
        "Landroidx/coordinatorlayout/widget/CoordinatorLayout$\u36ac<",
        "TV;>;"
    }
.end annotation


# instance fields
.field public உ:L㺴/㚬/உ/䂻/ἥ/㺴;

.field public 㚬:I

.field public 䂻:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$㚬;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, L㺴/㚬/உ/䂻/ἥ/㚬;->䂻:I

    iput v0, p0, L㺴/㚬/உ/䂻/ἥ/㚬;->㚬:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$㚬;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    iput p1, p0, L㺴/㚬/உ/䂻/ἥ/㚬;->䂻:I

    iput p1, p0, L㺴/㚬/உ/䂻/ἥ/㚬;->㚬:I

    return-void
.end method


# virtual methods
.method public ש()I
    .locals 1

    iget-object v0, p0, L㺴/㚬/உ/䂻/ἥ/㚬;->உ:L㺴/㚬/உ/䂻/ἥ/㺴;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, L㺴/㚬/உ/䂻/ἥ/㺴;->䂻()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public ᰘ(I)Z
    .locals 1

    iget-object v0, p0, L㺴/㚬/உ/䂻/ἥ/㚬;->உ:L㺴/㚬/உ/䂻/ἥ/㺴;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, L㺴/㚬/உ/䂻/ἥ/㺴;->ḓ(I)Z

    move-result p1

    return p1

    :cond_0
    iput p1, p0, L㺴/㚬/உ/䂻/ἥ/㚬;->䂻:I

    const/4 p1, 0x0

    return p1
.end method

.method public 㨃(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TV;I)V"
        }
    .end annotation

    invoke-virtual {p1, p2, p3}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->㥁(Landroid/view/View;I)V

    return-void
.end method

.method public 㹖(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;I)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TV;I)Z"
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p3}, L㺴/㚬/உ/䂻/ἥ/㚬;->㨃(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;I)V

    iget-object p1, p0, L㺴/㚬/உ/䂻/ἥ/㚬;->உ:L㺴/㚬/உ/䂻/ἥ/㺴;

    if-nez p1, :cond_0

    new-instance p1, L㺴/㚬/உ/䂻/ἥ/㺴;

    invoke-direct {p1, p2}, L㺴/㚬/உ/䂻/ἥ/㺴;-><init>(Landroid/view/View;)V

    iput-object p1, p0, L㺴/㚬/உ/䂻/ἥ/㚬;->உ:L㺴/㚬/உ/䂻/ἥ/㺴;

    :cond_0
    iget-object p1, p0, L㺴/㚬/உ/䂻/ἥ/㚬;->உ:L㺴/㚬/உ/䂻/ἥ/㺴;

    invoke-virtual {p1}, L㺴/㚬/உ/䂻/ἥ/㺴;->㚬()V

    iget-object p1, p0, L㺴/㚬/உ/䂻/ἥ/㚬;->உ:L㺴/㚬/உ/䂻/ἥ/㺴;

    invoke-virtual {p1}, L㺴/㚬/உ/䂻/ἥ/㺴;->உ()V

    iget p1, p0, L㺴/㚬/உ/䂻/ἥ/㚬;->䂻:I

    const/4 p2, 0x0

    if-eqz p1, :cond_1

    iget-object p3, p0, L㺴/㚬/உ/䂻/ἥ/㚬;->உ:L㺴/㚬/உ/䂻/ἥ/㺴;

    invoke-virtual {p3, p1}, L㺴/㚬/உ/䂻/ἥ/㺴;->ḓ(I)Z

    iput p2, p0, L㺴/㚬/உ/䂻/ἥ/㚬;->䂻:I

    :cond_1
    iget p1, p0, L㺴/㚬/உ/䂻/ἥ/㚬;->㚬:I

    if-eqz p1, :cond_2

    iget-object p3, p0, L㺴/㚬/உ/䂻/ἥ/㚬;->உ:L㺴/㚬/உ/䂻/ἥ/㺴;

    invoke-virtual {p3, p1}, L㺴/㚬/உ/䂻/ἥ/㺴;->㺴(I)Z

    iput p2, p0, L㺴/㚬/உ/䂻/ἥ/㚬;->㚬:I

    :cond_2
    const/4 p1, 0x1

    return p1
.end method
