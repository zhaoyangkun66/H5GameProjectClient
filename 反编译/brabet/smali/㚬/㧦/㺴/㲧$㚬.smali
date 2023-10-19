.class public L㚬/㧦/㺴/㲧$㚬;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/transition/Transition$TransitionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = L㚬/㧦/㺴/㲧;->ḙ(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic உ:Ljava/lang/Object;

.field public final synthetic ᆻ:L㚬/㧦/㺴/㲧;

.field public final synthetic ḓ:Ljava/lang/Object;

.field public final synthetic 㚬:Ljava/lang/Object;

.field public final synthetic 㺴:Ljava/util/ArrayList;

.field public final synthetic 䂻:Ljava/util/ArrayList;

.field public final synthetic 䆀:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(L㚬/㧦/㺴/㲧;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;)V
    .locals 0

    iput-object p1, p0, L㚬/㧦/㺴/㲧$㚬;->ᆻ:L㚬/㧦/㺴/㲧;

    iput-object p2, p0, L㚬/㧦/㺴/㲧$㚬;->உ:Ljava/lang/Object;

    iput-object p3, p0, L㚬/㧦/㺴/㲧$㚬;->䂻:Ljava/util/ArrayList;

    iput-object p4, p0, L㚬/㧦/㺴/㲧$㚬;->㚬:Ljava/lang/Object;

    iput-object p5, p0, L㚬/㧦/㺴/㲧$㚬;->㺴:Ljava/util/ArrayList;

    iput-object p6, p0, L㚬/㧦/㺴/㲧$㚬;->ḓ:Ljava/lang/Object;

    iput-object p7, p0, L㚬/㧦/㺴/㲧$㚬;->䆀:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTransitionCancel(Landroid/transition/Transition;)V
    .locals 0

    return-void
.end method

.method public onTransitionEnd(Landroid/transition/Transition;)V
    .locals 0

    invoke-virtual {p1, p0}, Landroid/transition/Transition;->removeListener(Landroid/transition/Transition$TransitionListener;)Landroid/transition/Transition;

    return-void
.end method

.method public onTransitionPause(Landroid/transition/Transition;)V
    .locals 0

    return-void
.end method

.method public onTransitionResume(Landroid/transition/Transition;)V
    .locals 0

    return-void
.end method

.method public onTransitionStart(Landroid/transition/Transition;)V
    .locals 3

    iget-object p1, p0, L㚬/㧦/㺴/㲧$㚬;->உ:Ljava/lang/Object;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iget-object v1, p0, L㚬/㧦/㺴/㲧$㚬;->ᆻ:L㚬/㧦/㺴/㲧;

    iget-object v2, p0, L㚬/㧦/㺴/㲧$㚬;->䂻:Ljava/util/ArrayList;

    invoke-virtual {v1, p1, v2, v0}, L㚬/㧦/㺴/㲧;->㲝(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    :cond_0
    iget-object p1, p0, L㚬/㧦/㺴/㲧$㚬;->㚬:Ljava/lang/Object;

    if-eqz p1, :cond_1

    iget-object v1, p0, L㚬/㧦/㺴/㲧$㚬;->ᆻ:L㚬/㧦/㺴/㲧;

    iget-object v2, p0, L㚬/㧦/㺴/㲧$㚬;->㺴:Ljava/util/ArrayList;

    invoke-virtual {v1, p1, v2, v0}, L㚬/㧦/㺴/㲧;->㲝(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    :cond_1
    iget-object p1, p0, L㚬/㧦/㺴/㲧$㚬;->ḓ:Ljava/lang/Object;

    if-eqz p1, :cond_2

    iget-object v1, p0, L㚬/㧦/㺴/㲧$㚬;->ᆻ:L㚬/㧦/㺴/㲧;

    iget-object v2, p0, L㚬/㧦/㺴/㲧$㚬;->䆀:Ljava/util/ArrayList;

    invoke-virtual {v1, p1, v2, v0}, L㚬/㧦/㺴/㲧;->㲝(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    :cond_2
    return-void
.end method
