.class public L㚬/㚬/உ/உ/䂻;
.super L㚬/㚬/உ/உ/㚬;
.source ""


# instance fields
.field public final உ:Ljava/lang/Object;

.field public final 䂻:Ljava/util/concurrent/ExecutorService;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, L㚬/㚬/உ/உ/㚬;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, L㚬/㚬/உ/உ/䂻;->உ:Ljava/lang/Object;

    new-instance v0, L㚬/㚬/உ/உ/䂻$உ;

    invoke-direct {v0, p0}, L㚬/㚬/உ/உ/䂻$உ;-><init>(L㚬/㚬/உ/உ/䂻;)V

    const/4 v1, 0x4

    invoke-static {v1, v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, L㚬/㚬/உ/உ/䂻;->䂻:Ljava/util/concurrent/ExecutorService;

    return-void
.end method


# virtual methods
.method public உ()Z
    .locals 2

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
