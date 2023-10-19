.class public L㚬/㧦/㺴/ㄬ$䂻;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = L㚬/㧦/㺴/ㄬ;->㲧(Landroid/view/View;Ljava/util/ArrayList;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic 㚬:Ljava/util/Map;

.field public final synthetic 䂻:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(L㚬/㧦/㺴/ㄬ;Ljava/util/ArrayList;Ljava/util/Map;)V
    .locals 0

    iput-object p2, p0, L㚬/㧦/㺴/ㄬ$䂻;->䂻:Ljava/util/ArrayList;

    iput-object p3, p0, L㚬/㧦/㺴/ㄬ$䂻;->㚬:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, L㚬/㧦/㺴/ㄬ$䂻;->䂻:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v2, p0, L㚬/㧦/㺴/ㄬ$䂻;->䂻:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-static {v2}, L㚬/ℓ/ἥ/㭲;->ڈ(Landroid/view/View;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v4, p0, L㚬/㧦/㺴/ㄬ$䂻;->㚬:Ljava/util/Map;

    invoke-static {v4, v3}, L㚬/㧦/㺴/ㄬ;->ㄏ(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, L㚬/ℓ/ἥ/㭲;->ਬ(Landroid/view/View;Ljava/lang/String;)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
