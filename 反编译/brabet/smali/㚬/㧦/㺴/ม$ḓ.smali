.class public L㚬/㧦/㺴/ม$ḓ;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = L㚬/㧦/㺴/ม;->ἥ(L㚬/㧦/㺴/ㄬ;Landroid/view/ViewGroup;Landroid/view/View;L㚬/䆀/உ;L㚬/㧦/㺴/ม$ℓ;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic ᆻ:L㚬/㧦/㺴/ㄬ;

.field public final synthetic ḓ:L㚬/䆀/உ;

.field public final synthetic ℓ:Landroid/graphics/Rect;

.field public final synthetic 㚬:Landroidx/fragment/app/Fragment;

.field public final synthetic 㺴:Z

.field public final synthetic 䂻:Landroidx/fragment/app/Fragment;

.field public final synthetic 䆀:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;ZL㚬/䆀/உ;Landroid/view/View;L㚬/㧦/㺴/ㄬ;Landroid/graphics/Rect;)V
    .locals 0

    iput-object p1, p0, L㚬/㧦/㺴/ม$ḓ;->䂻:Landroidx/fragment/app/Fragment;

    iput-object p2, p0, L㚬/㧦/㺴/ม$ḓ;->㚬:Landroidx/fragment/app/Fragment;

    iput-boolean p3, p0, L㚬/㧦/㺴/ม$ḓ;->㺴:Z

    iput-object p4, p0, L㚬/㧦/㺴/ม$ḓ;->ḓ:L㚬/䆀/உ;

    iput-object p5, p0, L㚬/㧦/㺴/ม$ḓ;->䆀:Landroid/view/View;

    iput-object p6, p0, L㚬/㧦/㺴/ม$ḓ;->ᆻ:L㚬/㧦/㺴/ㄬ;

    iput-object p7, p0, L㚬/㧦/㺴/ม$ḓ;->ℓ:Landroid/graphics/Rect;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, L㚬/㧦/㺴/ม$ḓ;->䂻:Landroidx/fragment/app/Fragment;

    iget-object v1, p0, L㚬/㧦/㺴/ม$ḓ;->㚬:Landroidx/fragment/app/Fragment;

    iget-boolean v2, p0, L㚬/㧦/㺴/ม$ḓ;->㺴:Z

    iget-object v3, p0, L㚬/㧦/㺴/ม$ḓ;->ḓ:L㚬/䆀/உ;

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, L㚬/㧦/㺴/ม;->䆀(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;ZL㚬/䆀/உ;Z)V

    iget-object v0, p0, L㚬/㧦/㺴/ม$ḓ;->䆀:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v1, p0, L㚬/㧦/㺴/ม$ḓ;->ᆻ:L㚬/㧦/㺴/ㄬ;

    iget-object v2, p0, L㚬/㧦/㺴/ม$ḓ;->ℓ:Landroid/graphics/Rect;

    invoke-virtual {v1, v0, v2}, L㚬/㧦/㺴/ㄬ;->㧦(Landroid/view/View;Landroid/graphics/Rect;)V

    :cond_0
    return-void
.end method
