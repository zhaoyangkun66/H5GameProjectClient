.class public L㚬/㧦/㺴/㹖;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        L㚬/㧦/㺴/㹖$உ;
    }
.end annotation


# instance fields
.field public final உ:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "L\u36ac/\u39e6/\u3eb4/\u3e56$\u0b89;",
            ">;"
        }
    .end annotation
.end field

.field public final 䂻:L㚬/㧦/㺴/ἥ;


# direct methods
.method public constructor <init>(L㚬/㧦/㺴/ἥ;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, L㚬/㧦/㺴/㹖;->உ:Ljava/util/concurrent/CopyOnWriteArrayList;

    iput-object p1, p0, L㚬/㧦/㺴/㹖;->䂻:L㚬/㧦/㺴/ἥ;

    return-void
.end method


# virtual methods
.method public உ(Landroidx/fragment/app/Fragment;Landroid/os/Bundle;Z)V
    .locals 3

    iget-object v0, p0, L㚬/㧦/㺴/㹖;->䂻:L㚬/㧦/㺴/ἥ;

    invoke-virtual {v0}, L㚬/㧦/㺴/ἥ;->㱱()Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()L㚬/㧦/㺴/ἥ;

    move-result-object v0

    invoke-virtual {v0}, L㚬/㧦/㺴/ἥ;->ᙏ()L㚬/㧦/㺴/㹖;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, v1}, L㚬/㧦/㺴/㹖;->உ(Landroidx/fragment/app/Fragment;Landroid/os/Bundle;Z)V

    :cond_0
    iget-object v0, p0, L㚬/㧦/㺴/㹖;->உ:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, L㚬/㧦/㺴/㹖$உ;

    if-eqz p3, :cond_2

    iget-boolean v2, v1, L㚬/㧦/㺴/㹖$உ;->䂻:Z

    if-eqz v2, :cond_1

    :cond_2
    iget-object v1, v1, L㚬/㧦/㺴/㹖$உ;->உ:L㚬/㧦/㺴/ἥ$㹖;

    iget-object v2, p0, L㚬/㧦/㺴/㹖;->䂻:L㚬/㧦/㺴/ἥ;

    invoke-virtual {v1, v2, p1, p2}, L㚬/㧦/㺴/ἥ$㹖;->உ(L㚬/㧦/㺴/ἥ;Landroidx/fragment/app/Fragment;Landroid/os/Bundle;)V

    goto :goto_0

    :cond_3
    return-void
.end method

.method public ಫ(Landroidx/fragment/app/Fragment;Landroid/os/Bundle;Z)V
    .locals 3

    iget-object v0, p0, L㚬/㧦/㺴/㹖;->䂻:L㚬/㧦/㺴/ἥ;

    invoke-virtual {v0}, L㚬/㧦/㺴/ἥ;->㱱()Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()L㚬/㧦/㺴/ἥ;

    move-result-object v0

    invoke-virtual {v0}, L㚬/㧦/㺴/ἥ;->ᙏ()L㚬/㧦/㺴/㹖;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, v1}, L㚬/㧦/㺴/㹖;->ಫ(Landroidx/fragment/app/Fragment;Landroid/os/Bundle;Z)V

    :cond_0
    iget-object v0, p0, L㚬/㧦/㺴/㹖;->உ:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, L㚬/㧦/㺴/㹖$உ;

    if-eqz p3, :cond_2

    iget-boolean v2, v1, L㚬/㧦/㺴/㹖$உ;->䂻:Z

    if-eqz v2, :cond_1

    :cond_2
    iget-object v1, v1, L㚬/㧦/㺴/㹖$உ;->உ:L㚬/㧦/㺴/ἥ$㹖;

    iget-object v2, p0, L㚬/㧦/㺴/㹖;->䂻:L㚬/㧦/㺴/ἥ;

    invoke-virtual {v1, v2, p1, p2}, L㚬/㧦/㺴/ἥ$㹖;->ಫ(L㚬/㧦/㺴/ἥ;Landroidx/fragment/app/Fragment;Landroid/os/Bundle;)V

    goto :goto_0

    :cond_3
    return-void
.end method

.method public ཇ(Landroidx/fragment/app/Fragment;Z)V
    .locals 3

    iget-object v0, p0, L㚬/㧦/㺴/㹖;->䂻:L㚬/㧦/㺴/ἥ;

    invoke-virtual {v0}, L㚬/㧦/㺴/ἥ;->㱱()Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()L㚬/㧦/㺴/ἥ;

    move-result-object v0

    invoke-virtual {v0}, L㚬/㧦/㺴/ἥ;->ᙏ()L㚬/㧦/㺴/㹖;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, L㚬/㧦/㺴/㹖;->ཇ(Landroidx/fragment/app/Fragment;Z)V

    :cond_0
    iget-object v0, p0, L㚬/㧦/㺴/㹖;->உ:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, L㚬/㧦/㺴/㹖$உ;

    if-eqz p2, :cond_2

    iget-boolean v2, v1, L㚬/㧦/㺴/㹖$உ;->䂻:Z

    if-eqz v2, :cond_1

    :cond_2
    iget-object v1, v1, L㚬/㧦/㺴/㹖$உ;->உ:L㚬/㧦/㺴/ἥ$㹖;

    iget-object v2, p0, L㚬/㧦/㺴/㹖;->䂻:L㚬/㧦/㺴/ἥ;

    invoke-virtual {v1, v2, p1}, L㚬/㧦/㺴/ἥ$㹖;->ཇ(L㚬/㧦/㺴/ἥ;Landroidx/fragment/app/Fragment;)V

    goto :goto_0

    :cond_3
    return-void
.end method

.method public ᆻ(Landroidx/fragment/app/Fragment;Z)V
    .locals 4

    iget-object v0, p0, L㚬/㧦/㺴/㹖;->䂻:L㚬/㧦/㺴/ἥ;

    invoke-virtual {v0}, L㚬/㧦/㺴/ἥ;->ध()L㚬/㧦/㺴/ಫ;

    move-result-object v0

    invoke-virtual {v0}, L㚬/㧦/㺴/ಫ;->䆀()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, L㚬/㧦/㺴/㹖;->䂻:L㚬/㧦/㺴/ἥ;

    invoke-virtual {v1}, L㚬/㧦/㺴/ἥ;->㱱()Landroidx/fragment/app/Fragment;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()L㚬/㧦/㺴/ἥ;

    move-result-object v1

    invoke-virtual {v1}, L㚬/㧦/㺴/ἥ;->ᙏ()L㚬/㧦/㺴/㹖;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2}, L㚬/㧦/㺴/㹖;->ᆻ(Landroidx/fragment/app/Fragment;Z)V

    :cond_0
    iget-object v1, p0, L㚬/㧦/㺴/㹖;->உ:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, L㚬/㧦/㺴/㹖$உ;

    if-eqz p2, :cond_2

    iget-boolean v3, v2, L㚬/㧦/㺴/㹖$உ;->䂻:Z

    if-eqz v3, :cond_1

    :cond_2
    iget-object v2, v2, L㚬/㧦/㺴/㹖$உ;->உ:L㚬/㧦/㺴/ἥ$㹖;

    iget-object v3, p0, L㚬/㧦/㺴/㹖;->䂻:L㚬/㧦/㺴/ἥ;

    invoke-virtual {v2, v3, p1, v0}, L㚬/㧦/㺴/ἥ$㹖;->ᆻ(L㚬/㧦/㺴/ἥ;Landroidx/fragment/app/Fragment;Landroid/content/Context;)V

    goto :goto_0

    :cond_3
    return-void
.end method

.method public ḓ(Landroidx/fragment/app/Fragment;Z)V
    .locals 3

    iget-object v0, p0, L㚬/㧦/㺴/㹖;->䂻:L㚬/㧦/㺴/ἥ;

    invoke-virtual {v0}, L㚬/㧦/㺴/ἥ;->㱱()Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()L㚬/㧦/㺴/ἥ;

    move-result-object v0

    invoke-virtual {v0}, L㚬/㧦/㺴/ἥ;->ᙏ()L㚬/㧦/㺴/㹖;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, L㚬/㧦/㺴/㹖;->ḓ(Landroidx/fragment/app/Fragment;Z)V

    :cond_0
    iget-object v0, p0, L㚬/㧦/㺴/㹖;->உ:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, L㚬/㧦/㺴/㹖$உ;

    if-eqz p2, :cond_2

    iget-boolean v2, v1, L㚬/㧦/㺴/㹖$உ;->䂻:Z

    if-eqz v2, :cond_1

    :cond_2
    iget-object v1, v1, L㚬/㧦/㺴/㹖$உ;->உ:L㚬/㧦/㺴/ἥ$㹖;

    iget-object v2, p0, L㚬/㧦/㺴/㹖;->䂻:L㚬/㧦/㺴/ἥ;

    invoke-virtual {v1, v2, p1}, L㚬/㧦/㺴/ἥ$㹖;->ḓ(L㚬/㧦/㺴/ἥ;Landroidx/fragment/app/Fragment;)V

    goto :goto_0

    :cond_3
    return-void
.end method

.method public ἥ(Landroidx/fragment/app/Fragment;Landroid/view/View;Landroid/os/Bundle;Z)V
    .locals 3

    iget-object v0, p0, L㚬/㧦/㺴/㹖;->䂻:L㚬/㧦/㺴/ἥ;

    invoke-virtual {v0}, L㚬/㧦/㺴/ἥ;->㱱()Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()L㚬/㧦/㺴/ἥ;

    move-result-object v0

    invoke-virtual {v0}, L㚬/㧦/㺴/ἥ;->ᙏ()L㚬/㧦/㺴/㹖;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, p3, v1}, L㚬/㧦/㺴/㹖;->ἥ(Landroidx/fragment/app/Fragment;Landroid/view/View;Landroid/os/Bundle;Z)V

    :cond_0
    iget-object v0, p0, L㚬/㧦/㺴/㹖;->உ:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, L㚬/㧦/㺴/㹖$உ;

    if-eqz p4, :cond_2

    iget-boolean v2, v1, L㚬/㧦/㺴/㹖$உ;->䂻:Z

    if-eqz v2, :cond_1

    :cond_2
    iget-object v1, v1, L㚬/㧦/㺴/㹖$உ;->உ:L㚬/㧦/㺴/ἥ$㹖;

    iget-object v2, p0, L㚬/㧦/㺴/㹖;->䂻:L㚬/㧦/㺴/ἥ;

    invoke-virtual {v1, v2, p1, p2, p3}, L㚬/㧦/㺴/ἥ$㹖;->ἥ(L㚬/㧦/㺴/ἥ;Landroidx/fragment/app/Fragment;Landroid/view/View;Landroid/os/Bundle;)V

    goto :goto_0

    :cond_3
    return-void
.end method

.method public ℓ(Landroidx/fragment/app/Fragment;Landroid/os/Bundle;Z)V
    .locals 3

    iget-object v0, p0, L㚬/㧦/㺴/㹖;->䂻:L㚬/㧦/㺴/ἥ;

    invoke-virtual {v0}, L㚬/㧦/㺴/ἥ;->㱱()Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()L㚬/㧦/㺴/ἥ;

    move-result-object v0

    invoke-virtual {v0}, L㚬/㧦/㺴/ἥ;->ᙏ()L㚬/㧦/㺴/㹖;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, v1}, L㚬/㧦/㺴/㹖;->ℓ(Landroidx/fragment/app/Fragment;Landroid/os/Bundle;Z)V

    :cond_0
    iget-object v0, p0, L㚬/㧦/㺴/㹖;->உ:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, L㚬/㧦/㺴/㹖$உ;

    if-eqz p3, :cond_2

    iget-boolean v2, v1, L㚬/㧦/㺴/㹖$உ;->䂻:Z

    if-eqz v2, :cond_1

    :cond_2
    iget-object v1, v1, L㚬/㧦/㺴/㹖$உ;->உ:L㚬/㧦/㺴/ἥ$㹖;

    iget-object v2, p0, L㚬/㧦/㺴/㹖;->䂻:L㚬/㧦/㺴/ἥ;

    invoke-virtual {v1, v2, p1, p2}, L㚬/㧦/㺴/ἥ$㹖;->ℓ(L㚬/㧦/㺴/ἥ;Landroidx/fragment/app/Fragment;Landroid/os/Bundle;)V

    goto :goto_0

    :cond_3
    return-void
.end method

.method public ㄏ(Landroidx/fragment/app/Fragment;Z)V
    .locals 3

    iget-object v0, p0, L㚬/㧦/㺴/㹖;->䂻:L㚬/㧦/㺴/ἥ;

    invoke-virtual {v0}, L㚬/㧦/㺴/ἥ;->㱱()Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()L㚬/㧦/㺴/ἥ;

    move-result-object v0

    invoke-virtual {v0}, L㚬/㧦/㺴/ἥ;->ᙏ()L㚬/㧦/㺴/㹖;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, L㚬/㧦/㺴/㹖;->ㄏ(Landroidx/fragment/app/Fragment;Z)V

    :cond_0
    iget-object v0, p0, L㚬/㧦/㺴/㹖;->உ:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, L㚬/㧦/㺴/㹖$உ;

    if-eqz p2, :cond_2

    iget-boolean v2, v1, L㚬/㧦/㺴/㹖$உ;->䂻:Z

    if-eqz v2, :cond_1

    :cond_2
    iget-object v1, v1, L㚬/㧦/㺴/㹖$உ;->உ:L㚬/㧦/㺴/ἥ$㹖;

    iget-object v2, p0, L㚬/㧦/㺴/㹖;->䂻:L㚬/㧦/㺴/ἥ;

    invoke-virtual {v1, v2, p1}, L㚬/㧦/㺴/ἥ$㹖;->ㄏ(L㚬/㧦/㺴/ἥ;Landroidx/fragment/app/Fragment;)V

    goto :goto_0

    :cond_3
    return-void
.end method

.method public 㚬(Landroidx/fragment/app/Fragment;Landroid/os/Bundle;Z)V
    .locals 3

    iget-object v0, p0, L㚬/㧦/㺴/㹖;->䂻:L㚬/㧦/㺴/ἥ;

    invoke-virtual {v0}, L㚬/㧦/㺴/ἥ;->㱱()Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()L㚬/㧦/㺴/ἥ;

    move-result-object v0

    invoke-virtual {v0}, L㚬/㧦/㺴/ἥ;->ᙏ()L㚬/㧦/㺴/㹖;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, v1}, L㚬/㧦/㺴/㹖;->㚬(Landroidx/fragment/app/Fragment;Landroid/os/Bundle;Z)V

    :cond_0
    iget-object v0, p0, L㚬/㧦/㺴/㹖;->உ:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, L㚬/㧦/㺴/㹖$உ;

    if-eqz p3, :cond_2

    iget-boolean v2, v1, L㚬/㧦/㺴/㹖$உ;->䂻:Z

    if-eqz v2, :cond_1

    :cond_2
    iget-object v1, v1, L㚬/㧦/㺴/㹖$உ;->உ:L㚬/㧦/㺴/ἥ$㹖;

    iget-object v2, p0, L㚬/㧦/㺴/㹖;->䂻:L㚬/㧦/㺴/ἥ;

    invoke-virtual {v1, v2, p1, p2}, L㚬/㧦/㺴/ἥ$㹖;->㚬(L㚬/㧦/㺴/ἥ;Landroidx/fragment/app/Fragment;Landroid/os/Bundle;)V

    goto :goto_0

    :cond_3
    return-void
.end method

.method public 㧦(Landroidx/fragment/app/Fragment;Z)V
    .locals 3

    iget-object v0, p0, L㚬/㧦/㺴/㹖;->䂻:L㚬/㧦/㺴/ἥ;

    invoke-virtual {v0}, L㚬/㧦/㺴/ἥ;->㱱()Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()L㚬/㧦/㺴/ἥ;

    move-result-object v0

    invoke-virtual {v0}, L㚬/㧦/㺴/ἥ;->ᙏ()L㚬/㧦/㺴/㹖;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, L㚬/㧦/㺴/㹖;->㧦(Landroidx/fragment/app/Fragment;Z)V

    :cond_0
    iget-object v0, p0, L㚬/㧦/㺴/㹖;->உ:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, L㚬/㧦/㺴/㹖$உ;

    if-eqz p2, :cond_2

    iget-boolean v2, v1, L㚬/㧦/㺴/㹖$உ;->䂻:Z

    if-eqz v2, :cond_1

    :cond_2
    iget-object v1, v1, L㚬/㧦/㺴/㹖$உ;->உ:L㚬/㧦/㺴/ἥ$㹖;

    iget-object v2, p0, L㚬/㧦/㺴/㹖;->䂻:L㚬/㧦/㺴/ἥ;

    invoke-virtual {v1, v2, p1}, L㚬/㧦/㺴/ἥ$㹖;->㧦(L㚬/㧦/㺴/ἥ;Landroidx/fragment/app/Fragment;)V

    goto :goto_0

    :cond_3
    return-void
.end method

.method public 㹖(Landroidx/fragment/app/Fragment;Z)V
    .locals 3

    iget-object v0, p0, L㚬/㧦/㺴/㹖;->䂻:L㚬/㧦/㺴/ἥ;

    invoke-virtual {v0}, L㚬/㧦/㺴/ἥ;->㱱()Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()L㚬/㧦/㺴/ἥ;

    move-result-object v0

    invoke-virtual {v0}, L㚬/㧦/㺴/ἥ;->ᙏ()L㚬/㧦/㺴/㹖;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, L㚬/㧦/㺴/㹖;->㹖(Landroidx/fragment/app/Fragment;Z)V

    :cond_0
    iget-object v0, p0, L㚬/㧦/㺴/㹖;->உ:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, L㚬/㧦/㺴/㹖$உ;

    if-eqz p2, :cond_2

    iget-boolean v2, v1, L㚬/㧦/㺴/㹖$உ;->䂻:Z

    if-eqz v2, :cond_1

    :cond_2
    iget-object v1, v1, L㚬/㧦/㺴/㹖$உ;->உ:L㚬/㧦/㺴/ἥ$㹖;

    iget-object v2, p0, L㚬/㧦/㺴/㹖;->䂻:L㚬/㧦/㺴/ἥ;

    invoke-virtual {v1, v2, p1}, L㚬/㧦/㺴/ἥ$㹖;->㹖(L㚬/㧦/㺴/ἥ;Landroidx/fragment/app/Fragment;)V

    goto :goto_0

    :cond_3
    return-void
.end method

.method public 㺴(Landroidx/fragment/app/Fragment;Z)V
    .locals 3

    iget-object v0, p0, L㚬/㧦/㺴/㹖;->䂻:L㚬/㧦/㺴/ἥ;

    invoke-virtual {v0}, L㚬/㧦/㺴/ἥ;->㱱()Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()L㚬/㧦/㺴/ἥ;

    move-result-object v0

    invoke-virtual {v0}, L㚬/㧦/㺴/ἥ;->ᙏ()L㚬/㧦/㺴/㹖;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, L㚬/㧦/㺴/㹖;->㺴(Landroidx/fragment/app/Fragment;Z)V

    :cond_0
    iget-object v0, p0, L㚬/㧦/㺴/㹖;->உ:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, L㚬/㧦/㺴/㹖$உ;

    if-eqz p2, :cond_2

    iget-boolean v2, v1, L㚬/㧦/㺴/㹖$உ;->䂻:Z

    if-eqz v2, :cond_1

    :cond_2
    iget-object v1, v1, L㚬/㧦/㺴/㹖$உ;->உ:L㚬/㧦/㺴/ἥ$㹖;

    iget-object v2, p0, L㚬/㧦/㺴/㹖;->䂻:L㚬/㧦/㺴/ἥ;

    invoke-virtual {v1, v2, p1}, L㚬/㧦/㺴/ἥ$㹖;->㺴(L㚬/㧦/㺴/ἥ;Landroidx/fragment/app/Fragment;)V

    goto :goto_0

    :cond_3
    return-void
.end method

.method public 䂻(Landroidx/fragment/app/Fragment;Z)V
    .locals 4

    iget-object v0, p0, L㚬/㧦/㺴/㹖;->䂻:L㚬/㧦/㺴/ἥ;

    invoke-virtual {v0}, L㚬/㧦/㺴/ἥ;->ध()L㚬/㧦/㺴/ಫ;

    move-result-object v0

    invoke-virtual {v0}, L㚬/㧦/㺴/ಫ;->䆀()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, L㚬/㧦/㺴/㹖;->䂻:L㚬/㧦/㺴/ἥ;

    invoke-virtual {v1}, L㚬/㧦/㺴/ἥ;->㱱()Landroidx/fragment/app/Fragment;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()L㚬/㧦/㺴/ἥ;

    move-result-object v1

    invoke-virtual {v1}, L㚬/㧦/㺴/ἥ;->ᙏ()L㚬/㧦/㺴/㹖;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2}, L㚬/㧦/㺴/㹖;->䂻(Landroidx/fragment/app/Fragment;Z)V

    :cond_0
    iget-object v1, p0, L㚬/㧦/㺴/㹖;->உ:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, L㚬/㧦/㺴/㹖$உ;

    if-eqz p2, :cond_2

    iget-boolean v3, v2, L㚬/㧦/㺴/㹖$உ;->䂻:Z

    if-eqz v3, :cond_1

    :cond_2
    iget-object v2, v2, L㚬/㧦/㺴/㹖$உ;->உ:L㚬/㧦/㺴/ἥ$㹖;

    iget-object v3, p0, L㚬/㧦/㺴/㹖;->䂻:L㚬/㧦/㺴/ἥ;

    invoke-virtual {v2, v3, p1, v0}, L㚬/㧦/㺴/ἥ$㹖;->䂻(L㚬/㧦/㺴/ἥ;Landroidx/fragment/app/Fragment;Landroid/content/Context;)V

    goto :goto_0

    :cond_3
    return-void
.end method

.method public 䆀(Landroidx/fragment/app/Fragment;Z)V
    .locals 3

    iget-object v0, p0, L㚬/㧦/㺴/㹖;->䂻:L㚬/㧦/㺴/ἥ;

    invoke-virtual {v0}, L㚬/㧦/㺴/ἥ;->㱱()Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()L㚬/㧦/㺴/ἥ;

    move-result-object v0

    invoke-virtual {v0}, L㚬/㧦/㺴/ἥ;->ᙏ()L㚬/㧦/㺴/㹖;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, L㚬/㧦/㺴/㹖;->䆀(Landroidx/fragment/app/Fragment;Z)V

    :cond_0
    iget-object v0, p0, L㚬/㧦/㺴/㹖;->உ:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, L㚬/㧦/㺴/㹖$உ;

    if-eqz p2, :cond_2

    iget-boolean v2, v1, L㚬/㧦/㺴/㹖$உ;->䂻:Z

    if-eqz v2, :cond_1

    :cond_2
    iget-object v1, v1, L㚬/㧦/㺴/㹖$உ;->உ:L㚬/㧦/㺴/ἥ$㹖;

    iget-object v2, p0, L㚬/㧦/㺴/㹖;->䂻:L㚬/㧦/㺴/ἥ;

    invoke-virtual {v1, v2, p1}, L㚬/㧦/㺴/ἥ$㹖;->䆀(L㚬/㧦/㺴/ἥ;Landroidx/fragment/app/Fragment;)V

    goto :goto_0

    :cond_3
    return-void
.end method
