.class public L㚬/ℓ/ἥ/㧦;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public உ:Landroid/view/ViewParent;

.field public ḓ:[I

.field public final 㚬:Landroid/view/View;

.field public 㺴:Z

.field public 䂻:Landroid/view/ViewParent;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, L㚬/ℓ/ἥ/㧦;->㚬:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public உ(FFZ)Z
    .locals 2

    invoke-virtual {p0}, L㚬/ℓ/ἥ/㧦;->ἥ()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v1}, L㚬/ℓ/ἥ/㧦;->ㄏ(I)Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, L㚬/ℓ/ἥ/㧦;->㚬:Landroid/view/View;

    invoke-static {v0, v1, p1, p2, p3}, L㚬/ℓ/ἥ/㢏;->உ(Landroid/view/ViewParent;Landroid/view/View;FFZ)Z

    move-result p1

    return p1

    :cond_0
    return v1
.end method

.method public final ಫ()[I
    .locals 1

    iget-object v0, p0, L㚬/ℓ/ἥ/㧦;->ḓ:[I

    if-nez v0, :cond_0

    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, L㚬/ℓ/ἥ/㧦;->ḓ:[I

    :cond_0
    iget-object v0, p0, L㚬/ℓ/ἥ/㧦;->ḓ:[I

    return-object v0
.end method

.method public ཇ(Z)V
    .locals 1

    iget-boolean v0, p0, L㚬/ℓ/ἥ/㧦;->㺴:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, L㚬/ℓ/ἥ/㧦;->㚬:Landroid/view/View;

    invoke-static {v0}, L㚬/ℓ/ἥ/㭲;->Ꭿ(Landroid/view/View;)V

    :cond_0
    iput-boolean p1, p0, L㚬/ℓ/ἥ/㧦;->㺴:Z

    return-void
.end method

.method public ბ(I)Z
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, L㚬/ℓ/ἥ/㧦;->㲝(II)Z

    move-result p1

    return p1
.end method

.method public ᆻ(IIII[II)Z
    .locals 8

    const/4 v7, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v7}, L㚬/ℓ/ἥ/㧦;->ℓ(IIII[II[I)Z

    move-result p1

    return p1
.end method

.method public final ᓭ(ILandroid/view/ViewParent;)V
    .locals 1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iput-object p2, p0, L㚬/ℓ/ἥ/㧦;->䂻:Landroid/view/ViewParent;

    goto :goto_0

    :cond_1
    iput-object p2, p0, L㚬/ℓ/ἥ/㧦;->உ:Landroid/view/ViewParent;

    :goto_0
    return-void
.end method

.method public ḓ(IIII[II[I)V
    .locals 0

    invoke-virtual/range {p0 .. p7}, L㚬/ℓ/ἥ/㧦;->ℓ(IIII[II[I)Z

    return-void
.end method

.method public ἥ()Z
    .locals 1

    iget-boolean v0, p0, L㚬/ℓ/ἥ/㧦;->㺴:Z

    return v0
.end method

.method public final ℓ(IIII[II[I)Z
    .locals 15

    move-object v0, p0

    move-object/from16 v1, p5

    invoke-virtual {p0}, L㚬/ℓ/ἥ/㧦;->ἥ()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_6

    move/from16 v2, p6

    invoke-virtual {p0, v2}, L㚬/ℓ/ἥ/㧦;->ㄏ(I)Landroid/view/ViewParent;

    move-result-object v4

    if-nez v4, :cond_0

    return v3

    :cond_0
    const/4 v12, 0x1

    if-nez p1, :cond_2

    if-nez p2, :cond_2

    if-nez p3, :cond_2

    if-eqz p4, :cond_1

    goto :goto_0

    :cond_1
    if-eqz v1, :cond_6

    aput v3, v1, v3

    aput v3, v1, v12

    goto :goto_3

    :cond_2
    :goto_0
    if-eqz v1, :cond_3

    iget-object v5, v0, L㚬/ℓ/ἥ/㧦;->㚬:Landroid/view/View;

    invoke-virtual {v5, v1}, Landroid/view/View;->getLocationInWindow([I)V

    aget v5, v1, v3

    aget v6, v1, v12

    move v13, v5

    move v14, v6

    goto :goto_1

    :cond_3
    const/4 v13, 0x0

    const/4 v14, 0x0

    :goto_1
    if-nez p7, :cond_4

    invoke-virtual {p0}, L㚬/ℓ/ἥ/㧦;->ಫ()[I

    move-result-object v5

    aput v3, v5, v3

    aput v3, v5, v12

    move-object v11, v5

    goto :goto_2

    :cond_4
    move-object/from16 v11, p7

    :goto_2
    iget-object v5, v0, L㚬/ℓ/ἥ/㧦;->㚬:Landroid/view/View;

    move/from16 v6, p1

    move/from16 v7, p2

    move/from16 v8, p3

    move/from16 v9, p4

    move/from16 v10, p6

    invoke-static/range {v4 .. v11}, L㚬/ℓ/ἥ/㢏;->㺴(Landroid/view/ViewParent;Landroid/view/View;IIIII[I)V

    if-eqz v1, :cond_5

    iget-object v2, v0, L㚬/ℓ/ἥ/㧦;->㚬:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->getLocationInWindow([I)V

    aget v2, v1, v3

    sub-int/2addr v2, v13

    aput v2, v1, v3

    aget v2, v1, v12

    sub-int/2addr v2, v14

    aput v2, v1, v12

    :cond_5
    return v12

    :cond_6
    :goto_3
    return v3
.end method

.method public final ㄏ(I)Landroid/view/ViewParent;
    .locals 1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    iget-object p1, p0, L㚬/ℓ/ἥ/㧦;->䂻:Landroid/view/ViewParent;

    return-object p1

    :cond_1
    iget-object p1, p0, L㚬/ℓ/ἥ/㧦;->உ:Landroid/view/ViewParent;

    return-object p1
.end method

.method public 㚬(II[I[I)Z
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, L㚬/ℓ/ἥ/㧦;->㺴(II[I[II)Z

    move-result p1

    return p1
.end method

.method public 㞘()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, L㚬/ℓ/ἥ/㧦;->㭲(I)V

    return-void
.end method

.method public 㧦()Z
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, L㚬/ℓ/ἥ/㧦;->㹖(I)Z

    move-result v0

    return v0
.end method

.method public 㭲(I)V
    .locals 2

    invoke-virtual {p0, p1}, L㚬/ℓ/ἥ/㧦;->ㄏ(I)Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, L㚬/ℓ/ἥ/㧦;->㚬:Landroid/view/View;

    invoke-static {v0, v1, p1}, L㚬/ℓ/ἥ/㢏;->ᆻ(Landroid/view/ViewParent;Landroid/view/View;I)V

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, L㚬/ℓ/ἥ/㧦;->ᓭ(ILandroid/view/ViewParent;)V

    :cond_0
    return-void
.end method

.method public 㲝(II)Z
    .locals 4

    invoke-virtual {p0, p2}, L㚬/ℓ/ἥ/㧦;->㹖(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, L㚬/ℓ/ἥ/㧦;->ἥ()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, L㚬/ℓ/ἥ/㧦;->㚬:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    iget-object v2, p0, L㚬/ℓ/ἥ/㧦;->㚬:Landroid/view/View;

    :goto_0
    if-eqz v0, :cond_3

    iget-object v3, p0, L㚬/ℓ/ἥ/㧦;->㚬:Landroid/view/View;

    invoke-static {v0, v2, v3, p1, p2}, L㚬/ℓ/ἥ/㢏;->䆀(Landroid/view/ViewParent;Landroid/view/View;Landroid/view/View;II)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p0, p2, v0}, L㚬/ℓ/ἥ/㧦;->ᓭ(ILandroid/view/ViewParent;)V

    iget-object v3, p0, L㚬/ℓ/ἥ/㧦;->㚬:Landroid/view/View;

    invoke-static {v0, v2, v3, p1, p2}, L㚬/ℓ/ἥ/㢏;->ḓ(Landroid/view/ViewParent;Landroid/view/View;Landroid/view/View;II)V

    return v1

    :cond_1
    instance-of v3, v0, Landroid/view/View;

    if-eqz v3, :cond_2

    move-object v2, v0

    check-cast v2, Landroid/view/View;

    :cond_2
    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    return p1
.end method

.method public 㹖(I)Z
    .locals 0

    invoke-virtual {p0, p1}, L㚬/ℓ/ἥ/㧦;->ㄏ(I)Landroid/view/ViewParent;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public 㺴(II[I[II)Z
    .locals 10

    invoke-virtual {p0}, L㚬/ℓ/ἥ/㧦;->ἥ()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_7

    invoke-virtual {p0, p5}, L㚬/ℓ/ἥ/㧦;->ㄏ(I)Landroid/view/ViewParent;

    move-result-object v2

    if-nez v2, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x1

    if-nez p1, :cond_2

    if-eqz p2, :cond_1

    goto :goto_0

    :cond_1
    if-eqz p4, :cond_7

    aput v1, p4, v1

    aput v1, p4, v0

    goto :goto_2

    :cond_2
    :goto_0
    if-eqz p4, :cond_3

    iget-object v3, p0, L㚬/ℓ/ἥ/㧦;->㚬:Landroid/view/View;

    invoke-virtual {v3, p4}, Landroid/view/View;->getLocationInWindow([I)V

    aget v3, p4, v1

    aget v4, p4, v0

    move v8, v3

    move v9, v4

    goto :goto_1

    :cond_3
    const/4 v8, 0x0

    const/4 v9, 0x0

    :goto_1
    if-nez p3, :cond_4

    invoke-virtual {p0}, L㚬/ℓ/ἥ/㧦;->ಫ()[I

    move-result-object p3

    :cond_4
    aput v1, p3, v1

    aput v1, p3, v0

    iget-object v3, p0, L㚬/ℓ/ἥ/㧦;->㚬:Landroid/view/View;

    move v4, p1

    move v5, p2

    move-object v6, p3

    move v7, p5

    invoke-static/range {v2 .. v7}, L㚬/ℓ/ἥ/㢏;->㚬(Landroid/view/ViewParent;Landroid/view/View;II[II)V

    if-eqz p4, :cond_5

    iget-object p1, p0, L㚬/ℓ/ἥ/㧦;->㚬:Landroid/view/View;

    invoke-virtual {p1, p4}, Landroid/view/View;->getLocationInWindow([I)V

    aget p1, p4, v1

    sub-int/2addr p1, v8

    aput p1, p4, v1

    aget p1, p4, v0

    sub-int/2addr p1, v9

    aput p1, p4, v0

    :cond_5
    aget p1, p3, v1

    if-nez p1, :cond_6

    aget p1, p3, v0

    if-eqz p1, :cond_7

    :cond_6
    const/4 v1, 0x1

    :cond_7
    :goto_2
    return v1
.end method

.method public 䂻(FF)Z
    .locals 2

    invoke-virtual {p0}, L㚬/ℓ/ἥ/㧦;->ἥ()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v1}, L㚬/ℓ/ἥ/㧦;->ㄏ(I)Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, L㚬/ℓ/ἥ/㧦;->㚬:Landroid/view/View;

    invoke-static {v0, v1, p1, p2}, L㚬/ℓ/ἥ/㢏;->䂻(Landroid/view/ViewParent;Landroid/view/View;FF)Z

    move-result p1

    return p1

    :cond_0
    return v1
.end method

.method public 䆀(IIII[I)Z
    .locals 8

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v7}, L㚬/ℓ/ἥ/㧦;->ℓ(IIII[II[I)Z

    move-result p1

    return p1
.end method
