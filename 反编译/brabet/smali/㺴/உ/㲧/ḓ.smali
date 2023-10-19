.class public final synthetic L㺴/உ/㲧/ḓ;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/bolts/Continuation;


# instance fields
.field public final synthetic உ:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final synthetic 䂻:Lcom/facebook/bolts/TaskCompletionSource;


# direct methods
.method public synthetic constructor <init>(Ljava/util/concurrent/atomic/AtomicBoolean;Lcom/facebook/bolts/TaskCompletionSource;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, L㺴/உ/㲧/ḓ;->உ:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p2, p0, L㺴/உ/㲧/ḓ;->䂻:Lcom/facebook/bolts/TaskCompletionSource;

    return-void
.end method


# virtual methods
.method public final then(Lcom/facebook/bolts/Task;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, L㺴/உ/㲧/ḓ;->உ:Ljava/util/concurrent/atomic/AtomicBoolean;

    iget-object v1, p0, L㺴/உ/㲧/ḓ;->䂻:Lcom/facebook/bolts/TaskCompletionSource;

    invoke-static {v0, v1, p1}, Lcom/facebook/bolts/Task$Companion;->㚬(Ljava/util/concurrent/atomic/AtomicBoolean;Lcom/facebook/bolts/TaskCompletionSource;Lcom/facebook/bolts/Task;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method
