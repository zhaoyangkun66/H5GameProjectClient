.class public L㚬/㧦/㺴/㚬$ℓ;
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
.field public final synthetic 㚬:Landroid/view/View;

.field public final synthetic 㺴:Landroid/graphics/Rect;

.field public final synthetic 䂻:L㚬/㧦/㺴/ㄬ;


# direct methods
.method public constructor <init>(L㚬/㧦/㺴/㚬;L㚬/㧦/㺴/ㄬ;Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 0

    iput-object p2, p0, L㚬/㧦/㺴/㚬$ℓ;->䂻:L㚬/㧦/㺴/ㄬ;

    iput-object p3, p0, L㚬/㧦/㺴/㚬$ℓ;->㚬:Landroid/view/View;

    iput-object p4, p0, L㚬/㧦/㺴/㚬$ℓ;->㺴:Landroid/graphics/Rect;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, L㚬/㧦/㺴/㚬$ℓ;->䂻:L㚬/㧦/㺴/ㄬ;

    iget-object v1, p0, L㚬/㧦/㺴/㚬$ℓ;->㚬:Landroid/view/View;

    iget-object v2, p0, L㚬/㧦/㺴/㚬$ℓ;->㺴:Landroid/graphics/Rect;

    invoke-virtual {v0, v1, v2}, L㚬/㧦/㺴/ㄬ;->㧦(Landroid/view/View;Landroid/graphics/Rect;)V

    return-void
.end method
