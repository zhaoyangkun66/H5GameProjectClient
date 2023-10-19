.class public Landroidx/appcompat/widget/Toolbar$ḓ;
.super L㚬/䂻/㧦/உ$உ;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/widget/Toolbar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "\u1e13"
.end annotation


# instance fields
.field public 䂻:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0, p1, p2}, L㚬/䂻/㧦/உ$உ;-><init>(II)V

    const/4 p1, 0x0

    iput p1, p0, Landroidx/appcompat/widget/Toolbar$ḓ;->䂻:I

    const p1, 0x800013

    iput p1, p0, L㚬/䂻/㧦/உ$உ;->உ:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, L㚬/䂻/㧦/உ$உ;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    iput p1, p0, Landroidx/appcompat/widget/Toolbar$ḓ;->䂻:I

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    invoke-direct {p0, p1}, L㚬/䂻/㧦/உ$உ;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 p1, 0x0

    iput p1, p0, Landroidx/appcompat/widget/Toolbar$ḓ;->䂻:I

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$MarginLayoutParams;)V
    .locals 1

    invoke-direct {p0, p1}, L㚬/䂻/㧦/உ$உ;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v0, 0x0

    iput v0, p0, Landroidx/appcompat/widget/Toolbar$ḓ;->䂻:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/Toolbar$ḓ;->உ(Landroid/view/ViewGroup$MarginLayoutParams;)V

    return-void
.end method

.method public constructor <init>(Landroidx/appcompat/widget/Toolbar$ḓ;)V
    .locals 1

    invoke-direct {p0, p1}, L㚬/䂻/㧦/உ$உ;-><init>(L㚬/䂻/㧦/உ$உ;)V

    const/4 v0, 0x0

    iput v0, p0, Landroidx/appcompat/widget/Toolbar$ḓ;->䂻:I

    iget p1, p1, Landroidx/appcompat/widget/Toolbar$ḓ;->䂻:I

    iput p1, p0, Landroidx/appcompat/widget/Toolbar$ḓ;->䂻:I

    return-void
.end method

.method public constructor <init>(L㚬/䂻/㧦/உ$உ;)V
    .locals 0

    invoke-direct {p0, p1}, L㚬/䂻/㧦/உ$உ;-><init>(L㚬/䂻/㧦/உ$உ;)V

    const/4 p1, 0x0

    iput p1, p0, Landroidx/appcompat/widget/Toolbar$ḓ;->䂻:I

    return-void
.end method


# virtual methods
.method public உ(Landroid/view/ViewGroup$MarginLayoutParams;)V
    .locals 1

    iget v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iput v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iput v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iput v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iget p1, p1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iput p1, p0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    return-void
.end method
