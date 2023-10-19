.class public L㚬/㧦/㺴/ḓ$䂻;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = L㚬/㧦/㺴/ḓ;->உ(Landroidx/fragment/app/Fragment;L㚬/㧦/㺴/ḓ$㺴;L㚬/㧦/㺴/ม$ᆻ;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic உ:Landroid/view/ViewGroup;

.field public final synthetic 㚬:L㚬/㧦/㺴/ม$ᆻ;

.field public final synthetic 㺴:L㚬/ℓ/ㄏ/உ;

.field public final synthetic 䂻:Landroidx/fragment/app/Fragment;


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;Landroidx/fragment/app/Fragment;L㚬/㧦/㺴/ม$ᆻ;L㚬/ℓ/ㄏ/உ;)V
    .locals 0

    iput-object p1, p0, L㚬/㧦/㺴/ḓ$䂻;->உ:Landroid/view/ViewGroup;

    iput-object p2, p0, L㚬/㧦/㺴/ḓ$䂻;->䂻:Landroidx/fragment/app/Fragment;

    iput-object p3, p0, L㚬/㧦/㺴/ḓ$䂻;->㚬:L㚬/㧦/㺴/ม$ᆻ;

    iput-object p4, p0, L㚬/㧦/㺴/ḓ$䂻;->㺴:L㚬/ℓ/ㄏ/உ;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1

    iget-object p1, p0, L㚬/㧦/㺴/ḓ$䂻;->உ:Landroid/view/ViewGroup;

    new-instance v0, L㚬/㧦/㺴/ḓ$䂻$உ;

    invoke-direct {v0, p0}, L㚬/㧦/㺴/ḓ$䂻$உ;-><init>(L㚬/㧦/㺴/ḓ$䂻;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method
