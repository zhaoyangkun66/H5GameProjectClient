.class public L㚬/㧦/㺴/ḓ;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        L㚬/㧦/㺴/ḓ$ḓ;,
        L㚬/㧦/㺴/ḓ$㺴;
    }
.end annotation


# direct methods
.method public static உ(Landroidx/fragment/app/Fragment;L㚬/㧦/㺴/ḓ$㺴;L㚬/㧦/㺴/ม$ᆻ;)V
    .locals 7

    iget-object v2, p0, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    iget-object v1, p0, Landroidx/fragment/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->startViewTransition(Landroid/view/View;)V

    new-instance v5, L㚬/ℓ/ㄏ/உ;

    invoke-direct {v5}, L㚬/ℓ/ㄏ/உ;-><init>()V

    new-instance v0, L㚬/㧦/㺴/ḓ$உ;

    invoke-direct {v0, p0}, L㚬/㧦/㺴/ḓ$உ;-><init>(Landroidx/fragment/app/Fragment;)V

    invoke-virtual {v5, v0}, L㚬/ℓ/ㄏ/உ;->㚬(L㚬/ℓ/ㄏ/உ$உ;)V

    invoke-interface {p2, p0, v5}, L㚬/㧦/㺴/ม$ᆻ;->䂻(Landroidx/fragment/app/Fragment;L㚬/ℓ/ㄏ/உ;)V

    iget-object v0, p1, L㚬/㧦/㺴/ḓ$㺴;->உ:Landroid/view/animation/Animation;

    if-eqz v0, :cond_0

    new-instance v0, L㚬/㧦/㺴/ḓ$ḓ;

    iget-object p1, p1, L㚬/㧦/㺴/ḓ$㺴;->உ:Landroid/view/animation/Animation;

    invoke-direct {v0, p1, v1, v2}, L㚬/㧦/㺴/ḓ$ḓ;-><init>(Landroid/view/animation/Animation;Landroid/view/ViewGroup;Landroid/view/View;)V

    iget-object p1, p0, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->setAnimatingAway(Landroid/view/View;)V

    new-instance p1, L㚬/㧦/㺴/ḓ$䂻;

    invoke-direct {p1, v1, p0, p2, v5}, L㚬/㧦/㺴/ḓ$䂻;-><init>(Landroid/view/ViewGroup;Landroidx/fragment/app/Fragment;L㚬/㧦/㺴/ม$ᆻ;L㚬/ℓ/ㄏ/உ;)V

    invoke-virtual {v0, p1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object p0, p0, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    :cond_0
    iget-object p1, p1, L㚬/㧦/㺴/ḓ$㺴;->䂻:Landroid/animation/Animator;

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->setAnimator(Landroid/animation/Animator;)V

    new-instance v6, L㚬/㧦/㺴/ḓ$㚬;

    move-object v0, v6

    move-object v3, p0

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, L㚬/㧦/㺴/ḓ$㚬;-><init>(Landroid/view/ViewGroup;Landroid/view/View;Landroidx/fragment/app/Fragment;L㚬/㧦/㺴/ม$ᆻ;L㚬/ℓ/ㄏ/உ;)V

    invoke-virtual {p1, v6}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p0, p0, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroid/animation/Animator;->start()V

    :goto_0
    return-void
.end method

.method public static 㚬(IZ)I
    .locals 1

    const/16 v0, 0x1001

    if-eq p0, v0, :cond_4

    const/16 v0, 0x1003

    if-eq p0, v0, :cond_2

    const/16 v0, 0x2002

    if-eq p0, v0, :cond_0

    const/4 p0, -0x1

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    sget p0, L㚬/㧦/உ;->உ:I

    goto :goto_0

    :cond_1
    sget p0, L㚬/㧦/உ;->䂻:I

    goto :goto_0

    :cond_2
    if-eqz p1, :cond_3

    sget p0, L㚬/㧦/உ;->㚬:I

    goto :goto_0

    :cond_3
    sget p0, L㚬/㧦/உ;->㺴:I

    goto :goto_0

    :cond_4
    if-eqz p1, :cond_5

    sget p0, L㚬/㧦/உ;->ḓ:I

    goto :goto_0

    :cond_5
    sget p0, L㚬/㧦/உ;->䆀:I

    :goto_0
    return p0
.end method

.method public static 䂻(Landroid/content/Context;Landroidx/fragment/app/Fragment;Z)L㚬/㧦/㺴/ḓ$㺴;
    .locals 6

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getNextTransition()I

    move-result v0

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getNextAnim()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroidx/fragment/app/Fragment;->setNextAnim(I)V

    iget-object v3, p1, Landroidx/fragment/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    sget v5, L㚬/㧦/䂻;->㚬:I

    invoke-virtual {v3, v5}, Landroid/view/ViewGroup;->getTag(I)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p1, Landroidx/fragment/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v3, v5, v4}, Landroid/view/ViewGroup;->setTag(ILjava/lang/Object;)V

    :cond_0
    iget-object v3, p1, Landroidx/fragment/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getLayoutTransition()Landroid/animation/LayoutTransition;

    move-result-object v3

    if-eqz v3, :cond_1

    return-object v4

    :cond_1
    invoke-virtual {p1, v0, p2, v1}, Landroidx/fragment/app/Fragment;->onCreateAnimation(IZI)Landroid/view/animation/Animation;

    move-result-object v3

    if-eqz v3, :cond_2

    new-instance p0, L㚬/㧦/㺴/ḓ$㺴;

    invoke-direct {p0, v3}, L㚬/㧦/㺴/ḓ$㺴;-><init>(Landroid/view/animation/Animation;)V

    return-object p0

    :cond_2
    invoke-virtual {p1, v0, p2, v1}, Landroidx/fragment/app/Fragment;->onCreateAnimator(IZI)Landroid/animation/Animator;

    move-result-object p1

    if-eqz p1, :cond_3

    new-instance p0, L㚬/㧦/㺴/ḓ$㺴;

    invoke-direct {p0, p1}, L㚬/㧦/㺴/ḓ$㺴;-><init>(Landroid/animation/Animator;)V

    return-object p0

    :cond_3
    if-nez v1, :cond_4

    if-eqz v0, :cond_4

    invoke-static {v0, p2}, L㚬/㧦/㺴/ḓ;->㚬(IZ)I

    move-result v1

    :cond_4
    if-eqz v1, :cond_8

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getResourceTypeName(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "anim"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    :try_start_0
    invoke-static {p0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p2

    if-eqz p2, :cond_5

    new-instance v0, L㚬/㧦/㺴/ḓ$㺴;

    invoke-direct {v0, p2}, L㚬/㧦/㺴/ḓ$㺴;-><init>(Landroid/view/animation/Animation;)V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :cond_5
    const/4 v2, 0x1

    goto :goto_0

    :catch_0
    nop

    goto :goto_0

    :catch_1
    move-exception p0

    throw p0

    :cond_6
    :goto_0
    if-nez v2, :cond_8

    :try_start_1
    invoke-static {p0, v1}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object p2

    if-eqz p2, :cond_8

    new-instance v0, L㚬/㧦/㺴/ḓ$㺴;

    invoke-direct {v0, p2}, L㚬/㧦/㺴/ḓ$㺴;-><init>(Landroid/animation/Animator;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_2

    return-object v0

    :catch_2
    move-exception p2

    if-nez p1, :cond_7

    invoke-static {p0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p0

    if-eqz p0, :cond_8

    new-instance p1, L㚬/㧦/㺴/ḓ$㺴;

    invoke-direct {p1, p0}, L㚬/㧦/㺴/ḓ$㺴;-><init>(Landroid/view/animation/Animation;)V

    return-object p1

    :cond_7
    throw p2

    :cond_8
    return-object v4
.end method
