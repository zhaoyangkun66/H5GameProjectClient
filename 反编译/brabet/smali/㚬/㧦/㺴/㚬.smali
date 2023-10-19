.class public L㚬/㧦/㺴/㚬;
.super L㚬/㧦/㺴/ᾦ;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        L㚬/㧦/㺴/㚬$ἥ;,
        L㚬/㧦/㺴/㚬$㧦;,
        L㚬/㧦/㺴/㚬$㹖;
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;)V
    .locals 0

    invoke-direct {p0, p1}, L㚬/㧦/㺴/ᾦ;-><init>(Landroid/view/ViewGroup;)V

    return-void
.end method


# virtual methods
.method public final ม(Ljava/util/List;Ljava/util/List;ZLjava/util/Map;)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "L\u36ac/\u39e6/\u3eb4/\u36ac$\u39e6;",
            ">;",
            "Ljava/util/List<",
            "L\u36ac/\u39e6/\u3eb4/\u1fa6$\u1e13;",
            ">;Z",
            "Ljava/util/Map<",
            "L\u36ac/\u39e6/\u3eb4/\u1fa6$\u1e13;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v7, p0

    invoke-virtual/range {p0 .. p0}, L㚬/㧦/㺴/ᾦ;->ἥ()Landroid/view/ViewGroup;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v9

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    const/4 v0, 0x0

    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const-string v2, "FragmentManager"

    const/4 v3, 0x2

    if-eqz v1, :cond_7

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v14, v1

    check-cast v14, L㚬/㧦/㺴/㚬$㧦;

    invoke-virtual {v14}, L㚬/㧦/㺴/㚬$㹖;->㺴()Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_1
    invoke-virtual {v14}, L㚬/㧦/㺴/㚬$㹖;->உ()V

    :goto_2
    move-object/from16 v6, p4

    goto :goto_0

    :cond_0
    invoke-virtual {v14, v9}, L㚬/㧦/㺴/㚬$㧦;->ḓ(Landroid/content/Context;)L㚬/㧦/㺴/ḓ$㺴;

    move-result-object v1

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    iget-object v15, v1, L㚬/㧦/㺴/ḓ$㺴;->䂻:Landroid/animation/Animator;

    if-nez v15, :cond_2

    invoke-virtual {v10, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_2
    invoke-virtual {v14}, L㚬/㧦/㺴/㚬$㹖;->䂻()L㚬/㧦/㺴/ᾦ$ḓ;

    move-result-object v5

    invoke-virtual {v5}, L㚬/㧦/㺴/ᾦ$ḓ;->䆀()Landroidx/fragment/app/Fragment;

    move-result-object v1

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    move-object/from16 v6, p4

    invoke-interface {v6, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v4, v12}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-static {v3}, L㚬/㧦/㺴/ἥ;->ፖ(I)Z

    move-result v3

    if-eqz v3, :cond_3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Ignoring Animator set on "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " as this Fragment was involved in a Transition."

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    invoke-virtual {v14}, L㚬/㧦/㺴/㚬$㹖;->உ()V

    goto :goto_0

    :cond_4
    invoke-virtual {v5}, L㚬/㧦/㺴/ᾦ$ḓ;->ḓ()L㚬/㧦/㺴/ᾦ$ḓ$㚬;

    move-result-object v0

    sget-object v2, L㚬/㧦/㺴/ᾦ$ḓ$㚬;->㺴:L㚬/㧦/㺴/ᾦ$ḓ$㚬;

    if-ne v0, v2, :cond_5

    const/4 v4, 0x1

    goto :goto_3

    :cond_5
    const/4 v4, 0x0

    :goto_3
    move-object/from16 v12, p2

    if-eqz v4, :cond_6

    invoke-interface {v12, v5}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_6
    iget-object v3, v1, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v8, v3}, Landroid/view/ViewGroup;->startViewTransition(Landroid/view/View;)V

    new-instance v2, L㚬/㧦/㺴/㚬$㚬;

    move-object v0, v2

    move-object/from16 v1, p0

    move-object v13, v2

    move-object v2, v8

    move-object/from16 v16, v3

    move-object v6, v14

    invoke-direct/range {v0 .. v6}, L㚬/㧦/㺴/㚬$㚬;-><init>(L㚬/㧦/㺴/㚬;Landroid/view/ViewGroup;Landroid/view/View;ZL㚬/㧦/㺴/ᾦ$ḓ;L㚬/㧦/㺴/㚬$㧦;)V

    invoke-virtual {v15, v13}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    move-object/from16 v0, v16

    invoke-virtual {v15, v0}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    invoke-virtual {v15}, Landroid/animation/Animator;->start()V

    invoke-virtual {v14}, L㚬/㧦/㺴/㚬$㹖;->㚬()L㚬/ℓ/ㄏ/உ;

    move-result-object v0

    new-instance v1, L㚬/㧦/㺴/㚬$㺴;

    invoke-direct {v1, v7, v15}, L㚬/㧦/㺴/㚬$㺴;-><init>(L㚬/㧦/㺴/㚬;Landroid/animation/Animator;)V

    invoke-virtual {v0, v1}, L㚬/ℓ/ㄏ/உ;->㚬(L㚬/ℓ/ㄏ/உ$உ;)V

    const/4 v0, 0x1

    goto/16 :goto_0

    :cond_7
    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, L㚬/㧦/㺴/㚬$㧦;

    invoke-virtual {v4}, L㚬/㧦/㺴/㚬$㹖;->䂻()L㚬/㧦/㺴/ᾦ$ḓ;

    move-result-object v5

    invoke-virtual {v5}, L㚬/㧦/㺴/ᾦ$ḓ;->䆀()Landroidx/fragment/app/Fragment;

    move-result-object v6

    const-string v10, "Ignoring Animation set on "

    if-eqz p3, :cond_9

    invoke-static {v3}, L㚬/㧦/㺴/ἥ;->ፖ(I)Z

    move-result v5

    if-eqz v5, :cond_8

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " as Animations cannot run alongside Transitions."

    :goto_5
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    invoke-virtual {v4}, L㚬/㧦/㺴/㚬$㹖;->உ()V

    goto :goto_4

    :cond_9
    if-eqz v0, :cond_a

    invoke-static {v3}, L㚬/㧦/㺴/ἥ;->ፖ(I)Z

    move-result v5

    if-eqz v5, :cond_8

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " as Animations cannot run alongside Animators."

    goto :goto_5

    :cond_a
    iget-object v6, v6, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v4, v9}, L㚬/㧦/㺴/㚬$㧦;->ḓ(Landroid/content/Context;)L㚬/㧦/㺴/ḓ$㺴;

    move-result-object v10

    invoke-static {v10}, L㚬/ℓ/㹖/ᆻ;->㚬(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v10, L㚬/㧦/㺴/ḓ$㺴;

    iget-object v10, v10, L㚬/㧦/㺴/ḓ$㺴;->உ:Landroid/view/animation/Animation;

    invoke-static {v10}, L㚬/ℓ/㹖/ᆻ;->㚬(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v10, Landroid/view/animation/Animation;

    invoke-virtual {v5}, L㚬/㧦/㺴/ᾦ$ḓ;->ḓ()L㚬/㧦/㺴/ᾦ$ḓ$㚬;

    move-result-object v5

    sget-object v11, L㚬/㧦/㺴/ᾦ$ḓ$㚬;->䂻:L㚬/㧦/㺴/ᾦ$ḓ$㚬;

    if-eq v5, v11, :cond_b

    invoke-virtual {v6, v10}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {v4}, L㚬/㧦/㺴/㚬$㹖;->உ()V

    goto :goto_6

    :cond_b
    invoke-virtual {v8, v6}, Landroid/view/ViewGroup;->startViewTransition(Landroid/view/View;)V

    new-instance v5, L㚬/㧦/㺴/ḓ$ḓ;

    invoke-direct {v5, v10, v8, v6}, L㚬/㧦/㺴/ḓ$ḓ;-><init>(Landroid/view/animation/Animation;Landroid/view/ViewGroup;Landroid/view/View;)V

    new-instance v10, L㚬/㧦/㺴/㚬$ḓ;

    invoke-direct {v10, v7, v8, v6, v4}, L㚬/㧦/㺴/㚬$ḓ;-><init>(L㚬/㧦/㺴/㚬;Landroid/view/ViewGroup;Landroid/view/View;L㚬/㧦/㺴/㚬$㧦;)V

    invoke-virtual {v5, v10}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    invoke-virtual {v6, v5}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :goto_6
    invoke-virtual {v4}, L㚬/㧦/㺴/㚬$㹖;->㚬()L㚬/ℓ/ㄏ/உ;

    move-result-object v5

    new-instance v10, L㚬/㧦/㺴/㚬$䆀;

    invoke-direct {v10, v7, v6, v8, v4}, L㚬/㧦/㺴/㚬$䆀;-><init>(L㚬/㧦/㺴/㚬;Landroid/view/View;Landroid/view/ViewGroup;L㚬/㧦/㺴/㚬$㧦;)V

    invoke-virtual {v5, v10}, L㚬/ℓ/ㄏ/உ;->㚬(L㚬/ℓ/ㄏ/உ$உ;)V

    goto/16 :goto_4

    :cond_c
    return-void
.end method

.method public ḙ(Ljava/util/ArrayList;Landroid/view/View;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    instance-of v0, p2, Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    check-cast p2, Landroid/view/ViewGroup;

    invoke-static {p2}, L㚬/ℓ/ἥ/㖪;->உ(Landroid/view/ViewGroup;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    invoke-virtual {p2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {p0, p1, v2}, L㚬/㧦/㺴/㚬;->ḙ(Ljava/util/ArrayList;Landroid/view/View;)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    return-void
.end method

.method public 㖪(Ljava/util/Map;Landroid/view/View;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    invoke-static {p2}, L㚬/ℓ/ἥ/㭲;->ڈ(Landroid/view/View;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    instance-of v0, p2, Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    check-cast p2, Landroid/view/ViewGroup;

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    invoke-virtual {p2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {p0, p1, v2}, L㚬/㧦/㺴/㚬;->㖪(Ljava/util/Map;Landroid/view/View;)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public 㢏(L㚬/䆀/உ;Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "L\u36ac/\u4180/\u0b89<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, L㚬/䆀/உ;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-static {v0}, L㚬/ℓ/ἥ/㭲;->ڈ(Landroid/view/View;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public 㭲(L㚬/㧦/㺴/ᾦ$ḓ;)V
    .locals 1

    invoke-virtual {p1}, L㚬/㧦/㺴/ᾦ$ḓ;->䆀()Landroidx/fragment/app/Fragment;

    move-result-object v0

    iget-object v0, v0, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {p1}, L㚬/㧦/㺴/ᾦ$ḓ;->ḓ()L㚬/㧦/㺴/ᾦ$ḓ$㚬;

    move-result-object p1

    invoke-virtual {p1, v0}, L㚬/㧦/㺴/ᾦ$ḓ$㚬;->உ(Landroid/view/View;)V

    return-void
.end method

.method public final 㲧(Ljava/util/List;ZL㚬/㧦/㺴/ᾦ$ḓ;L㚬/㧦/㺴/ᾦ$ḓ;)Ljava/util/Map;
    .locals 31
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "L\u36ac/\u39e6/\u3eb4/\u36ac$\u1f25;",
            ">;Z",
            "L\u36ac/\u39e6/\u3eb4/\u1fa6$\u1e13;",
            "L\u36ac/\u39e6/\u3eb4/\u1fa6$\u1e13;",
            ")",
            "Ljava/util/Map<",
            "L\u36ac/\u39e6/\u3eb4/\u1fa6$\u1e13;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    move-object/from16 v6, p0

    move/from16 v7, p2

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v15, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, L㚬/㧦/㺴/㚬$ἥ;

    invoke-virtual {v1}, L㚬/㧦/㺴/㚬$㹖;->㺴()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, L㚬/㧦/㺴/㚬$ἥ;->ḓ()L㚬/㧦/㺴/ㄬ;

    move-result-object v2

    if-nez v15, :cond_2

    move-object v15, v2

    goto :goto_0

    :cond_2
    if-eqz v2, :cond_0

    if-ne v15, v2, :cond_3

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Mixing framework transitions and AndroidX transitions is not allowed. Fragment "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, L㚬/㧦/㺴/㚬$㹖;->䂻()L㚬/㧦/㺴/ᾦ$ḓ;

    move-result-object v3

    invoke-virtual {v3}, L㚬/㧦/㺴/ᾦ$ḓ;->䆀()Landroidx/fragment/app/Fragment;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " returned Transition "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, L㚬/㧦/㺴/㚬$ἥ;->ℓ()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " which uses a different Transition  type than other Fragments."

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    if-nez v15, :cond_6

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, L㚬/㧦/㺴/㚬$ἥ;

    invoke-virtual {v1}, L㚬/㧦/㺴/㚬$㹖;->䂻()L㚬/㧦/㺴/ᾦ$ḓ;

    move-result-object v2

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v10, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1}, L㚬/㧦/㺴/㚬$㹖;->உ()V

    goto :goto_1

    :cond_5
    return-object v10

    :cond_6
    new-instance v14, Landroid/view/View;

    invoke-virtual/range {p0 .. p0}, L㚬/㧦/㺴/ᾦ;->ἥ()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v14, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance v13, Landroid/graphics/Rect;

    invoke-direct {v13}, Landroid/graphics/Rect;-><init>()V

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, L㚬/䆀/உ;

    invoke-direct {v4}, L㚬/䆀/உ;-><init>()V

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v20

    const/4 v0, 0x0

    const/4 v2, 0x0

    const/16 v21, 0x0

    :goto_2
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_19

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, L㚬/㧦/㺴/㚬$ἥ;

    invoke-virtual {v1}, L㚬/㧦/㺴/㚬$ἥ;->ㄏ()Z

    move-result v16

    if-eqz v16, :cond_18

    if-eqz v8, :cond_18

    if-eqz v9, :cond_18

    invoke-virtual {v1}, L㚬/㧦/㺴/㚬$ἥ;->ᆻ()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v15, v0}, L㚬/㧦/㺴/ㄬ;->ᆻ(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v15, v0}, L㚬/㧦/㺴/ㄬ;->ᾦ(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual/range {p4 .. p4}, L㚬/㧦/㺴/ᾦ$ḓ;->䆀()Landroidx/fragment/app/Fragment;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getSharedElementSourceNames()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual/range {p3 .. p3}, L㚬/㧦/㺴/ᾦ$ḓ;->䆀()Landroidx/fragment/app/Fragment;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroidx/fragment/app/Fragment;->getSharedElementSourceNames()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual/range {p3 .. p3}, L㚬/㧦/㺴/ᾦ$ḓ;->䆀()Landroidx/fragment/app/Fragment;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroidx/fragment/app/Fragment;->getSharedElementTargetNames()Ljava/util/ArrayList;

    move-result-object v11

    move-object/from16 v16, v1

    move-object/from16 v18, v2

    const/4 v1, 0x0

    :goto_3
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_8

    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    move-object/from16 v19, v11

    const/4 v11, -0x1

    if-eq v2, v11, :cond_7

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v0, v2, v11}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_7
    add-int/lit8 v1, v1, 0x1

    move-object/from16 v11, v19

    goto :goto_3

    :cond_8
    invoke-virtual/range {p4 .. p4}, L㚬/㧦/㺴/ᾦ$ḓ;->䆀()Landroidx/fragment/app/Fragment;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getSharedElementTargetNames()Ljava/util/ArrayList;

    move-result-object v11

    invoke-virtual/range {p3 .. p3}, L㚬/㧦/㺴/ᾦ$ḓ;->䆀()Landroidx/fragment/app/Fragment;

    move-result-object v1

    if-nez v7, :cond_9

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getExitTransitionCallback()L㚬/ℓ/㺴/ᆻ;

    move-result-object v1

    invoke-virtual/range {p4 .. p4}, L㚬/㧦/㺴/ᾦ$ḓ;->䆀()Landroidx/fragment/app/Fragment;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->getEnterTransitionCallback()L㚬/ℓ/㺴/ᆻ;

    move-result-object v2

    goto :goto_4

    :cond_9
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getEnterTransitionCallback()L㚬/ℓ/㺴/ᆻ;

    move-result-object v1

    invoke-virtual/range {p4 .. p4}, L㚬/㧦/㺴/ᾦ$ḓ;->䆀()Landroidx/fragment/app/Fragment;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->getExitTransitionCallback()L㚬/ℓ/㺴/ᆻ;

    move-result-object v2

    :goto_4
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v9, 0x0

    :goto_5
    if-ge v9, v3, :cond_a

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    move/from16 v23, v3

    move-object/from16 v3, v19

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v11, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v8, v19

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v4, v3, v8}, L㚬/䆀/ᆻ;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v9, v9, 0x1

    move-object/from16 v8, p3

    move/from16 v3, v23

    goto :goto_5

    :cond_a
    new-instance v8, L㚬/䆀/உ;

    invoke-direct {v8}, L㚬/䆀/உ;-><init>()V

    invoke-virtual/range {p3 .. p3}, L㚬/㧦/㺴/ᾦ$ḓ;->䆀()Landroidx/fragment/app/Fragment;

    move-result-object v3

    iget-object v3, v3, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v6, v8, v3}, L㚬/㧦/㺴/㚬;->㖪(Ljava/util/Map;Landroid/view/View;)V

    invoke-virtual {v8, v0}, L㚬/䆀/உ;->ᓭ(Ljava/util/Collection;)Z

    if-eqz v1, :cond_e

    invoke-virtual {v1, v0, v8}, L㚬/ℓ/㺴/ᆻ;->㚬(Ljava/util/List;Ljava/util/Map;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v3, 0x1

    sub-int/2addr v1, v3

    :goto_6
    if-ltz v1, :cond_d

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v8, v3}, L㚬/䆀/ᆻ;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/View;

    if-nez v9, :cond_b

    invoke-virtual {v4, v3}, L㚬/䆀/ᆻ;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v19, v0

    goto :goto_7

    :cond_b
    move-object/from16 v19, v0

    invoke-static {v9}, L㚬/ℓ/ἥ/㭲;->ڈ(Landroid/view/View;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    invoke-virtual {v4, v3}, L㚬/䆀/ᆻ;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v9}, L㚬/ℓ/ἥ/㭲;->ڈ(Landroid/view/View;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3, v0}, L㚬/䆀/ᆻ;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_c
    :goto_7
    add-int/lit8 v1, v1, -0x1

    move-object/from16 v0, v19

    goto :goto_6

    :cond_d
    move-object/from16 v19, v0

    goto :goto_8

    :cond_e
    move-object/from16 v19, v0

    invoke-virtual {v8}, L㚬/䆀/உ;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {v4, v0}, L㚬/䆀/உ;->ᓭ(Ljava/util/Collection;)Z

    :goto_8
    new-instance v9, L㚬/䆀/உ;

    invoke-direct {v9}, L㚬/䆀/உ;-><init>()V

    invoke-virtual/range {p4 .. p4}, L㚬/㧦/㺴/ᾦ$ḓ;->䆀()Landroidx/fragment/app/Fragment;

    move-result-object v0

    iget-object v0, v0, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v6, v9, v0}, L㚬/㧦/㺴/㚬;->㖪(Ljava/util/Map;Landroid/view/View;)V

    invoke-virtual {v9, v11}, L㚬/䆀/உ;->ᓭ(Ljava/util/Collection;)Z

    invoke-virtual {v4}, L㚬/䆀/உ;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-virtual {v9, v0}, L㚬/䆀/உ;->ᓭ(Ljava/util/Collection;)Z

    if-eqz v2, :cond_11

    invoke-virtual {v2, v11, v9}, L㚬/ℓ/㺴/ᆻ;->㚬(Ljava/util/List;Ljava/util/Map;)V

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_9
    if-ltz v0, :cond_12

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v9, v1}, L㚬/䆀/ᆻ;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    if-nez v2, :cond_f

    invoke-static {v4, v1}, L㚬/㧦/㺴/ม;->㲝(L㚬/䆀/உ;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_10

    invoke-virtual {v4, v1}, L㚬/䆀/ᆻ;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_a

    :cond_f
    invoke-static {v2}, L㚬/ℓ/ἥ/㭲;->ڈ(Landroid/view/View;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_10

    invoke-static {v4, v1}, L㚬/㧦/㺴/ม;->㲝(L㚬/䆀/உ;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_10

    invoke-static {v2}, L㚬/ℓ/ἥ/㭲;->ڈ(Landroid/view/View;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v1, v2}, L㚬/䆀/ᆻ;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_10
    :goto_a
    add-int/lit8 v0, v0, -0x1

    goto :goto_9

    :cond_11
    invoke-static {v4, v9}, L㚬/㧦/㺴/ม;->ㄬ(L㚬/䆀/உ;L㚬/䆀/உ;)V

    :cond_12
    invoke-virtual {v4}, L㚬/䆀/உ;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {v6, v8, v0}, L㚬/㧦/㺴/㚬;->㢏(L㚬/䆀/உ;Ljava/util/Collection;)V

    invoke-virtual {v4}, L㚬/䆀/உ;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-virtual {v6, v9, v0}, L㚬/㧦/㺴/㚬;->㢏(L㚬/䆀/உ;Ljava/util/Collection;)V

    invoke-virtual {v4}, L㚬/䆀/ᆻ;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-virtual {v12}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    move-object/from16 v1, p3

    move-object/from16 v26, v4

    move-object v3, v5

    move-object v4, v12

    move-object v5, v13

    move-object v9, v14

    move-object v11, v15

    move-object/from16 v2, v18

    const/4 v0, 0x0

    const/4 v8, 0x0

    move-object/from16 v15, p4

    goto/16 :goto_f

    :cond_13
    invoke-virtual/range {p4 .. p4}, L㚬/㧦/㺴/ᾦ$ḓ;->䆀()Landroidx/fragment/app/Fragment;

    move-result-object v0

    invoke-virtual/range {p3 .. p3}, L㚬/㧦/㺴/ᾦ$ḓ;->䆀()Landroidx/fragment/app/Fragment;

    move-result-object v1

    const/4 v3, 0x1

    invoke-static {v0, v1, v7, v8, v3}, L㚬/㧦/㺴/ม;->䆀(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;ZL㚬/䆀/உ;Z)V

    invoke-virtual/range {p0 .. p0}, L㚬/㧦/㺴/ᾦ;->ἥ()Landroid/view/ViewGroup;

    move-result-object v2

    new-instance v1, L㚬/㧦/㺴/㚬$ᆻ;

    move-object/from16 v22, v19

    move-object v0, v1

    move-object/from16 v23, v10

    move-object/from16 v7, v16

    move-object v10, v1

    move-object/from16 v1, p0

    move-object/from16 v16, v14

    move-object/from16 v24, v18

    move-object v14, v2

    move-object/from16 v2, p4

    move-object/from16 v18, v13

    const/4 v13, 0x0

    const/16 v25, 0x1

    move-object/from16 v3, p3

    move-object/from16 v26, v4

    move/from16 v4, p2

    move-object/from16 v27, v5

    move-object v5, v9

    invoke-direct/range {v0 .. v5}, L㚬/㧦/㺴/㚬$ᆻ;-><init>(L㚬/㧦/㺴/㚬;L㚬/㧦/㺴/ᾦ$ḓ;L㚬/㧦/㺴/ᾦ$ḓ;ZL㚬/䆀/உ;)V

    invoke-static {v14, v10}, L㚬/ℓ/ἥ/㲝;->உ(Landroid/view/View;Ljava/lang/Runnable;)L㚬/ℓ/ἥ/㲝;

    invoke-virtual {v8}, L㚬/䆀/உ;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_14

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v6, v12, v1}, L㚬/㧦/㺴/㚬;->ḙ(Ljava/util/ArrayList;Landroid/view/View;)V

    goto :goto_b

    :cond_14
    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_15

    move-object/from16 v0, v22

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v8, v0}, L㚬/䆀/ᆻ;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v15, v7, v0}, L㚬/㧦/㺴/ㄬ;->㢏(Ljava/lang/Object;Landroid/view/View;)V

    move-object v2, v0

    goto :goto_c

    :cond_15
    move-object/from16 v2, v24

    :goto_c
    invoke-virtual {v9}, L㚬/䆀/உ;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    move-object/from16 v3, v27

    invoke-virtual {v6, v3, v1}, L㚬/㧦/㺴/㚬;->ḙ(Ljava/util/ArrayList;Landroid/view/View;)V

    goto :goto_d

    :cond_16
    move-object/from16 v3, v27

    invoke-virtual {v11}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_17

    invoke-virtual {v11, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v9, v0}, L㚬/䆀/ᆻ;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_17

    invoke-virtual/range {p0 .. p0}, L㚬/㧦/㺴/ᾦ;->ἥ()Landroid/view/ViewGroup;

    move-result-object v1

    new-instance v4, L㚬/㧦/㺴/㚬$ℓ;

    move-object/from16 v5, v18

    invoke-direct {v4, v6, v15, v0, v5}, L㚬/㧦/㺴/㚬$ℓ;-><init>(L㚬/㧦/㺴/㚬;L㚬/㧦/㺴/ㄬ;Landroid/view/View;Landroid/graphics/Rect;)V

    invoke-static {v1, v4}, L㚬/ℓ/ἥ/㲝;->உ(Landroid/view/View;Ljava/lang/Runnable;)L㚬/ℓ/ἥ/㲝;

    move-object/from16 v0, v16

    const/16 v21, 0x1

    goto :goto_e

    :cond_17
    move-object/from16 v5, v18

    move-object/from16 v0, v16

    :goto_e
    invoke-virtual {v15, v7, v0, v12}, L㚬/㧦/㺴/ㄬ;->㫏(Ljava/lang/Object;Landroid/view/View;Ljava/util/ArrayList;)V

    const/4 v14, 0x0

    const/4 v1, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object v4, v12

    move-object v12, v15

    const/4 v8, 0x0

    move-object v13, v7

    move-object v9, v0

    move-object v11, v15

    move-object v15, v1

    move-object/from16 v18, v7

    move-object/from16 v19, v3

    invoke-virtual/range {v12 .. v19}, L㚬/㧦/㺴/ㄬ;->ḙ(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;)V

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    move-object/from16 v1, p3

    move-object/from16 v10, v23

    invoke-interface {v10, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v15, p4

    invoke-interface {v10, v15, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, v7

    goto :goto_f

    :cond_18
    move-object/from16 v24, v2

    move-object/from16 v26, v4

    move-object v3, v5

    move-object v1, v8

    move-object v4, v12

    move-object v5, v13

    move-object v11, v15

    const/4 v8, 0x0

    move-object v15, v9

    move-object v9, v14

    move-object/from16 v2, v24

    :goto_f
    move/from16 v7, p2

    move-object v8, v1

    move-object v12, v4

    move-object v13, v5

    move-object v14, v9

    move-object v9, v15

    move-object/from16 v4, v26

    move-object v5, v3

    move-object v15, v11

    goto/16 :goto_2

    :cond_19
    move-object/from16 v24, v2

    move-object/from16 v26, v4

    move-object v3, v5

    move-object v1, v8

    move-object v4, v12

    move-object v5, v13

    move-object v11, v15

    const/4 v8, 0x0

    const/16 v25, 0x1

    move-object v15, v9

    move-object v9, v14

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    const/4 v13, 0x0

    const/4 v14, 0x0

    :goto_10
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_26

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    move-object/from16 v20, v12

    check-cast v20, L㚬/㧦/㺴/㚬$ἥ;

    invoke-virtual/range {v20 .. v20}, L㚬/㧦/㺴/㚬$㹖;->㺴()Z

    move-result v12

    if-eqz v12, :cond_1a

    invoke-virtual/range {v20 .. v20}, L㚬/㧦/㺴/㚬$㹖;->䂻()L㚬/㧦/㺴/ᾦ$ḓ;

    move-result-object v12

    sget-object v8, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v10, v12, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual/range {v20 .. v20}, L㚬/㧦/㺴/㚬$㹖;->உ()V

    const/4 v8, 0x0

    goto :goto_10

    :cond_1a
    invoke-virtual/range {v20 .. v20}, L㚬/㧦/㺴/㚬$ἥ;->ℓ()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v11, v8}, L㚬/㧦/㺴/ㄬ;->ᆻ(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual/range {v20 .. v20}, L㚬/㧦/㺴/㚬$㹖;->䂻()L㚬/㧦/㺴/ᾦ$ḓ;

    move-result-object v12

    if-eqz v0, :cond_1c

    if-eq v12, v1, :cond_1b

    if-ne v12, v15, :cond_1c

    :cond_1b
    const/16 v16, 0x1

    goto :goto_11

    :cond_1c
    const/16 v16, 0x0

    :goto_11
    if-nez v8, :cond_1e

    if-nez v16, :cond_1d

    sget-object v8, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v10, v12, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual/range {v20 .. v20}, L㚬/㧦/㺴/㚬$㹖;->உ()V

    :cond_1d
    move-object/from16 v30, v3

    move-object/from16 v29, v4

    move-object/from16 p2, v7

    move-object/from16 v27, v9

    move-object v3, v15

    move-object/from16 v7, v24

    const/4 v12, 0x0

    goto/16 :goto_15

    :cond_1e
    move-object/from16 p2, v7

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v17, v13

    invoke-virtual {v12}, L㚬/㧦/㺴/ᾦ$ḓ;->䆀()Landroidx/fragment/app/Fragment;

    move-result-object v13

    iget-object v13, v13, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v6, v7, v13}, L㚬/㧦/㺴/㚬;->ḙ(Ljava/util/ArrayList;Landroid/view/View;)V

    if-eqz v16, :cond_20

    if-ne v12, v1, :cond_1f

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    goto :goto_12

    :cond_1f
    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    :cond_20
    :goto_12
    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v13

    if-eqz v13, :cond_21

    invoke-virtual {v11, v8, v9}, L㚬/㧦/㺴/ㄬ;->உ(Ljava/lang/Object;Landroid/view/View;)V

    move-object/from16 v30, v3

    move-object/from16 v29, v4

    move-object/from16 v27, v9

    move-object/from16 v28, v12

    move-object v4, v14

    move-object v3, v15

    move-object/from16 v9, v17

    goto :goto_13

    :cond_21
    invoke-virtual {v11, v8, v7}, L㚬/㧦/㺴/ㄬ;->䂻(Ljava/lang/Object;Ljava/util/ArrayList;)V

    const/16 v16, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v23, 0x0

    move-object v13, v12

    move-object v12, v11

    move-object/from16 v27, v9

    move-object/from16 v28, v13

    move-object/from16 v9, v17

    move-object v13, v8

    move-object/from16 v29, v4

    move-object v4, v14

    move-object v14, v8

    move-object/from16 v30, v3

    move-object v3, v15

    move-object v15, v7

    move-object/from16 v17, v18

    move-object/from16 v18, v19

    move-object/from16 v19, v23

    invoke-virtual/range {v12 .. v19}, L㚬/㧦/㺴/ㄬ;->ḙ(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;)V

    invoke-virtual/range {v28 .. v28}, L㚬/㧦/㺴/ᾦ$ḓ;->ḓ()L㚬/㧦/㺴/ᾦ$ḓ$㚬;

    move-result-object v12

    sget-object v13, L㚬/㧦/㺴/ᾦ$ḓ$㚬;->㺴:L㚬/㧦/㺴/ᾦ$ḓ$㚬;

    if-ne v12, v13, :cond_22

    invoke-virtual/range {v28 .. v28}, L㚬/㧦/㺴/ᾦ$ḓ;->䆀()Landroidx/fragment/app/Fragment;

    move-result-object v12

    iget-object v12, v12, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v11, v8, v12, v7}, L㚬/㧦/㺴/ㄬ;->㞘(Ljava/lang/Object;Landroid/view/View;Ljava/util/ArrayList;)V

    invoke-virtual/range {p0 .. p0}, L㚬/㧦/㺴/ᾦ;->ἥ()Landroid/view/ViewGroup;

    move-result-object v12

    new-instance v13, L㚬/㧦/㺴/㚬$ㄏ;

    invoke-direct {v13, v6, v7}, L㚬/㧦/㺴/㚬$ㄏ;-><init>(L㚬/㧦/㺴/㚬;Ljava/util/ArrayList;)V

    invoke-static {v12, v13}, L㚬/ℓ/ἥ/㲝;->உ(Landroid/view/View;Ljava/lang/Runnable;)L㚬/ℓ/ἥ/㲝;

    :cond_22
    :goto_13
    invoke-virtual/range {v28 .. v28}, L㚬/㧦/㺴/ᾦ$ḓ;->ḓ()L㚬/㧦/㺴/ᾦ$ḓ$㚬;

    move-result-object v12

    sget-object v13, L㚬/㧦/㺴/ᾦ$ḓ$㚬;->㚬:L㚬/㧦/㺴/ᾦ$ḓ$㚬;

    if-ne v12, v13, :cond_24

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    if-eqz v21, :cond_23

    invoke-virtual {v11, v8, v5}, L㚬/㧦/㺴/ㄬ;->㖪(Ljava/lang/Object;Landroid/graphics/Rect;)V

    :cond_23
    move-object/from16 v7, v24

    goto :goto_14

    :cond_24
    move-object/from16 v7, v24

    invoke-virtual {v11, v8, v7}, L㚬/㧦/㺴/ㄬ;->㢏(Ljava/lang/Object;Landroid/view/View;)V

    :goto_14
    sget-object v12, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    move-object/from16 v13, v28

    invoke-interface {v10, v13, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual/range {v20 .. v20}, L㚬/㧦/㺴/㚬$ἥ;->ಫ()Z

    move-result v12

    if-eqz v12, :cond_25

    const/4 v12, 0x0

    invoke-virtual {v11, v4, v8, v12}, L㚬/㧦/㺴/ㄬ;->ཇ(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v14, v4

    move-object v13, v9

    goto :goto_15

    :cond_25
    const/4 v12, 0x0

    invoke-virtual {v11, v9, v8, v12}, L㚬/㧦/㺴/ㄬ;->ཇ(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    move-object v14, v4

    move-object v13, v8

    :goto_15
    move-object v15, v3

    move-object/from16 v24, v7

    move-object/from16 v9, v27

    move-object/from16 v4, v29

    move-object/from16 v3, v30

    const/4 v8, 0x0

    move-object/from16 v7, p2

    goto/16 :goto_10

    :cond_26
    move-object/from16 v30, v3

    move-object/from16 v29, v4

    move-object v9, v13

    move-object v4, v14

    move-object v3, v15

    invoke-virtual {v11, v4, v9, v0}, L㚬/㧦/㺴/ㄬ;->ἥ(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_27
    :goto_16
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2c

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, L㚬/㧦/㺴/㚬$ἥ;

    invoke-virtual {v7}, L㚬/㧦/㺴/㚬$㹖;->㺴()Z

    move-result v8

    if-eqz v8, :cond_28

    goto :goto_16

    :cond_28
    invoke-virtual {v7}, L㚬/㧦/㺴/㚬$ἥ;->ℓ()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7}, L㚬/㧦/㺴/㚬$㹖;->䂻()L㚬/㧦/㺴/ᾦ$ḓ;

    move-result-object v9

    if-eqz v0, :cond_2a

    if-eq v9, v1, :cond_29

    if-ne v9, v3, :cond_2a

    :cond_29
    const/4 v9, 0x1

    goto :goto_17

    :cond_2a
    const/4 v9, 0x0

    :goto_17
    if-nez v8, :cond_2b

    if-eqz v9, :cond_27

    :cond_2b
    invoke-virtual {v7}, L㚬/㧦/㺴/㚬$㹖;->䂻()L㚬/㧦/㺴/ᾦ$ḓ;

    move-result-object v8

    invoke-virtual {v8}, L㚬/㧦/㺴/ᾦ$ḓ;->䆀()Landroidx/fragment/app/Fragment;

    move-result-object v8

    invoke-virtual {v7}, L㚬/㧦/㺴/㚬$㹖;->㚬()L㚬/ℓ/ㄏ/உ;

    move-result-object v9

    new-instance v12, L㚬/㧦/㺴/㚬$ಫ;

    invoke-direct {v12, v6, v7}, L㚬/㧦/㺴/㚬$ಫ;-><init>(L㚬/㧦/㺴/㚬;L㚬/㧦/㺴/㚬$ἥ;)V

    invoke-virtual {v11, v8, v4, v9, v12}, L㚬/㧦/㺴/ㄬ;->ม(Landroidx/fragment/app/Fragment;Ljava/lang/Object;L㚬/ℓ/ㄏ/உ;Ljava/lang/Runnable;)V

    goto :goto_16

    :cond_2c
    const/4 v1, 0x4

    invoke-static {v2, v1}, L㚬/㧦/㺴/ม;->ᾦ(Ljava/util/ArrayList;I)V

    move-object/from16 v1, v30

    invoke-virtual {v11, v1}, L㚬/㧦/㺴/ㄬ;->ᓭ(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v16

    invoke-virtual/range {p0 .. p0}, L㚬/㧦/㺴/ᾦ;->ἥ()Landroid/view/ViewGroup;

    move-result-object v3

    invoke-virtual {v11, v3, v4}, L㚬/㧦/㺴/ㄬ;->㚬(Landroid/view/ViewGroup;Ljava/lang/Object;)V

    invoke-virtual/range {p0 .. p0}, L㚬/㧦/㺴/ᾦ;->ἥ()Landroid/view/ViewGroup;

    move-result-object v13

    move-object v12, v11

    move-object/from16 v14, v29

    move-object v15, v1

    move-object/from16 v17, v26

    invoke-virtual/range {v12 .. v17}, L㚬/㧦/㺴/ㄬ;->ㄬ(Landroid/view/View;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/Map;)V

    const/4 v3, 0x0

    invoke-static {v2, v3}, L㚬/㧦/㺴/ม;->ᾦ(Ljava/util/ArrayList;I)V

    move-object/from16 v2, v29

    invoke-virtual {v11, v0, v2, v1}, L㚬/㧦/㺴/ㄬ;->ಋ(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    return-object v10
.end method

.method public 䆀(Ljava/util/List;Z)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "L\u36ac/\u39e6/\u3eb4/\u1fa6$\u1e13;",
            ">;Z)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, L㚬/㧦/㺴/ᾦ$ḓ;

    invoke-virtual {v3}, L㚬/㧦/㺴/ᾦ$ḓ;->䆀()Landroidx/fragment/app/Fragment;

    move-result-object v5

    iget-object v5, v5, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    invoke-static {v5}, L㚬/㧦/㺴/ᾦ$ḓ$㚬;->㚬(Landroid/view/View;)L㚬/㧦/㺴/ᾦ$ḓ$㚬;

    move-result-object v5

    sget-object v6, L㚬/㧦/㺴/㚬$உ;->உ:[I

    invoke-virtual {v3}, L㚬/㧦/㺴/ᾦ$ḓ;->ḓ()L㚬/㧦/㺴/ᾦ$ḓ$㚬;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    aget v6, v6, v7

    if-eq v6, v4, :cond_2

    const/4 v4, 0x2

    if-eq v6, v4, :cond_2

    const/4 v4, 0x3

    if-eq v6, v4, :cond_2

    const/4 v4, 0x4

    if-eq v6, v4, :cond_1

    goto :goto_0

    :cond_1
    sget-object v4, L㚬/㧦/㺴/ᾦ$ḓ$㚬;->㚬:L㚬/㧦/㺴/ᾦ$ḓ$㚬;

    if-eq v5, v4, :cond_0

    move-object v2, v3

    goto :goto_0

    :cond_2
    sget-object v4, L㚬/㧦/㺴/ᾦ$ḓ$㚬;->㚬:L㚬/㧦/㺴/ᾦ$ḓ$㚬;

    if-ne v5, v4, :cond_0

    if-nez v1, :cond_0

    move-object v1, v3

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, L㚬/㧦/㺴/ᾦ$ḓ;

    new-instance v7, L㚬/ℓ/ㄏ/உ;

    invoke-direct {v7}, L㚬/ℓ/ㄏ/உ;-><init>()V

    invoke-virtual {v6, v7}, L㚬/㧦/㺴/ᾦ$ḓ;->ಫ(L㚬/ℓ/ㄏ/உ;)V

    new-instance v8, L㚬/㧦/㺴/㚬$㧦;

    invoke-direct {v8, v6, v7}, L㚬/㧦/㺴/㚬$㧦;-><init>(L㚬/㧦/㺴/ᾦ$ḓ;L㚬/ℓ/ㄏ/உ;)V

    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v7, L㚬/ℓ/ㄏ/உ;

    invoke-direct {v7}, L㚬/ℓ/ㄏ/உ;-><init>()V

    invoke-virtual {v6, v7}, L㚬/㧦/㺴/ᾦ$ḓ;->ಫ(L㚬/ℓ/ㄏ/உ;)V

    new-instance v8, L㚬/㧦/㺴/㚬$ἥ;

    const/4 v9, 0x0

    if-eqz p2, :cond_4

    if-ne v6, v1, :cond_5

    goto :goto_2

    :cond_4
    if-ne v6, v2, :cond_5

    :goto_2
    const/4 v9, 0x1

    :cond_5
    invoke-direct {v8, v6, v7, p2, v9}, L㚬/㧦/㺴/㚬$ἥ;-><init>(L㚬/㧦/㺴/ᾦ$ḓ;L㚬/ℓ/ㄏ/உ;ZZ)V

    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v7, L㚬/㧦/㺴/㚬$䂻;

    invoke-direct {v7, p0, v5, v6}, L㚬/㧦/㺴/㚬$䂻;-><init>(L㚬/㧦/㺴/㚬;Ljava/util/List;L㚬/㧦/㺴/ᾦ$ḓ;)V

    invoke-virtual {v6, v7}, L㚬/㧦/㺴/ᾦ$ḓ;->உ(Ljava/lang/Runnable;)V

    goto :goto_1

    :cond_6
    invoke-virtual {p0, v3, p2, v1, v2}, L㚬/㧦/㺴/㚬;->㲧(Ljava/util/List;ZL㚬/㧦/㺴/ᾦ$ḓ;L㚬/㧦/㺴/ᾦ$ḓ;)Ljava/util/Map;

    move-result-object p1

    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p1, p2}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

    move-result p2

    invoke-virtual {p0, v0, v5, p2, p1}, L㚬/㧦/㺴/㚬;->ม(Ljava/util/List;Ljava/util/List;ZLjava/util/Map;)V

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, L㚬/㧦/㺴/ᾦ$ḓ;

    invoke-virtual {p0, p2}, L㚬/㧦/㺴/㚬;->㭲(L㚬/㧦/㺴/ᾦ$ḓ;)V

    goto :goto_3

    :cond_7
    invoke-interface {v5}, Ljava/util/List;->clear()V

    return-void
.end method
