.class public final Landroidx/core/app/JobIntentService$䆀$உ;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroidx/core/app/JobIntentService$ḓ;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/app/JobIntentService$䆀;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "\u0b89"
.end annotation


# instance fields
.field public final உ:Landroid/app/job/JobWorkItem;

.field public final synthetic 䂻:Landroidx/core/app/JobIntentService$䆀;


# direct methods
.method public constructor <init>(Landroidx/core/app/JobIntentService$䆀;Landroid/app/job/JobWorkItem;)V
    .locals 0

    iput-object p1, p0, Landroidx/core/app/JobIntentService$䆀$உ;->䂻:Landroidx/core/app/JobIntentService$䆀;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Landroidx/core/app/JobIntentService$䆀$உ;->உ:Landroid/app/job/JobWorkItem;

    return-void
.end method


# virtual methods
.method public getIntent()Landroid/content/Intent;
    .locals 1

    iget-object v0, p0, Landroidx/core/app/JobIntentService$䆀$உ;->உ:Landroid/app/job/JobWorkItem;

    invoke-virtual {v0}, Landroid/app/job/JobWorkItem;->getIntent()Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public உ()V
    .locals 3

    iget-object v0, p0, Landroidx/core/app/JobIntentService$䆀$உ;->䂻:Landroidx/core/app/JobIntentService$䆀;

    iget-object v0, v0, Landroidx/core/app/JobIntentService$䆀;->䂻:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroidx/core/app/JobIntentService$䆀$உ;->䂻:Landroidx/core/app/JobIntentService$䆀;

    iget-object v1, v1, Landroidx/core/app/JobIntentService$䆀;->㚬:Landroid/app/job/JobParameters;

    if-eqz v1, :cond_0

    iget-object v2, p0, Landroidx/core/app/JobIntentService$䆀$உ;->உ:Landroid/app/job/JobWorkItem;

    invoke-virtual {v1, v2}, Landroid/app/job/JobParameters;->completeWork(Landroid/app/job/JobWorkItem;)V

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
