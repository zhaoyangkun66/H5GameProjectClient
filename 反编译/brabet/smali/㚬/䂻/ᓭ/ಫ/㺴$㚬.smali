.class public L㚬/䂻/ᓭ/ಫ/㺴$㚬;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements L㚬/䂻/ბ/ർ;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = L㚬/䂻/ᓭ/ಫ/㺴;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic 䂻:L㚬/䂻/ᓭ/ಫ/㺴;


# direct methods
.method public constructor <init>(L㚬/䂻/ᓭ/ಫ/㺴;)V
    .locals 0

    iput-object p1, p0, L㚬/䂻/ᓭ/ಫ/㺴$㚬;->䂻:L㚬/䂻/ᓭ/ಫ/㺴;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public உ(L㚬/䂻/ᓭ/ಫ/ᆻ;Landroid/view/MenuItem;)V
    .locals 5

    iget-object v0, p0, L㚬/䂻/ᓭ/ಫ/㺴$㚬;->䂻:L㚬/䂻/ᓭ/ಫ/㺴;

    iget-object v0, v0, L㚬/䂻/ᓭ/ಫ/㺴;->ℓ:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v0, p0, L㚬/䂻/ᓭ/ಫ/㺴$㚬;->䂻:L㚬/䂻/ᓭ/ಫ/㺴;

    iget-object v0, v0, L㚬/䂻/ᓭ/ಫ/㺴;->ಫ:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x0

    :goto_0
    const/4 v3, -0x1

    if-ge v2, v0, :cond_1

    iget-object v4, p0, L㚬/䂻/ᓭ/ಫ/㺴$㚬;->䂻:L㚬/䂻/ᓭ/ಫ/㺴;

    iget-object v4, v4, L㚬/䂻/ᓭ/ಫ/㺴;->ಫ:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, L㚬/䂻/ᓭ/ಫ/㺴$㺴;

    iget-object v4, v4, L㚬/䂻/ᓭ/ಫ/㺴$㺴;->䂻:L㚬/䂻/ᓭ/ಫ/ᆻ;

    if-ne p1, v4, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, -0x1

    :goto_1
    if-ne v2, v3, :cond_2

    return-void

    :cond_2
    add-int/lit8 v2, v2, 0x1

    iget-object v0, p0, L㚬/䂻/ᓭ/ಫ/㺴$㚬;->䂻:L㚬/䂻/ᓭ/ಫ/㺴;

    iget-object v0, v0, L㚬/䂻/ᓭ/ಫ/㺴;->ಫ:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_3

    iget-object v0, p0, L㚬/䂻/ᓭ/ಫ/㺴$㚬;->䂻:L㚬/䂻/ᓭ/ಫ/㺴;

    iget-object v0, v0, L㚬/䂻/ᓭ/ಫ/㺴;->ಫ:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, L㚬/䂻/ᓭ/ಫ/㺴$㺴;

    :cond_3
    new-instance v0, L㚬/䂻/ᓭ/ಫ/㺴$㚬$உ;

    invoke-direct {v0, p0, v1, p2, p1}, L㚬/䂻/ᓭ/ಫ/㺴$㚬$உ;-><init>(L㚬/䂻/ᓭ/ಫ/㺴$㚬;L㚬/䂻/ᓭ/ಫ/㺴$㺴;Landroid/view/MenuItem;L㚬/䂻/ᓭ/ಫ/ᆻ;)V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0xc8

    add-long/2addr v1, v3

    iget-object p2, p0, L㚬/䂻/ᓭ/ಫ/㺴$㚬;->䂻:L㚬/䂻/ᓭ/ಫ/㺴;

    iget-object p2, p2, L㚬/䂻/ᓭ/ಫ/㺴;->ℓ:Landroid/os/Handler;

    invoke-virtual {p2, v0, p1, v1, v2}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;Ljava/lang/Object;J)Z

    return-void
.end method

.method public ㄏ(L㚬/䂻/ᓭ/ಫ/ᆻ;Landroid/view/MenuItem;)V
    .locals 0

    iget-object p2, p0, L㚬/䂻/ᓭ/ಫ/㺴$㚬;->䂻:L㚬/䂻/ᓭ/ಫ/㺴;

    iget-object p2, p2, L㚬/䂻/ᓭ/ಫ/㺴;->ℓ:Landroid/os/Handler;

    invoke-virtual {p2, p1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method
