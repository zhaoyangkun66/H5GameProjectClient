.class public final synthetic L㺴/உ/㲧/ℓ;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic 㚬:Lcom/facebook/bolts/TaskCompletionSource;

.field public final synthetic 㺴:Ljava/util/concurrent/Callable;

.field public final synthetic 䂻:Lcom/facebook/bolts/CancellationToken;


# direct methods
.method public synthetic constructor <init>(Lcom/facebook/bolts/CancellationToken;Lcom/facebook/bolts/TaskCompletionSource;Ljava/util/concurrent/Callable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, L㺴/உ/㲧/ℓ;->䂻:Lcom/facebook/bolts/CancellationToken;

    iput-object p2, p0, L㺴/உ/㲧/ℓ;->㚬:Lcom/facebook/bolts/TaskCompletionSource;

    iput-object p3, p0, L㺴/உ/㲧/ℓ;->㺴:Ljava/util/concurrent/Callable;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, L㺴/உ/㲧/ℓ;->䂻:Lcom/facebook/bolts/CancellationToken;

    iget-object v1, p0, L㺴/உ/㲧/ℓ;->㚬:Lcom/facebook/bolts/TaskCompletionSource;

    iget-object v2, p0, L㺴/உ/㲧/ℓ;->㺴:Ljava/util/concurrent/Callable;

    invoke-static {v0, v1, v2}, Lcom/facebook/bolts/Task$Companion;->䆀(Lcom/facebook/bolts/CancellationToken;Lcom/facebook/bolts/TaskCompletionSource;Ljava/util/concurrent/Callable;)V

    return-void
.end method
