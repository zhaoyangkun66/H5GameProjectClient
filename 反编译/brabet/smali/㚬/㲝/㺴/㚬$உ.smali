.class public L㚬/㲝/㺴/㚬$உ;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = L㚬/㲝/㺴/㚬;->㖪()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic 㚬:L㚬/㲝/㺴/㚬;

.field public final synthetic 䂻:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(L㚬/㲝/㺴/㚬;Ljava/util/ArrayList;)V
    .locals 0

    iput-object p1, p0, L㚬/㲝/㺴/㚬$உ;->㚬:L㚬/㲝/㺴/㚬;

    iput-object p2, p0, L㚬/㲝/㺴/㚬$உ;->䂻:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    iget-object v0, p0, L㚬/㲝/㺴/㚬$உ;->䂻:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, L㚬/㲝/㺴/㚬$ಫ;

    iget-object v2, p0, L㚬/㲝/㺴/㚬$உ;->㚬:L㚬/㲝/㺴/㚬;

    iget-object v3, v1, L㚬/㲝/㺴/㚬$ಫ;->உ:Landroidx/recyclerview/widget/RecyclerView$㰫;

    iget v4, v1, L㚬/㲝/㺴/㚬$ಫ;->䂻:I

    iget v5, v1, L㚬/㲝/㺴/㚬$ಫ;->㚬:I

    iget v6, v1, L㚬/㲝/㺴/㚬$ಫ;->㺴:I

    iget v7, v1, L㚬/㲝/㺴/㚬$ಫ;->ḓ:I

    invoke-virtual/range {v2 .. v7}, L㚬/㲝/㺴/㚬;->ⵦ(Landroidx/recyclerview/widget/RecyclerView$㰫;IIII)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, L㚬/㲝/㺴/㚬$உ;->䂻:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, L㚬/㲝/㺴/㚬$உ;->㚬:L㚬/㲝/㺴/㚬;

    iget-object v0, v0, L㚬/㲝/㺴/㚬;->ἥ:Ljava/util/ArrayList;

    iget-object v1, p0, L㚬/㲝/㺴/㚬$உ;->䂻:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method
