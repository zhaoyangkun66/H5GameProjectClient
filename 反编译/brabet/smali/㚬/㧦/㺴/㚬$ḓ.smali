.class public L㚬/㧦/㺴/㚬$ḓ;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = L㚬/㧦/㺴/㚬;->ม(Ljava/util/List;Ljava/util/List;ZLjava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic உ:Landroid/view/ViewGroup;

.field public final synthetic 㚬:L㚬/㧦/㺴/㚬$㧦;

.field public final synthetic 䂻:Landroid/view/View;


# direct methods
.method public constructor <init>(L㚬/㧦/㺴/㚬;Landroid/view/ViewGroup;Landroid/view/View;L㚬/㧦/㺴/㚬$㧦;)V
    .locals 0

    iput-object p2, p0, L㚬/㧦/㺴/㚬$ḓ;->உ:Landroid/view/ViewGroup;

    iput-object p3, p0, L㚬/㧦/㺴/㚬$ḓ;->䂻:Landroid/view/View;

    iput-object p4, p0, L㚬/㧦/㺴/㚬$ḓ;->㚬:L㚬/㧦/㺴/㚬$㧦;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1

    iget-object p1, p0, L㚬/㧦/㺴/㚬$ḓ;->உ:Landroid/view/ViewGroup;

    new-instance v0, L㚬/㧦/㺴/㚬$ḓ$உ;

    invoke-direct {v0, p0}, L㚬/㧦/㺴/㚬$ḓ$உ;-><init>(L㚬/㧦/㺴/㚬$ḓ;)V

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
