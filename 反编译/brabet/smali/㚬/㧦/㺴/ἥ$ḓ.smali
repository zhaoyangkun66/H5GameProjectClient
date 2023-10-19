.class public L㚬/㧦/㺴/ἥ$ḓ;
.super L㚬/㧦/㺴/ㄏ;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = L㚬/㧦/㺴/ἥ;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic 䂻:L㚬/㧦/㺴/ἥ;


# direct methods
.method public constructor <init>(L㚬/㧦/㺴/ἥ;)V
    .locals 0

    iput-object p1, p0, L㚬/㧦/㺴/ἥ$ḓ;->䂻:L㚬/㧦/㺴/ἥ;

    invoke-direct {p0}, L㚬/㧦/㺴/ㄏ;-><init>()V

    return-void
.end method


# virtual methods
.method public உ(Ljava/lang/ClassLoader;Ljava/lang/String;)Landroidx/fragment/app/Fragment;
    .locals 2

    iget-object p1, p0, L㚬/㧦/㺴/ἥ$ḓ;->䂻:L㚬/㧦/㺴/ἥ;

    invoke-virtual {p1}, L㚬/㧦/㺴/ἥ;->ध()L㚬/㧦/㺴/ಫ;

    move-result-object p1

    iget-object v0, p0, L㚬/㧦/㺴/ἥ$ḓ;->䂻:L㚬/㧦/㺴/ἥ;

    invoke-virtual {v0}, L㚬/㧦/㺴/ἥ;->ध()L㚬/㧦/㺴/ಫ;

    move-result-object v0

    invoke-virtual {v0}, L㚬/㧦/㺴/ಫ;->䆀()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, L㚬/㧦/㺴/䆀;->䂻(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroidx/fragment/app/Fragment;

    move-result-object p1

    return-object p1
.end method
