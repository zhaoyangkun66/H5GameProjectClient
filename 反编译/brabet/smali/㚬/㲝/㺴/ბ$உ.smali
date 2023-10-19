.class public L㚬/㲝/㺴/ბ$உ;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = L㚬/㲝/㺴/ბ;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "\u0b89"
.end annotation


# static fields
.field public static 㺴:L㚬/ℓ/㹖/㺴;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "L\u36ac/\u2113/\u3e56/\u3eb4<",
            "L\u36ac/\u3c9d/\u3eb4/\u10d1$\u0b89;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public உ:I

.field public 㚬:Landroidx/recyclerview/widget/RecyclerView$㹖$㚬;

.field public 䂻:Landroidx/recyclerview/widget/RecyclerView$㹖$㚬;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, L㚬/ℓ/㹖/ḓ;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, L㚬/ℓ/㹖/ḓ;-><init>(I)V

    sput-object v0, L㚬/㲝/㺴/ბ$உ;->㺴:L㚬/ℓ/㹖/㺴;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static உ()V
    .locals 1

    :goto_0
    sget-object v0, L㚬/㲝/㺴/ბ$உ;->㺴:L㚬/ℓ/㹖/㺴;

    invoke-interface {v0}, L㚬/ℓ/㹖/㺴;->䂻()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static 㚬(L㚬/㲝/㺴/ბ$உ;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, L㚬/㲝/㺴/ბ$உ;->உ:I

    const/4 v0, 0x0

    iput-object v0, p0, L㚬/㲝/㺴/ბ$உ;->䂻:Landroidx/recyclerview/widget/RecyclerView$㹖$㚬;

    iput-object v0, p0, L㚬/㲝/㺴/ბ$உ;->㚬:Landroidx/recyclerview/widget/RecyclerView$㹖$㚬;

    sget-object v0, L㚬/㲝/㺴/ბ$உ;->㺴:L㚬/ℓ/㹖/㺴;

    invoke-interface {v0, p0}, L㚬/ℓ/㹖/㺴;->உ(Ljava/lang/Object;)Z

    return-void
.end method

.method public static 䂻()L㚬/㲝/㺴/ბ$உ;
    .locals 1

    sget-object v0, L㚬/㲝/㺴/ბ$உ;->㺴:L㚬/ℓ/㹖/㺴;

    invoke-interface {v0}, L㚬/ℓ/㹖/㺴;->䂻()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, L㚬/㲝/㺴/ბ$உ;

    if-nez v0, :cond_0

    new-instance v0, L㚬/㲝/㺴/ბ$உ;

    invoke-direct {v0}, L㚬/㲝/㺴/ბ$உ;-><init>()V

    :cond_0
    return-object v0
.end method
