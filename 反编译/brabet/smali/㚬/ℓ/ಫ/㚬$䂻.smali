.class public L㚬/ℓ/ಫ/㚬$䂻;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = L㚬/ℓ/ಫ/㚬;->㺴(Ljava/util/concurrent/Callable;L㚬/ℓ/ಫ/㚬$㺴;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic 㚬:Landroid/os/Handler;

.field public final synthetic 㺴:L㚬/ℓ/ಫ/㚬$㺴;

.field public final synthetic 䂻:Ljava/util/concurrent/Callable;


# direct methods
.method public constructor <init>(L㚬/ℓ/ಫ/㚬;Ljava/util/concurrent/Callable;Landroid/os/Handler;L㚬/ℓ/ಫ/㚬$㺴;)V
    .locals 0

    iput-object p2, p0, L㚬/ℓ/ಫ/㚬$䂻;->䂻:Ljava/util/concurrent/Callable;

    iput-object p3, p0, L㚬/ℓ/ಫ/㚬$䂻;->㚬:Landroid/os/Handler;

    iput-object p4, p0, L㚬/ℓ/ಫ/㚬$䂻;->㺴:L㚬/ℓ/ಫ/㚬$㺴;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    :try_start_0
    iget-object v0, p0, L㚬/ℓ/ಫ/㚬$䂻;->䂻:Ljava/util/concurrent/Callable;

    invoke-interface {v0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, L㚬/ℓ/ಫ/㚬$䂻;->㚬:Landroid/os/Handler;

    new-instance v2, L㚬/ℓ/ಫ/㚬$䂻$உ;

    invoke-direct {v2, p0, v0}, L㚬/ℓ/ಫ/㚬$䂻$உ;-><init>(L㚬/ℓ/ಫ/㚬$䂻;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
