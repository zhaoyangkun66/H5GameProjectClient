.class public final Landroidx/core/app/JobIntentService$䆀;
.super Landroid/app/job/JobServiceEngine;
.source ""

# interfaces
.implements Landroidx/core/app/JobIntentService$䂻;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/app/JobIntentService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "\u4180"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/app/JobIntentService$䆀$உ;
    }
.end annotation


# instance fields
.field public final உ:Landroidx/core/app/JobIntentService;

.field public 㚬:Landroid/app/job/JobParameters;

.field public final 䂻:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroidx/core/app/JobIntentService;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/app/job/JobServiceEngine;-><init>(Landroid/app/Service;)V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroidx/core/app/JobIntentService$䆀;->䂻:Ljava/lang/Object;

    iput-object p1, p0, Landroidx/core/app/JobIntentService$䆀;->உ:Landroidx/core/app/JobIntentService;

    return-void
.end method


# virtual methods
.method public onStartJob(Landroid/app/job/JobParameters;)Z
    .locals 1

    iput-object p1, p0, Landroidx/core/app/JobIntentService$䆀;->㚬:Landroid/app/job/JobParameters;

    iget-object p1, p0, Landroidx/core/app/JobIntentService$䆀;->உ:Landroidx/core/app/JobIntentService;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/core/app/JobIntentService;->㚬(Z)V

    const/4 p1, 0x1

    return p1
.end method

.method public onStopJob(Landroid/app/job/JobParameters;)Z
    .locals 2

    iget-object p1, p0, Landroidx/core/app/JobIntentService$䆀;->உ:Landroidx/core/app/JobIntentService;

    invoke-virtual {p1}, Landroidx/core/app/JobIntentService;->䂻()Z

    move-result p1

    iget-object v0, p0, Landroidx/core/app/JobIntentService$䆀;->䂻:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    iput-object v1, p0, Landroidx/core/app/JobIntentService$䆀;->㚬:Landroid/app/job/JobParameters;

    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public உ()Landroidx/core/app/JobIntentService$ḓ;
    .locals 3

    iget-object v0, p0, Landroidx/core/app/JobIntentService$䆀;->䂻:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroidx/core/app/JobIntentService$䆀;->㚬:Landroid/app/job/JobParameters;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    monitor-exit v0

    return-object v2

    :cond_0
    invoke-virtual {v1}, Landroid/app/job/JobParameters;->dequeueWork()Landroid/app/job/JobWorkItem;

    move-result-object v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/app/job/JobWorkItem;->getIntent()Landroid/content/Intent;

    move-result-object v0

    iget-object v2, p0, Landroidx/core/app/JobIntentService$䆀;->உ:Landroidx/core/app/JobIntentService;

    invoke-virtual {v2}, Landroid/app/Service;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setExtrasClassLoader(Ljava/lang/ClassLoader;)V

    new-instance v0, Landroidx/core/app/JobIntentService$䆀$உ;

    invoke-direct {v0, p0, v1}, Landroidx/core/app/JobIntentService$䆀$உ;-><init>(Landroidx/core/app/JobIntentService$䆀;Landroid/app/job/JobWorkItem;)V

    return-object v0

    :cond_1
    return-object v2

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public 䂻()Landroid/os/IBinder;
    .locals 1

    invoke-virtual {p0}, Landroid/app/job/JobServiceEngine;->getBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method
