.class public L㚬/㧦/㺴/ḓ$䂻$உ;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = L㚬/㧦/㺴/ḓ$䂻;->onAnimationEnd(Landroid/view/animation/Animation;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic 䂻:L㚬/㧦/㺴/ḓ$䂻;


# direct methods
.method public constructor <init>(L㚬/㧦/㺴/ḓ$䂻;)V
    .locals 0

    iput-object p1, p0, L㚬/㧦/㺴/ḓ$䂻$உ;->䂻:L㚬/㧦/㺴/ḓ$䂻;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, L㚬/㧦/㺴/ḓ$䂻$உ;->䂻:L㚬/㧦/㺴/ḓ$䂻;

    iget-object v0, v0, L㚬/㧦/㺴/ḓ$䂻;->䂻:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getAnimatingAway()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, L㚬/㧦/㺴/ḓ$䂻$உ;->䂻:L㚬/㧦/㺴/ḓ$䂻;

    iget-object v0, v0, L㚬/㧦/㺴/ḓ$䂻;->䂻:Landroidx/fragment/app/Fragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setAnimatingAway(Landroid/view/View;)V

    iget-object v0, p0, L㚬/㧦/㺴/ḓ$䂻$உ;->䂻:L㚬/㧦/㺴/ḓ$䂻;

    iget-object v1, v0, L㚬/㧦/㺴/ḓ$䂻;->㚬:L㚬/㧦/㺴/ม$ᆻ;

    iget-object v2, v0, L㚬/㧦/㺴/ḓ$䂻;->䂻:Landroidx/fragment/app/Fragment;

    iget-object v0, v0, L㚬/㧦/㺴/ḓ$䂻;->㺴:L㚬/ℓ/ㄏ/உ;

    invoke-interface {v1, v2, v0}, L㚬/㧦/㺴/ม$ᆻ;->உ(Landroidx/fragment/app/Fragment;L㚬/ℓ/ㄏ/உ;)V

    :cond_0
    return-void
.end method
