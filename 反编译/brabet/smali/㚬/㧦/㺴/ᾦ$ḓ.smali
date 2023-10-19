.class public L㚬/㧦/㺴/ᾦ$ḓ;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = L㚬/㧦/㺴/ᾦ;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "\u1e13"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        L㚬/㧦/㺴/ᾦ$ḓ$䂻;,
        L㚬/㧦/㺴/ᾦ$ḓ$㚬;
    }
.end annotation


# instance fields
.field public உ:L㚬/㧦/㺴/ᾦ$ḓ$㚬;

.field public ᆻ:Z

.field public final ḓ:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "L\u36ac/\u2113/\u310f/\u0b89;",
            ">;"
        }
    .end annotation
.end field

.field public final 㚬:Landroidx/fragment/app/Fragment;

.field public final 㺴:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field public 䂻:L㚬/㧦/㺴/ᾦ$ḓ$䂻;

.field public 䆀:Z


# direct methods
.method public constructor <init>(L㚬/㧦/㺴/ᾦ$ḓ$㚬;L㚬/㧦/㺴/ᾦ$ḓ$䂻;Landroidx/fragment/app/Fragment;L㚬/ℓ/ㄏ/உ;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, L㚬/㧦/㺴/ᾦ$ḓ;->㺴:Ljava/util/List;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, L㚬/㧦/㺴/ᾦ$ḓ;->ḓ:Ljava/util/HashSet;

    const/4 v0, 0x0

    iput-boolean v0, p0, L㚬/㧦/㺴/ᾦ$ḓ;->䆀:Z

    iput-boolean v0, p0, L㚬/㧦/㺴/ᾦ$ḓ;->ᆻ:Z

    iput-object p1, p0, L㚬/㧦/㺴/ᾦ$ḓ;->உ:L㚬/㧦/㺴/ᾦ$ḓ$㚬;

    iput-object p2, p0, L㚬/㧦/㺴/ᾦ$ḓ;->䂻:L㚬/㧦/㺴/ᾦ$ḓ$䂻;

    iput-object p3, p0, L㚬/㧦/㺴/ᾦ$ḓ;->㚬:Landroidx/fragment/app/Fragment;

    new-instance p1, L㚬/㧦/㺴/ᾦ$ḓ$உ;

    invoke-direct {p1, p0}, L㚬/㧦/㺴/ᾦ$ḓ$உ;-><init>(L㚬/㧦/㺴/ᾦ$ḓ;)V

    invoke-virtual {p4, p1}, L㚬/ℓ/ㄏ/உ;->㚬(L㚬/ℓ/ㄏ/உ$உ;)V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Operation "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "} "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "mFinalState = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, L㚬/㧦/㺴/ᾦ$ḓ;->உ:L㚬/㧦/㺴/ᾦ$ḓ$㚬;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "mLifecycleImpact = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, L㚬/㧦/㺴/ᾦ$ḓ;->䂻:L㚬/㧦/㺴/ᾦ$ḓ$䂻;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mFragment = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, L㚬/㧦/㺴/ᾦ$ḓ;->㚬:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final உ(Ljava/lang/Runnable;)V
    .locals 1

    iget-object v0, p0, L㚬/㧦/㺴/ᾦ$ḓ;->㺴:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final ಫ(L㚬/ℓ/ㄏ/உ;)V
    .locals 1

    invoke-virtual {p0}, L㚬/㧦/㺴/ᾦ$ḓ;->㹖()V

    iget-object v0, p0, L㚬/㧦/㺴/ᾦ$ḓ;->ḓ:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public ᆻ()L㚬/㧦/㺴/ᾦ$ḓ$䂻;
    .locals 1

    iget-object v0, p0, L㚬/㧦/㺴/ᾦ$ḓ;->䂻:L㚬/㧦/㺴/ᾦ$ḓ$䂻;

    return-object v0
.end method

.method public ḓ()L㚬/㧦/㺴/ᾦ$ḓ$㚬;
    .locals 1

    iget-object v0, p0, L㚬/㧦/㺴/ᾦ$ḓ;->உ:L㚬/㧦/㺴/ᾦ$ḓ$㚬;

    return-object v0
.end method

.method public final ℓ()Z
    .locals 1

    iget-boolean v0, p0, L㚬/㧦/㺴/ᾦ$ḓ;->䆀:Z

    return v0
.end method

.method public final ㄏ()Z
    .locals 1

    iget-boolean v0, p0, L㚬/㧦/㺴/ᾦ$ḓ;->ᆻ:Z

    return v0
.end method

.method public 㚬()V
    .locals 2

    iget-boolean v0, p0, L㚬/㧦/㺴/ᾦ$ḓ;->ᆻ:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x2

    invoke-static {v0}, L㚬/㧦/㺴/ἥ;->ፖ(I)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SpecialEffectsController: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " has called complete."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FragmentManager"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, L㚬/㧦/㺴/ᾦ$ḓ;->ᆻ:Z

    iget-object v0, p0, L㚬/㧦/㺴/ᾦ$ḓ;->㺴:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final 㧦(L㚬/㧦/㺴/ᾦ$ḓ$㚬;L㚬/㧦/㺴/ᾦ$ḓ$䂻;)V
    .locals 5

    sget-object v0, L㚬/㧦/㺴/ᾦ$㚬;->䂻:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p2, v0, p2

    const/4 v0, 0x1

    const-string v1, "SpecialEffectsController: For fragment "

    const-string v2, "FragmentManager"

    const/4 v3, 0x2

    if-eq p2, v0, :cond_4

    const-string v0, " mFinalState = "

    if-eq p2, v3, :cond_2

    const/4 v4, 0x3

    if-eq p2, v4, :cond_0

    goto/16 :goto_1

    :cond_0
    iget-object p2, p0, L㚬/㧦/㺴/ᾦ$ḓ;->உ:L㚬/㧦/㺴/ᾦ$ḓ$㚬;

    sget-object v4, L㚬/㧦/㺴/ᾦ$ḓ$㚬;->䂻:L㚬/㧦/㺴/ᾦ$ḓ$㚬;

    if-eq p2, v4, :cond_6

    invoke-static {v3}, L㚬/㧦/㺴/ἥ;->ፖ(I)Z

    move-result p2

    if-eqz p2, :cond_1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, L㚬/㧦/㺴/ᾦ$ḓ;->㚬:Landroidx/fragment/app/Fragment;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, L㚬/㧦/㺴/ᾦ$ḓ;->உ:L㚬/㧦/㺴/ᾦ$ḓ$㚬;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " -> "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ". "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iput-object p1, p0, L㚬/㧦/㺴/ᾦ$ḓ;->உ:L㚬/㧦/㺴/ᾦ$ḓ$㚬;

    goto :goto_1

    :cond_2
    invoke-static {v3}, L㚬/㧦/㺴/ἥ;->ፖ(I)Z

    move-result p1

    if-eqz p1, :cond_3

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, L㚬/㧦/㺴/ᾦ$ḓ;->㚬:Landroidx/fragment/app/Fragment;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, L㚬/㧦/㺴/ᾦ$ḓ;->உ:L㚬/㧦/㺴/ᾦ$ḓ$㚬;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " -> REMOVED. mLifecycleImpact  = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, L㚬/㧦/㺴/ᾦ$ḓ;->䂻:L㚬/㧦/㺴/ᾦ$ḓ$䂻;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " to REMOVING."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    sget-object p1, L㚬/㧦/㺴/ᾦ$ḓ$㚬;->䂻:L㚬/㧦/㺴/ᾦ$ḓ$㚬;

    iput-object p1, p0, L㚬/㧦/㺴/ᾦ$ḓ;->உ:L㚬/㧦/㺴/ᾦ$ḓ$㚬;

    sget-object p1, L㚬/㧦/㺴/ᾦ$ḓ$䂻;->㺴:L㚬/㧦/㺴/ᾦ$ḓ$䂻;

    :goto_0
    iput-object p1, p0, L㚬/㧦/㺴/ᾦ$ḓ;->䂻:L㚬/㧦/㺴/ᾦ$ḓ$䂻;

    goto :goto_1

    :cond_4
    iget-object p1, p0, L㚬/㧦/㺴/ᾦ$ḓ;->உ:L㚬/㧦/㺴/ᾦ$ḓ$㚬;

    sget-object p2, L㚬/㧦/㺴/ᾦ$ḓ$㚬;->䂻:L㚬/㧦/㺴/ᾦ$ḓ$㚬;

    if-ne p1, p2, :cond_6

    invoke-static {v3}, L㚬/㧦/㺴/ἥ;->ፖ(I)Z

    move-result p1

    if-eqz p1, :cond_5

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, L㚬/㧦/㺴/ᾦ$ḓ;->㚬:Landroidx/fragment/app/Fragment;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " mFinalState = REMOVED -> VISIBLE. mLifecycleImpact = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, L㚬/㧦/㺴/ᾦ$ḓ;->䂻:L㚬/㧦/㺴/ᾦ$ḓ$䂻;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " to ADDING."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    sget-object p1, L㚬/㧦/㺴/ᾦ$ḓ$㚬;->㚬:L㚬/㧦/㺴/ᾦ$ḓ$㚬;

    iput-object p1, p0, L㚬/㧦/㺴/ᾦ$ḓ;->உ:L㚬/㧦/㺴/ᾦ$ḓ$㚬;

    sget-object p1, L㚬/㧦/㺴/ᾦ$ḓ$䂻;->㚬:L㚬/㧦/㺴/ᾦ$ḓ$䂻;

    goto :goto_0

    :cond_6
    :goto_1
    return-void
.end method

.method public 㹖()V
    .locals 0

    return-void
.end method

.method public final 㺴(L㚬/ℓ/ㄏ/உ;)V
    .locals 1

    iget-object v0, p0, L㚬/㧦/㺴/ᾦ$ḓ;->ḓ:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, L㚬/㧦/㺴/ᾦ$ḓ;->ḓ:Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/util/HashSet;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, L㚬/㧦/㺴/ᾦ$ḓ;->㚬()V

    :cond_0
    return-void
.end method

.method public final 䂻()V
    .locals 2

    invoke-virtual {p0}, L㚬/㧦/㺴/ᾦ$ḓ;->ℓ()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, L㚬/㧦/㺴/ᾦ$ḓ;->䆀:Z

    iget-object v0, p0, L㚬/㧦/㺴/ᾦ$ḓ;->ḓ:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, L㚬/㧦/㺴/ᾦ$ḓ;->㚬()V

    goto :goto_1

    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, L㚬/㧦/㺴/ᾦ$ḓ;->ḓ:Ljava/util/HashSet;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, L㚬/ℓ/ㄏ/உ;

    invoke-virtual {v1}, L㚬/ℓ/ㄏ/உ;->உ()V

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public final 䆀()Landroidx/fragment/app/Fragment;
    .locals 1

    iget-object v0, p0, L㚬/㧦/㺴/ᾦ$ḓ;->㚬:Landroidx/fragment/app/Fragment;

    return-object v0
.end method
