.class public final synthetic L㺴/உ/㲧/㚬;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic 㚬:Lcom/facebook/bolts/TaskCompletionSource;

.field public final synthetic 䂻:Ljava/util/concurrent/ScheduledFuture;


# direct methods
.method public synthetic constructor <init>(Ljava/util/concurrent/ScheduledFuture;Lcom/facebook/bolts/TaskCompletionSource;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, L㺴/உ/㲧/㚬;->䂻:Ljava/util/concurrent/ScheduledFuture;

    iput-object p2, p0, L㺴/உ/㲧/㚬;->㚬:Lcom/facebook/bolts/TaskCompletionSource;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, L㺴/உ/㲧/㚬;->䂻:Ljava/util/concurrent/ScheduledFuture;

    iget-object v1, p0, L㺴/உ/㲧/㚬;->㚬:Lcom/facebook/bolts/TaskCompletionSource;

    invoke-static {v0, v1}, Lcom/facebook/bolts/Task$Companion;->உ(Ljava/util/concurrent/ScheduledFuture;Lcom/facebook/bolts/TaskCompletionSource;)V

    return-void
.end method
