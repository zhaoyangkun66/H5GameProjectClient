.class public L㚬/㧦/㺴/ม;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        L㚬/㧦/㺴/ม$ℓ;,
        L㚬/㧦/㺴/ม$ᆻ;
    }
.end annotation


# static fields
.field public static final உ:[I

.field public static final 㚬:L㚬/㧦/㺴/ㄬ;

.field public static final 䂻:L㚬/㧦/㺴/ㄬ;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const/16 v0, 0xb

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, L㚬/㧦/㺴/ม;->உ:[I

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    new-instance v0, L㚬/㧦/㺴/㲧;

    invoke-direct {v0}, L㚬/㧦/㺴/㲧;-><init>()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sput-object v0, L㚬/㧦/㺴/ม;->䂻:L㚬/㧦/㺴/ㄬ;

    invoke-static {}, L㚬/㧦/㺴/ม;->㲧()L㚬/㧦/㺴/ㄬ;

    move-result-object v0

    sput-object v0, L㚬/㧦/㺴/ม;->㚬:L㚬/㧦/㺴/ㄬ;

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3
        0x0
        0x1
        0x5
        0x4
        0x7
        0x6
        0x9
        0x8
        0xa
    .end array-data
.end method

.method public static ڈ(Landroid/content/Context;L㚬/㧦/㺴/䆀;Ljava/util/ArrayList;Ljava/util/ArrayList;IIZL㚬/㧦/㺴/ม$ᆻ;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "L\u36ac/\u39e6/\u3eb4/\u4180;",
            "Ljava/util/ArrayList<",
            "L\u36ac/\u39e6/\u3eb4/\u0b89;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Boolean;",
            ">;IIZ",
            "L\u36ac/\u39e6/\u3eb4/\u0e21$\u11bb;",
            ")V"
        }
    .end annotation

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    move v1, p4

    :goto_0
    if-ge v1, p5, :cond_1

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, L㚬/㧦/㺴/உ;

    invoke-virtual {p3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {v2, v0, p6}, L㚬/㧦/㺴/ม;->ḓ(L㚬/㧦/㺴/உ;Landroid/util/SparseArray;Z)V

    goto :goto_1

    :cond_0
    invoke-static {v2, v0, p6}, L㚬/㧦/㺴/ม;->㚬(L㚬/㧦/㺴/உ;Landroid/util/SparseArray;Z)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-eqz v1, :cond_5

    new-instance v1, Landroid/view/View;

    invoke-direct {v1, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result p0

    const/4 v2, 0x0

    :goto_2
    if-ge v2, p0, :cond_5

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    invoke-static {v3, p2, p3, p4, p5}, L㚬/㧦/㺴/ม;->㺴(ILjava/util/ArrayList;Ljava/util/ArrayList;II)L㚬/䆀/உ;

    move-result-object v4

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, L㚬/㧦/㺴/ม$ℓ;

    invoke-virtual {p1}, L㚬/㧦/㺴/䆀;->㺴()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-virtual {p1, v3}, L㚬/㧦/㺴/䆀;->㚬(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    if-nez v3, :cond_2

    goto :goto_3

    :cond_2
    if-eqz p6, :cond_3

    invoke-static {v3, v5, v1, v4, p7}, L㚬/㧦/㺴/ม;->ᓭ(Landroid/view/ViewGroup;L㚬/㧦/㺴/ม$ℓ;Landroid/view/View;L㚬/䆀/உ;L㚬/㧦/㺴/ม$ᆻ;)V

    goto :goto_3

    :cond_3
    invoke-static {v3, v5, v1, v4, p7}, L㚬/㧦/㺴/ม;->ཇ(Landroid/view/ViewGroup;L㚬/㧦/㺴/ม$ℓ;Landroid/view/View;L㚬/䆀/உ;L㚬/㧦/㺴/ม$ᆻ;)V

    :cond_4
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_5
    return-void
.end method

.method public static உ(Ljava/util/ArrayList;L㚬/䆀/உ;Ljava/util/Collection;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;",
            "L\u36ac/\u4180/\u0b89<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, L㚬/䆀/ᆻ;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    invoke-virtual {p1, v0}, L㚬/䆀/ᆻ;->ἥ(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-static {v1}, L㚬/ℓ/ἥ/㭲;->ڈ(Landroid/view/View;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v2}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static ಋ(L㚬/㧦/㺴/ㄬ;Ljava/lang/Object;Ljava/lang/Object;L㚬/䆀/உ;ZL㚬/㧦/㺴/உ;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "L\u36ac/\u39e6/\u3eb4/\u312c;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "L\u36ac/\u4180/\u0b89<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;Z",
            "L\u36ac/\u39e6/\u3eb4/\u0b89;",
            ")V"
        }
    .end annotation

    iget-object v0, p5, L㚬/㧦/㺴/㢏;->ἥ:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    if-eqz p4, :cond_0

    iget-object p4, p5, L㚬/㧦/㺴/㢏;->ཇ:Ljava/util/ArrayList;

    goto :goto_0

    :cond_0
    iget-object p4, p5, L㚬/㧦/㺴/㢏;->ἥ:Ljava/util/ArrayList;

    :goto_0
    invoke-virtual {p4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/String;

    invoke-virtual {p3, p4}, L㚬/䆀/ᆻ;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/view/View;

    invoke-virtual {p0, p1, p3}, L㚬/㧦/㺴/ㄬ;->㢏(Ljava/lang/Object;Landroid/view/View;)V

    if-eqz p2, :cond_1

    invoke-virtual {p0, p2, p3}, L㚬/㧦/㺴/ㄬ;->㢏(Ljava/lang/Object;Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method public static ಫ(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;)L㚬/㧦/㺴/ㄬ;
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getExitTransition()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getReturnTransition()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getSharedElementReturnTransition()Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    if-eqz p1, :cond_5

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getEnterTransition()Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_3

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getReenterTransition()Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_4

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getSharedElementEnterTransition()Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_5

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    const/4 p1, 0x0

    if-eqz p0, :cond_6

    return-object p1

    :cond_6
    sget-object p0, L㚬/㧦/㺴/ม;->䂻:L㚬/㧦/㺴/ㄬ;

    if-eqz p0, :cond_7

    invoke-static {p0, v0}, L㚬/㧦/㺴/ม;->ᆻ(L㚬/㧦/㺴/ㄬ;Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_7

    return-object p0

    :cond_7
    sget-object v1, L㚬/㧦/㺴/ม;->㚬:L㚬/㧦/㺴/ㄬ;

    if-eqz v1, :cond_8

    invoke-static {v1, v0}, L㚬/㧦/㺴/ม;->ᆻ(L㚬/㧦/㺴/ㄬ;Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_8

    return-object v1

    :cond_8
    if-nez p0, :cond_9

    if-nez v1, :cond_9

    return-object p1

    :cond_9
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid Transition types"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static ม(L㚬/㧦/㺴/ㄬ;Ljava/lang/Object;Landroidx/fragment/app/Fragment;Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "L\u36ac/\u39e6/\u3eb4/\u312c;",
            "Ljava/lang/Object;",
            "Landroidx/fragment/app/Fragment;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    if-eqz p2, :cond_0

    if-eqz p1, :cond_0

    iget-boolean v0, p2, Landroidx/fragment/app/Fragment;->mAdded:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p2, Landroidx/fragment/app/Fragment;->mHidden:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p2, Landroidx/fragment/app/Fragment;->mHiddenChanged:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Landroidx/fragment/app/Fragment;->setHideReplaced(Z)V

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p3}, L㚬/㧦/㺴/ㄬ;->㞘(Ljava/lang/Object;Landroid/view/View;Ljava/util/ArrayList;)V

    iget-object p0, p2, Landroidx/fragment/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    new-instance p1, L㚬/㧦/㺴/ม$䂻;

    invoke-direct {p1, p3}, L㚬/㧦/㺴/ม$䂻;-><init>(Ljava/util/ArrayList;)V

    invoke-static {p0, p1}, L㚬/ℓ/ἥ/㲝;->உ(Landroid/view/View;Ljava/lang/Runnable;)L㚬/ℓ/ἥ/㲝;

    :cond_0
    return-void
.end method

.method public static ཇ(Landroid/view/ViewGroup;L㚬/㧦/㺴/ม$ℓ;Landroid/view/View;L㚬/䆀/உ;L㚬/㧦/㺴/ม$ᆻ;)V
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "L\u36ac/\u39e6/\u3eb4/\u0e21$\u2113;",
            "Landroid/view/View;",
            "L\u36ac/\u4180/\u0b89<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "L\u36ac/\u39e6/\u3eb4/\u0e21$\u11bb;",
            ")V"
        }
    .end annotation

    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move-object/from16 v11, p2

    move-object/from16 v12, p3

    move-object/from16 v13, p4

    iget-object v14, v10, L㚬/㧦/㺴/ม$ℓ;->உ:Landroidx/fragment/app/Fragment;

    iget-object v15, v10, L㚬/㧦/㺴/ม$ℓ;->㺴:Landroidx/fragment/app/Fragment;

    invoke-static {v15, v14}, L㚬/㧦/㺴/ม;->ಫ(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;)L㚬/㧦/㺴/ㄬ;

    move-result-object v8

    if-nez v8, :cond_0

    return-void

    :cond_0
    iget-boolean v0, v10, L㚬/㧦/㺴/ม$ℓ;->䂻:Z

    iget-boolean v1, v10, L㚬/㧦/㺴/ม$ℓ;->ḓ:Z

    invoke-static {v8, v14, v0}, L㚬/㧦/㺴/ม;->㞘(L㚬/㧦/㺴/ㄬ;Landroidx/fragment/app/Fragment;Z)Ljava/lang/Object;

    move-result-object v7

    invoke-static {v8, v15, v1}, L㚬/㧦/㺴/ม;->㭲(L㚬/㧦/㺴/ㄬ;Landroidx/fragment/app/Fragment;Z)Ljava/lang/Object;

    move-result-object v6

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v8

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v16, v4

    move-object/from16 v4, p1

    move-object/from16 v17, v5

    move-object/from16 v18, v6

    move-object/from16 v6, v16

    move-object/from16 v19, v7

    move-object v9, v8

    move-object/from16 v8, v18

    invoke-static/range {v0 .. v8}, L㚬/㧦/㺴/ม;->㹖(L㚬/㧦/㺴/ㄬ;Landroid/view/ViewGroup;Landroid/view/View;L㚬/䆀/உ;L㚬/㧦/㺴/ม$ℓ;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object/from16 v8, v19

    if-nez v8, :cond_1

    if-nez v6, :cond_1

    move-object/from16 v0, v18

    if-nez v0, :cond_2

    return-void

    :cond_1
    move-object/from16 v0, v18

    :cond_2
    move-object/from16 v7, v17

    invoke-static {v9, v0, v15, v7, v11}, L㚬/㧦/㺴/ม;->㧦(L㚬/㧦/㺴/ㄬ;Ljava/lang/Object;Landroidx/fragment/app/Fragment;Ljava/util/ArrayList;Landroid/view/View;)Ljava/util/ArrayList;

    move-result-object v17

    if-eqz v17, :cond_3

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_3
    const/4 v0, 0x0

    :cond_4
    move-object/from16 v18, v0

    invoke-virtual {v9, v8, v11}, L㚬/㧦/㺴/ㄬ;->உ(Ljava/lang/Object;Landroid/view/View;)V

    iget-boolean v5, v10, L㚬/㧦/㺴/ม$ℓ;->䂻:Z

    move-object v0, v9

    move-object v1, v8

    move-object/from16 v2, v18

    move-object v3, v6

    move-object v4, v14

    invoke-static/range {v0 .. v5}, L㚬/㧦/㺴/ม;->㢏(L㚬/㧦/㺴/ㄬ;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Landroidx/fragment/app/Fragment;Z)Ljava/lang/Object;

    move-result-object v10

    if-eqz v15, :cond_6

    if-eqz v17, :cond_6

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_5

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_6

    :cond_5
    new-instance v0, L㚬/ℓ/ㄏ/உ;

    invoke-direct {v0}, L㚬/ℓ/ㄏ/உ;-><init>()V

    invoke-interface {v13, v15, v0}, L㚬/㧦/㺴/ม$ᆻ;->䂻(Landroidx/fragment/app/Fragment;L㚬/ℓ/ㄏ/உ;)V

    new-instance v1, L㚬/㧦/㺴/ม$㚬;

    invoke-direct {v1, v13, v15, v0}, L㚬/㧦/㺴/ม$㚬;-><init>(L㚬/㧦/㺴/ม$ᆻ;Landroidx/fragment/app/Fragment;L㚬/ℓ/ㄏ/உ;)V

    invoke-virtual {v9, v15, v10, v0, v1}, L㚬/㧦/㺴/ㄬ;->ม(Landroidx/fragment/app/Fragment;Ljava/lang/Object;L㚬/ℓ/ㄏ/உ;Ljava/lang/Runnable;)V

    :cond_6
    if-eqz v10, :cond_7

    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v9

    move-object v1, v10

    move-object v2, v8

    move-object v3, v13

    move-object/from16 v4, v18

    move-object/from16 v5, v17

    move-object/from16 v7, v16

    invoke-virtual/range {v0 .. v7}, L㚬/㧦/㺴/ㄬ;->ḙ(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;)V

    move-object/from16 v1, p0

    move-object v2, v14

    move-object/from16 v3, p2

    move-object/from16 v4, v16

    move-object v5, v8

    move-object v6, v13

    move-object/from16 v7, v18

    move-object/from16 v8, v17

    invoke-static/range {v0 .. v8}, L㚬/㧦/㺴/ม;->㫏(L㚬/㧦/㺴/ㄬ;Landroid/view/ViewGroup;Landroidx/fragment/app/Fragment;Landroid/view/View;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;)V

    move-object/from16 v0, p0

    move-object v1, v9

    move-object/from16 v2, v16

    invoke-virtual {v1, v0, v2, v12}, L㚬/㧦/㺴/ㄬ;->㲧(Landroid/view/View;Ljava/util/ArrayList;Ljava/util/Map;)V

    invoke-virtual {v1, v0, v10}, L㚬/㧦/㺴/ㄬ;->㚬(Landroid/view/ViewGroup;Ljava/lang/Object;)V

    invoke-virtual {v1, v0, v2, v12}, L㚬/㧦/㺴/ㄬ;->㭲(Landroid/view/ViewGroup;Ljava/util/ArrayList;Ljava/util/Map;)V

    :cond_7
    return-void
.end method

.method public static ბ(L㚬/㧦/㺴/ม$ℓ;Landroid/util/SparseArray;I)L㚬/㧦/㺴/ม$ℓ;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "L\u36ac/\u39e6/\u3eb4/\u0e21$\u2113;",
            "Landroid/util/SparseArray<",
            "L\u36ac/\u39e6/\u3eb4/\u0e21$\u2113;",
            ">;I)",
            "L\u36ac/\u39e6/\u3eb4/\u0e21$\u2113;"
        }
    .end annotation

    if-nez p0, :cond_0

    new-instance p0, L㚬/㧦/㺴/ม$ℓ;

    invoke-direct {p0}, L㚬/㧦/㺴/ม$ℓ;-><init>()V

    invoke-virtual {p1, p2, p0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_0
    return-object p0
.end method

.method public static ᆻ(L㚬/㧦/㺴/ㄬ;Ljava/util/List;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "L\u36ac/\u39e6/\u3eb4/\u312c;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v3}, L㚬/㧦/㺴/ㄬ;->ḓ(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    return v1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public static ᓭ(Landroid/view/ViewGroup;L㚬/㧦/㺴/ม$ℓ;Landroid/view/View;L㚬/䆀/உ;L㚬/㧦/㺴/ม$ᆻ;)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "L\u36ac/\u39e6/\u3eb4/\u0e21$\u2113;",
            "Landroid/view/View;",
            "L\u36ac/\u4180/\u0b89<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "L\u36ac/\u39e6/\u3eb4/\u0e21$\u11bb;",
            ")V"
        }
    .end annotation

    move-object/from16 v4, p1

    move-object/from16 v9, p2

    move-object/from16 v10, p4

    iget-object v11, v4, L㚬/㧦/㺴/ม$ℓ;->உ:Landroidx/fragment/app/Fragment;

    iget-object v12, v4, L㚬/㧦/㺴/ม$ℓ;->㺴:Landroidx/fragment/app/Fragment;

    invoke-static {v12, v11}, L㚬/㧦/㺴/ม;->ಫ(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;)L㚬/㧦/㺴/ㄬ;

    move-result-object v13

    if-nez v13, :cond_0

    return-void

    :cond_0
    iget-boolean v14, v4, L㚬/㧦/㺴/ม$ℓ;->䂻:Z

    iget-boolean v0, v4, L㚬/㧦/㺴/ม$ℓ;->ḓ:Z

    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v13, v11, v14}, L㚬/㧦/㺴/ม;->㞘(L㚬/㧦/㺴/ㄬ;Landroidx/fragment/app/Fragment;Z)Ljava/lang/Object;

    move-result-object v7

    invoke-static {v13, v12, v0}, L㚬/㧦/㺴/ม;->㭲(L㚬/㧦/㺴/ㄬ;Landroidx/fragment/app/Fragment;Z)Ljava/lang/Object;

    move-result-object v6

    move-object v0, v13

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p1

    move-object v5, v8

    move-object/from16 p1, v6

    move-object v6, v15

    move-object/from16 v16, v7

    move-object v10, v8

    move-object/from16 v8, p1

    invoke-static/range {v0 .. v8}, L㚬/㧦/㺴/ม;->ἥ(L㚬/㧦/㺴/ㄬ;Landroid/view/ViewGroup;Landroid/view/View;L㚬/䆀/உ;L㚬/㧦/㺴/ม$ℓ;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    move-object/from16 v6, v16

    if-nez v6, :cond_1

    if-nez v8, :cond_1

    move-object/from16 v7, p1

    if-nez v7, :cond_2

    return-void

    :cond_1
    move-object/from16 v7, p1

    :cond_2
    invoke-static {v13, v7, v12, v10, v9}, L㚬/㧦/㺴/ม;->㧦(L㚬/㧦/㺴/ㄬ;Ljava/lang/Object;Landroidx/fragment/app/Fragment;Ljava/util/ArrayList;Landroid/view/View;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-static {v13, v6, v11, v15, v9}, L㚬/㧦/㺴/ม;->㧦(L㚬/㧦/㺴/ㄬ;Ljava/lang/Object;Landroidx/fragment/app/Fragment;Ljava/util/ArrayList;Landroid/view/View;)Ljava/util/ArrayList;

    move-result-object v9

    const/4 v0, 0x4

    invoke-static {v9, v0}, L㚬/㧦/㺴/ม;->ᾦ(Ljava/util/ArrayList;I)V

    move-object v0, v13

    move-object v1, v6

    move-object v2, v7

    move-object v3, v8

    move-object v4, v11

    move-object v11, v5

    move v5, v14

    invoke-static/range {v0 .. v5}, L㚬/㧦/㺴/ม;->㢏(L㚬/㧦/㺴/ㄬ;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Landroidx/fragment/app/Fragment;Z)Ljava/lang/Object;

    move-result-object v14

    if-eqz v12, :cond_4

    if-eqz v11, :cond_4

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_3

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_4

    :cond_3
    new-instance v0, L㚬/ℓ/ㄏ/உ;

    invoke-direct {v0}, L㚬/ℓ/ㄏ/உ;-><init>()V

    move-object/from16 v1, p4

    invoke-interface {v1, v12, v0}, L㚬/㧦/㺴/ม$ᆻ;->䂻(Landroidx/fragment/app/Fragment;L㚬/ℓ/ㄏ/உ;)V

    new-instance v2, L㚬/㧦/㺴/ม$உ;

    invoke-direct {v2, v1, v12, v0}, L㚬/㧦/㺴/ม$உ;-><init>(L㚬/㧦/㺴/ม$ᆻ;Landroidx/fragment/app/Fragment;L㚬/ℓ/ㄏ/உ;)V

    invoke-virtual {v13, v12, v14, v0, v2}, L㚬/㧦/㺴/ㄬ;->ม(Landroidx/fragment/app/Fragment;Ljava/lang/Object;L㚬/ℓ/ㄏ/உ;Ljava/lang/Runnable;)V

    :cond_4
    if-eqz v14, :cond_5

    invoke-static {v13, v7, v12, v11}, L㚬/㧦/㺴/ม;->ม(L㚬/㧦/㺴/ㄬ;Ljava/lang/Object;Landroidx/fragment/app/Fragment;Ljava/util/ArrayList;)V

    invoke-virtual {v13, v15}, L㚬/㧦/㺴/ㄬ;->ᓭ(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v12

    move-object v0, v13

    move-object v1, v14

    move-object v2, v6

    move-object v3, v9

    move-object v4, v7

    move-object v5, v11

    move-object v6, v8

    move-object v7, v15

    invoke-virtual/range {v0 .. v7}, L㚬/㧦/㺴/ㄬ;->ḙ(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;)V

    move-object/from16 v1, p0

    invoke-virtual {v13, v1, v14}, L㚬/㧦/㺴/ㄬ;->㚬(Landroid/view/ViewGroup;Ljava/lang/Object;)V

    move-object v2, v10

    move-object v3, v15

    move-object v4, v12

    move-object/from16 v5, p3

    invoke-virtual/range {v0 .. v5}, L㚬/㧦/㺴/ㄬ;->ㄬ(Landroid/view/View;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/Map;)V

    const/4 v0, 0x0

    invoke-static {v9, v0}, L㚬/㧦/㺴/ม;->ᾦ(Ljava/util/ArrayList;I)V

    invoke-virtual {v13, v8, v10, v15}, L㚬/㧦/㺴/ㄬ;->ಋ(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    :cond_5
    return-void
.end method

.method public static ḓ(L㚬/㧦/㺴/உ;Landroid/util/SparseArray;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "L\u36ac/\u39e6/\u3eb4/\u0b89;",
            "Landroid/util/SparseArray<",
            "L\u36ac/\u39e6/\u3eb4/\u0e21$\u2113;",
            ">;Z)V"
        }
    .end annotation

    iget-object v0, p0, L㚬/㧦/㺴/உ;->㲝:L㚬/㧦/㺴/ἥ;

    invoke-virtual {v0}, L㚬/㧦/㺴/ἥ;->ᗼ()L㚬/㧦/㺴/䆀;

    move-result-object v0

    invoke-virtual {v0}, L㚬/㧦/㺴/䆀;->㺴()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, L㚬/㧦/㺴/㢏;->உ:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v2, p0, L㚬/㧦/㺴/㢏;->உ:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, L㚬/㧦/㺴/㢏$உ;

    invoke-static {p0, v2, p1, v1, p2}, L㚬/㧦/㺴/ม;->䂻(L㚬/㧦/㺴/உ;L㚬/㧦/㺴/㢏$உ;Landroid/util/SparseArray;ZZ)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static ḙ(L㚬/䆀/உ;L㚬/㧦/㺴/ม$ℓ;Ljava/lang/Object;Z)Landroid/view/View;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "L\u36ac/\u4180/\u0b89<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;",
            "L\u36ac/\u39e6/\u3eb4/\u0e21$\u2113;",
            "Ljava/lang/Object;",
            "Z)",
            "Landroid/view/View;"
        }
    .end annotation

    iget-object p1, p1, L㚬/㧦/㺴/ม$ℓ;->㚬:L㚬/㧦/㺴/உ;

    if-eqz p2, :cond_1

    if-eqz p0, :cond_1

    iget-object p2, p1, L㚬/㧦/㺴/㢏;->ἥ:Ljava/util/ArrayList;

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_1

    const/4 p2, 0x0

    if-eqz p3, :cond_0

    iget-object p1, p1, L㚬/㧦/㺴/㢏;->ἥ:Ljava/util/ArrayList;

    goto :goto_0

    :cond_0
    iget-object p1, p1, L㚬/㧦/㺴/㢏;->ཇ:Ljava/util/ArrayList;

    :goto_0
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, L㚬/䆀/ᆻ;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static ἥ(L㚬/㧦/㺴/ㄬ;Landroid/view/ViewGroup;Landroid/view/View;L㚬/䆀/உ;L㚬/㧦/㺴/ม$ℓ;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "L\u36ac/\u39e6/\u3eb4/\u312c;",
            "Landroid/view/ViewGroup;",
            "Landroid/view/View;",
            "L\u36ac/\u4180/\u0b89<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "L\u36ac/\u39e6/\u3eb4/\u0e21$\u2113;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object v6, p0

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    move-object/from16 v7, p4

    move-object/from16 v2, p5

    move-object/from16 v3, p6

    move-object/from16 v8, p7

    iget-object v9, v7, L㚬/㧦/㺴/ม$ℓ;->உ:Landroidx/fragment/app/Fragment;

    iget-object v10, v7, L㚬/㧦/㺴/ม$ℓ;->㺴:Landroidx/fragment/app/Fragment;

    if-eqz v9, :cond_0

    invoke-virtual {v9}, Landroidx/fragment/app/Fragment;->requireView()Landroid/view/View;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    const/4 v4, 0x0

    if-eqz v9, :cond_9

    if-nez v10, :cond_1

    goto/16 :goto_3

    :cond_1
    iget-boolean v11, v7, L㚬/㧦/㺴/ม$ℓ;->䂻:Z

    invoke-virtual/range {p3 .. p3}, L㚬/䆀/ᆻ;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_2

    move-object v5, v4

    goto :goto_0

    :cond_2
    invoke-static {p0, v9, v10, v11}, L㚬/㧦/㺴/ม;->㖪(L㚬/㧦/㺴/ㄬ;Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;Z)Ljava/lang/Object;

    move-result-object v5

    :goto_0
    invoke-static {p0, v1, v5, v7}, L㚬/㧦/㺴/ม;->ㄏ(L㚬/㧦/㺴/ㄬ;L㚬/䆀/உ;Ljava/lang/Object;L㚬/㧦/㺴/ม$ℓ;)L㚬/䆀/உ;

    move-result-object v12

    invoke-static {p0, v1, v5, v7}, L㚬/㧦/㺴/ม;->ℓ(L㚬/㧦/㺴/ㄬ;L㚬/䆀/உ;Ljava/lang/Object;L㚬/㧦/㺴/ม$ℓ;)L㚬/䆀/உ;

    move-result-object v13

    invoke-virtual/range {p3 .. p3}, L㚬/䆀/ᆻ;->isEmpty()Z

    move-result v14

    if-eqz v14, :cond_5

    if-eqz v12, :cond_3

    invoke-virtual {v12}, L㚬/䆀/ᆻ;->clear()V

    :cond_3
    if-eqz v13, :cond_4

    invoke-virtual {v13}, L㚬/䆀/ᆻ;->clear()V

    :cond_4
    move-object v14, v4

    goto :goto_1

    :cond_5
    invoke-virtual/range {p3 .. p3}, L㚬/䆀/உ;->keySet()Ljava/util/Set;

    move-result-object v14

    invoke-static {v2, v12, v14}, L㚬/㧦/㺴/ม;->உ(Ljava/util/ArrayList;L㚬/䆀/உ;Ljava/util/Collection;)V

    invoke-virtual/range {p3 .. p3}, L㚬/䆀/உ;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-static {v3, v13, v1}, L㚬/㧦/㺴/ม;->உ(Ljava/util/ArrayList;L㚬/䆀/உ;Ljava/util/Collection;)V

    move-object v14, v5

    :goto_1
    if-nez v8, :cond_6

    if-nez p8, :cond_6

    if-nez v14, :cond_6

    return-object v4

    :cond_6
    const/4 v1, 0x1

    invoke-static {v9, v10, v11, v12, v1}, L㚬/㧦/㺴/ม;->䆀(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;ZL㚬/䆀/உ;Z)V

    if-eqz v14, :cond_8

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, v14, v0, v2}, L㚬/㧦/㺴/ㄬ;->㫏(Ljava/lang/Object;Landroid/view/View;Ljava/util/ArrayList;)V

    iget-boolean v4, v7, L㚬/㧦/㺴/ม$ℓ;->ḓ:Z

    iget-object v5, v7, L㚬/㧦/㺴/ม$ℓ;->䆀:L㚬/㧦/㺴/உ;

    move-object v0, p0

    move-object v1, v14

    move-object/from16 v2, p8

    move-object v3, v12

    invoke-static/range {v0 .. v5}, L㚬/㧦/㺴/ม;->ಋ(L㚬/㧦/㺴/ㄬ;Ljava/lang/Object;Ljava/lang/Object;L㚬/䆀/உ;ZL㚬/㧦/㺴/உ;)V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-static {v13, v7, v8, v11}, L㚬/㧦/㺴/ม;->ḙ(L㚬/䆀/உ;L㚬/㧦/㺴/ม$ℓ;Ljava/lang/Object;Z)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_7

    invoke-virtual {p0, v8, v0}, L㚬/㧦/㺴/ㄬ;->㖪(Ljava/lang/Object;Landroid/graphics/Rect;)V

    :cond_7
    move-object v7, v0

    move-object v5, v1

    goto :goto_2

    :cond_8
    move-object v5, v4

    move-object v7, v5

    :goto_2
    new-instance v8, L㚬/㧦/㺴/ม$ḓ;

    move-object v0, v8

    move-object v1, v9

    move-object v2, v10

    move v3, v11

    move-object v4, v13

    move-object v6, p0

    invoke-direct/range {v0 .. v7}, L㚬/㧦/㺴/ม$ḓ;-><init>(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;ZL㚬/䆀/உ;Landroid/view/View;L㚬/㧦/㺴/ㄬ;Landroid/graphics/Rect;)V

    move-object/from16 v0, p1

    invoke-static {v0, v8}, L㚬/ℓ/ἥ/㲝;->உ(Landroid/view/View;Ljava/lang/Runnable;)L㚬/ℓ/ἥ/㲝;

    return-object v14

    :cond_9
    :goto_3
    return-object v4
.end method

.method public static ᾦ(Ljava/util/ArrayList;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;I)V"
        }
    .end annotation

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1, p1}, Landroid/view/View;->setVisibility(I)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static ℓ(L㚬/㧦/㺴/ㄬ;L㚬/䆀/உ;Ljava/lang/Object;L㚬/㧦/㺴/ม$ℓ;)L㚬/䆀/உ;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "L\u36ac/\u39e6/\u3eb4/\u312c;",
            "L\u36ac/\u4180/\u0b89<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Object;",
            "L\u36ac/\u39e6/\u3eb4/\u0e21$\u2113;",
            ")",
            "L\u36ac/\u4180/\u0b89<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    iget-object v0, p3, L㚬/㧦/㺴/ม$ℓ;->உ:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {p1}, L㚬/䆀/ᆻ;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_7

    if-eqz p2, :cond_7

    if-nez v1, :cond_0

    goto :goto_3

    :cond_0
    new-instance p2, L㚬/䆀/உ;

    invoke-direct {p2}, L㚬/䆀/உ;-><init>()V

    invoke-virtual {p0, p2, v1}, L㚬/㧦/㺴/ㄬ;->ಫ(Ljava/util/Map;Landroid/view/View;)V

    iget-object p0, p3, L㚬/㧦/㺴/ม$ℓ;->㚬:L㚬/㧦/㺴/உ;

    iget-boolean p3, p3, L㚬/㧦/㺴/ม$ℓ;->䂻:Z

    if-eqz p3, :cond_1

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getExitTransitionCallback()L㚬/ℓ/㺴/ᆻ;

    move-result-object p3

    iget-object p0, p0, L㚬/㧦/㺴/㢏;->ἥ:Ljava/util/ArrayList;

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getEnterTransitionCallback()L㚬/ℓ/㺴/ᆻ;

    move-result-object p3

    iget-object p0, p0, L㚬/㧦/㺴/㢏;->ཇ:Ljava/util/ArrayList;

    :goto_0
    if-eqz p0, :cond_2

    invoke-virtual {p2, p0}, L㚬/䆀/உ;->ᓭ(Ljava/util/Collection;)Z

    invoke-virtual {p1}, L㚬/䆀/உ;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-virtual {p2, v0}, L㚬/䆀/உ;->ᓭ(Ljava/util/Collection;)Z

    :cond_2
    if-eqz p3, :cond_5

    invoke-virtual {p3, p0, p2}, L㚬/ℓ/㺴/ᆻ;->㚬(Ljava/util/List;Ljava/util/Map;)V

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p3

    add-int/lit8 p3, p3, -0x1

    :goto_1
    if-ltz p3, :cond_6

    invoke-virtual {p0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p2, v0}, L㚬/䆀/ᆻ;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    if-nez v1, :cond_3

    invoke-static {p1, v0}, L㚬/㧦/㺴/ม;->㲝(L㚬/䆀/உ;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p1, v0}, L㚬/䆀/ᆻ;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_3
    invoke-static {v1}, L㚬/ℓ/ἥ/㭲;->ڈ(Landroid/view/View;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    invoke-static {p1, v0}, L㚬/㧦/㺴/ม;->㲝(L㚬/䆀/உ;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-static {v1}, L㚬/ℓ/ἥ/㭲;->ڈ(Landroid/view/View;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, L㚬/䆀/ᆻ;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    :goto_2
    add-int/lit8 p3, p3, -0x1

    goto :goto_1

    :cond_5
    invoke-static {p1, p2}, L㚬/㧦/㺴/ม;->ㄬ(L㚬/䆀/உ;L㚬/䆀/உ;)V

    :cond_6
    return-object p2

    :cond_7
    :goto_3
    invoke-virtual {p1}, L㚬/䆀/ᆻ;->clear()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static ㄏ(L㚬/㧦/㺴/ㄬ;L㚬/䆀/உ;Ljava/lang/Object;L㚬/㧦/㺴/ม$ℓ;)L㚬/䆀/உ;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "L\u36ac/\u39e6/\u3eb4/\u312c;",
            "L\u36ac/\u4180/\u0b89<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Object;",
            "L\u36ac/\u39e6/\u3eb4/\u0e21$\u2113;",
            ")",
            "L\u36ac/\u4180/\u0b89<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    invoke-virtual {p1}, L㚬/䆀/ᆻ;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    if-nez p2, :cond_0

    goto :goto_3

    :cond_0
    iget-object p2, p3, L㚬/㧦/㺴/ม$ℓ;->㺴:Landroidx/fragment/app/Fragment;

    new-instance v0, L㚬/䆀/உ;

    invoke-direct {v0}, L㚬/䆀/உ;-><init>()V

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->requireView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, L㚬/㧦/㺴/ㄬ;->ಫ(Ljava/util/Map;Landroid/view/View;)V

    iget-object p0, p3, L㚬/㧦/㺴/ม$ℓ;->䆀:L㚬/㧦/㺴/உ;

    iget-boolean p3, p3, L㚬/㧦/㺴/ม$ℓ;->ḓ:Z

    if-eqz p3, :cond_1

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getEnterTransitionCallback()L㚬/ℓ/㺴/ᆻ;

    move-result-object p2

    iget-object p0, p0, L㚬/㧦/㺴/㢏;->ཇ:Ljava/util/ArrayList;

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getExitTransitionCallback()L㚬/ℓ/㺴/ᆻ;

    move-result-object p2

    iget-object p0, p0, L㚬/㧦/㺴/㢏;->ἥ:Ljava/util/ArrayList;

    :goto_0
    if-eqz p0, :cond_2

    invoke-virtual {v0, p0}, L㚬/䆀/உ;->ᓭ(Ljava/util/Collection;)Z

    :cond_2
    if-eqz p2, :cond_5

    invoke-virtual {p2, p0, v0}, L㚬/ℓ/㺴/ᆻ;->㚬(Ljava/util/List;Ljava/util/Map;)V

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    :goto_1
    if-ltz p2, :cond_6

    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    invoke-virtual {v0, p3}, L㚬/䆀/ᆻ;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    if-nez v1, :cond_3

    invoke-virtual {p1, p3}, L㚬/䆀/ᆻ;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_3
    invoke-static {v1}, L㚬/ℓ/ἥ/㭲;->ڈ(Landroid/view/View;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual {p1, p3}, L㚬/䆀/ᆻ;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    invoke-static {v1}, L㚬/ℓ/ἥ/㭲;->ڈ(Landroid/view/View;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1, p3}, L㚬/䆀/ᆻ;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    :goto_2
    add-int/lit8 p2, p2, -0x1

    goto :goto_1

    :cond_5
    invoke-virtual {v0}, L㚬/䆀/உ;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-virtual {p1, p0}, L㚬/䆀/உ;->ᓭ(Ljava/util/Collection;)Z

    :cond_6
    return-object v0

    :cond_7
    :goto_3
    invoke-virtual {p1}, L㚬/䆀/ᆻ;->clear()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static ㄬ(L㚬/䆀/உ;L㚬/䆀/உ;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "L\u36ac/\u4180/\u0b89<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "L\u36ac/\u4180/\u0b89<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, L㚬/䆀/ᆻ;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    invoke-virtual {p0, v0}, L㚬/䆀/ᆻ;->ἥ(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, L㚬/䆀/ᆻ;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0, v0}, L㚬/䆀/ᆻ;->㧦(I)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static 㖪(L㚬/㧦/㺴/ㄬ;Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;Z)Ljava/lang/Object;
    .locals 0

    if-eqz p1, :cond_2

    if-nez p2, :cond_0

    goto :goto_1

    :cond_0
    if-eqz p3, :cond_1

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getSharedElementReturnTransition()Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getSharedElementEnterTransition()Ljava/lang/Object;

    move-result-object p1

    :goto_0
    invoke-virtual {p0, p1}, L㚬/㧦/㺴/ㄬ;->ᆻ(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, L㚬/㧦/㺴/ㄬ;->ᾦ(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_2
    :goto_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static 㚬(L㚬/㧦/㺴/உ;Landroid/util/SparseArray;Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "L\u36ac/\u39e6/\u3eb4/\u0b89;",
            "Landroid/util/SparseArray<",
            "L\u36ac/\u39e6/\u3eb4/\u0e21$\u2113;",
            ">;Z)V"
        }
    .end annotation

    iget-object v0, p0, L㚬/㧦/㺴/㢏;->உ:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    iget-object v3, p0, L㚬/㧦/㺴/㢏;->உ:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, L㚬/㧦/㺴/㢏$உ;

    invoke-static {p0, v3, p1, v1, p2}, L㚬/㧦/㺴/ม;->䂻(L㚬/㧦/㺴/உ;L㚬/㧦/㺴/㢏$உ;Landroid/util/SparseArray;ZZ)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static 㞘(L㚬/㧦/㺴/ㄬ;Landroidx/fragment/app/Fragment;Z)Ljava/lang/Object;
    .locals 0

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getReenterTransition()Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getEnterTransition()Ljava/lang/Object;

    move-result-object p1

    :goto_0
    invoke-virtual {p0, p1}, L㚬/㧦/㺴/ㄬ;->ᆻ(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static 㢏(L㚬/㧦/㺴/ㄬ;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Landroidx/fragment/app/Fragment;Z)Ljava/lang/Object;
    .locals 0

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    if-eqz p4, :cond_1

    if-eqz p5, :cond_0

    invoke-virtual {p4}, Landroidx/fragment/app/Fragment;->getAllowReturnTransitionOverlap()Z

    move-result p4

    goto :goto_0

    :cond_0
    invoke-virtual {p4}, Landroidx/fragment/app/Fragment;->getAllowEnterTransitionOverlap()Z

    move-result p4

    goto :goto_0

    :cond_1
    const/4 p4, 0x1

    :goto_0
    if-eqz p4, :cond_2

    invoke-virtual {p0, p2, p1, p3}, L㚬/㧦/㺴/ㄬ;->ཇ(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_1

    :cond_2
    invoke-virtual {p0, p2, p1, p3}, L㚬/㧦/㺴/ㄬ;->ἥ(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    :goto_1
    return-object p0
.end method

.method public static 㧦(L㚬/㧦/㺴/ㄬ;Ljava/lang/Object;Landroidx/fragment/app/Fragment;Ljava/util/ArrayList;Landroid/view/View;)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "L\u36ac/\u39e6/\u3eb4/\u312c;",
            "Ljava/lang/Object;",
            "Landroidx/fragment/app/Fragment;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;",
            "Landroid/view/View;",
            ")",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-virtual {p0, v0, p2}, L㚬/㧦/㺴/ㄬ;->䆀(Ljava/util/ArrayList;Landroid/view/View;)V

    :cond_0
    if-eqz p3, :cond_1

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_3

    invoke-virtual {v0, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, p1, v0}, L㚬/㧦/㺴/ㄬ;->䂻(Ljava/lang/Object;Ljava/util/ArrayList;)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :cond_3
    :goto_0
    return-object v0
.end method

.method public static 㫏(L㚬/㧦/㺴/ㄬ;Landroid/view/ViewGroup;Landroidx/fragment/app/Fragment;Landroid/view/View;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "L\u36ac/\u39e6/\u3eb4/\u312c;",
            "Landroid/view/ViewGroup;",
            "Landroidx/fragment/app/Fragment;",
            "Landroid/view/View;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;",
            "Ljava/lang/Object;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;",
            "Ljava/lang/Object;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    new-instance v9, L㚬/㧦/㺴/ม$㺴;

    move-object v0, v9

    move-object v1, p5

    move-object v2, p0

    move-object v3, p3

    move-object v4, p2

    move-object v5, p4

    move-object/from16 v6, p6

    move-object/from16 v7, p8

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, L㚬/㧦/㺴/ม$㺴;-><init>(Ljava/lang/Object;L㚬/㧦/㺴/ㄬ;Landroid/view/View;Landroidx/fragment/app/Fragment;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/Object;)V

    move-object v0, p1

    invoke-static {p1, v9}, L㚬/ℓ/ἥ/㲝;->உ(Landroid/view/View;Ljava/lang/Runnable;)L㚬/ℓ/ἥ/㲝;

    return-void
.end method

.method public static 㭲(L㚬/㧦/㺴/ㄬ;Landroidx/fragment/app/Fragment;Z)Ljava/lang/Object;
    .locals 0

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getReturnTransition()Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getExitTransition()Ljava/lang/Object;

    move-result-object p1

    :goto_0
    invoke-virtual {p0, p1}, L㚬/㧦/㺴/ㄬ;->ᆻ(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static 㲝(L㚬/䆀/உ;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "L\u36ac/\u4180/\u0b89<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    invoke-virtual {p0}, L㚬/䆀/ᆻ;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-virtual {p0, v1}, L㚬/䆀/ᆻ;->ἥ(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, v1}, L㚬/䆀/ᆻ;->ㄏ(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static 㲧()L㚬/㧦/㺴/ㄬ;
    .locals 3

    :try_start_0
    const-string v0, "\u36ac.\u1e19.\u1e13"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Class;

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, L㚬/㧦/㺴/ㄬ;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static 㹖(L㚬/㧦/㺴/ㄬ;Landroid/view/ViewGroup;Landroid/view/View;L㚬/䆀/உ;L㚬/㧦/㺴/ม$ℓ;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "L\u36ac/\u39e6/\u3eb4/\u312c;",
            "Landroid/view/ViewGroup;",
            "Landroid/view/View;",
            "L\u36ac/\u4180/\u0b89<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "L\u36ac/\u39e6/\u3eb4/\u0e21$\u2113;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v6, p0

    move-object/from16 v7, p4

    move-object/from16 v10, p5

    move-object/from16 v11, p7

    iget-object v8, v7, L㚬/㧦/㺴/ม$ℓ;->உ:Landroidx/fragment/app/Fragment;

    iget-object v9, v7, L㚬/㧦/㺴/ม$ℓ;->㺴:Landroidx/fragment/app/Fragment;

    const/4 v0, 0x0

    if-eqz v8, :cond_6

    if-nez v9, :cond_0

    goto/16 :goto_3

    :cond_0
    iget-boolean v12, v7, L㚬/㧦/㺴/ม$ℓ;->䂻:Z

    invoke-virtual/range {p3 .. p3}, L㚬/䆀/ᆻ;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    move-object/from16 v13, p3

    move-object v1, v0

    goto :goto_0

    :cond_1
    invoke-static {v6, v8, v9, v12}, L㚬/㧦/㺴/ม;->㖪(L㚬/㧦/㺴/ㄬ;Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;Z)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v13, p3

    :goto_0
    invoke-static {v6, v13, v1, v7}, L㚬/㧦/㺴/ม;->ㄏ(L㚬/㧦/㺴/ㄬ;L㚬/䆀/உ;Ljava/lang/Object;L㚬/㧦/㺴/ม$ℓ;)L㚬/䆀/உ;

    move-result-object v3

    invoke-virtual/range {p3 .. p3}, L㚬/䆀/ᆻ;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    move-object v14, v0

    goto :goto_1

    :cond_2
    invoke-virtual {v3}, L㚬/䆀/உ;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    move-object v14, v1

    :goto_1
    if-nez v11, :cond_3

    if-nez p8, :cond_3

    if-nez v14, :cond_3

    return-object v0

    :cond_3
    const/4 v1, 0x1

    invoke-static {v8, v9, v12, v3, v1}, L㚬/㧦/㺴/ม;->䆀(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;ZL㚬/䆀/உ;Z)V

    if-eqz v14, :cond_4

    new-instance v15, Landroid/graphics/Rect;

    invoke-direct {v15}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v5, p2

    invoke-virtual {v6, v14, v5, v10}, L㚬/㧦/㺴/ㄬ;->㫏(Ljava/lang/Object;Landroid/view/View;Ljava/util/ArrayList;)V

    iget-boolean v4, v7, L㚬/㧦/㺴/ม$ℓ;->ḓ:Z

    iget-object v2, v7, L㚬/㧦/㺴/ม$ℓ;->䆀:L㚬/㧦/㺴/உ;

    move-object/from16 v0, p0

    move-object v1, v14

    move-object/from16 v16, v2

    move-object/from16 v2, p8

    move-object/from16 v5, v16

    invoke-static/range {v0 .. v5}, L㚬/㧦/㺴/ม;->ಋ(L㚬/㧦/㺴/ㄬ;Ljava/lang/Object;Ljava/lang/Object;L㚬/䆀/உ;ZL㚬/㧦/㺴/உ;)V

    if-eqz v11, :cond_5

    invoke-virtual {v6, v11, v15}, L㚬/㧦/㺴/ㄬ;->㖪(Ljava/lang/Object;Landroid/graphics/Rect;)V

    goto :goto_2

    :cond_4
    move-object v15, v0

    :cond_5
    :goto_2
    new-instance v5, L㚬/㧦/㺴/ม$䆀;

    move-object v0, v5

    move-object/from16 v1, p0

    move-object/from16 v2, p3

    move-object v3, v14

    move-object/from16 v4, p4

    move-object v13, v5

    move-object/from16 v5, p6

    move-object/from16 v6, p2

    move-object v7, v8

    move-object v8, v9

    move v9, v12

    move-object/from16 v10, p5

    move-object/from16 v11, p7

    move-object v12, v15

    invoke-direct/range {v0 .. v12}, L㚬/㧦/㺴/ม$䆀;-><init>(L㚬/㧦/㺴/ㄬ;L㚬/䆀/உ;Ljava/lang/Object;L㚬/㧦/㺴/ม$ℓ;Ljava/util/ArrayList;Landroid/view/View;Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;ZLjava/util/ArrayList;Ljava/lang/Object;Landroid/graphics/Rect;)V

    move-object/from16 v0, p1

    invoke-static {v0, v13}, L㚬/ℓ/ἥ/㲝;->உ(Landroid/view/View;Ljava/lang/Runnable;)L㚬/ℓ/ἥ/㲝;

    return-object v14

    :cond_6
    :goto_3
    return-object v0
.end method

.method public static 㺴(ILjava/util/ArrayList;Ljava/util/ArrayList;II)L㚬/䆀/உ;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "L\u36ac/\u39e6/\u3eb4/\u0b89;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Boolean;",
            ">;II)",
            "L\u36ac/\u4180/\u0b89<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, L㚬/䆀/உ;

    invoke-direct {v0}, L㚬/䆀/உ;-><init>()V

    add-int/lit8 p4, p4, -0x1

    :goto_0
    if-lt p4, p3, :cond_4

    invoke-virtual {p1, p4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, L㚬/㧦/㺴/உ;

    invoke-virtual {v1, p0}, L㚬/㧦/㺴/உ;->㲧(I)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_4

    :cond_0
    invoke-virtual {p2, p4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iget-object v3, v1, L㚬/㧦/㺴/㢏;->ἥ:Ljava/util/ArrayList;

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-eqz v2, :cond_1

    iget-object v2, v1, L㚬/㧦/㺴/㢏;->ἥ:Ljava/util/ArrayList;

    iget-object v1, v1, L㚬/㧦/㺴/㢏;->ཇ:Ljava/util/ArrayList;

    goto :goto_1

    :cond_1
    iget-object v2, v1, L㚬/㧦/㺴/㢏;->ἥ:Ljava/util/ArrayList;

    iget-object v1, v1, L㚬/㧦/㺴/㢏;->ཇ:Ljava/util/ArrayList;

    move-object v8, v2

    move-object v2, v1

    move-object v1, v8

    :goto_1
    const/4 v4, 0x0

    :goto_2
    if-ge v4, v3, :cond_3

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v0, v6}, L㚬/䆀/ᆻ;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    if-eqz v7, :cond_2

    invoke-virtual {v0, v5, v7}, L㚬/䆀/ᆻ;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_2
    invoke-virtual {v0, v5, v6}, L㚬/䆀/ᆻ;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_3
    :goto_4
    add-int/lit8 p4, p4, -0x1

    goto :goto_0

    :cond_4
    return-object v0
.end method

.method public static 䂻(L㚬/㧦/㺴/உ;L㚬/㧦/㺴/㢏$உ;Landroid/util/SparseArray;ZZ)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "L\u36ac/\u39e6/\u3eb4/\u0b89;",
            "L\u36ac/\u39e6/\u3eb4/\u388f$\u0b89;",
            "Landroid/util/SparseArray<",
            "L\u36ac/\u39e6/\u3eb4/\u0e21$\u2113;",
            ">;ZZ)V"
        }
    .end annotation

    iget-object v0, p1, L㚬/㧦/㺴/㢏$உ;->䂻:Landroidx/fragment/app/Fragment;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v1, v0, Landroidx/fragment/app/Fragment;->mContainerId:I

    if-nez v1, :cond_1

    return-void

    :cond_1
    if-eqz p3, :cond_2

    sget-object v2, L㚬/㧦/㺴/ม;->உ:[I

    iget p1, p1, L㚬/㧦/㺴/㢏$உ;->உ:I

    aget p1, v2, p1

    goto :goto_0

    :cond_2
    iget p1, p1, L㚬/㧦/㺴/㢏$உ;->உ:I

    :goto_0
    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq p1, v3, :cond_a

    const/4 v4, 0x3

    if-eq p1, v4, :cond_7

    const/4 v4, 0x4

    if-eq p1, v4, :cond_5

    const/4 v4, 0x5

    if-eq p1, v4, :cond_3

    const/4 v4, 0x6

    if-eq p1, v4, :cond_7

    const/4 v4, 0x7

    if-eq p1, v4, :cond_a

    const/4 p1, 0x0

    const/4 v3, 0x0

    :goto_1
    const/4 v4, 0x0

    goto/16 :goto_7

    :cond_3
    if-eqz p4, :cond_4

    iget-boolean p1, v0, Landroidx/fragment/app/Fragment;->mHiddenChanged:Z

    if-eqz p1, :cond_c

    iget-boolean p1, v0, Landroidx/fragment/app/Fragment;->mHidden:Z

    if-nez p1, :cond_c

    iget-boolean p1, v0, Landroidx/fragment/app/Fragment;->mAdded:Z

    if-eqz p1, :cond_c

    goto :goto_5

    :cond_4
    iget-boolean p1, v0, Landroidx/fragment/app/Fragment;->mHidden:Z

    goto :goto_6

    :cond_5
    if-eqz p4, :cond_6

    iget-boolean p1, v0, Landroidx/fragment/app/Fragment;->mHiddenChanged:Z

    if-eqz p1, :cond_8

    iget-boolean p1, v0, Landroidx/fragment/app/Fragment;->mAdded:Z

    if-eqz p1, :cond_8

    iget-boolean p1, v0, Landroidx/fragment/app/Fragment;->mHidden:Z

    if-eqz p1, :cond_8

    :goto_2
    goto :goto_3

    :cond_6
    iget-boolean p1, v0, Landroidx/fragment/app/Fragment;->mAdded:Z

    if-eqz p1, :cond_8

    iget-boolean p1, v0, Landroidx/fragment/app/Fragment;->mHidden:Z

    if-nez p1, :cond_8

    goto :goto_2

    :cond_7
    iget-boolean p1, v0, Landroidx/fragment/app/Fragment;->mAdded:Z

    if-eqz p4, :cond_9

    if-nez p1, :cond_8

    iget-object p1, v0, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    if-eqz p1, :cond_8

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_8

    iget p1, v0, Landroidx/fragment/app/Fragment;->mPostponedAlpha:F

    const/4 v4, 0x0

    cmpl-float p1, p1, v4

    if-ltz p1, :cond_8

    :goto_3
    const/4 p1, 0x1

    goto :goto_4

    :cond_8
    const/4 p1, 0x0

    goto :goto_4

    :cond_9
    if-eqz p1, :cond_8

    iget-boolean p1, v0, Landroidx/fragment/app/Fragment;->mHidden:Z

    if-nez p1, :cond_8

    goto :goto_3

    :goto_4
    move v4, p1

    const/4 p1, 0x1

    const/4 v3, 0x0

    goto :goto_7

    :cond_a
    if-eqz p4, :cond_b

    iget-boolean p1, v0, Landroidx/fragment/app/Fragment;->mIsNewlyAdded:Z

    goto :goto_6

    :cond_b
    iget-boolean p1, v0, Landroidx/fragment/app/Fragment;->mAdded:Z

    if-nez p1, :cond_c

    iget-boolean p1, v0, Landroidx/fragment/app/Fragment;->mHidden:Z

    if-nez p1, :cond_c

    :goto_5
    const/4 p1, 0x1

    goto :goto_6

    :cond_c
    const/4 p1, 0x0

    :goto_6
    move v2, p1

    const/4 p1, 0x0

    goto :goto_1

    :goto_7
    invoke-virtual {p2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, L㚬/㧦/㺴/ม$ℓ;

    if-eqz v2, :cond_d

    invoke-static {v5, p2, v1}, L㚬/㧦/㺴/ม;->ბ(L㚬/㧦/㺴/ม$ℓ;Landroid/util/SparseArray;I)L㚬/㧦/㺴/ม$ℓ;

    move-result-object v5

    iput-object v0, v5, L㚬/㧦/㺴/ม$ℓ;->உ:Landroidx/fragment/app/Fragment;

    iput-boolean p3, v5, L㚬/㧦/㺴/ม$ℓ;->䂻:Z

    iput-object p0, v5, L㚬/㧦/㺴/ม$ℓ;->㚬:L㚬/㧦/㺴/உ;

    :cond_d
    const/4 v2, 0x0

    if-nez p4, :cond_f

    if-eqz v3, :cond_f

    if-eqz v5, :cond_e

    iget-object v3, v5, L㚬/㧦/㺴/ม$ℓ;->㺴:Landroidx/fragment/app/Fragment;

    if-ne v3, v0, :cond_e

    iput-object v2, v5, L㚬/㧦/㺴/ม$ℓ;->㺴:Landroidx/fragment/app/Fragment;

    :cond_e
    iget-boolean v3, p0, L㚬/㧦/㺴/㢏;->ᓭ:Z

    if-nez v3, :cond_f

    iget-object v3, p0, L㚬/㧦/㺴/உ;->㲝:L㚬/㧦/㺴/ἥ;

    invoke-virtual {v3, v0}, L㚬/㧦/㺴/ἥ;->ม(Landroidx/fragment/app/Fragment;)L㚬/㧦/㺴/ḙ;

    move-result-object v6

    invoke-virtual {v3}, L㚬/㧦/㺴/ἥ;->ਬ()L㚬/㧦/㺴/㖪;

    move-result-object v7

    invoke-virtual {v7, v6}, L㚬/㧦/㺴/㖪;->ბ(L㚬/㧦/㺴/ḙ;)V

    invoke-virtual {v3, v0}, L㚬/㧦/㺴/ἥ;->䆋(Landroidx/fragment/app/Fragment;)V

    :cond_f
    if-eqz v4, :cond_11

    if-eqz v5, :cond_10

    iget-object v3, v5, L㚬/㧦/㺴/ม$ℓ;->㺴:Landroidx/fragment/app/Fragment;

    if-nez v3, :cond_11

    :cond_10
    invoke-static {v5, p2, v1}, L㚬/㧦/㺴/ม;->ბ(L㚬/㧦/㺴/ม$ℓ;Landroid/util/SparseArray;I)L㚬/㧦/㺴/ม$ℓ;

    move-result-object v5

    iput-object v0, v5, L㚬/㧦/㺴/ม$ℓ;->㺴:Landroidx/fragment/app/Fragment;

    iput-boolean p3, v5, L㚬/㧦/㺴/ม$ℓ;->ḓ:Z

    iput-object p0, v5, L㚬/㧦/㺴/ม$ℓ;->䆀:L㚬/㧦/㺴/உ;

    :cond_11
    if-nez p4, :cond_12

    if-eqz p1, :cond_12

    if-eqz v5, :cond_12

    iget-object p0, v5, L㚬/㧦/㺴/ม$ℓ;->உ:Landroidx/fragment/app/Fragment;

    if-ne p0, v0, :cond_12

    iput-object v2, v5, L㚬/㧦/㺴/ม$ℓ;->உ:Landroidx/fragment/app/Fragment;

    :cond_12
    return-void
.end method

.method public static 䆀(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;ZL㚬/䆀/உ;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/Fragment;",
            "Landroidx/fragment/app/Fragment;",
            "Z",
            "L\u36ac/\u4180/\u0b89<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;Z)V"
        }
    .end annotation

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getEnterTransitionCallback()L㚬/ℓ/㺴/ᆻ;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getEnterTransitionCallback()L㚬/ℓ/㺴/ᆻ;

    move-result-object p0

    :goto_0
    if-eqz p0, :cond_4

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    if-nez p3, :cond_1

    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    invoke-virtual {p3}, L㚬/䆀/ᆻ;->size()I

    move-result v1

    :goto_1
    if-ge v0, v1, :cond_2

    invoke-virtual {p3, v0}, L㚬/䆀/ᆻ;->ㄏ(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p3, v0}, L㚬/䆀/ᆻ;->ἥ(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    const/4 p3, 0x0

    if-eqz p4, :cond_3

    invoke-virtual {p0, p2, p1, p3}, L㚬/ℓ/㺴/ᆻ;->䆀(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    goto :goto_2

    :cond_3
    invoke-virtual {p0, p2, p1, p3}, L㚬/ℓ/㺴/ᆻ;->ḓ(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    :cond_4
    :goto_2
    return-void
.end method
