.class public L㚬/㧦/㺴/ᾦ$உ;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = L㚬/㧦/㺴/ᾦ;->உ(L㚬/㧦/㺴/ᾦ$ḓ$㚬;L㚬/㧦/㺴/ᾦ$ḓ$䂻;L㚬/㧦/㺴/ḙ;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic 㚬:L㚬/㧦/㺴/ᾦ;

.field public final synthetic 䂻:L㚬/㧦/㺴/ᾦ$㺴;


# direct methods
.method public constructor <init>(L㚬/㧦/㺴/ᾦ;L㚬/㧦/㺴/ᾦ$㺴;)V
    .locals 0

    iput-object p1, p0, L㚬/㧦/㺴/ᾦ$உ;->㚬:L㚬/㧦/㺴/ᾦ;

    iput-object p2, p0, L㚬/㧦/㺴/ᾦ$உ;->䂻:L㚬/㧦/㺴/ᾦ$㺴;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, L㚬/㧦/㺴/ᾦ$உ;->㚬:L㚬/㧦/㺴/ᾦ;

    iget-object v0, v0, L㚬/㧦/㺴/ᾦ;->䂻:Ljava/util/ArrayList;

    iget-object v1, p0, L㚬/㧦/㺴/ᾦ$உ;->䂻:L㚬/㧦/㺴/ᾦ$㺴;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, L㚬/㧦/㺴/ᾦ$உ;->䂻:L㚬/㧦/㺴/ᾦ$㺴;

    invoke-virtual {v0}, L㚬/㧦/㺴/ᾦ$ḓ;->ḓ()L㚬/㧦/㺴/ᾦ$ḓ$㚬;

    move-result-object v0

    iget-object v1, p0, L㚬/㧦/㺴/ᾦ$உ;->䂻:L㚬/㧦/㺴/ᾦ$㺴;

    invoke-virtual {v1}, L㚬/㧦/㺴/ᾦ$ḓ;->䆀()Landroidx/fragment/app/Fragment;

    move-result-object v1

    iget-object v1, v1, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v0, v1}, L㚬/㧦/㺴/ᾦ$ḓ$㚬;->உ(Landroid/view/View;)V

    :cond_0
    return-void
.end method
