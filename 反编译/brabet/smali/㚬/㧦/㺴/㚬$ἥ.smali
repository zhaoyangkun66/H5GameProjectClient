.class public L㚬/㧦/㺴/㚬$ἥ;
.super L㚬/㧦/㺴/㚬$㹖;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = L㚬/㧦/㺴/㚬;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "\u1f25"
.end annotation


# instance fields
.field public final ḓ:Ljava/lang/Object;

.field public final 㚬:Ljava/lang/Object;

.field public final 㺴:Z


# direct methods
.method public constructor <init>(L㚬/㧦/㺴/ᾦ$ḓ;L㚬/ℓ/ㄏ/உ;ZZ)V
    .locals 1

    invoke-direct {p0, p1, p2}, L㚬/㧦/㺴/㚬$㹖;-><init>(L㚬/㧦/㺴/ᾦ$ḓ;L㚬/ℓ/ㄏ/உ;)V

    invoke-virtual {p1}, L㚬/㧦/㺴/ᾦ$ḓ;->ḓ()L㚬/㧦/㺴/ᾦ$ḓ$㚬;

    move-result-object p2

    sget-object v0, L㚬/㧦/㺴/ᾦ$ḓ$㚬;->㚬:L㚬/㧦/㺴/ᾦ$ḓ$㚬;

    if-ne p2, v0, :cond_2

    invoke-virtual {p1}, L㚬/㧦/㺴/ᾦ$ḓ;->䆀()Landroidx/fragment/app/Fragment;

    move-result-object p2

    if-eqz p3, :cond_0

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getReenterTransition()Ljava/lang/Object;

    move-result-object p2

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getEnterTransition()Ljava/lang/Object;

    move-result-object p2

    :goto_0
    iput-object p2, p0, L㚬/㧦/㺴/㚬$ἥ;->㚬:Ljava/lang/Object;

    invoke-virtual {p1}, L㚬/㧦/㺴/ᾦ$ḓ;->䆀()Landroidx/fragment/app/Fragment;

    move-result-object p2

    if-eqz p3, :cond_1

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getAllowReturnTransitionOverlap()Z

    move-result p2

    goto :goto_2

    :cond_1
    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getAllowEnterTransitionOverlap()Z

    move-result p2

    goto :goto_2

    :cond_2
    invoke-virtual {p1}, L㚬/㧦/㺴/ᾦ$ḓ;->䆀()Landroidx/fragment/app/Fragment;

    move-result-object p2

    if-eqz p3, :cond_3

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getReturnTransition()Ljava/lang/Object;

    move-result-object p2

    goto :goto_1

    :cond_3
    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getExitTransition()Ljava/lang/Object;

    move-result-object p2

    :goto_1
    iput-object p2, p0, L㚬/㧦/㺴/㚬$ἥ;->㚬:Ljava/lang/Object;

    const/4 p2, 0x1

    :goto_2
    iput-boolean p2, p0, L㚬/㧦/㺴/㚬$ἥ;->㺴:Z

    if-eqz p4, :cond_5

    invoke-virtual {p1}, L㚬/㧦/㺴/ᾦ$ḓ;->䆀()Landroidx/fragment/app/Fragment;

    move-result-object p1

    if-eqz p3, :cond_4

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getSharedElementReturnTransition()Ljava/lang/Object;

    move-result-object p1

    goto :goto_3

    :cond_4
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getSharedElementEnterTransition()Ljava/lang/Object;

    move-result-object p1

    goto :goto_3

    :cond_5
    const/4 p1, 0x0

    :goto_3
    iput-object p1, p0, L㚬/㧦/㺴/㚬$ἥ;->ḓ:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public ಫ()Z
    .locals 1

    iget-boolean v0, p0, L㚬/㧦/㺴/㚬$ἥ;->㺴:Z

    return v0
.end method

.method public ᆻ()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, L㚬/㧦/㺴/㚬$ἥ;->ḓ:Ljava/lang/Object;

    return-object v0
.end method

.method public ḓ()L㚬/㧦/㺴/ㄬ;
    .locals 3

    iget-object v0, p0, L㚬/㧦/㺴/㚬$ἥ;->㚬:Ljava/lang/Object;

    invoke-virtual {p0, v0}, L㚬/㧦/㺴/㚬$ἥ;->䆀(Ljava/lang/Object;)L㚬/㧦/㺴/ㄬ;

    move-result-object v0

    iget-object v1, p0, L㚬/㧦/㺴/㚬$ἥ;->ḓ:Ljava/lang/Object;

    invoke-virtual {p0, v1}, L㚬/㧦/㺴/㚬$ἥ;->䆀(Ljava/lang/Object;)L㚬/㧦/㺴/ㄬ;

    move-result-object v1

    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Mixing framework transitions and AndroidX transitions is not allowed. Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, L㚬/㧦/㺴/㚬$㹖;->䂻()L㚬/㧦/㺴/ᾦ$ḓ;

    move-result-object v2

    invoke-virtual {v2}, L㚬/㧦/㺴/ᾦ$ḓ;->䆀()Landroidx/fragment/app/Fragment;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " returned Transition "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, L㚬/㧦/㺴/㚬$ἥ;->㚬:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " which uses a different Transition  type than its shared element transition "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, L㚬/㧦/㺴/㚬$ἥ;->ḓ:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    move-object v0, v1

    :goto_1
    return-object v0
.end method

.method public ℓ()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, L㚬/㧦/㺴/㚬$ἥ;->㚬:Ljava/lang/Object;

    return-object v0
.end method

.method public ㄏ()Z
    .locals 1

    iget-object v0, p0, L㚬/㧦/㺴/㚬$ἥ;->ḓ:Ljava/lang/Object;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final 䆀(Ljava/lang/Object;)L㚬/㧦/㺴/ㄬ;
    .locals 3

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    sget-object v0, L㚬/㧦/㺴/ม;->䂻:L㚬/㧦/㺴/ㄬ;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, L㚬/㧦/㺴/ㄬ;->ḓ(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-object v0

    :cond_1
    sget-object v0, L㚬/㧦/㺴/ม;->㚬:L㚬/㧦/㺴/ㄬ;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, L㚬/㧦/㺴/ㄬ;->ḓ(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    return-object v0

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Transition "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " for fragment "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, L㚬/㧦/㺴/㚬$㹖;->䂻()L㚬/㧦/㺴/ᾦ$ḓ;

    move-result-object p1

    invoke-virtual {p1}, L㚬/㧦/㺴/ᾦ$ḓ;->䆀()Landroidx/fragment/app/Fragment;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " is not a valid framework Transition or AndroidX Transition"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
