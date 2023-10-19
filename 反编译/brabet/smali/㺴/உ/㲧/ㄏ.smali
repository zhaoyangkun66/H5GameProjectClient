.class public final synthetic L㺴/உ/㲧/ㄏ;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic ḓ:Lcom/facebook/bolts/Task;

.field public final synthetic 㚬:Lcom/facebook/bolts/TaskCompletionSource;

.field public final synthetic 㺴:Lcom/facebook/bolts/Continuation;

.field public final synthetic 䂻:Lcom/facebook/bolts/CancellationToken;


# direct methods
.method public synthetic constructor <init>(Lcom/facebook/bolts/CancellationToken;Lcom/facebook/bolts/TaskCompletionSource;Lcom/facebook/bolts/Continuation;Lcom/facebook/bolts/Task;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, L㺴/உ/㲧/ㄏ;->䂻:Lcom/facebook/bolts/CancellationToken;

    iput-object p2, p0, L㺴/உ/㲧/ㄏ;->㚬:Lcom/facebook/bolts/TaskCompletionSource;

    iput-object p3, p0, L㺴/உ/㲧/ㄏ;->㺴:Lcom/facebook/bolts/Continuation;

    iput-object p4, p0, L㺴/உ/㲧/ㄏ;->ḓ:Lcom/facebook/bolts/Task;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, L㺴/உ/㲧/ㄏ;->䂻:Lcom/facebook/bolts/CancellationToken;

    iget-object v1, p0, L㺴/உ/㲧/ㄏ;->㚬:Lcom/facebook/bolts/TaskCompletionSource;

    iget-object v2, p0, L㺴/உ/㲧/ㄏ;->㺴:Lcom/facebook/bolts/Continuation;

    iget-object v3, p0, L㺴/உ/㲧/ㄏ;->ḓ:Lcom/facebook/bolts/Task;

    invoke-static {v0, v1, v2, v3}, Lcom/facebook/bolts/Task$Companion;->ᆻ(Lcom/facebook/bolts/CancellationToken;Lcom/facebook/bolts/TaskCompletionSource;Lcom/facebook/bolts/Continuation;Lcom/facebook/bolts/Task;)V

    return-void
.end method
