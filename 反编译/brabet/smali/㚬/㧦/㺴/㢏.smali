.class public abstract L㚬/㧦/㺴/㢏;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        L㚬/㧦/㺴/㢏$உ;
    }
.end annotation


# instance fields
.field public உ:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "L\u36ac/\u39e6/\u3eb4/\u388f$\u0b89;",
            ">;"
        }
    .end annotation
.end field

.field public ಫ:Ljava/lang/CharSequence;

.field public ཇ:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public ბ:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field public ᆻ:Z

.field public ᓭ:Z

.field public ḓ:I

.field public ἥ:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public ℓ:Ljava/lang/String;

.field public ㄏ:I

.field public 㚬:I

.field public 㧦:I

.field public 㹖:Ljava/lang/CharSequence;

.field public 㺴:I

.field public 䂻:I

.field public 䆀:I


# direct methods
.method public constructor <init>(L㚬/㧦/㺴/ㄏ;Ljava/lang/ClassLoader;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, L㚬/㧦/㺴/㢏;->உ:Ljava/util/ArrayList;

    const/4 p1, 0x0

    iput-boolean p1, p0, L㚬/㧦/㺴/㢏;->ᓭ:Z

    return-void
.end method


# virtual methods
.method public ಫ()L㚬/㧦/㺴/㢏;
    .locals 2

    iget-boolean v0, p0, L㚬/㧦/㺴/㢏;->ᆻ:Z

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This transaction is already being added to the back stack"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public ཇ(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)L㚬/㧦/㺴/㢏;
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x2

    invoke-virtual {p0, p1, p2, p3, v0}, L㚬/㧦/㺴/㢏;->㧦(ILandroidx/fragment/app/Fragment;Ljava/lang/String;I)V

    return-object p0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Must use non-zero containerViewId"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public abstract ᆻ()I
.end method

.method public ᓭ(Z)L㚬/㧦/㺴/㢏;
    .locals 0

    iput-boolean p1, p0, L㚬/㧦/㺴/㢏;->ᓭ:Z

    return-object p0
.end method

.method public ḓ(L㚬/㧦/㺴/㢏$உ;)V
    .locals 1

    iget-object v0, p0, L㚬/㧦/㺴/㢏;->உ:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v0, p0, L㚬/㧦/㺴/㢏;->䂻:I

    iput v0, p1, L㚬/㧦/㺴/㢏$உ;->㚬:I

    iget v0, p0, L㚬/㧦/㺴/㢏;->㚬:I

    iput v0, p1, L㚬/㧦/㺴/㢏$உ;->㺴:I

    iget v0, p0, L㚬/㧦/㺴/㢏;->㺴:I

    iput v0, p1, L㚬/㧦/㺴/㢏$உ;->ḓ:I

    iget v0, p0, L㚬/㧦/㺴/㢏;->ḓ:I

    iput v0, p1, L㚬/㧦/㺴/㢏$உ;->䆀:I

    return-void
.end method

.method public ἥ(ILandroidx/fragment/app/Fragment;)L㚬/㧦/㺴/㢏;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, L㚬/㧦/㺴/㢏;->ཇ(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)L㚬/㧦/㺴/㢏;

    return-object p0
.end method

.method public abstract ℓ()V
.end method

.method public abstract ㄏ()V
.end method

.method public 㚬(Landroid/view/ViewGroup;Landroidx/fragment/app/Fragment;Ljava/lang/String;)L㚬/㧦/㺴/㢏;
    .locals 0

    iput-object p1, p2, Landroidx/fragment/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getId()I

    move-result p1

    invoke-virtual {p0, p1, p2, p3}, L㚬/㧦/㺴/㢏;->䂻(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)L㚬/㧦/㺴/㢏;

    return-object p0
.end method

.method public 㧦(ILandroidx/fragment/app/Fragment;Ljava/lang/String;I)V
    .locals 3

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getModifiers()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/Class;->isAnonymousClass()Z

    move-result v2

    if-nez v2, :cond_8

    invoke-static {v1}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-virtual {v0}, Ljava/lang/Class;->isMemberClass()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v1}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v1

    if-eqz v1, :cond_8

    :cond_0
    const-string v0, " now "

    const-string v1, ": was "

    if-eqz p3, :cond_3

    iget-object v2, p2, Landroidx/fragment/app/Fragment;->mTag:Ljava/lang/String;

    if-eqz v2, :cond_2

    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t change tag of fragment "

    invoke-virtual {p4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p2, Landroidx/fragment/app/Fragment;->mTag:Ljava/lang/String;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_0
    iput-object p3, p2, Landroidx/fragment/app/Fragment;->mTag:Ljava/lang/String;

    :cond_3
    if-eqz p1, :cond_7

    const/4 v2, -0x1

    if-eq p1, v2, :cond_6

    iget p3, p2, Landroidx/fragment/app/Fragment;->mFragmentId:I

    if-eqz p3, :cond_5

    if-ne p3, p1, :cond_4

    goto :goto_1

    :cond_4
    new-instance p3, Ljava/lang/IllegalStateException;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t change container ID of fragment "

    invoke-virtual {p4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p2, Landroidx/fragment/app/Fragment;->mFragmentId:I

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p3

    :cond_5
    :goto_1
    iput p1, p2, Landroidx/fragment/app/Fragment;->mFragmentId:I

    iput p1, p2, Landroidx/fragment/app/Fragment;->mContainerId:I

    goto :goto_2

    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Can\'t add fragment "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " with tag "

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " to container view with no id"

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_7
    :goto_2
    new-instance p1, L㚬/㧦/㺴/㢏$உ;

    invoke-direct {p1, p4, p2}, L㚬/㧦/㺴/㢏$உ;-><init>(ILandroidx/fragment/app/Fragment;)V

    invoke-virtual {p0, p1}, L㚬/㧦/㺴/㢏;->ḓ(L㚬/㧦/㺴/㢏$உ;)V

    return-void

    :cond_8
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Fragment "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " must be a public static class to be  properly recreated from instance state."

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public 㹖(Landroidx/fragment/app/Fragment;)L㚬/㧦/㺴/㢏;
    .locals 2

    new-instance v0, L㚬/㧦/㺴/㢏$உ;

    const/4 v1, 0x3

    invoke-direct {v0, v1, p1}, L㚬/㧦/㺴/㢏$உ;-><init>(ILandroidx/fragment/app/Fragment;)V

    invoke-virtual {p0, v0}, L㚬/㧦/㺴/㢏;->ḓ(L㚬/㧦/㺴/㢏$உ;)V

    return-object p0
.end method

.method public 㺴(Landroidx/fragment/app/Fragment;Ljava/lang/String;)L㚬/㧦/㺴/㢏;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, p1, p2, v1}, L㚬/㧦/㺴/㢏;->㧦(ILandroidx/fragment/app/Fragment;Ljava/lang/String;I)V

    return-object p0
.end method

.method public 䂻(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)L㚬/㧦/㺴/㢏;
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, p3, v0}, L㚬/㧦/㺴/㢏;->㧦(ILandroidx/fragment/app/Fragment;Ljava/lang/String;I)V

    return-object p0
.end method

.method public abstract 䆀()I
.end method
