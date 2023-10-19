.class public abstract Landroidx/core/app/JobIntentService;
.super Landroid/app/Service;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/app/JobIntentService$உ;,
        Landroidx/core/app/JobIntentService$㺴;,
        Landroidx/core/app/JobIntentService$ḓ;,
        Landroidx/core/app/JobIntentService$ᆻ;,
        Landroidx/core/app/JobIntentService$䆀;,
        Landroidx/core/app/JobIntentService$㚬;,
        Landroidx/core/app/JobIntentService$䂻;,
        Landroidx/core/app/JobIntentService$ℓ;
    }
.end annotation


# static fields
.field public static final ℓ:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/content/ComponentName;",
            "Landroidx/core/app/JobIntentService$\u2113;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final ᆻ:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/core/app/JobIntentService$\u3eb4;",
            ">;"
        }
    .end annotation
.end field

.field public ḓ:Z

.field public 㚬:Landroidx/core/app/JobIntentService$ℓ;

.field public 㺴:Landroidx/core/app/JobIntentService$உ;

.field public 䂻:Landroidx/core/app/JobIntentService$䂻;

.field public 䆀:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroidx/core/app/JobIntentService;->ℓ:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/core/app/JobIntentService;->ḓ:Z

    iput-boolean v0, p0, Landroidx/core/app/JobIntentService;->䆀:Z

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    iput-object v0, p0, Landroidx/core/app/JobIntentService;->ᆻ:Ljava/util/ArrayList;

    return-void
.end method

.method public static 㺴(Landroid/content/Context;Landroid/content/ComponentName;ZI)Landroidx/core/app/JobIntentService$ℓ;
    .locals 3

    sget-object v0, Landroidx/core/app/JobIntentService;->ℓ:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/core/app/JobIntentService$ℓ;

    if-nez v1, :cond_2

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v1, v2, :cond_1

    if-eqz p2, :cond_0

    new-instance p2, Landroidx/core/app/JobIntentService$ᆻ;

    invoke-direct {p2, p0, p1, p3}, Landroidx/core/app/JobIntentService$ᆻ;-><init>(Landroid/content/Context;Landroid/content/ComponentName;I)V

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Can\'t be here without a job id"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p2, Landroidx/core/app/JobIntentService$㚬;

    invoke-direct {p2, p0, p1}, Landroidx/core/app/JobIntentService$㚬;-><init>(Landroid/content/Context;Landroid/content/ComponentName;)V

    :goto_0
    move-object v1, p2

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v1
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    iget-object p1, p0, Landroidx/core/app/JobIntentService;->䂻:Landroidx/core/app/JobIntentService$䂻;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroidx/core/app/JobIntentService$䂻;->䂻()Landroid/os/IBinder;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public onCreate()V
    .locals 3

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x1a

    if-lt v0, v2, :cond_0

    new-instance v0, Landroidx/core/app/JobIntentService$䆀;

    invoke-direct {v0, p0}, Landroidx/core/app/JobIntentService$䆀;-><init>(Landroidx/core/app/JobIntentService;)V

    iput-object v0, p0, Landroidx/core/app/JobIntentService;->䂻:Landroidx/core/app/JobIntentService$䂻;

    iput-object v1, p0, Landroidx/core/app/JobIntentService;->㚬:Landroidx/core/app/JobIntentService$ℓ;

    goto :goto_0

    :cond_0
    iput-object v1, p0, Landroidx/core/app/JobIntentService;->䂻:Landroidx/core/app/JobIntentService$䂻;

    new-instance v0, Landroid/content/ComponentName;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v1, 0x0

    invoke-static {p0, v0, v1, v1}, Landroidx/core/app/JobIntentService;->㺴(Landroid/content/Context;Landroid/content/ComponentName;ZI)Landroidx/core/app/JobIntentService$ℓ;

    move-result-object v0

    iput-object v0, p0, Landroidx/core/app/JobIntentService;->㚬:Landroidx/core/app/JobIntentService$ℓ;

    :goto_0
    return-void
.end method

.method public onDestroy()V
    .locals 2

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    iget-object v0, p0, Landroidx/core/app/JobIntentService;->ᆻ:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Landroidx/core/app/JobIntentService;->䆀:Z

    iget-object v1, p0, Landroidx/core/app/JobIntentService;->㚬:Landroidx/core/app/JobIntentService$ℓ;

    invoke-virtual {v1}, Landroidx/core/app/JobIntentService$ℓ;->䂻()V

    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_0
    :goto_0
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 2

    iget-object p2, p0, Landroidx/core/app/JobIntentService;->ᆻ:Ljava/util/ArrayList;

    if-eqz p2, :cond_1

    iget-object p2, p0, Landroidx/core/app/JobIntentService;->㚬:Landroidx/core/app/JobIntentService$ℓ;

    invoke-virtual {p2}, Landroidx/core/app/JobIntentService$ℓ;->㺴()V

    iget-object p2, p0, Landroidx/core/app/JobIntentService;->ᆻ:Ljava/util/ArrayList;

    monitor-enter p2

    :try_start_0
    iget-object v0, p0, Landroidx/core/app/JobIntentService;->ᆻ:Ljava/util/ArrayList;

    new-instance v1, Landroidx/core/app/JobIntentService$㺴;

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    :goto_0
    invoke-direct {v1, p0, p1, p3}, Landroidx/core/app/JobIntentService$㺴;-><init>(Landroidx/core/app/JobIntentService;Landroid/content/Intent;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroidx/core/app/JobIntentService;->㚬(Z)V

    monitor-exit p2

    const/4 p1, 0x3

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_1
    const/4 p1, 0x2

    return p1
.end method

.method public உ()Landroidx/core/app/JobIntentService$ḓ;
    .locals 3

    iget-object v0, p0, Landroidx/core/app/JobIntentService;->䂻:Landroidx/core/app/JobIntentService$䂻;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroidx/core/app/JobIntentService$䂻;->உ()Landroidx/core/app/JobIntentService$ḓ;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Landroidx/core/app/JobIntentService;->ᆻ:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroidx/core/app/JobIntentService;->ᆻ:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_1

    iget-object v1, p0, Landroidx/core/app/JobIntentService;->ᆻ:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/core/app/JobIntentService$ḓ;

    monitor-exit v0

    return-object v1

    :cond_1
    const/4 v1, 0x0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public ᆻ()V
    .locals 2

    iget-object v0, p0, Landroidx/core/app/JobIntentService;->ᆻ:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    iput-object v1, p0, Landroidx/core/app/JobIntentService;->㺴:Landroidx/core/app/JobIntentService$உ;

    iget-object v1, p0, Landroidx/core/app/JobIntentService;->ᆻ:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroidx/core/app/JobIntentService;->㚬(Z)V

    goto :goto_0

    :cond_0
    iget-boolean v1, p0, Landroidx/core/app/JobIntentService;->䆀:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Landroidx/core/app/JobIntentService;->㚬:Landroidx/core/app/JobIntentService$ℓ;

    invoke-virtual {v1}, Landroidx/core/app/JobIntentService$ℓ;->䂻()V

    :cond_1
    :goto_0
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_2
    :goto_1
    return-void
.end method

.method public abstract ḓ(Landroid/content/Intent;)V
.end method

.method public 㚬(Z)V
    .locals 2

    iget-object v0, p0, Landroidx/core/app/JobIntentService;->㺴:Landroidx/core/app/JobIntentService$உ;

    if-nez v0, :cond_1

    new-instance v0, Landroidx/core/app/JobIntentService$உ;

    invoke-direct {v0, p0}, Landroidx/core/app/JobIntentService$உ;-><init>(Landroidx/core/app/JobIntentService;)V

    iput-object v0, p0, Landroidx/core/app/JobIntentService;->㺴:Landroidx/core/app/JobIntentService$உ;

    iget-object v0, p0, Landroidx/core/app/JobIntentService;->㚬:Landroidx/core/app/JobIntentService$ℓ;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {v0}, Landroidx/core/app/JobIntentService$ℓ;->㚬()V

    :cond_0
    iget-object p1, p0, Landroidx/core/app/JobIntentService;->㺴:Landroidx/core/app/JobIntentService$உ;

    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {p1, v0, v1}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_1
    return-void
.end method

.method public 䂻()Z
    .locals 2

    iget-object v0, p0, Landroidx/core/app/JobIntentService;->㺴:Landroidx/core/app/JobIntentService$உ;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Landroidx/core/app/JobIntentService;->ḓ:Z

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    :cond_0
    invoke-virtual {p0}, Landroidx/core/app/JobIntentService;->䆀()Z

    move-result v0

    return v0
.end method

.method public 䆀()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
