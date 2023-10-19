.class public L㚬/䂻/ბ/㚬$㺴;
.super Landroidx/appcompat/widget/AppCompatImageView;
.source ""

# interfaces
.implements Landroidx/appcompat/widget/ActionMenuView$உ;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = L㚬/䂻/ბ/㚬;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "\u3eb4"
.end annotation


# instance fields
.field public final synthetic 㺴:L㚬/䂻/ბ/㚬;


# direct methods
.method public constructor <init>(L㚬/䂻/ბ/㚬;Landroid/content/Context;)V
    .locals 2

    iput-object p1, p0, L㚬/䂻/ბ/㚬$㺴;->㺴:L㚬/䂻/ბ/㚬;

    sget v0, L㚬/䂻/உ;->㧦:I

    const/4 v1, 0x0

    invoke-direct {p0, p2, v1, v0}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x1

    invoke-virtual {p0, p2}, Landroid/widget/ImageView;->setClickable(Z)V

    invoke-virtual {p0, p2}, Landroid/widget/ImageView;->setFocusable(Z)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {p0, p2}, Landroid/widget/ImageView;->setEnabled(Z)V

    invoke-virtual {p0}, Landroid/widget/ImageView;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object p2

    invoke-static {p0, p2}, L㚬/䂻/ბ/ᣑ;->உ(Landroid/view/View;Ljava/lang/CharSequence;)V

    new-instance p2, L㚬/䂻/ბ/㚬$㺴$உ;

    invoke-direct {p2, p0, p0, p1}, L㚬/䂻/ბ/㚬$㺴$உ;-><init>(L㚬/䂻/ბ/㚬$㺴;Landroid/view/View;L㚬/䂻/ბ/㚬;)V

    invoke-virtual {p0, p2}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method


# virtual methods
.method public performClick()Z
    .locals 2

    invoke-super {p0}, Landroid/widget/ImageView;->performClick()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->playSoundEffect(I)V

    iget-object v0, p0, L㚬/䂻/ბ/㚬$㺴;->㺴:L㚬/䂻/ბ/㚬;

    invoke-virtual {v0}, L㚬/䂻/ბ/㚬;->ർ()Z

    return v1
.end method

.method public setFrame(IIII)Z
    .locals 4

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ImageView;->setFrame(IIII)Z

    move-result p1

    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p3

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    invoke-virtual {p0}, Landroid/widget/ImageView;->getWidth()I

    move-result p2

    invoke-virtual {p0}, Landroid/widget/ImageView;->getHeight()I

    move-result p4

    invoke-static {p2, p4}, Ljava/lang/Math;->max(II)I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {p0}, Landroid/widget/ImageView;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/ImageView;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/widget/ImageView;->getPaddingTop()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/ImageView;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v2, v3

    add-int/2addr p2, v1

    div-int/lit8 p2, p2, 0x2

    add-int/2addr p4, v2

    div-int/lit8 p4, p4, 0x2

    sub-int v1, p2, v0

    sub-int v2, p4, v0

    add-int/2addr p2, v0

    add-int/2addr p4, v0

    invoke-static {p3, v1, v2, p2, p4}, L㚬/ℓ/䆀/㹖/உ;->㹖(Landroid/graphics/drawable/Drawable;IIII)V

    :cond_0
    return p1
.end method

.method public உ()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public 䂻()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
