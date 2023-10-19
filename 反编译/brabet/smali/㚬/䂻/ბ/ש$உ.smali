.class public L㚬/䂻/ბ/ש$உ;
.super L㚬/䂻/ἥ/உ/㚬;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = L㚬/䂻/ბ/ש;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "\u0b89"
.end annotation


# instance fields
.field public 㚬:Z


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-direct {p0, p1}, L㚬/䂻/ἥ/உ/㚬;-><init>(Landroid/graphics/drawable/Drawable;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, L㚬/䂻/ბ/ש$உ;->㚬:Z

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 1

    iget-boolean v0, p0, L㚬/䂻/ბ/ש$உ;->㚬:Z

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, L㚬/䂻/ἥ/உ/㚬;->draw(Landroid/graphics/Canvas;)V

    :cond_0
    return-void
.end method

.method public setHotspot(FF)V
    .locals 1

    iget-boolean v0, p0, L㚬/䂻/ბ/ש$உ;->㚬:Z

    if-eqz v0, :cond_0

    invoke-super {p0, p1, p2}, L㚬/䂻/ἥ/உ/㚬;->setHotspot(FF)V

    :cond_0
    return-void
.end method

.method public setHotspotBounds(IIII)V
    .locals 1

    iget-boolean v0, p0, L㚬/䂻/ბ/ש$உ;->㚬:Z

    if-eqz v0, :cond_0

    invoke-super {p0, p1, p2, p3, p4}, L㚬/䂻/ἥ/உ/㚬;->setHotspotBounds(IIII)V

    :cond_0
    return-void
.end method

.method public setState([I)Z
    .locals 1

    iget-boolean v0, p0, L㚬/䂻/ბ/ש$உ;->㚬:Z

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, L㚬/䂻/ἥ/உ/㚬;->setState([I)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public setVisible(ZZ)Z
    .locals 1

    iget-boolean v0, p0, L㚬/䂻/ბ/ש$உ;->㚬:Z

    if-eqz v0, :cond_0

    invoke-super {p0, p1, p2}, L㚬/䂻/ἥ/உ/㚬;->setVisible(ZZ)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public 㚬(Z)V
    .locals 0

    iput-boolean p1, p0, L㚬/䂻/ბ/ש$உ;->㚬:Z

    return-void
.end method
