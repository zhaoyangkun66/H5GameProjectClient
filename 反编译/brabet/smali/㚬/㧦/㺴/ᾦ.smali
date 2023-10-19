.class public abstract L㚬/㧦/㺴/ᾦ;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        L㚬/㧦/㺴/ᾦ$㺴;,
        L㚬/㧦/㺴/ᾦ$ḓ;
    }
.end annotation


# instance fields
.field public final உ:Landroid/view/ViewGroup;

.field public ḓ:Z

.field public final 㚬:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "L\u36ac/\u39e6/\u3eb4/\u1fa6$\u1e13;",
            ">;"
        }
    .end annotation
.end field

.field public 㺴:Z

.field public final 䂻:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "L\u36ac/\u39e6/\u3eb4/\u1fa6$\u1e13;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, L㚬/㧦/㺴/ᾦ;->䂻:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, L㚬/㧦/㺴/ᾦ;->㚬:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-boolean v0, p0, L㚬/㧦/㺴/ᾦ;->㺴:Z

    iput-boolean v0, p0, L㚬/㧦/㺴/ᾦ;->ḓ:Z

    iput-object p1, p0, L㚬/㧦/㺴/ᾦ;->உ:Landroid/view/ViewGroup;

    return-void
.end method

.method public static ཇ(Landroid/view/ViewGroup;L㚬/㧦/㺴/ἥ;)L㚬/㧦/㺴/ᾦ;
    .locals 0

    invoke-virtual {p1}, L㚬/㧦/㺴/ἥ;->ᗫ()L㚬/㧦/㺴/ڈ;

    move-result-object p1

    invoke-static {p0, p1}, L㚬/㧦/㺴/ᾦ;->ᓭ(Landroid/view/ViewGroup;L㚬/㧦/㺴/ڈ;)L㚬/㧦/㺴/ᾦ;

    move-result-object p0

    return-object p0
.end method

.method public static ᓭ(Landroid/view/ViewGroup;L㚬/㧦/㺴/ڈ;)L㚬/㧦/㺴/ᾦ;
    .locals 3

    sget v0, L㚬/㧦/䂻;->䂻:I

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, L㚬/㧦/㺴/ᾦ;

    if-eqz v2, :cond_0

    check-cast v1, L㚬/㧦/㺴/ᾦ;

    return-object v1

    :cond_0
    invoke-interface {p1, p0}, L㚬/㧦/㺴/ڈ;->உ(Landroid/view/ViewGroup;)L㚬/㧦/㺴/ᾦ;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroid/view/ViewGroup;->setTag(ILjava/lang/Object;)V

    return-object p1
.end method


# virtual methods
.method public final உ(L㚬/㧦/㺴/ᾦ$ḓ$㚬;L㚬/㧦/㺴/ᾦ$ḓ$䂻;L㚬/㧦/㺴/ḙ;)V
    .locals 3

    iget-object v0, p0, L㚬/㧦/㺴/ᾦ;->䂻:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    new-instance v1, L㚬/ℓ/ㄏ/உ;

    invoke-direct {v1}, L㚬/ℓ/ㄏ/உ;-><init>()V

    invoke-virtual {p3}, L㚬/㧦/㺴/ḙ;->㧦()Landroidx/fragment/app/Fragment;

    move-result-object v2

    invoke-virtual {p0, v2}, L㚬/㧦/㺴/ᾦ;->ℓ(Landroidx/fragment/app/Fragment;)L㚬/㧦/㺴/ᾦ$ḓ;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2, p1, p2}, L㚬/㧦/㺴/ᾦ$ḓ;->㧦(L㚬/㧦/㺴/ᾦ$ḓ$㚬;L㚬/㧦/㺴/ᾦ$ḓ$䂻;)V

    monitor-exit v0

    return-void

    :cond_0
    new-instance v2, L㚬/㧦/㺴/ᾦ$㺴;

    invoke-direct {v2, p1, p2, p3, v1}, L㚬/㧦/㺴/ᾦ$㺴;-><init>(L㚬/㧦/㺴/ᾦ$ḓ$㚬;L㚬/㧦/㺴/ᾦ$ḓ$䂻;L㚬/㧦/㺴/ḙ;L㚬/ℓ/ㄏ/உ;)V

    iget-object p1, p0, L㚬/㧦/㺴/ᾦ;->䂻:Ljava/util/ArrayList;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p1, L㚬/㧦/㺴/ᾦ$உ;

    invoke-direct {p1, p0, v2}, L㚬/㧦/㺴/ᾦ$உ;-><init>(L㚬/㧦/㺴/ᾦ;L㚬/㧦/㺴/ᾦ$㺴;)V

    invoke-virtual {v2, p1}, L㚬/㧦/㺴/ᾦ$ḓ;->உ(Ljava/lang/Runnable;)V

    new-instance p1, L㚬/㧦/㺴/ᾦ$䂻;

    invoke-direct {p1, p0, v2}, L㚬/㧦/㺴/ᾦ$䂻;-><init>(L㚬/㧦/㺴/ᾦ;L㚬/㧦/㺴/ᾦ$㺴;)V

    invoke-virtual {v2, p1}, L㚬/㧦/㺴/ᾦ$ḓ;->உ(Ljava/lang/Runnable;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public ಫ()V
    .locals 9

    iget-object v0, p0, L㚬/㧦/㺴/ᾦ;->உ:Landroid/view/ViewGroup;

    invoke-static {v0}, L㚬/ℓ/ἥ/㭲;->ർ(Landroid/view/View;)Z

    move-result v0

    iget-object v1, p0, L㚬/㧦/㺴/ᾦ;->䂻:Ljava/util/ArrayList;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p0}, L㚬/㧦/㺴/ᾦ;->㲝()V

    iget-object v2, p0, L㚬/㧦/㺴/ᾦ;->䂻:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, L㚬/㧦/㺴/ᾦ$ḓ;

    invoke-virtual {v3}, L㚬/㧦/㺴/ᾦ$ḓ;->㹖()V

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, L㚬/㧦/㺴/ᾦ;->㚬:Ljava/util/ArrayList;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x2

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, L㚬/㧦/㺴/ᾦ$ḓ;

    invoke-static {v4}, L㚬/㧦/㺴/ἥ;->ፖ(I)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v4, "FragmentManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SpecialEffectsController: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_1

    const-string v6, ""

    goto :goto_2

    :cond_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Container "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, L㚬/㧦/㺴/ᾦ;->உ:Landroid/view/ViewGroup;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " is not attached to window. "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    :goto_2
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "Cancelling running operation "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    invoke-virtual {v3}, L㚬/㧦/㺴/ᾦ$ḓ;->䂻()V

    goto :goto_1

    :cond_3
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, L㚬/㧦/㺴/ᾦ;->䂻:Ljava/util/ArrayList;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, L㚬/㧦/㺴/ᾦ$ḓ;

    invoke-static {v4}, L㚬/㧦/㺴/ἥ;->ፖ(I)Z

    move-result v5

    if-eqz v5, :cond_5

    const-string v5, "FragmentManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SpecialEffectsController: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_4

    const-string v7, ""

    goto :goto_4

    :cond_4
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Container "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, L㚬/㧦/㺴/ᾦ;->உ:Landroid/view/ViewGroup;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " is not attached to window. "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    :goto_4
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "Cancelling pending operation "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    invoke-virtual {v3}, L㚬/㧦/㺴/ᾦ$ḓ;->䂻()V

    goto :goto_3

    :cond_6
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public ბ()V
    .locals 6

    iget-object v0, p0, L㚬/㧦/㺴/ᾦ;->䂻:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, L㚬/㧦/㺴/ᾦ;->㲝()V

    const/4 v1, 0x0

    iput-boolean v1, p0, L㚬/㧦/㺴/ᾦ;->ḓ:Z

    iget-object v1, p0, L㚬/㧦/㺴/ᾦ;->䂻:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_1

    iget-object v2, p0, L㚬/㧦/㺴/ᾦ;->䂻:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, L㚬/㧦/㺴/ᾦ$ḓ;

    invoke-virtual {v2}, L㚬/㧦/㺴/ᾦ$ḓ;->䆀()Landroidx/fragment/app/Fragment;

    move-result-object v3

    iget-object v3, v3, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    invoke-static {v3}, L㚬/㧦/㺴/ᾦ$ḓ$㚬;->㚬(Landroid/view/View;)L㚬/㧦/㺴/ᾦ$ḓ$㚬;

    move-result-object v3

    invoke-virtual {v2}, L㚬/㧦/㺴/ᾦ$ḓ;->ḓ()L㚬/㧦/㺴/ᾦ$ḓ$㚬;

    move-result-object v4

    sget-object v5, L㚬/㧦/㺴/ᾦ$ḓ$㚬;->㚬:L㚬/㧦/㺴/ᾦ$ḓ$㚬;

    if-ne v4, v5, :cond_0

    if-eq v3, v5, :cond_0

    invoke-virtual {v2}, L㚬/㧦/㺴/ᾦ$ḓ;->䆀()Landroidx/fragment/app/Fragment;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->isPostponed()Z

    move-result v1

    iput-boolean v1, p0, L㚬/㧦/㺴/ᾦ;->ḓ:Z

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    :goto_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public ᆻ()V
    .locals 7

    iget-boolean v0, p0, L㚬/㧦/㺴/ᾦ;->ḓ:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, L㚬/㧦/㺴/ᾦ;->உ:Landroid/view/ViewGroup;

    invoke-static {v0}, L㚬/ℓ/ἥ/㭲;->ർ(Landroid/view/View;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    invoke-virtual {p0}, L㚬/㧦/㺴/ᾦ;->ಫ()V

    iput-boolean v1, p0, L㚬/㧦/㺴/ᾦ;->㺴:Z

    return-void

    :cond_1
    iget-object v0, p0, L㚬/㧦/㺴/ᾦ;->䂻:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    iget-object v2, p0, L㚬/㧦/㺴/ᾦ;->䂻:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_6

    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, L㚬/㧦/㺴/ᾦ;->㚬:Ljava/util/ArrayList;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v3, p0, L㚬/㧦/㺴/ᾦ;->㚬:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, L㚬/㧦/㺴/ᾦ$ḓ;

    const/4 v4, 0x2

    invoke-static {v4}, L㚬/㧦/㺴/ἥ;->ፖ(I)Z

    move-result v4

    if-eqz v4, :cond_3

    const-string v4, "FragmentManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SpecialEffectsController: Cancelling operation "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    invoke-virtual {v3}, L㚬/㧦/㺴/ᾦ$ḓ;->䂻()V

    invoke-virtual {v3}, L㚬/㧦/㺴/ᾦ$ḓ;->ㄏ()Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, p0, L㚬/㧦/㺴/ᾦ;->㚬:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, L㚬/㧦/㺴/ᾦ;->㲝()V

    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, L㚬/㧦/㺴/ᾦ;->䂻:Ljava/util/ArrayList;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v3, p0, L㚬/㧦/㺴/ᾦ;->䂻:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    iget-object v3, p0, L㚬/㧦/㺴/ᾦ;->㚬:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, L㚬/㧦/㺴/ᾦ$ḓ;

    invoke-virtual {v4}, L㚬/㧦/㺴/ᾦ$ḓ;->㹖()V

    goto :goto_1

    :cond_5
    iget-boolean v3, p0, L㚬/㧦/㺴/ᾦ;->㺴:Z

    invoke-virtual {p0, v2, v3}, L㚬/㧦/㺴/ᾦ;->䆀(Ljava/util/List;Z)V

    iput-boolean v1, p0, L㚬/㧦/㺴/ᾦ;->㺴:Z

    :cond_6
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public ḓ(L㚬/㧦/㺴/ḙ;)V
    .locals 2

    const/4 v0, 0x2

    invoke-static {v0}, L㚬/㧦/㺴/ἥ;->ፖ(I)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SpecialEffectsController: Enqueuing show operation for fragment "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, L㚬/㧦/㺴/ḙ;->㧦()Landroidx/fragment/app/Fragment;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FragmentManager"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-object v0, L㚬/㧦/㺴/ᾦ$ḓ$㚬;->㚬:L㚬/㧦/㺴/ᾦ$ḓ$㚬;

    sget-object v1, L㚬/㧦/㺴/ᾦ$ḓ$䂻;->䂻:L㚬/㧦/㺴/ᾦ$ḓ$䂻;

    invoke-virtual {p0, v0, v1, p1}, L㚬/㧦/㺴/ᾦ;->உ(L㚬/㧦/㺴/ᾦ$ḓ$㚬;L㚬/㧦/㺴/ᾦ$ḓ$䂻;L㚬/㧦/㺴/ḙ;)V

    return-void
.end method

.method public ἥ()Landroid/view/ViewGroup;
    .locals 1

    iget-object v0, p0, L㚬/㧦/㺴/ᾦ;->உ:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public final ℓ(Landroidx/fragment/app/Fragment;)L㚬/㧦/㺴/ᾦ$ḓ;
    .locals 3

    iget-object v0, p0, L㚬/㧦/㺴/ᾦ;->䂻:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, L㚬/㧦/㺴/ᾦ$ḓ;

    invoke-virtual {v1}, L㚬/㧦/㺴/ᾦ$ḓ;->䆀()Landroidx/fragment/app/Fragment;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroidx/fragment/app/Fragment;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, L㚬/㧦/㺴/ᾦ$ḓ;->ℓ()Z

    move-result v2

    if-nez v2, :cond_0

    return-object v1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public final ㄏ(Landroidx/fragment/app/Fragment;)L㚬/㧦/㺴/ᾦ$ḓ;
    .locals 3

    iget-object v0, p0, L㚬/㧦/㺴/ᾦ;->㚬:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, L㚬/㧦/㺴/ᾦ$ḓ;

    invoke-virtual {v1}, L㚬/㧦/㺴/ᾦ$ḓ;->䆀()Landroidx/fragment/app/Fragment;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroidx/fragment/app/Fragment;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, L㚬/㧦/㺴/ᾦ$ḓ;->ℓ()Z

    move-result v2

    if-nez v2, :cond_0

    return-object v1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public 㚬(L㚬/㧦/㺴/ḙ;)V
    .locals 2

    const/4 v0, 0x2

    invoke-static {v0}, L㚬/㧦/㺴/ἥ;->ፖ(I)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SpecialEffectsController: Enqueuing hide operation for fragment "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, L㚬/㧦/㺴/ḙ;->㧦()Landroidx/fragment/app/Fragment;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FragmentManager"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-object v0, L㚬/㧦/㺴/ᾦ$ḓ$㚬;->㺴:L㚬/㧦/㺴/ᾦ$ḓ$㚬;

    sget-object v1, L㚬/㧦/㺴/ᾦ$ḓ$䂻;->䂻:L㚬/㧦/㺴/ᾦ$ḓ$䂻;

    invoke-virtual {p0, v0, v1, p1}, L㚬/㧦/㺴/ᾦ;->உ(L㚬/㧦/㺴/ᾦ$ḓ$㚬;L㚬/㧦/㺴/ᾦ$ḓ$䂻;L㚬/㧦/㺴/ḙ;)V

    return-void
.end method

.method public 㞘(Z)V
    .locals 0

    iput-boolean p1, p0, L㚬/㧦/㺴/ᾦ;->㺴:Z

    return-void
.end method

.method public 㧦()V
    .locals 1

    iget-boolean v0, p0, L㚬/㧦/㺴/ᾦ;->ḓ:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, L㚬/㧦/㺴/ᾦ;->ḓ:Z

    invoke-virtual {p0}, L㚬/㧦/㺴/ᾦ;->ᆻ()V

    :cond_0
    return-void
.end method

.method public final 㲝()V
    .locals 4

    iget-object v0, p0, L㚬/㧦/㺴/ᾦ;->䂻:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, L㚬/㧦/㺴/ᾦ$ḓ;

    invoke-virtual {v1}, L㚬/㧦/㺴/ᾦ$ḓ;->ᆻ()L㚬/㧦/㺴/ᾦ$ḓ$䂻;

    move-result-object v2

    sget-object v3, L㚬/㧦/㺴/ᾦ$ḓ$䂻;->㚬:L㚬/㧦/㺴/ᾦ$ḓ$䂻;

    if-ne v2, v3, :cond_0

    invoke-virtual {v1}, L㚬/㧦/㺴/ᾦ$ḓ;->䆀()Landroidx/fragment/app/Fragment;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->requireView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    invoke-static {v2}, L㚬/㧦/㺴/ᾦ$ḓ$㚬;->䂻(I)L㚬/㧦/㺴/ᾦ$ḓ$㚬;

    move-result-object v2

    sget-object v3, L㚬/㧦/㺴/ᾦ$ḓ$䂻;->䂻:L㚬/㧦/㺴/ᾦ$ḓ$䂻;

    invoke-virtual {v1, v2, v3}, L㚬/㧦/㺴/ᾦ$ḓ;->㧦(L㚬/㧦/㺴/ᾦ$ḓ$㚬;L㚬/㧦/㺴/ᾦ$ḓ$䂻;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public 㹖(L㚬/㧦/㺴/ḙ;)L㚬/㧦/㺴/ᾦ$ḓ$䂻;
    .locals 1

    invoke-virtual {p1}, L㚬/㧦/㺴/ḙ;->㧦()Landroidx/fragment/app/Fragment;

    move-result-object v0

    invoke-virtual {p0, v0}, L㚬/㧦/㺴/ᾦ;->ℓ(Landroidx/fragment/app/Fragment;)L㚬/㧦/㺴/ᾦ$ḓ;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, L㚬/㧦/㺴/ᾦ$ḓ;->ᆻ()L㚬/㧦/㺴/ᾦ$ḓ$䂻;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-virtual {p1}, L㚬/㧦/㺴/ḙ;->㧦()Landroidx/fragment/app/Fragment;

    move-result-object p1

    invoke-virtual {p0, p1}, L㚬/㧦/㺴/ᾦ;->ㄏ(Landroidx/fragment/app/Fragment;)L㚬/㧦/㺴/ᾦ$ḓ;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, L㚬/㧦/㺴/ᾦ$ḓ;->ᆻ()L㚬/㧦/㺴/ᾦ$ḓ$䂻;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public 㺴(L㚬/㧦/㺴/ḙ;)V
    .locals 2

    const/4 v0, 0x2

    invoke-static {v0}, L㚬/㧦/㺴/ἥ;->ፖ(I)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SpecialEffectsController: Enqueuing remove operation for fragment "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, L㚬/㧦/㺴/ḙ;->㧦()Landroidx/fragment/app/Fragment;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FragmentManager"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-object v0, L㚬/㧦/㺴/ᾦ$ḓ$㚬;->䂻:L㚬/㧦/㺴/ᾦ$ḓ$㚬;

    sget-object v1, L㚬/㧦/㺴/ᾦ$ḓ$䂻;->㺴:L㚬/㧦/㺴/ᾦ$ḓ$䂻;

    invoke-virtual {p0, v0, v1, p1}, L㚬/㧦/㺴/ᾦ;->உ(L㚬/㧦/㺴/ᾦ$ḓ$㚬;L㚬/㧦/㺴/ᾦ$ḓ$䂻;L㚬/㧦/㺴/ḙ;)V

    return-void
.end method

.method public 䂻(L㚬/㧦/㺴/ᾦ$ḓ$㚬;L㚬/㧦/㺴/ḙ;)V
    .locals 2

    const/4 v0, 0x2

    invoke-static {v0}, L㚬/㧦/㺴/ἥ;->ፖ(I)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SpecialEffectsController: Enqueuing add operation for fragment "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, L㚬/㧦/㺴/ḙ;->㧦()Landroidx/fragment/app/Fragment;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FragmentManager"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-object v0, L㚬/㧦/㺴/ᾦ$ḓ$䂻;->㚬:L㚬/㧦/㺴/ᾦ$ḓ$䂻;

    invoke-virtual {p0, p1, v0, p2}, L㚬/㧦/㺴/ᾦ;->உ(L㚬/㧦/㺴/ᾦ$ḓ$㚬;L㚬/㧦/㺴/ᾦ$ḓ$䂻;L㚬/㧦/㺴/ḙ;)V

    return-void
.end method

.method public abstract 䆀(Ljava/util/List;Z)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "L\u36ac/\u39e6/\u3eb4/\u1fa6$\u1e13;",
            ">;Z)V"
        }
    .end annotation
.end method
