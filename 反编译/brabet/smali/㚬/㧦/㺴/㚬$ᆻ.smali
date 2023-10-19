.class public L㚬/㧦/㺴/㚬$ᆻ;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = L㚬/㧦/㺴/㚬;->㲧(Ljava/util/List;ZL㚬/㧦/㺴/ᾦ$ḓ;L㚬/㧦/㺴/ᾦ$ḓ;)Ljava/util/Map;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic ḓ:L㚬/䆀/உ;

.field public final synthetic 㚬:L㚬/㧦/㺴/ᾦ$ḓ;

.field public final synthetic 㺴:Z

.field public final synthetic 䂻:L㚬/㧦/㺴/ᾦ$ḓ;


# direct methods
.method public constructor <init>(L㚬/㧦/㺴/㚬;L㚬/㧦/㺴/ᾦ$ḓ;L㚬/㧦/㺴/ᾦ$ḓ;ZL㚬/䆀/உ;)V
    .locals 0

    iput-object p2, p0, L㚬/㧦/㺴/㚬$ᆻ;->䂻:L㚬/㧦/㺴/ᾦ$ḓ;

    iput-object p3, p0, L㚬/㧦/㺴/㚬$ᆻ;->㚬:L㚬/㧦/㺴/ᾦ$ḓ;

    iput-boolean p4, p0, L㚬/㧦/㺴/㚬$ᆻ;->㺴:Z

    iput-object p5, p0, L㚬/㧦/㺴/㚬$ᆻ;->ḓ:L㚬/䆀/உ;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, L㚬/㧦/㺴/㚬$ᆻ;->䂻:L㚬/㧦/㺴/ᾦ$ḓ;

    invoke-virtual {v0}, L㚬/㧦/㺴/ᾦ$ḓ;->䆀()Landroidx/fragment/app/Fragment;

    move-result-object v0

    iget-object v1, p0, L㚬/㧦/㺴/㚬$ᆻ;->㚬:L㚬/㧦/㺴/ᾦ$ḓ;

    invoke-virtual {v1}, L㚬/㧦/㺴/ᾦ$ḓ;->䆀()Landroidx/fragment/app/Fragment;

    move-result-object v1

    iget-boolean v2, p0, L㚬/㧦/㺴/㚬$ᆻ;->㺴:Z

    iget-object v3, p0, L㚬/㧦/㺴/㚬$ᆻ;->ḓ:L㚬/䆀/உ;

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, L㚬/㧦/㺴/ม;->䆀(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;ZL㚬/䆀/உ;Z)V

    return-void
.end method
