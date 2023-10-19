.class public L㚬/㧦/㺴/ม$䆀;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = L㚬/㧦/㺴/ม;->㹖(L㚬/㧦/㺴/ㄬ;Landroid/view/ViewGroup;Landroid/view/View;L㚬/䆀/உ;L㚬/㧦/㺴/ม$ℓ;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic ಫ:Z

.field public final synthetic ᆻ:Landroid/view/View;

.field public final synthetic ḓ:L㚬/㧦/㺴/ม$ℓ;

.field public final synthetic ἥ:Landroid/graphics/Rect;

.field public final synthetic ℓ:Landroidx/fragment/app/Fragment;

.field public final synthetic ㄏ:Landroidx/fragment/app/Fragment;

.field public final synthetic 㚬:L㚬/䆀/உ;

.field public final synthetic 㧦:Ljava/util/ArrayList;

.field public final synthetic 㹖:Ljava/lang/Object;

.field public final synthetic 㺴:Ljava/lang/Object;

.field public final synthetic 䂻:L㚬/㧦/㺴/ㄬ;

.field public final synthetic 䆀:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(L㚬/㧦/㺴/ㄬ;L㚬/䆀/உ;Ljava/lang/Object;L㚬/㧦/㺴/ม$ℓ;Ljava/util/ArrayList;Landroid/view/View;Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;ZLjava/util/ArrayList;Ljava/lang/Object;Landroid/graphics/Rect;)V
    .locals 0

    iput-object p1, p0, L㚬/㧦/㺴/ม$䆀;->䂻:L㚬/㧦/㺴/ㄬ;

    iput-object p2, p0, L㚬/㧦/㺴/ม$䆀;->㚬:L㚬/䆀/உ;

    iput-object p3, p0, L㚬/㧦/㺴/ม$䆀;->㺴:Ljava/lang/Object;

    iput-object p4, p0, L㚬/㧦/㺴/ม$䆀;->ḓ:L㚬/㧦/㺴/ม$ℓ;

    iput-object p5, p0, L㚬/㧦/㺴/ม$䆀;->䆀:Ljava/util/ArrayList;

    iput-object p6, p0, L㚬/㧦/㺴/ม$䆀;->ᆻ:Landroid/view/View;

    iput-object p7, p0, L㚬/㧦/㺴/ม$䆀;->ℓ:Landroidx/fragment/app/Fragment;

    iput-object p8, p0, L㚬/㧦/㺴/ม$䆀;->ㄏ:Landroidx/fragment/app/Fragment;

    iput-boolean p9, p0, L㚬/㧦/㺴/ม$䆀;->ಫ:Z

    iput-object p10, p0, L㚬/㧦/㺴/ม$䆀;->㧦:Ljava/util/ArrayList;

    iput-object p11, p0, L㚬/㧦/㺴/ม$䆀;->㹖:Ljava/lang/Object;

    iput-object p12, p0, L㚬/㧦/㺴/ม$䆀;->ἥ:Landroid/graphics/Rect;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, L㚬/㧦/㺴/ม$䆀;->䂻:L㚬/㧦/㺴/ㄬ;

    iget-object v1, p0, L㚬/㧦/㺴/ม$䆀;->㚬:L㚬/䆀/உ;

    iget-object v2, p0, L㚬/㧦/㺴/ม$䆀;->㺴:Ljava/lang/Object;

    iget-object v3, p0, L㚬/㧦/㺴/ม$䆀;->ḓ:L㚬/㧦/㺴/ม$ℓ;

    invoke-static {v0, v1, v2, v3}, L㚬/㧦/㺴/ม;->ℓ(L㚬/㧦/㺴/ㄬ;L㚬/䆀/உ;Ljava/lang/Object;L㚬/㧦/㺴/ม$ℓ;)L㚬/䆀/உ;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, L㚬/㧦/㺴/ม$䆀;->䆀:Ljava/util/ArrayList;

    invoke-virtual {v0}, L㚬/䆀/உ;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v1, p0, L㚬/㧦/㺴/ม$䆀;->䆀:Ljava/util/ArrayList;

    iget-object v2, p0, L㚬/㧦/㺴/ม$䆀;->ᆻ:Landroid/view/View;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object v1, p0, L㚬/㧦/㺴/ม$䆀;->ℓ:Landroidx/fragment/app/Fragment;

    iget-object v2, p0, L㚬/㧦/㺴/ม$䆀;->ㄏ:Landroidx/fragment/app/Fragment;

    iget-boolean v3, p0, L㚬/㧦/㺴/ม$䆀;->ಫ:Z

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v0, v4}, L㚬/㧦/㺴/ม;->䆀(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;ZL㚬/䆀/உ;Z)V

    iget-object v1, p0, L㚬/㧦/㺴/ม$䆀;->㺴:Ljava/lang/Object;

    if-eqz v1, :cond_1

    iget-object v2, p0, L㚬/㧦/㺴/ม$䆀;->䂻:L㚬/㧦/㺴/ㄬ;

    iget-object v3, p0, L㚬/㧦/㺴/ม$䆀;->㧦:Ljava/util/ArrayList;

    iget-object v4, p0, L㚬/㧦/㺴/ม$䆀;->䆀:Ljava/util/ArrayList;

    invoke-virtual {v2, v1, v3, v4}, L㚬/㧦/㺴/ㄬ;->ಋ(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    iget-object v1, p0, L㚬/㧦/㺴/ม$䆀;->ḓ:L㚬/㧦/㺴/ม$ℓ;

    iget-object v2, p0, L㚬/㧦/㺴/ม$䆀;->㹖:Ljava/lang/Object;

    iget-boolean v3, p0, L㚬/㧦/㺴/ม$䆀;->ಫ:Z

    invoke-static {v0, v1, v2, v3}, L㚬/㧦/㺴/ม;->ḙ(L㚬/䆀/உ;L㚬/㧦/㺴/ม$ℓ;Ljava/lang/Object;Z)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, L㚬/㧦/㺴/ม$䆀;->䂻:L㚬/㧦/㺴/ㄬ;

    iget-object v2, p0, L㚬/㧦/㺴/ม$䆀;->ἥ:Landroid/graphics/Rect;

    invoke-virtual {v1, v0, v2}, L㚬/㧦/㺴/ㄬ;->㧦(Landroid/view/View;Landroid/graphics/Rect;)V

    :cond_1
    return-void
.end method
