.class public L㚬/㧦/㺴/㚬$㹖;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = L㚬/㧦/㺴/㚬;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "\u3e56"
.end annotation


# instance fields
.field public final உ:L㚬/㧦/㺴/ᾦ$ḓ;

.field public final 䂻:L㚬/ℓ/ㄏ/உ;


# direct methods
.method public constructor <init>(L㚬/㧦/㺴/ᾦ$ḓ;L㚬/ℓ/ㄏ/உ;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, L㚬/㧦/㺴/㚬$㹖;->உ:L㚬/㧦/㺴/ᾦ$ḓ;

    iput-object p2, p0, L㚬/㧦/㺴/㚬$㹖;->䂻:L㚬/ℓ/ㄏ/உ;

    return-void
.end method


# virtual methods
.method public உ()V
    .locals 2

    iget-object v0, p0, L㚬/㧦/㺴/㚬$㹖;->உ:L㚬/㧦/㺴/ᾦ$ḓ;

    iget-object v1, p0, L㚬/㧦/㺴/㚬$㹖;->䂻:L㚬/ℓ/ㄏ/உ;

    invoke-virtual {v0, v1}, L㚬/㧦/㺴/ᾦ$ḓ;->㺴(L㚬/ℓ/ㄏ/உ;)V

    return-void
.end method

.method public 㚬()L㚬/ℓ/ㄏ/உ;
    .locals 1

    iget-object v0, p0, L㚬/㧦/㺴/㚬$㹖;->䂻:L㚬/ℓ/ㄏ/உ;

    return-object v0
.end method

.method public 㺴()Z
    .locals 3

    iget-object v0, p0, L㚬/㧦/㺴/㚬$㹖;->உ:L㚬/㧦/㺴/ᾦ$ḓ;

    invoke-virtual {v0}, L㚬/㧦/㺴/ᾦ$ḓ;->䆀()Landroidx/fragment/app/Fragment;

    move-result-object v0

    iget-object v0, v0, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    invoke-static {v0}, L㚬/㧦/㺴/ᾦ$ḓ$㚬;->㚬(Landroid/view/View;)L㚬/㧦/㺴/ᾦ$ḓ$㚬;

    move-result-object v0

    iget-object v1, p0, L㚬/㧦/㺴/㚬$㹖;->உ:L㚬/㧦/㺴/ᾦ$ḓ;

    invoke-virtual {v1}, L㚬/㧦/㺴/ᾦ$ḓ;->ḓ()L㚬/㧦/㺴/ᾦ$ḓ$㚬;

    move-result-object v1

    if-eq v0, v1, :cond_1

    sget-object v2, L㚬/㧦/㺴/ᾦ$ḓ$㚬;->㚬:L㚬/㧦/㺴/ᾦ$ḓ$㚬;

    if-eq v0, v2, :cond_0

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public 䂻()L㚬/㧦/㺴/ᾦ$ḓ;
    .locals 1

    iget-object v0, p0, L㚬/㧦/㺴/㚬$㹖;->உ:L㚬/㧦/㺴/ᾦ$ḓ;

    return-object v0
.end method
