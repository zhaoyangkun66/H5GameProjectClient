.class public L㚬/㧦/㺴/ม$㺴;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = L㚬/㧦/㺴/ม;->㫏(L㚬/㧦/㺴/ㄬ;Landroid/view/ViewGroup;Landroidx/fragment/app/Fragment;Landroid/view/View;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic ᆻ:Ljava/util/ArrayList;

.field public final synthetic ḓ:Landroidx/fragment/app/Fragment;

.field public final synthetic ℓ:Ljava/util/ArrayList;

.field public final synthetic ㄏ:Ljava/lang/Object;

.field public final synthetic 㚬:L㚬/㧦/㺴/ㄬ;

.field public final synthetic 㺴:Landroid/view/View;

.field public final synthetic 䂻:Ljava/lang/Object;

.field public final synthetic 䆀:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Ljava/lang/Object;L㚬/㧦/㺴/ㄬ;Landroid/view/View;Landroidx/fragment/app/Fragment;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, L㚬/㧦/㺴/ม$㺴;->䂻:Ljava/lang/Object;

    iput-object p2, p0, L㚬/㧦/㺴/ม$㺴;->㚬:L㚬/㧦/㺴/ㄬ;

    iput-object p3, p0, L㚬/㧦/㺴/ม$㺴;->㺴:Landroid/view/View;

    iput-object p4, p0, L㚬/㧦/㺴/ม$㺴;->ḓ:Landroidx/fragment/app/Fragment;

    iput-object p5, p0, L㚬/㧦/㺴/ม$㺴;->䆀:Ljava/util/ArrayList;

    iput-object p6, p0, L㚬/㧦/㺴/ม$㺴;->ᆻ:Ljava/util/ArrayList;

    iput-object p7, p0, L㚬/㧦/㺴/ม$㺴;->ℓ:Ljava/util/ArrayList;

    iput-object p8, p0, L㚬/㧦/㺴/ม$㺴;->ㄏ:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, L㚬/㧦/㺴/ม$㺴;->䂻:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v1, p0, L㚬/㧦/㺴/ม$㺴;->㚬:L㚬/㧦/㺴/ㄬ;

    iget-object v2, p0, L㚬/㧦/㺴/ม$㺴;->㺴:Landroid/view/View;

    invoke-virtual {v1, v0, v2}, L㚬/㧦/㺴/ㄬ;->ბ(Ljava/lang/Object;Landroid/view/View;)V

    iget-object v0, p0, L㚬/㧦/㺴/ม$㺴;->㚬:L㚬/㧦/㺴/ㄬ;

    iget-object v1, p0, L㚬/㧦/㺴/ม$㺴;->䂻:Ljava/lang/Object;

    iget-object v2, p0, L㚬/㧦/㺴/ม$㺴;->ḓ:Landroidx/fragment/app/Fragment;

    iget-object v3, p0, L㚬/㧦/㺴/ม$㺴;->䆀:Ljava/util/ArrayList;

    iget-object v4, p0, L㚬/㧦/㺴/ม$㺴;->㺴:Landroid/view/View;

    invoke-static {v0, v1, v2, v3, v4}, L㚬/㧦/㺴/ม;->㧦(L㚬/㧦/㺴/ㄬ;Ljava/lang/Object;Landroidx/fragment/app/Fragment;Ljava/util/ArrayList;Landroid/view/View;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, L㚬/㧦/㺴/ม$㺴;->ᆻ:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_0
    iget-object v0, p0, L㚬/㧦/㺴/ม$㺴;->ℓ:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    iget-object v0, p0, L㚬/㧦/㺴/ม$㺴;->ㄏ:Ljava/lang/Object;

    if-eqz v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, L㚬/㧦/㺴/ม$㺴;->㺴:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, L㚬/㧦/㺴/ม$㺴;->㚬:L㚬/㧦/㺴/ㄬ;

    iget-object v2, p0, L㚬/㧦/㺴/ม$㺴;->ㄏ:Ljava/lang/Object;

    iget-object v3, p0, L㚬/㧦/㺴/ม$㺴;->ℓ:Ljava/util/ArrayList;

    invoke-virtual {v1, v2, v3, v0}, L㚬/㧦/㺴/ㄬ;->㲝(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    :cond_1
    iget-object v0, p0, L㚬/㧦/㺴/ม$㺴;->ℓ:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, L㚬/㧦/㺴/ม$㺴;->ℓ:Ljava/util/ArrayList;

    iget-object v1, p0, L㚬/㧦/㺴/ม$㺴;->㺴:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    return-void
.end method
