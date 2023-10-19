.class public L㚬/ℓ/㺴/உ$䆀;
.super Landroid/app/SharedElementCallback;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = L㚬/ℓ/㺴/உ;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "\u4180"
.end annotation


# instance fields
.field public final உ:L㚬/ℓ/㺴/ᆻ;


# direct methods
.method public constructor <init>(L㚬/ℓ/㺴/ᆻ;)V
    .locals 0

    invoke-direct {p0}, Landroid/app/SharedElementCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onCaptureSharedElementSnapshot(Landroid/view/View;Landroid/graphics/Matrix;Landroid/graphics/RectF;)Landroid/os/Parcelable;
    .locals 1

    iget-object v0, p0, L㚬/ℓ/㺴/உ$䆀;->உ:L㚬/ℓ/㺴/ᆻ;

    invoke-virtual {v0, p1, p2, p3}, L㚬/ℓ/㺴/ᆻ;->உ(Landroid/view/View;Landroid/graphics/Matrix;Landroid/graphics/RectF;)Landroid/os/Parcelable;

    move-result-object p1

    return-object p1
.end method

.method public onCreateSnapshotView(Landroid/content/Context;Landroid/os/Parcelable;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, L㚬/ℓ/㺴/உ$䆀;->உ:L㚬/ℓ/㺴/ᆻ;

    invoke-virtual {v0, p1, p2}, L㚬/ℓ/㺴/ᆻ;->䂻(Landroid/content/Context;Landroid/os/Parcelable;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onMapSharedElements(Ljava/util/List;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, L㚬/ℓ/㺴/உ$䆀;->உ:L㚬/ℓ/㺴/ᆻ;

    invoke-virtual {v0, p1, p2}, L㚬/ℓ/㺴/ᆻ;->㚬(Ljava/util/List;Ljava/util/Map;)V

    return-void
.end method

.method public onRejectSharedElements(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, L㚬/ℓ/㺴/உ$䆀;->உ:L㚬/ℓ/㺴/ᆻ;

    invoke-virtual {v0, p1}, L㚬/ℓ/㺴/ᆻ;->㺴(Ljava/util/List;)V

    return-void
.end method

.method public onSharedElementEnd(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, L㚬/ℓ/㺴/உ$䆀;->உ:L㚬/ℓ/㺴/ᆻ;

    invoke-virtual {v0, p1, p2, p3}, L㚬/ℓ/㺴/ᆻ;->ḓ(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method public onSharedElementStart(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, L㚬/ℓ/㺴/உ$䆀;->உ:L㚬/ℓ/㺴/ᆻ;

    invoke-virtual {v0, p1, p2, p3}, L㚬/ℓ/㺴/ᆻ;->䆀(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method public onSharedElementsArrived(Ljava/util/List;Ljava/util/List;Landroid/app/SharedElementCallback$OnSharedElementsReadyListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;",
            "Landroid/app/SharedElementCallback$OnSharedElementsReadyListener;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, L㚬/ℓ/㺴/உ$䆀;->உ:L㚬/ℓ/㺴/ᆻ;

    new-instance v1, L㚬/ℓ/㺴/உ$䆀$உ;

    invoke-direct {v1, p0, p3}, L㚬/ℓ/㺴/உ$䆀$உ;-><init>(L㚬/ℓ/㺴/உ$䆀;Landroid/app/SharedElementCallback$OnSharedElementsReadyListener;)V

    invoke-virtual {v0, p1, p2, v1}, L㚬/ℓ/㺴/ᆻ;->ᆻ(Ljava/util/List;Ljava/util/List;L㚬/ℓ/㺴/ᆻ$உ;)V

    return-void
.end method
