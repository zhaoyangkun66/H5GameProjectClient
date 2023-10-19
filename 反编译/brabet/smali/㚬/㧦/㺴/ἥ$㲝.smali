.class public L㚬/㧦/㺴/ἥ$㲝;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroidx/fragment/app/Fragment$㹖;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = L㚬/㧦/㺴/ἥ;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "\u3c9d"
.end annotation


# instance fields
.field public final உ:Z

.field public 㚬:I

.field public final 䂻:L㚬/㧦/㺴/உ;


# direct methods
.method public constructor <init>(L㚬/㧦/㺴/உ;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p2, p0, L㚬/㧦/㺴/ἥ$㲝;->உ:Z

    iput-object p1, p0, L㚬/㧦/㺴/ἥ$㲝;->䂻:L㚬/㧦/㺴/உ;

    return-void
.end method


# virtual methods
.method public உ()V
    .locals 1

    iget v0, p0, L㚬/㧦/㺴/ἥ$㲝;->㚬:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, L㚬/㧦/㺴/ἥ$㲝;->㚬:I

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, L㚬/㧦/㺴/ἥ$㲝;->䂻:L㚬/㧦/㺴/உ;

    iget-object v0, v0, L㚬/㧦/㺴/உ;->㲝:L㚬/㧦/㺴/ἥ;

    invoke-virtual {v0}, L㚬/㧦/㺴/ἥ;->ጘ()V

    return-void
.end method

.method public ḓ()Z
    .locals 1

    iget v0, p0, L㚬/㧦/㺴/ἥ$㲝;->㚬:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public 㚬()V
    .locals 4

    iget-object v0, p0, L㚬/㧦/㺴/ἥ$㲝;->䂻:L㚬/㧦/㺴/உ;

    iget-object v1, v0, L㚬/㧦/㺴/உ;->㲝:L㚬/㧦/㺴/ἥ;

    iget-boolean v2, p0, L㚬/㧦/㺴/ἥ$㲝;->உ:Z

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3, v3}, L㚬/㧦/㺴/ἥ;->㖪(L㚬/㧦/㺴/உ;ZZZ)V

    return-void
.end method

.method public 㺴()V
    .locals 5

    iget v0, p0, L㚬/㧦/㺴/ἥ$㲝;->㚬:I

    const/4 v1, 0x1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, L㚬/㧦/㺴/ἥ$㲝;->䂻:L㚬/㧦/㺴/உ;

    iget-object v2, v2, L㚬/㧦/㺴/உ;->㲝:L㚬/㧦/㺴/ἥ;

    invoke-virtual {v2}, L㚬/㧦/㺴/ἥ;->Ꭿ()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/fragment/app/Fragment;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroidx/fragment/app/Fragment;->setOnStartEnterTransitionListener(Landroidx/fragment/app/Fragment$㹖;)V

    if-eqz v0, :cond_1

    invoke-virtual {v3}, Landroidx/fragment/app/Fragment;->isPostponed()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v3}, Landroidx/fragment/app/Fragment;->startPostponedEnterTransition()V

    goto :goto_1

    :cond_2
    iget-object v2, p0, L㚬/㧦/㺴/ἥ$㲝;->䂻:L㚬/㧦/㺴/உ;

    iget-object v3, v2, L㚬/㧦/㺴/உ;->㲝:L㚬/㧦/㺴/ἥ;

    iget-boolean v4, p0, L㚬/㧦/㺴/ἥ$㲝;->உ:Z

    xor-int/2addr v0, v1

    invoke-virtual {v3, v2, v4, v0, v1}, L㚬/㧦/㺴/ἥ;->㖪(L㚬/㧦/㺴/உ;ZZZ)V

    return-void
.end method

.method public 䂻()V
    .locals 1

    iget v0, p0, L㚬/㧦/㺴/ἥ$㲝;->㚬:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, L㚬/㧦/㺴/ἥ$㲝;->㚬:I

    return-void
.end method
