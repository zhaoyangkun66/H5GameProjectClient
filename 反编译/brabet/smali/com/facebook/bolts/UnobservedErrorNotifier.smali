.class public final Lcom/facebook/bolts/UnobservedErrorNotifier;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private task:Lcom/facebook/bolts/Task;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/bolts/Task<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/facebook/bolts/Task;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/bolts/Task<",
            "*>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/facebook/bolts/UnobservedErrorNotifier;->task:Lcom/facebook/bolts/Task;

    return-void
.end method


# virtual methods
.method public final finalize()V
    .locals 4

    iget-object v0, p0, Lcom/facebook/bolts/UnobservedErrorNotifier;->task:Lcom/facebook/bolts/Task;

    if-eqz v0, :cond_1

    sget-object v1, Lcom/facebook/bolts/Task;->Companion:Lcom/facebook/bolts/Task$Companion;

    invoke-virtual {v1}, Lcom/facebook/bolts/Task$Companion;->getUnobservedExceptionHandler()Lcom/facebook/bolts/Task$UnobservedExceptionHandler;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v2, Lcom/facebook/bolts/UnobservedTaskException;

    invoke-virtual {v0}, Lcom/facebook/bolts/Task;->getError()Ljava/lang/Exception;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/facebook/bolts/UnobservedTaskException;-><init>(Ljava/lang/Throwable;)V

    invoke-interface {v1, v0, v2}, Lcom/facebook/bolts/Task$UnobservedExceptionHandler;->unobservedException(Lcom/facebook/bolts/Task;Lcom/facebook/bolts/UnobservedTaskException;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final setObserved()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/bolts/UnobservedErrorNotifier;->task:Lcom/facebook/bolts/Task;

    return-void
.end method
