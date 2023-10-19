.class public L㚬/㧦/㺴/㚬$㚬;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


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

.field public final synthetic ḓ:L㚬/㧦/㺴/㚬$㧦;

.field public final synthetic 㚬:Z

.field public final synthetic 㺴:L㚬/㧦/㺴/ᾦ$ḓ;

.field public final synthetic 䂻:Landroid/view/View;


# direct methods
.method public constructor <init>(L㚬/㧦/㺴/㚬;Landroid/view/ViewGroup;Landroid/view/View;ZL㚬/㧦/㺴/ᾦ$ḓ;L㚬/㧦/㺴/㚬$㧦;)V
    .locals 0

    iput-object p2, p0, L㚬/㧦/㺴/㚬$㚬;->உ:Landroid/view/ViewGroup;

    iput-object p3, p0, L㚬/㧦/㺴/㚬$㚬;->䂻:Landroid/view/View;

    iput-boolean p4, p0, L㚬/㧦/㺴/㚬$㚬;->㚬:Z

    iput-object p5, p0, L㚬/㧦/㺴/㚬$㚬;->㺴:L㚬/㧦/㺴/ᾦ$ḓ;

    iput-object p6, p0, L㚬/㧦/㺴/㚬$㚬;->ḓ:L㚬/㧦/㺴/㚬$㧦;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, L㚬/㧦/㺴/㚬$㚬;->உ:Landroid/view/ViewGroup;

    iget-object v0, p0, L㚬/㧦/㺴/㚬$㚬;->䂻:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->endViewTransition(Landroid/view/View;)V

    iget-boolean p1, p0, L㚬/㧦/㺴/㚬$㚬;->㚬:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, L㚬/㧦/㺴/㚬$㚬;->㺴:L㚬/㧦/㺴/ᾦ$ḓ;

    invoke-virtual {p1}, L㚬/㧦/㺴/ᾦ$ḓ;->ḓ()L㚬/㧦/㺴/ᾦ$ḓ$㚬;

    move-result-object p1

    iget-object v0, p0, L㚬/㧦/㺴/㚬$㚬;->䂻:Landroid/view/View;

    invoke-virtual {p1, v0}, L㚬/㧦/㺴/ᾦ$ḓ$㚬;->உ(Landroid/view/View;)V

    :cond_0
    iget-object p1, p0, L㚬/㧦/㺴/㚬$㚬;->ḓ:L㚬/㧦/㺴/㚬$㧦;

    invoke-virtual {p1}, L㚬/㧦/㺴/㚬$㹖;->உ()V

    return-void
.end method
