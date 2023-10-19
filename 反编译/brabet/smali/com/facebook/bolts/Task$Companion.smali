.class public final Lcom/facebook/bolts/Task$Companion;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/bolts/Task;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lḓ/ᓭ/㺴/ᆻ;)V
    .locals 0

    invoke-direct {p0}, Lcom/facebook/bolts/Task$Companion;-><init>()V

    return-void
.end method

.method public static final synthetic access$completeAfterTask(Lcom/facebook/bolts/Task$Companion;Lcom/facebook/bolts/TaskCompletionSource;Lcom/facebook/bolts/Continuation;Lcom/facebook/bolts/Task;Ljava/util/concurrent/Executor;Lcom/facebook/bolts/CancellationToken;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/facebook/bolts/Task$Companion;->completeAfterTask(Lcom/facebook/bolts/TaskCompletionSource;Lcom/facebook/bolts/Continuation;Lcom/facebook/bolts/Task;Ljava/util/concurrent/Executor;Lcom/facebook/bolts/CancellationToken;)V

    return-void
.end method

.method public static final synthetic access$completeImmediately(Lcom/facebook/bolts/Task$Companion;Lcom/facebook/bolts/TaskCompletionSource;Lcom/facebook/bolts/Continuation;Lcom/facebook/bolts/Task;Ljava/util/concurrent/Executor;Lcom/facebook/bolts/CancellationToken;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/facebook/bolts/Task$Companion;->completeImmediately(Lcom/facebook/bolts/TaskCompletionSource;Lcom/facebook/bolts/Continuation;Lcom/facebook/bolts/Task;Ljava/util/concurrent/Executor;Lcom/facebook/bolts/CancellationToken;)V

    return-void
.end method

.method private static final call$lambda-2(Lcom/facebook/bolts/CancellationToken;Lcom/facebook/bolts/TaskCompletionSource;Ljava/util/concurrent/Callable;)V
    .locals 1

    const-string v0, "$tcs"

    invoke-static {p1, v0}, Lḓ/ᓭ/㺴/ಫ;->㺴(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$callable"

    invoke-static {p2, v0}, Lḓ/ᓭ/㺴/ಫ;->㺴(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/facebook/bolts/CancellationToken;->isCancellationRequested()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Lcom/facebook/bolts/TaskCompletionSource;->setCancelled()V

    return-void

    :cond_0
    :try_start_0
    invoke-interface {p2}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/facebook/bolts/TaskCompletionSource;->setResult(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p1, p0}, Lcom/facebook/bolts/TaskCompletionSource;->setError(Ljava/lang/Exception;)V

    goto :goto_0

    :catch_1
    invoke-virtual {p1}, Lcom/facebook/bolts/TaskCompletionSource;->setCancelled()V

    :goto_0
    return-void
.end method

.method private final completeAfterTask(Lcom/facebook/bolts/TaskCompletionSource;Lcom/facebook/bolts/Continuation;Lcom/facebook/bolts/Task;Ljava/util/concurrent/Executor;Lcom/facebook/bolts/CancellationToken;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TContinuationResult:",
            "Ljava/lang/Object;",
            "TResult:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/facebook/bolts/TaskCompletionSource<",
            "TTContinuationResult;>;",
            "Lcom/facebook/bolts/Continuation<",
            "TTResult;",
            "Lcom/facebook/bolts/Task<",
            "TTContinuationResult;>;>;",
            "Lcom/facebook/bolts/Task<",
            "TTResult;>;",
            "Ljava/util/concurrent/Executor;",
            "Lcom/facebook/bolts/CancellationToken;",
            ")V"
        }
    .end annotation

    :try_start_0
    new-instance v0, L㺴/உ/㲧/㺴;

    invoke-direct {v0, p5, p1, p2, p3}, L㺴/உ/㲧/㺴;-><init>(Lcom/facebook/bolts/CancellationToken;Lcom/facebook/bolts/TaskCompletionSource;Lcom/facebook/bolts/Continuation;Lcom/facebook/bolts/Task;)V

    invoke-interface {p4, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    new-instance p3, Lcom/facebook/bolts/ExecutorException;

    invoke-direct {p3, p2}, Lcom/facebook/bolts/ExecutorException;-><init>(Ljava/lang/Exception;)V

    invoke-virtual {p1, p3}, Lcom/facebook/bolts/TaskCompletionSource;->setError(Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method private static final completeAfterTask$lambda-7(Lcom/facebook/bolts/CancellationToken;Lcom/facebook/bolts/TaskCompletionSource;Lcom/facebook/bolts/Continuation;Lcom/facebook/bolts/Task;)V
    .locals 1

    const-string v0, "$tcs"

    invoke-static {p1, v0}, Lḓ/ᓭ/㺴/ಫ;->㺴(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$continuation"

    invoke-static {p2, v0}, Lḓ/ᓭ/㺴/ಫ;->㺴(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$task"

    invoke-static {p3, v0}, Lḓ/ᓭ/㺴/ಫ;->㺴(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/facebook/bolts/CancellationToken;->isCancellationRequested()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/facebook/bolts/TaskCompletionSource;->setCancelled()V

    return-void

    :cond_0
    :try_start_0
    invoke-interface {p2, p3}, Lcom/facebook/bolts/Continuation;->then(Lcom/facebook/bolts/Task;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/facebook/bolts/Task;

    if-nez p2, :cond_1

    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Lcom/facebook/bolts/TaskCompletionSource;->setResult(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    new-instance p3, L㺴/உ/㲧/䆀;

    invoke-direct {p3, p0, p1}, L㺴/உ/㲧/䆀;-><init>(Lcom/facebook/bolts/CancellationToken;Lcom/facebook/bolts/TaskCompletionSource;)V

    invoke-virtual {p2, p3}, Lcom/facebook/bolts/Task;->continueWith(Lcom/facebook/bolts/Continuation;)Lcom/facebook/bolts/Task;
    :try_end_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p1, p0}, Lcom/facebook/bolts/TaskCompletionSource;->setError(Ljava/lang/Exception;)V

    goto :goto_0

    :catch_1
    invoke-virtual {p1}, Lcom/facebook/bolts/TaskCompletionSource;->setCancelled()V

    :goto_0
    return-void
.end method

.method private static final completeAfterTask$lambda-7$lambda-6(Lcom/facebook/bolts/CancellationToken;Lcom/facebook/bolts/TaskCompletionSource;Lcom/facebook/bolts/Task;)Ljava/lang/Void;
    .locals 1

    const-string v0, "$tcs"

    invoke-static {p1, v0}, Lḓ/ᓭ/㺴/ಫ;->㺴(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "task"

    invoke-static {p2, v0}, Lḓ/ᓭ/㺴/ಫ;->㺴(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/facebook/bolts/CancellationToken;->isCancellationRequested()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Lcom/facebook/bolts/TaskCompletionSource;->setCancelled()V

    return-object v0

    :cond_0
    invoke-virtual {p2}, Lcom/facebook/bolts/Task;->isCancelled()Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-virtual {p1}, Lcom/facebook/bolts/TaskCompletionSource;->setCancelled()V

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Lcom/facebook/bolts/Task;->isFaulted()Z

    move-result p0

    if-eqz p0, :cond_2

    invoke-virtual {p2}, Lcom/facebook/bolts/Task;->getError()Ljava/lang/Exception;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/facebook/bolts/TaskCompletionSource;->setError(Ljava/lang/Exception;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p2}, Lcom/facebook/bolts/Task;->getResult()Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/facebook/bolts/TaskCompletionSource;->setResult(Ljava/lang/Object;)V

    :goto_0
    return-object v0
.end method

.method private final completeImmediately(Lcom/facebook/bolts/TaskCompletionSource;Lcom/facebook/bolts/Continuation;Lcom/facebook/bolts/Task;Ljava/util/concurrent/Executor;Lcom/facebook/bolts/CancellationToken;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TContinuationResult:",
            "Ljava/lang/Object;",
            "TResult:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/facebook/bolts/TaskCompletionSource<",
            "TTContinuationResult;>;",
            "Lcom/facebook/bolts/Continuation<",
            "TTResult;TTContinuationResult;>;",
            "Lcom/facebook/bolts/Task<",
            "TTResult;>;",
            "Ljava/util/concurrent/Executor;",
            "Lcom/facebook/bolts/CancellationToken;",
            ")V"
        }
    .end annotation

    :try_start_0
    new-instance v0, L㺴/உ/㲧/ㄏ;

    invoke-direct {v0, p5, p1, p2, p3}, L㺴/உ/㲧/ㄏ;-><init>(Lcom/facebook/bolts/CancellationToken;Lcom/facebook/bolts/TaskCompletionSource;Lcom/facebook/bolts/Continuation;Lcom/facebook/bolts/Task;)V

    invoke-interface {p4, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    new-instance p3, Lcom/facebook/bolts/ExecutorException;

    invoke-direct {p3, p2}, Lcom/facebook/bolts/ExecutorException;-><init>(Ljava/lang/Exception;)V

    invoke-virtual {p1, p3}, Lcom/facebook/bolts/TaskCompletionSource;->setError(Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method private static final completeImmediately$lambda-5(Lcom/facebook/bolts/CancellationToken;Lcom/facebook/bolts/TaskCompletionSource;Lcom/facebook/bolts/Continuation;Lcom/facebook/bolts/Task;)V
    .locals 1

    const-string v0, "$tcs"

    invoke-static {p1, v0}, Lḓ/ᓭ/㺴/ಫ;->㺴(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$continuation"

    invoke-static {p2, v0}, Lḓ/ᓭ/㺴/ಫ;->㺴(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$task"

    invoke-static {p3, v0}, Lḓ/ᓭ/㺴/ಫ;->㺴(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/facebook/bolts/CancellationToken;->isCancellationRequested()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Lcom/facebook/bolts/TaskCompletionSource;->setCancelled()V

    return-void

    :cond_0
    :try_start_0
    invoke-interface {p2, p3}, Lcom/facebook/bolts/Continuation;->then(Lcom/facebook/bolts/Task;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/facebook/bolts/TaskCompletionSource;->setResult(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p1, p0}, Lcom/facebook/bolts/TaskCompletionSource;->setError(Ljava/lang/Exception;)V

    goto :goto_0

    :catch_1
    invoke-virtual {p1}, Lcom/facebook/bolts/TaskCompletionSource;->setCancelled()V

    :goto_0
    return-void
.end method

.method private static final delay$lambda-0(Lcom/facebook/bolts/TaskCompletionSource;)V
    .locals 1

    const-string v0, "$tcs"

    invoke-static {p0, v0}, Lḓ/ᓭ/㺴/ಫ;->㺴(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/facebook/bolts/TaskCompletionSource;->trySetResult(Ljava/lang/Object;)Z

    return-void
.end method

.method private static final delay$lambda-1(Ljava/util/concurrent/ScheduledFuture;Lcom/facebook/bolts/TaskCompletionSource;)V
    .locals 1

    const-string v0, "$tcs"

    invoke-static {p1, v0}, Lḓ/ᓭ/㺴/ಫ;->㺴(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-interface {p0, v0}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    invoke-virtual {p1}, Lcom/facebook/bolts/TaskCompletionSource;->trySetCancelled()Z

    return-void
.end method

.method private static final whenAny$lambda-4(Ljava/util/concurrent/atomic/AtomicBoolean;Lcom/facebook/bolts/TaskCompletionSource;Lcom/facebook/bolts/Task;)Ljava/lang/Void;
    .locals 2

    const-string v0, "$isAnyTaskComplete"

    invoke-static {p0, v0}, Lḓ/ᓭ/㺴/ಫ;->㺴(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$firstCompleted"

    invoke-static {p1, v0}, Lḓ/ᓭ/㺴/ಫ;->㺴(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p2, v0}, Lḓ/ᓭ/㺴/ಫ;->㺴(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {p1, p2}, Lcom/facebook/bolts/TaskCompletionSource;->setResult(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lcom/facebook/bolts/Task;->getError()Ljava/lang/Exception;

    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private static final whenAnyResult$lambda-3(Ljava/util/concurrent/atomic/AtomicBoolean;Lcom/facebook/bolts/TaskCompletionSource;Lcom/facebook/bolts/Task;)Ljava/lang/Void;
    .locals 2

    const-string v0, "$isAnyTaskComplete"

    invoke-static {p0, v0}, Lḓ/ᓭ/㺴/ಫ;->㺴(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$firstCompleted"

    invoke-static {p1, v0}, Lḓ/ᓭ/㺴/ಫ;->㺴(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p2, v0}, Lḓ/ᓭ/㺴/ಫ;->㺴(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {p1, p2}, Lcom/facebook/bolts/TaskCompletionSource;->setResult(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lcom/facebook/bolts/Task;->getError()Ljava/lang/Exception;

    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static synthetic உ(Ljava/util/concurrent/ScheduledFuture;Lcom/facebook/bolts/TaskCompletionSource;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/facebook/bolts/Task$Companion;->delay$lambda-1(Ljava/util/concurrent/ScheduledFuture;Lcom/facebook/bolts/TaskCompletionSource;)V

    return-void
.end method

.method public static synthetic ᆻ(Lcom/facebook/bolts/CancellationToken;Lcom/facebook/bolts/TaskCompletionSource;Lcom/facebook/bolts/Continuation;Lcom/facebook/bolts/Task;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/facebook/bolts/Task$Companion;->completeImmediately$lambda-5(Lcom/facebook/bolts/CancellationToken;Lcom/facebook/bolts/TaskCompletionSource;Lcom/facebook/bolts/Continuation;Lcom/facebook/bolts/Task;)V

    return-void
.end method

.method public static synthetic ḓ(Lcom/facebook/bolts/TaskCompletionSource;)V
    .locals 0

    invoke-static {p0}, Lcom/facebook/bolts/Task$Companion;->delay$lambda-0(Lcom/facebook/bolts/TaskCompletionSource;)V

    return-void
.end method

.method public static synthetic ℓ(Ljava/util/concurrent/atomic/AtomicBoolean;Lcom/facebook/bolts/TaskCompletionSource;Lcom/facebook/bolts/Task;)Ljava/lang/Void;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/facebook/bolts/Task$Companion;->whenAny$lambda-4(Ljava/util/concurrent/atomic/AtomicBoolean;Lcom/facebook/bolts/TaskCompletionSource;Lcom/facebook/bolts/Task;)Ljava/lang/Void;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic 㚬(Ljava/util/concurrent/atomic/AtomicBoolean;Lcom/facebook/bolts/TaskCompletionSource;Lcom/facebook/bolts/Task;)Ljava/lang/Void;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/facebook/bolts/Task$Companion;->whenAnyResult$lambda-3(Ljava/util/concurrent/atomic/AtomicBoolean;Lcom/facebook/bolts/TaskCompletionSource;Lcom/facebook/bolts/Task;)Ljava/lang/Void;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic 㺴(Lcom/facebook/bolts/CancellationToken;Lcom/facebook/bolts/TaskCompletionSource;Lcom/facebook/bolts/Task;)Ljava/lang/Void;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/facebook/bolts/Task$Companion;->completeAfterTask$lambda-7$lambda-6(Lcom/facebook/bolts/CancellationToken;Lcom/facebook/bolts/TaskCompletionSource;Lcom/facebook/bolts/Task;)Ljava/lang/Void;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic 䂻(Lcom/facebook/bolts/CancellationToken;Lcom/facebook/bolts/TaskCompletionSource;Lcom/facebook/bolts/Continuation;Lcom/facebook/bolts/Task;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/facebook/bolts/Task$Companion;->completeAfterTask$lambda-7(Lcom/facebook/bolts/CancellationToken;Lcom/facebook/bolts/TaskCompletionSource;Lcom/facebook/bolts/Continuation;Lcom/facebook/bolts/Task;)V

    return-void
.end method

.method public static synthetic 䆀(Lcom/facebook/bolts/CancellationToken;Lcom/facebook/bolts/TaskCompletionSource;Ljava/util/concurrent/Callable;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/facebook/bolts/Task$Companion;->call$lambda-2(Lcom/facebook/bolts/CancellationToken;Lcom/facebook/bolts/TaskCompletionSource;Ljava/util/concurrent/Callable;)V

    return-void
.end method


# virtual methods
.method public final call(Ljava/util/concurrent/Callable;)Lcom/facebook/bolts/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TResult:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "TTResult;>;)",
            "Lcom/facebook/bolts/Task<",
            "TTResult;>;"
        }
    .end annotation

    const-string v0, "callable"

    invoke-static {p1, v0}, Lḓ/ᓭ/㺴/ಫ;->㺴(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/facebook/bolts/Task;->access$getIMMEDIATE_EXECUTOR$cp()Ljava/util/concurrent/Executor;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/facebook/bolts/Task$Companion;->call(Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;Lcom/facebook/bolts/CancellationToken;)Lcom/facebook/bolts/Task;

    move-result-object p1

    return-object p1
.end method

.method public final call(Ljava/util/concurrent/Callable;Lcom/facebook/bolts/CancellationToken;)Lcom/facebook/bolts/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TResult:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "TTResult;>;",
            "Lcom/facebook/bolts/CancellationToken;",
            ")",
            "Lcom/facebook/bolts/Task<",
            "TTResult;>;"
        }
    .end annotation

    const-string v0, "callable"

    invoke-static {p1, v0}, Lḓ/ᓭ/㺴/ಫ;->㺴(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/facebook/bolts/Task;->access$getIMMEDIATE_EXECUTOR$cp()Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p2}, Lcom/facebook/bolts/Task$Companion;->call(Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;Lcom/facebook/bolts/CancellationToken;)Lcom/facebook/bolts/Task;

    move-result-object p1

    return-object p1
.end method

.method public final call(Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;)Lcom/facebook/bolts/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TResult:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "TTResult;>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lcom/facebook/bolts/Task<",
            "TTResult;>;"
        }
    .end annotation

    const-string v0, "callable"

    invoke-static {p1, v0}, Lḓ/ᓭ/㺴/ಫ;->㺴(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "executor"

    invoke-static {p2, v0}, Lḓ/ᓭ/㺴/ಫ;->㺴(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/facebook/bolts/Task$Companion;->call(Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;Lcom/facebook/bolts/CancellationToken;)Lcom/facebook/bolts/Task;

    move-result-object p1

    return-object p1
.end method

.method public final call(Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;Lcom/facebook/bolts/CancellationToken;)Lcom/facebook/bolts/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TResult:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "TTResult;>;",
            "Ljava/util/concurrent/Executor;",
            "Lcom/facebook/bolts/CancellationToken;",
            ")",
            "Lcom/facebook/bolts/Task<",
            "TTResult;>;"
        }
    .end annotation

    const-string v0, "callable"

    invoke-static {p1, v0}, Lḓ/ᓭ/㺴/ಫ;->㺴(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "executor"

    invoke-static {p2, v0}, Lḓ/ᓭ/㺴/ಫ;->㺴(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/facebook/bolts/TaskCompletionSource;

    invoke-direct {v0}, Lcom/facebook/bolts/TaskCompletionSource;-><init>()V

    :try_start_0
    new-instance v1, L㺴/உ/㲧/ℓ;

    invoke-direct {v1, p3, v0, p1}, L㺴/உ/㲧/ℓ;-><init>(Lcom/facebook/bolts/CancellationToken;Lcom/facebook/bolts/TaskCompletionSource;Ljava/util/concurrent/Callable;)V

    invoke-interface {p2, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance p2, Lcom/facebook/bolts/ExecutorException;

    invoke-direct {p2, p1}, Lcom/facebook/bolts/ExecutorException;-><init>(Ljava/lang/Exception;)V

    invoke-virtual {v0, p2}, Lcom/facebook/bolts/TaskCompletionSource;->setError(Ljava/lang/Exception;)V

    :goto_0
    invoke-virtual {v0}, Lcom/facebook/bolts/TaskCompletionSource;->getTask()Lcom/facebook/bolts/Task;

    move-result-object p1

    return-object p1
.end method

.method public final callInBackground(Ljava/util/concurrent/Callable;)Lcom/facebook/bolts/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TResult:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "TTResult;>;)",
            "Lcom/facebook/bolts/Task<",
            "TTResult;>;"
        }
    .end annotation

    const-string v0, "callable"

    invoke-static {p1, v0}, Lḓ/ᓭ/㺴/ಫ;->㺴(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/facebook/bolts/Task;->BACKGROUND_EXECUTOR:Ljava/util/concurrent/ExecutorService;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/facebook/bolts/Task$Companion;->call(Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;Lcom/facebook/bolts/CancellationToken;)Lcom/facebook/bolts/Task;

    move-result-object p1

    return-object p1
.end method

.method public final callInBackground(Ljava/util/concurrent/Callable;Lcom/facebook/bolts/CancellationToken;)Lcom/facebook/bolts/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TResult:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "TTResult;>;",
            "Lcom/facebook/bolts/CancellationToken;",
            ")",
            "Lcom/facebook/bolts/Task<",
            "TTResult;>;"
        }
    .end annotation

    const-string v0, "callable"

    invoke-static {p1, v0}, Lḓ/ᓭ/㺴/ಫ;->㺴(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/facebook/bolts/Task;->BACKGROUND_EXECUTOR:Ljava/util/concurrent/ExecutorService;

    invoke-virtual {p0, p1, v0, p2}, Lcom/facebook/bolts/Task$Companion;->call(Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;Lcom/facebook/bolts/CancellationToken;)Lcom/facebook/bolts/Task;

    move-result-object p1

    return-object p1
.end method

.method public final cancelled()Lcom/facebook/bolts/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TResult:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/facebook/bolts/Task<",
            "TTResult;>;"
        }
    .end annotation

    invoke-static {}, Lcom/facebook/bolts/Task;->access$getTASK_CANCELLED$cp()Lcom/facebook/bolts/Task;

    move-result-object v0

    return-object v0
.end method

.method public final delay(J)Lcom/facebook/bolts/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lcom/facebook/bolts/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/facebook/bolts/BoltsExecutors;->Companion:Lcom/facebook/bolts/BoltsExecutors$Companion;

    invoke-virtual {v0}, Lcom/facebook/bolts/BoltsExecutors$Companion;->scheduled$facebook_bolts_release()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/facebook/bolts/Task$Companion;->delay$facebook_bolts_release(JLjava/util/concurrent/ScheduledExecutorService;Lcom/facebook/bolts/CancellationToken;)Lcom/facebook/bolts/Task;

    move-result-object p1

    return-object p1
.end method

.method public final delay(JLcom/facebook/bolts/CancellationToken;)Lcom/facebook/bolts/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/facebook/bolts/CancellationToken;",
            ")",
            "Lcom/facebook/bolts/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/facebook/bolts/BoltsExecutors;->Companion:Lcom/facebook/bolts/BoltsExecutors$Companion;

    invoke-virtual {v0}, Lcom/facebook/bolts/BoltsExecutors$Companion;->scheduled$facebook_bolts_release()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/facebook/bolts/Task$Companion;->delay$facebook_bolts_release(JLjava/util/concurrent/ScheduledExecutorService;Lcom/facebook/bolts/CancellationToken;)Lcom/facebook/bolts/Task;

    move-result-object p1

    return-object p1
.end method

.method public final delay$facebook_bolts_release(JLjava/util/concurrent/ScheduledExecutorService;Lcom/facebook/bolts/CancellationToken;)Lcom/facebook/bolts/Task;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/ScheduledExecutorService;",
            "Lcom/facebook/bolts/CancellationToken;",
            ")",
            "Lcom/facebook/bolts/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    const-string v0, "executor"

    invoke-static {p3, v0}, Lḓ/ᓭ/㺴/ಫ;->㺴(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p4, :cond_0

    invoke-virtual {p4}, Lcom/facebook/bolts/CancellationToken;->isCancellationRequested()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/facebook/bolts/Task$Companion;->cancelled()Lcom/facebook/bolts/Task;

    move-result-object p1

    return-object p1

    :cond_0
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-gtz v2, :cond_1

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/facebook/bolts/Task$Companion;->forResult(Ljava/lang/Object;)Lcom/facebook/bolts/Task;

    move-result-object p1

    return-object p1

    :cond_1
    new-instance v0, Lcom/facebook/bolts/TaskCompletionSource;

    invoke-direct {v0}, Lcom/facebook/bolts/TaskCompletionSource;-><init>()V

    new-instance v1, L㺴/உ/㲧/ᆻ;

    invoke-direct {v1, v0}, L㺴/உ/㲧/ᆻ;-><init>(Lcom/facebook/bolts/TaskCompletionSource;)V

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {p3, v1, p1, p2, v2}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p1

    if-nez p4, :cond_2

    goto :goto_0

    :cond_2
    new-instance p2, L㺴/உ/㲧/㚬;

    invoke-direct {p2, p1, v0}, L㺴/உ/㲧/㚬;-><init>(Ljava/util/concurrent/ScheduledFuture;Lcom/facebook/bolts/TaskCompletionSource;)V

    invoke-virtual {p4, p2}, Lcom/facebook/bolts/CancellationToken;->register(Ljava/lang/Runnable;)Lcom/facebook/bolts/CancellationTokenRegistration;

    :goto_0
    invoke-virtual {v0}, Lcom/facebook/bolts/TaskCompletionSource;->getTask()Lcom/facebook/bolts/Task;

    move-result-object p1

    return-object p1
.end method

.method public final forError(Ljava/lang/Exception;)Lcom/facebook/bolts/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TResult:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Exception;",
            ")",
            "Lcom/facebook/bolts/Task<",
            "TTResult;>;"
        }
    .end annotation

    new-instance v0, Lcom/facebook/bolts/TaskCompletionSource;

    invoke-direct {v0}, Lcom/facebook/bolts/TaskCompletionSource;-><init>()V

    invoke-virtual {v0, p1}, Lcom/facebook/bolts/TaskCompletionSource;->setError(Ljava/lang/Exception;)V

    invoke-virtual {v0}, Lcom/facebook/bolts/TaskCompletionSource;->getTask()Lcom/facebook/bolts/Task;

    move-result-object p1

    return-object p1
.end method

.method public final forResult(Ljava/lang/Object;)Lcom/facebook/bolts/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TResult:",
            "Ljava/lang/Object;",
            ">(TTResult;)",
            "Lcom/facebook/bolts/Task<",
            "TTResult;>;"
        }
    .end annotation

    if-nez p1, :cond_0

    invoke-static {}, Lcom/facebook/bolts/Task;->access$getTASK_NULL$cp()Lcom/facebook/bolts/Task;

    move-result-object p1

    return-object p1

    :cond_0
    instance-of v0, p1, Ljava/lang/Boolean;

    if-eqz v0, :cond_2

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {}, Lcom/facebook/bolts/Task;->access$getTASK_TRUE$cp()Lcom/facebook/bolts/Task;

    move-result-object p1

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/facebook/bolts/Task;->access$getTASK_FALSE$cp()Lcom/facebook/bolts/Task;

    move-result-object p1

    :goto_0
    return-object p1

    :cond_2
    new-instance v0, Lcom/facebook/bolts/TaskCompletionSource;

    invoke-direct {v0}, Lcom/facebook/bolts/TaskCompletionSource;-><init>()V

    invoke-virtual {v0, p1}, Lcom/facebook/bolts/TaskCompletionSource;->setResult(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/facebook/bolts/TaskCompletionSource;->getTask()Lcom/facebook/bolts/Task;

    move-result-object p1

    return-object p1
.end method

.method public final getUnobservedExceptionHandler()Lcom/facebook/bolts/Task$UnobservedExceptionHandler;
    .locals 1

    invoke-static {}, Lcom/facebook/bolts/Task;->access$getUnobservedExceptionHandler$cp()Lcom/facebook/bolts/Task$UnobservedExceptionHandler;

    move-result-object v0

    return-object v0
.end method

.method public final setUnobservedExceptionHandler(Lcom/facebook/bolts/Task$UnobservedExceptionHandler;)V
    .locals 0

    invoke-static {p1}, Lcom/facebook/bolts/Task;->access$setUnobservedExceptionHandler$cp(Lcom/facebook/bolts/Task$UnobservedExceptionHandler;)V

    return-void
.end method

.method public final whenAll(Ljava/util/Collection;)Lcom/facebook/bolts/Task;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Lcom/facebook/bolts/Task<",
            "*>;>;)",
            "Lcom/facebook/bolts/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    const-string v0, "tasks"

    invoke-static {p1, v0}, Lḓ/ᓭ/㺴/ಫ;->㺴(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/facebook/bolts/Task$Companion;->forResult(Ljava/lang/Object;)Lcom/facebook/bolts/Task;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance v6, Lcom/facebook/bolts/TaskCompletionSource;

    invoke-direct {v6}, Lcom/facebook/bolts/TaskCompletionSource;-><init>()V

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    new-instance v8, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v8}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    new-instance v9, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    invoke-direct {v9, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    new-instance v10, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-direct {v10, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Lcom/facebook/bolts/Task;

    new-instance v12, Lcom/facebook/bolts/Task$Companion$whenAll$1;

    move-object v0, v12

    move-object v1, v8

    move-object v2, v10

    move-object v3, v9

    move-object v4, v7

    move-object v5, v6

    invoke-direct/range {v0 .. v5}, Lcom/facebook/bolts/Task$Companion$whenAll$1;-><init>(Ljava/util/concurrent/locks/ReentrantLock;Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/ArrayList;Lcom/facebook/bolts/TaskCompletionSource;)V

    invoke-virtual {v11, v12}, Lcom/facebook/bolts/Task;->continueWith(Lcom/facebook/bolts/Continuation;)Lcom/facebook/bolts/Task;

    goto :goto_0

    :cond_1
    invoke-virtual {v6}, Lcom/facebook/bolts/TaskCompletionSource;->getTask()Lcom/facebook/bolts/Task;

    move-result-object p1

    return-object p1
.end method

.method public final whenAllResult(Ljava/util/Collection;)Lcom/facebook/bolts/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TResult:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "Lcom/facebook/bolts/Task<",
            "TTResult;>;>;)",
            "Lcom/facebook/bolts/Task<",
            "Ljava/util/List<",
            "TTResult;>;>;"
        }
    .end annotation

    const-string v0, "tasks"

    invoke-static {p1, v0}, Lḓ/ᓭ/㺴/ಫ;->㺴(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/facebook/bolts/Task$Companion;->whenAll(Ljava/util/Collection;)Lcom/facebook/bolts/Task;

    move-result-object v0

    new-instance v1, Lcom/facebook/bolts/Task$Companion$whenAllResult$1;

    invoke-direct {v1, p1}, Lcom/facebook/bolts/Task$Companion$whenAllResult$1;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v1}, Lcom/facebook/bolts/Task;->onSuccess(Lcom/facebook/bolts/Continuation;)Lcom/facebook/bolts/Task;

    move-result-object p1

    return-object p1
.end method

.method public final whenAny(Ljava/util/Collection;)Lcom/facebook/bolts/Task;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Lcom/facebook/bolts/Task<",
            "*>;>;)",
            "Lcom/facebook/bolts/Task<",
            "Lcom/facebook/bolts/Task<",
            "*>;>;"
        }
    .end annotation

    const-string v0, "tasks"

    invoke-static {p1, v0}, Lḓ/ᓭ/㺴/ಫ;->㺴(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/facebook/bolts/Task$Companion;->forResult(Ljava/lang/Object;)Lcom/facebook/bolts/Task;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance v0, Lcom/facebook/bolts/TaskCompletionSource;

    invoke-direct {v0}, Lcom/facebook/bolts/TaskCompletionSource;-><init>()V

    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/bolts/Task;

    new-instance v3, L㺴/உ/㲧/ಫ;

    invoke-direct {v3, v1, v0}, L㺴/உ/㲧/ಫ;-><init>(Ljava/util/concurrent/atomic/AtomicBoolean;Lcom/facebook/bolts/TaskCompletionSource;)V

    invoke-virtual {v2, v3}, Lcom/facebook/bolts/Task;->continueWith(Lcom/facebook/bolts/Continuation;)Lcom/facebook/bolts/Task;

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/facebook/bolts/TaskCompletionSource;->getTask()Lcom/facebook/bolts/Task;

    move-result-object p1

    return-object p1
.end method

.method public final whenAnyResult(Ljava/util/Collection;)Lcom/facebook/bolts/Task;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TResult:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "Lcom/facebook/bolts/Task<",
            "TTResult;>;>;)",
            "Lcom/facebook/bolts/Task<",
            "Lcom/facebook/bolts/Task<",
            "TTResult;>;>;"
        }
    .end annotation

    const-string v0, "tasks"

    invoke-static {p1, v0}, Lḓ/ᓭ/㺴/ಫ;->㺴(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/facebook/bolts/Task$Companion;->forResult(Ljava/lang/Object;)Lcom/facebook/bolts/Task;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance v0, Lcom/facebook/bolts/TaskCompletionSource;

    invoke-direct {v0}, Lcom/facebook/bolts/TaskCompletionSource;-><init>()V

    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/bolts/Task;

    new-instance v3, L㺴/உ/㲧/ḓ;

    invoke-direct {v3, v1, v0}, L㺴/உ/㲧/ḓ;-><init>(Ljava/util/concurrent/atomic/AtomicBoolean;Lcom/facebook/bolts/TaskCompletionSource;)V

    invoke-virtual {v2, v3}, Lcom/facebook/bolts/Task;->continueWith(Lcom/facebook/bolts/Continuation;)Lcom/facebook/bolts/Task;

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/facebook/bolts/TaskCompletionSource;->getTask()Lcom/facebook/bolts/Task;

    move-result-object p1

    return-object p1
.end method
