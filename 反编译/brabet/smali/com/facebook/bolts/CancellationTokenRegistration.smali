.class public final Lcom/facebook/bolts/CancellationTokenRegistration;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/io/Closeable;


# instance fields
.field private action:Ljava/lang/Runnable;

.field private closed:Z

.field private tokenSource:Lcom/facebook/bolts/CancellationTokenSource;


# direct methods
.method public constructor <init>(Lcom/facebook/bolts/CancellationTokenSource;Ljava/lang/Runnable;)V
    .locals 1

    const-string v0, "tokenSource"

    invoke-static {p1, v0}, Lḓ/ᓭ/㺴/ಫ;->㺴(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/facebook/bolts/CancellationTokenRegistration;->action:Ljava/lang/Runnable;

    iput-object p1, p0, Lcom/facebook/bolts/CancellationTokenRegistration;->tokenSource:Lcom/facebook/bolts/CancellationTokenSource;

    return-void
.end method

.method private final throwIfClosed()V
    .locals 2

    iget-boolean v0, p0, Lcom/facebook/bolts/CancellationTokenRegistration;->closed:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Object already closed"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public close()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/facebook/bolts/CancellationTokenRegistration;->closed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lcom/facebook/bolts/CancellationTokenRegistration;->closed:Z

    iget-object v0, p0, Lcom/facebook/bolts/CancellationTokenRegistration;->tokenSource:Lcom/facebook/bolts/CancellationTokenSource;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v0, p0}, Lcom/facebook/bolts/CancellationTokenSource;->unregister$facebook_bolts_release(Lcom/facebook/bolts/CancellationTokenRegistration;)V

    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/bolts/CancellationTokenRegistration;->tokenSource:Lcom/facebook/bolts/CancellationTokenSource;

    iput-object v0, p0, Lcom/facebook/bolts/CancellationTokenRegistration;->action:Ljava/lang/Runnable;

    sget-object v0, Lḓ/㧦;->உ:Lḓ/㧦;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final runAction$facebook_bolts_release()V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/facebook/bolts/CancellationTokenRegistration;->throwIfClosed()V

    iget-object v0, p0, Lcom/facebook/bolts/CancellationTokenRegistration;->action:Ljava/lang/Runnable;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :goto_0
    invoke-virtual {p0}, Lcom/facebook/bolts/CancellationTokenRegistration;->close()V

    sget-object v0, Lḓ/㧦;->உ:Lḓ/㧦;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
