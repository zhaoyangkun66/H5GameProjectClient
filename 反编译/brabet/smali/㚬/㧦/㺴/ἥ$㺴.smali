.class public L㚬/㧦/㺴/ἥ$㺴;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements L㚬/㧦/㺴/ม$ᆻ;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = L㚬/㧦/㺴/ἥ;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic உ:L㚬/㧦/㺴/ἥ;


# direct methods
.method public constructor <init>(L㚬/㧦/㺴/ἥ;)V
    .locals 0

    iput-object p1, p0, L㚬/㧦/㺴/ἥ$㺴;->உ:L㚬/㧦/㺴/ἥ;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public உ(Landroidx/fragment/app/Fragment;L㚬/ℓ/ㄏ/உ;)V
    .locals 1

    invoke-virtual {p2}, L㚬/ℓ/ㄏ/உ;->䂻()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, L㚬/㧦/㺴/ἥ$㺴;->உ:L㚬/㧦/㺴/ἥ;

    invoke-virtual {v0, p1, p2}, L㚬/㧦/㺴/ἥ;->㣩(Landroidx/fragment/app/Fragment;L㚬/ℓ/ㄏ/உ;)V

    :cond_0
    return-void
.end method

.method public 䂻(Landroidx/fragment/app/Fragment;L㚬/ℓ/ㄏ/உ;)V
    .locals 1

    iget-object v0, p0, L㚬/㧦/㺴/ἥ$㺴;->உ:L㚬/㧦/㺴/ἥ;

    invoke-virtual {v0, p1, p2}, L㚬/㧦/㺴/ἥ;->䆀(Landroidx/fragment/app/Fragment;L㚬/ℓ/ㄏ/உ;)V

    return-void
.end method
